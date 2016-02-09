.class public Landroid/icu/text/DateIntervalInfo;
.super Ljava/lang/Object;
.source "DateIntervalInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateIntervalInfo$PatternInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/DateIntervalInfo;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

.field private static final DEBUG_SKELETON:Ljava/lang/String; = null

.field private static final DIICACHE:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static EARLIEST_FIRST_PREFIX:Ljava/lang/String; = null

.field private static FALLBACK_STRING:Ljava/lang/String; = null

.field private static LATEST_FIRST_PREFIX:Ljava/lang/String; = null

.field private static final MINIMUM_SUPPORTED_CALENDAR_FIELD:I = 0xc

.field static final currentSerialVersion:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fFallbackIntervalPattern:Ljava/lang/String;

.field private fFirstDateInPtnIsLaterDate:Z

.field private fIntervalPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient fIntervalPatternsReadOnly:Z

.field private volatile transient frozen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 274
    const/16 v0, 0x18

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 275
    const-string/jumbo v1, "G"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const-string/jumbo v1, "y"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    const-string/jumbo v1, "M"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 276
    const-string/jumbo v1, "w"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    const-string/jumbo v1, "W"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    const-string/jumbo v1, "d"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 277
    const-string/jumbo v1, "D"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    const-string/jumbo v1, "E"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    const-string/jumbo v1, "F"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 278
    const-string/jumbo v1, "a"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    const-string/jumbo v1, "h"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    const-string/jumbo v1, "H"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 279
    const-string/jumbo v1, "m"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    const-string/jumbo v1, "s"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    const-string/jumbo v1, "S"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 280
    const-string/jumbo v1, "z"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    const-string/jumbo v1, " "

    #@6f
    const/16 v2, 0x10

    #@71
    aput-object v1, v0, v2

    #@73
    const-string/jumbo v1, "Y"

    #@76
    const/16 v2, 0x11

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 281
    const-string/jumbo v1, "e"

    #@7d
    const/16 v2, 0x12

    #@7f
    aput-object v1, v0, v2

    #@81
    const-string/jumbo v1, "u"

    #@84
    const/16 v2, 0x13

    #@86
    aput-object v1, v0, v2

    #@88
    const-string/jumbo v1, "g"

    #@8b
    const/16 v2, 0x14

    #@8d
    aput-object v1, v0, v2

    #@8f
    .line 282
    const-string/jumbo v1, "A"

    #@92
    const/16 v2, 0x15

    #@94
    aput-object v1, v0, v2

    #@96
    const-string/jumbo v1, " "

    #@99
    const/16 v2, 0x16

    #@9b
    aput-object v1, v0, v2

    #@9d
    const-string/jumbo v1, " "

    #@a0
    const/16 v2, 0x17

    #@a2
    aput-object v1, v0, v2

    #@a4
    .line 273
    sput-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@a6
    .line 291
    const-string/jumbo v0, "fallback"

    #@a9
    sput-object v0, Landroid/icu/text/DateIntervalInfo;->FALLBACK_STRING:Ljava/lang/String;

    #@ab
    .line 292
    const-string/jumbo v0, "latestFirst:"

    #@ae
    sput-object v0, Landroid/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    #@b0
    .line 293
    const-string/jumbo v0, "earliestFirst:"

    #@b3
    sput-object v0, Landroid/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    #@b5
    .line 296
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@b7
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@ba
    sput-object v0, Landroid/icu/text/DateIntervalInfo;->DIICACHE:Landroid/icu/impl/ICUCache;

    #@bc
    .line 152
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 302
    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    #@6
    .line 305
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@9
    .line 307
    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    #@b
    .line 313
    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    #@d
    .line 333
    new-instance v0, Ljava/util/HashMap;

    #@f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@12
    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@14
    .line 334
    const-string/jumbo v0, "{0} \u2013 {1}"

    #@17
    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    #@19
    .line 331
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 302
    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    #@6
    .line 305
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@9
    .line 307
    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    #@b
    .line 313
    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    #@d
    .line 347
    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalInfo;->initializeData(Landroid/icu/util/ULocale;)V

    #@10
    .line 345
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 361
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalInfo;-><init>(Landroid/icu/util/ULocale;)V

    #@7
    .line 359
    return-void
.end method

.method private static cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 855
    .local p0, "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    new-instance v5, Ljava/util/HashMap;

    #@2
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 856
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v10

    #@9
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v8

    #@d
    .local v8, "skeletonEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v10

    #@11
    if-eqz v10, :cond_1

    #@13
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v7

    #@17
    check-cast v7, Ljava/util/Map$Entry;

    #@19
    .line 857
    .local v7, "skeletonEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v6

    #@1d
    check-cast v6, Ljava/lang/String;

    #@1f
    .line 858
    .local v6, "skeleton":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Ljava/util/Map;

    #@25
    .line 859
    .local v4, "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    new-instance v3, Ljava/util/HashMap;

    #@27
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@2a
    .line 860
    .local v3, "oneSetPtn":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2d
    move-result-object v10

    #@2e
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v1

    #@32
    .local v1, "calEntry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v10

    #@36
    if-eqz v10, :cond_0

    #@38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Ljava/util/Map$Entry;

    #@3e
    .line 861
    .local v0, "calEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Ljava/lang/String;

    #@44
    .line 862
    .local v2, "calField":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@47
    move-result-object v9

    #@48
    check-cast v9, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@4a
    .line 863
    .local v9, "value":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    invoke-interface {v3, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    goto :goto_1

    #@4e
    .line 865
    .end local v0    # "calEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    .end local v2    # "calField":Ljava/lang/String;
    .end local v9    # "value":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_0
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    goto :goto_0

    #@52
    .line 867
    .end local v1    # "calEntry$iterator":Ljava/util/Iterator;
    .end local v3    # "oneSetPtn":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    .end local v4    # "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    .end local v6    # "skeleton":Ljava/lang/String;
    .end local v7    # "skeletonEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    :cond_1
    return-object v5
.end method

.method private cloneUnfrozenDII()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 834
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/text/DateIntervalInfo;

    #@6
    .line 835
    .local v1, "other":Landroid/icu/text/DateIntervalInfo;
    iget-object v2, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    #@8
    iput-object v2, v1, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    #@a
    .line 836
    iget-boolean v2, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    #@c
    iput-boolean v2, v1, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    #@e
    .line 837
    iget-boolean v2, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 838
    iget-object v2, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@14
    iput-object v2, v1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@16
    .line 839
    const/4 v2, 0x1

    #@17
    iput-boolean v2, v1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    #@19
    .line 844
    :goto_0
    const/4 v2, 0x0

    #@1a
    iput-boolean v2, v1, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    #@1c
    .line 845
    return-object v1

    #@1d
    .line 841
    :cond_0
    iget-object v2, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@1f
    invoke-static {v2}, Landroid/icu/text/DateIntervalInfo;->cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;

    #@22
    move-result-object v2

    #@23
    iput-object v2, v1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@25
    .line 842
    const/4 v2, 0x0

    #@26
    iput-boolean v2, v1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    goto :goto_0

    #@29
    .line 846
    .end local v1    # "other":Landroid/icu/text/DateIntervalInfo;
    :catch_0
    move-exception v0

    #@2a
    .line 848
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@2c
    const-string/jumbo v3, "clone is not supported"

    #@2f
    invoke-direct {v2, v3, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@32
    throw v2
.end method

.method public static genPatternInfo(Ljava/lang/String;Z)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .locals 4
    .param p0, "intervalPattern"    # Ljava/lang/String;
    .param p1, "laterDateFirst"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 715
    invoke-static {p0}, Landroid/icu/text/DateIntervalInfo;->splitPatternInto2Part(Ljava/lang/String;)I

    #@3
    move-result v2

    #@4
    .line 717
    .local v2, "splitPoint":I
    const/4 v3, 0x0

    #@5
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 718
    .local v0, "firstPart":Ljava/lang/String;
    const/4 v1, 0x0

    #@a
    .line 719
    .local v1, "secondPart":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v3

    #@e
    if-ge v2, v3, :cond_0

    #@10
    .line 720
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 723
    .end local v1    # "secondPart":Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@1a
    invoke-direct {v3, v0, v1, p1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@1d
    return-object v3
.end method

.method private initializeData(Landroid/icu/util/ULocale;)V
    .locals 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 370
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 371
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Landroid/icu/text/DateIntervalInfo;->DIICACHE:Landroid/icu/impl/ICUCache;

    #@6
    invoke-interface {v2, v1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    #@c
    .line 372
    .local v0, "dii":Landroid/icu/text/DateIntervalInfo;
    if-nez v0, :cond_0

    #@e
    .line 374
    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalInfo;->setup(Landroid/icu/util/ULocale;)V

    #@11
    .line 376
    const/4 v2, 0x1

    #@12
    iput-boolean v2, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    #@14
    .line 378
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->DIICACHE:Landroid/icu/impl/ICUCache;

    #@16
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/icu/text/DateIntervalInfo;

    #@1c
    invoke-virtual {v2}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    #@1f
    move-result-object v2

    #@20
    invoke-interface {v3, v1, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@23
    .line 368
    :goto_0
    return-void

    #@24
    .line 380
    :cond_0
    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalInfo;->initializeFromReadOnlyPatterns(Landroid/icu/text/DateIntervalInfo;)V

    #@27
    goto :goto_0
.end method

.method private initializeFromReadOnlyPatterns(Landroid/icu/text/DateIntervalInfo;)V
    .locals 1
    .param p1, "dii"    # Landroid/icu/text/DateIntervalInfo;

    #@0
    .prologue
    .line 391
    iget-object v0, p1, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    #@2
    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    #@4
    .line 392
    iget-boolean v0, p1, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    #@6
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    #@8
    .line 393
    iget-object v0, p1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@a
    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@c
    .line 394
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    #@f
    .line 390
    return-void
.end method

.method static parseSkeleton(Ljava/lang/String;[I)V
    .locals 3
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "skeletonFieldWidth"    # [I

    #@0
    .prologue
    .line 909
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 910
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v1

    #@b
    add-int/lit8 v1, v1, -0x41

    #@d
    aget v2, p1, v1

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    aput v2, p1, v1

    #@13
    .line 909
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 907
    :cond_0
    return-void
.end method

.method private setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V
    .locals 2
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "lrgDiffCalUnit"    # Ljava/lang/String;
    .param p3, "ptnInfo"    # Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@0
    .prologue
    .line 698
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Map;

    #@8
    .line 699
    .local v0, "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 697
    return-void
.end method

.method private setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .locals 7
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "lrgDiffCalUnit"    # Ljava/lang/String;
    .param p3, "intervalPattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 661
    iget-object v6, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@2
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    check-cast v4, Ljava/util/Map;

    #@8
    .line 662
    .local v4, "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    const/4 v1, 0x0

    #@9
    .line 663
    .local v1, "emptyHash":Z
    if-nez v4, :cond_0

    #@b
    .line 664
    new-instance v4, Ljava/util/HashMap;

    #@d
    .end local v4    # "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@10
    .line 665
    .restart local v4    # "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    const/4 v1, 0x1

    #@11
    .line 667
    :cond_0
    iget-boolean v3, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    #@13
    .line 669
    .local v3, "order":Z
    sget-object v6, Landroid/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    #@15
    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_3

    #@1b
    .line 670
    const/4 v3, 0x1

    #@1c
    .line 671
    .local v3, "order":Z
    sget-object v6, Landroid/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    #@1e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@21
    move-result v5

    #@22
    .line 672
    .local v5, "prefixLength":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@25
    move-result v6

    #@26
    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object p3

    #@2a
    .line 678
    .end local v3    # "order":Z
    .end local v5    # "prefixLength":I
    :cond_1
    :goto_0
    invoke-static {p3, v3}, Landroid/icu/text/DateIntervalInfo;->genPatternInfo(Ljava/lang/String;Z)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@2d
    move-result-object v2

    #@2e
    .line 680
    .local v2, "itvPtnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 681
    if-eqz v1, :cond_2

    #@33
    .line 682
    iget-object v6, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@35
    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 685
    :cond_2
    return-object v2

    #@39
    .line 673
    .end local v2    # "itvPtnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .local v3, "order":Z
    :cond_3
    sget-object v6, Landroid/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    #@3b
    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_1

    #@41
    .line 674
    const/4 v3, 0x0

    #@42
    .line 675
    .local v3, "order":Z
    sget-object v6, Landroid/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    #@44
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@47
    move-result v0

    #@48
    .line 676
    .local v0, "earliestFirstLength":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@4b
    move-result v6

    #@4c
    invoke-virtual {p3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4f
    move-result-object p3

    #@50
    goto :goto_0
.end method

.method private setup(Landroid/icu/util/ULocale;)V
    .locals 30
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 403
    const/16 v3, 0x13

    #@2
    .line 404
    .local v3, "DEFAULT_HASH_SIZE":I
    new-instance v27, Ljava/util/HashMap;

    #@4
    move-object/from16 v0, v27

    #@6
    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    #@9
    move-object/from16 v0, v27

    #@b
    move-object/from16 v1, p0

    #@d
    iput-object v0, v1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@f
    .line 407
    const-string/jumbo v27, "{0} \u2013 {1}"

    #@12
    move-object/from16 v0, v27

    #@14
    move-object/from16 v1, p0

    #@16
    iput-object v0, v1, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    #@18
    .line 408
    new-instance v26, Ljava/util/HashSet;

    #@1a
    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    #@1d
    .line 412
    .local v26, "skeletonKeyPairs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v6, p1

    #@1f
    .line 414
    .local v6, "currentLocale":Landroid/icu/util/ULocale;
    :try_start_0
    const-string/jumbo v27, "calendar"

    #@22
    move-object/from16 v0, p1

    #@24
    move-object/from16 v1, v27

    #@26
    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    .line 415
    .local v5, "calendarTypeToUse":Ljava/lang/String;
    if-nez v5, :cond_0

    #@2c
    .line 416
    const-string/jumbo v27, "calendar"

    #@2f
    const/16 v28, 0x1

    #@31
    move-object/from16 v0, v27

    #@33
    move-object/from16 v1, p1

    #@35
    move/from16 v2, v28

    #@37
    invoke-static {v0, v1, v2}, Landroid/icu/util/Calendar;->getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;

    #@3a
    move-result-object v19

    #@3b
    .line 417
    .local v19, "preferredCalendarTypes":[Ljava/lang/String;
    const/16 v27, 0x0

    #@3d
    aget-object v5, v19, v27

    #@3f
    .line 419
    .end local v19    # "preferredCalendarTypes":[Ljava/lang/String;
    :cond_0
    if-nez v5, :cond_10

    #@41
    .line 420
    const-string/jumbo v5, "gregorian"
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_2

    #@44
    move-object v7, v6

    #@45
    .line 423
    .end local v6    # "currentLocale":Landroid/icu/util/ULocale;
    .local v7, "currentLocale":Landroid/icu/util/ULocale;
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    #@48
    move-result-object v14

    #@49
    .line 424
    .local v14, "name":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@4c
    move-result v27

    #@4d
    if-nez v27, :cond_2

    #@4f
    move-object v6, v7

    #@50
    .line 402
    .end local v5    # "calendarTypeToUse":Ljava/lang/String;
    .end local v7    # "currentLocale":Landroid/icu/util/ULocale;
    .end local v14    # "name":Ljava/lang/String;
    .restart local v6    # "currentLocale":Landroid/icu/util/ULocale;
    :cond_1
    :goto_1
    return-void

    #@51
    .line 428
    .end local v6    # "currentLocale":Landroid/icu/util/ULocale;
    .restart local v5    # "calendarTypeToUse":Ljava/lang/String;
    .restart local v7    # "currentLocale":Landroid/icu/util/ULocale;
    .restart local v14    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v27, "android/icu/impl/data/icudt55b"

    #@54
    move-object/from16 v0, v27

    #@56
    invoke-static {v0, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@59
    move-result-object v22

    #@5a
    check-cast v22, Landroid/icu/impl/ICUResourceBundle;

    #@5c
    .line 438
    .local v22, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v27, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v28, "calendar/"

    #@64
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v27

    #@68
    move-object/from16 v0, v27

    #@6a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v27

    #@6e
    const-string/jumbo v28, "/intervalFormats"

    #@71
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v27

    #@75
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v27

    #@79
    move-object/from16 v0, v22

    #@7b
    move-object/from16 v1, v27

    #@7d
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@80
    move-result-object v12

    #@81
    .line 440
    .local v12, "itvDtPtnResource":Landroid/icu/impl/ICUResourceBundle;
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->FALLBACK_STRING:Ljava/lang/String;

    #@83
    move-object/from16 v0, v27

    #@85
    invoke-virtual {v12, v0}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@88
    move-result-object v9

    #@89
    .line 441
    .local v9, "fallback":Ljava/lang/String;
    move-object/from16 v0, p0

    #@8b
    invoke-virtual {v0, v9}, Landroid/icu/text/DateIntervalInfo;->setFallbackIntervalPattern(Ljava/lang/String;)V

    #@8e
    .line 442
    invoke-virtual {v12}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@91
    move-result v23

    #@92
    .line 443
    .local v23, "size":I
    const/4 v10, 0x0

    #@93
    .local v10, "index":I
    :goto_2
    move/from16 v0, v23

    #@95
    if-ge v10, v0, :cond_f

    #@97
    .line 444
    invoke-virtual {v12, v10}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@9a
    move-result-object v27

    #@9b
    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@9e
    move-result-object v24

    #@9f
    .line 445
    .local v24, "skeleton":Ljava/lang/String;
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->FALLBACK_STRING:Ljava/lang/String;

    #@a1
    move-object/from16 v0, v24

    #@a3
    move-object/from16 v1, v27

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@a8
    move-result v27

    #@a9
    if-nez v27, :cond_4

    #@ab
    .line 443
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@ad
    goto :goto_2

    #@ae
    .line 448
    :cond_4
    move-object/from16 v0, v24

    #@b0
    invoke-virtual {v12, v0}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@b3
    move-result-object v11

    #@b4
    check-cast v11, Landroid/icu/impl/ICUResourceBundle;

    #@b6
    .line 449
    .local v11, "intervalPatterns":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v11}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@b9
    move-result v21

    #@ba
    .line 450
    .local v21, "ptnNum":I
    const/16 v20, 0x0

    #@bc
    .local v20, "ptnIndex":I
    :goto_3
    move/from16 v0, v20

    #@be
    move/from16 v1, v21

    #@c0
    if-ge v0, v1, :cond_3

    #@c2
    .line 451
    move/from16 v0, v20

    #@c4
    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@c7
    move-result-object v27

    #@c8
    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@cb
    move-result-object v13

    #@cc
    .line 454
    .local v13, "key":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    move-object/from16 v0, v27

    #@d3
    move-object/from16 v1, v24

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v27

    #@d9
    const-string/jumbo v28, "\u0001"

    #@dc
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v27

    #@e0
    move-object/from16 v0, v27

    #@e2
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v27

    #@e6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v25

    #@ea
    .line 455
    .local v25, "skeletonKeyPair":Ljava/lang/String;
    move-object/from16 v0, v26

    #@ec
    move-object/from16 v1, v25

    #@ee
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@f1
    move-result v27

    #@f2
    if-eqz v27, :cond_6

    #@f4
    .line 450
    :cond_5
    :goto_4
    add-int/lit8 v20, v20, 0x1

    #@f6
    goto :goto_3

    #@f7
    .line 458
    :cond_6
    move-object/from16 v0, v26

    #@f9
    move-object/from16 v1, v25

    #@fb
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@fe
    .line 460
    move/from16 v0, v20

    #@100
    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@103
    move-result-object v27

    #@104
    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@107
    move-result-object v18

    #@108
    .line 462
    .local v18, "pattern":Ljava/lang/String;
    const/4 v4, -0x1

    #@109
    .line 463
    .local v4, "calendarField":I
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@10b
    const/16 v28, 0x1

    #@10d
    aget-object v27, v27, v28

    #@10f
    move-object/from16 v0, v27

    #@111
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@114
    move-result v27

    #@115
    if-eqz v27, :cond_8

    #@117
    .line 464
    const/4 v4, 0x1

    #@118
    .line 483
    :cond_7
    :goto_5
    const/16 v27, -0x1

    #@11a
    move/from16 v0, v27

    #@11c
    if-eq v4, v0, :cond_5

    #@11e
    .line 484
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->DEBUG_SKELETON:Ljava/lang/String;

    #@120
    if-eqz v27, :cond_e

    #@122
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->DEBUG_SKELETON:Ljava/lang/String;

    #@124
    move-object/from16 v0, v27

    #@126
    move-object/from16 v1, v24

    #@128
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12b
    move-result v27

    #@12c
    if-eqz v27, :cond_e

    #@12e
    .line 485
    move-object/from16 v0, p0

    #@130
    iget-object v0, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@132
    move-object/from16 v27, v0

    #@134
    move-object/from16 v0, v27

    #@136
    move-object/from16 v1, v24

    #@138
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13b
    move-result-object v16

    #@13c
    check-cast v16, Ljava/util/Map;

    #@13e
    .line 486
    .local v16, "oldValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    move-object/from16 v0, p0

    #@140
    move-object/from16 v1, v24

    #@142
    move-object/from16 v2, v18

    #@144
    invoke-direct {v0, v1, v13, v2}, Landroid/icu/text/DateIntervalInfo;->setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@147
    .line 487
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@14b
    move-object/from16 v27, v0

    #@14d
    move-object/from16 v0, v27

    #@14f
    move-object/from16 v1, v24

    #@151
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@154
    move-result-object v15

    #@155
    check-cast v15, Ljava/util/Map;

    #@157
    .line 488
    .local v15, "newValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    move-object/from16 v0, v16

    #@159
    invoke-static {v0, v15}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@15c
    move-result v27

    #@15d
    if-nez v27, :cond_5

    #@15f
    .line 489
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@161
    new-instance v28, Ljava/lang/StringBuilder;

    #@163
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    #@166
    const-string/jumbo v29, "\n"

    #@169
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v28

    #@16d
    move-object/from16 v0, v28

    #@16f
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v28

    #@173
    const-string/jumbo v29, ", skeleton: "

    #@176
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@179
    move-result-object v28

    #@17a
    move-object/from16 v0, v28

    #@17c
    move-object/from16 v1, v24

    #@17e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v28

    #@182
    const-string/jumbo v29, ", oldValue: "

    #@185
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v28

    #@189
    move-object/from16 v0, v28

    #@18b
    move-object/from16 v1, v16

    #@18d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v28

    #@191
    const-string/jumbo v29, ", newValue: "

    #@194
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v28

    #@198
    move-object/from16 v0, v28

    #@19a
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v28

    #@19e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a1
    move-result-object v28

    #@1a2
    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a5
    goto/16 :goto_4

    #@1a7
    .line 504
    .end local v4    # "calendarField":I
    .end local v9    # "fallback":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v11    # "intervalPatterns":Landroid/icu/impl/ICUResourceBundle;
    .end local v12    # "itvDtPtnResource":Landroid/icu/impl/ICUResourceBundle;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "newValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    .end local v16    # "oldValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    .end local v18    # "pattern":Ljava/lang/String;
    .end local v20    # "ptnIndex":I
    .end local v21    # "ptnNum":I
    .end local v22    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v23    # "size":I
    .end local v24    # "skeleton":Ljava/lang/String;
    .end local v25    # "skeletonKeyPair":Ljava/lang/String;
    :catch_0
    move-exception v8

    #@1a8
    .local v8, "e":Ljava/util/MissingResourceException;
    move-object v6, v7

    #@1a9
    .end local v7    # "currentLocale":Landroid/icu/util/ULocale;
    .restart local v6    # "currentLocale":Landroid/icu/util/ULocale;
    goto/16 :goto_1

    #@1ab
    .line 465
    .end local v6    # "currentLocale":Landroid/icu/util/ULocale;
    .end local v8    # "e":Ljava/util/MissingResourceException;
    .restart local v4    # "calendarField":I
    .restart local v7    # "currentLocale":Landroid/icu/util/ULocale;
    .restart local v9    # "fallback":Ljava/lang/String;
    .restart local v10    # "index":I
    .restart local v11    # "intervalPatterns":Landroid/icu/impl/ICUResourceBundle;
    .restart local v12    # "itvDtPtnResource":Landroid/icu/impl/ICUResourceBundle;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v18    # "pattern":Ljava/lang/String;
    .restart local v20    # "ptnIndex":I
    .restart local v21    # "ptnNum":I
    .restart local v22    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .restart local v23    # "size":I
    .restart local v24    # "skeleton":Ljava/lang/String;
    .restart local v25    # "skeletonKeyPair":Ljava/lang/String;
    :cond_8
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@1ad
    const/16 v28, 0x2

    #@1af
    aget-object v27, v27, v28

    #@1b1
    move-object/from16 v0, v27

    #@1b3
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b6
    move-result v27

    #@1b7
    if-eqz v27, :cond_9

    #@1b9
    .line 466
    const/4 v4, 0x2

    #@1ba
    goto/16 :goto_5

    #@1bc
    .line 467
    :cond_9
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@1be
    const/16 v28, 0x5

    #@1c0
    aget-object v27, v27, v28

    #@1c2
    move-object/from16 v0, v27

    #@1c4
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c7
    move-result v27

    #@1c8
    if-eqz v27, :cond_a

    #@1ca
    .line 468
    const/4 v4, 0x5

    #@1cb
    goto/16 :goto_5

    #@1cd
    .line 469
    :cond_a
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@1cf
    const/16 v28, 0x9

    #@1d1
    aget-object v27, v27, v28

    #@1d3
    move-object/from16 v0, v27

    #@1d5
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d8
    move-result v27

    #@1d9
    if-eqz v27, :cond_b

    #@1db
    .line 470
    const/16 v4, 0x9

    #@1dd
    goto/16 :goto_5

    #@1df
    .line 471
    :cond_b
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@1e1
    const/16 v28, 0xa

    #@1e3
    aget-object v27, v27, v28

    #@1e5
    move-object/from16 v0, v27

    #@1e7
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ea
    move-result v27

    #@1eb
    if-eqz v27, :cond_c

    #@1ed
    .line 472
    const/16 v4, 0xa

    #@1ef
    .line 473
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@1f1
    const/16 v28, 0xa

    #@1f3
    aget-object v13, v27, v28

    #@1f5
    goto/16 :goto_5

    #@1f7
    .line 474
    :cond_c
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@1f9
    const/16 v28, 0xb

    #@1fb
    aget-object v27, v27, v28

    #@1fd
    move-object/from16 v0, v27

    #@1ff
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@202
    move-result v27

    #@203
    if-eqz v27, :cond_d

    #@205
    .line 477
    const/16 v4, 0xa

    #@207
    .line 478
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@209
    const/16 v28, 0xa

    #@20b
    aget-object v13, v27, v28

    #@20d
    goto/16 :goto_5

    #@20f
    .line 479
    :cond_d
    sget-object v27, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@211
    const/16 v28, 0xc

    #@213
    aget-object v27, v27, v28

    #@215
    move-object/from16 v0, v27

    #@217
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21a
    move-result v27

    #@21b
    if-eqz v27, :cond_7

    #@21d
    .line 480
    const/16 v4, 0xc

    #@21f
    goto/16 :goto_5

    #@221
    .line 492
    :cond_e
    move-object/from16 v0, p0

    #@223
    move-object/from16 v1, v24

    #@225
    move-object/from16 v2, v18

    #@227
    invoke-direct {v0, v1, v13, v2}, Landroid/icu/text/DateIntervalInfo;->setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    #@22a
    goto/16 :goto_4

    #@22c
    .line 498
    .end local v4    # "calendarField":I
    .end local v11    # "intervalPatterns":Landroid/icu/impl/ICUResourceBundle;
    .end local v13    # "key":Ljava/lang/String;
    .end local v18    # "pattern":Ljava/lang/String;
    .end local v20    # "ptnIndex":I
    .end local v21    # "ptnNum":I
    .end local v24    # "skeleton":Ljava/lang/String;
    .end local v25    # "skeletonKeyPair":Ljava/lang/String;
    :cond_f
    :try_start_2
    const-string/jumbo v27, "%%Parent"

    #@22f
    move-object/from16 v0, v22

    #@231
    move-object/from16 v1, v27

    #@233
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@236
    move-result-object v17

    #@237
    .line 499
    .local v17, "parentNameBundle":Landroid/icu/util/UResourceBundle;
    new-instance v6, Landroid/icu/util/ULocale;

    #@239
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@23c
    move-result-object v27

    #@23d
    move-object/from16 v0, v27

    #@23f
    invoke-direct {v6, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    #@242
    .line 503
    .end local v7    # "currentLocale":Landroid/icu/util/ULocale;
    .end local v17    # "parentNameBundle":Landroid/icu/util/UResourceBundle;
    .restart local v6    # "currentLocale":Landroid/icu/util/ULocale;
    :goto_6
    if-eqz v6, :cond_1

    #@244
    :try_start_3
    invoke-virtual {v6}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@247
    move-result-object v27

    #@248
    const-string/jumbo v28, "root"

    #@24b
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    #@24e
    move-result v27

    #@24f
    if-nez v27, :cond_1

    #@251
    .end local v9    # "fallback":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v12    # "itvDtPtnResource":Landroid/icu/impl/ICUResourceBundle;
    .end local v14    # "name":Ljava/lang/String;
    .end local v22    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v23    # "size":I
    :cond_10
    move-object v7, v6

    #@252
    .end local v6    # "currentLocale":Landroid/icu/util/ULocale;
    .restart local v7    # "currentLocale":Landroid/icu/util/ULocale;
    goto/16 :goto_0

    #@254
    .line 500
    .restart local v9    # "fallback":Ljava/lang/String;
    .restart local v10    # "index":I
    .restart local v12    # "itvDtPtnResource":Landroid/icu/impl/ICUResourceBundle;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v22    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .restart local v23    # "size":I
    :catch_1
    move-exception v8

    #@255
    .line 501
    .restart local v8    # "e":Ljava/util/MissingResourceException;
    :try_start_4
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_0

    #@258
    move-result-object v6

    #@259
    .end local v7    # "currentLocale":Landroid/icu/util/ULocale;
    .restart local v6    # "currentLocale":Landroid/icu/util/ULocale;
    goto :goto_6

    #@25a
    .line 504
    .end local v5    # "calendarTypeToUse":Ljava/lang/String;
    .end local v8    # "e":Ljava/util/MissingResourceException;
    .end local v9    # "fallback":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v12    # "itvDtPtnResource":Landroid/icu/impl/ICUResourceBundle;
    .end local v14    # "name":Ljava/lang/String;
    .end local v22    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v23    # "size":I
    :catch_2
    move-exception v8

    #@25b
    .restart local v8    # "e":Ljava/util/MissingResourceException;
    goto/16 :goto_1
.end method

.method private static splitPatternInto2Part(Ljava/lang/String;)I
    .locals 11
    .param p0, "intervalPattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v10, 0x27

    #@2
    .line 516
    const/4 v4, 0x0

    #@3
    .line 517
    .local v4, "inQuote":Z
    const/4 v6, 0x0

    #@4
    .line 518
    .local v6, "prevCh":C
    const/4 v1, 0x0

    #@5
    .line 524
    .local v1, "count":I
    const/16 v8, 0x3a

    #@7
    new-array v5, v8, [I

    #@9
    .line 533
    .local v5, "patternRepeated":[I
    const/4 v2, 0x0

    #@a
    .line 534
    .local v2, "foundRepetition":Z
    const/4 v3, 0x0

    #@b
    .end local v6    # "prevCh":C
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v8

    #@f
    if-ge v3, v8, :cond_3

    #@11
    .line 535
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 537
    .local v0, "ch":C
    if-eq v0, v6, :cond_0

    #@17
    if-lez v1, :cond_0

    #@19
    .line 539
    add-int/lit8 v8, v6, -0x41

    #@1b
    aget v7, v5, v8

    #@1d
    .line 540
    .local v7, "repeated":I
    if-nez v7, :cond_2

    #@1f
    .line 541
    add-int/lit8 v8, v6, -0x41

    #@21
    const/4 v9, 0x1

    #@22
    aput v9, v5, v8

    #@24
    .line 546
    const/4 v1, 0x0

    #@25
    .line 548
    .end local v7    # "repeated":I
    :cond_0
    if-ne v0, v10, :cond_7

    #@27
    .line 551
    add-int/lit8 v8, v3, 0x1

    #@29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@2c
    move-result v9

    #@2d
    if-ge v8, v9, :cond_5

    #@2f
    .line 552
    add-int/lit8 v8, v3, 0x1

    #@31
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v8

    #@35
    if-ne v8, v10, :cond_5

    #@37
    .line 553
    add-int/lit8 v3, v3, 0x1

    #@39
    .line 534
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 543
    .restart local v7    # "repeated":I
    :cond_2
    const/4 v2, 0x1

    #@3d
    .line 569
    .end local v0    # "ch":C
    .end local v7    # "repeated":I
    :cond_3
    if-lez v1, :cond_4

    #@3f
    if-nez v2, :cond_4

    #@41
    .line 570
    add-int/lit8 v8, v6, -0x41

    #@43
    aget v8, v5, v8

    #@45
    if-nez v8, :cond_4

    #@47
    .line 571
    const/4 v1, 0x0

    #@48
    .line 574
    :cond_4
    sub-int v8, v3, v1

    #@4a
    return v8

    #@4b
    .line 555
    .restart local v0    # "ch":C
    :cond_5
    if-eqz v4, :cond_6

    #@4d
    const/4 v4, 0x0

    #@4e
    goto :goto_1

    #@4f
    :cond_6
    const/4 v4, 0x1

    #@50
    goto :goto_1

    #@51
    .line 558
    :cond_7
    if-nez v4, :cond_1

    #@53
    const/16 v8, 0x61

    #@55
    if-lt v0, v8, :cond_8

    #@57
    const/16 v8, 0x7a

    #@59
    if-gt v0, v8, :cond_8

    #@5b
    .line 561
    :goto_2
    move v6, v0

    #@5c
    .line 562
    .local v6, "prevCh":C
    add-int/lit8 v1, v1, 0x1

    #@5e
    goto :goto_1

    #@5f
    .line 559
    .end local v6    # "prevCh":C
    :cond_8
    const/16 v8, 0x41

    #@61
    if-lt v0, v8, :cond_1

    #@63
    const/16 v8, 0x5a

    #@65
    if-gt v0, v8, :cond_1

    #@67
    goto :goto_2
.end method

.method private static stringNumeric(IIC)Z
    .locals 2
    .param p0, "fieldWidth"    # I
    .param p1, "anotherFieldWidth"    # I
    .param p2, "patternLetter"    # C

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 930
    const/16 v0, 0x4d

    #@3
    if-ne p2, v0, :cond_2

    #@5
    .line 931
    if-gt p0, v1, :cond_1

    #@7
    if-le p1, v1, :cond_1

    #@9
    .line 933
    :cond_0
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 932
    :cond_1
    if-le p0, v1, :cond_2

    #@d
    if-le p1, v1, :cond_0

    #@f
    .line 936
    :cond_2
    const/4 v0, 0x0

    #@10
    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 820
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 821
    return-object p0

    #@5
    .line 823
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/DateIntervalInfo;->cloneUnfrozenDII()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/text/DateIntervalInfo;
    .locals 1

    #@0
    .prologue
    .line 895
    invoke-direct {p0}, Landroid/icu/text/DateIntervalInfo;->cloneUnfrozenDII()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    #@6
    .line 896
    .local v0, "result":Landroid/icu/text/DateIntervalInfo;
    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 894
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->cloneAsThawed()Landroid/icu/text/DateIntervalInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "a"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1028
    instance-of v1, p1, Landroid/icu/text/DateIntervalInfo;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 1029
    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    #@7
    .line 1030
    .local v0, "dtInfo":Landroid/icu/text/DateIntervalInfo;
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@9
    iget-object v2, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@b
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 1032
    .end local v0    # "dtInfo":Landroid/icu/text/DateIntervalInfo;
    :cond_0
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public freeze()Landroid/icu/text/DateIntervalInfo;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 885
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    #@3
    .line 886
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    #@5
    .line 887
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 884
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    .locals 21
    .param p1, "inputSkeleton"    # Ljava/lang/String;

    #@0
    .prologue
    .line 955
    move-object/from16 v8, p1

    #@2
    .line 956
    .local v8, "bestSkeleton":Ljava/lang/String;
    const/16 v19, 0x3a

    #@4
    move/from16 v0, v19

    #@6
    new-array v14, v0, [I

    #@8
    .line 957
    .local v14, "inputSkeletonFieldWidth":[I
    const/16 v19, 0x3a

    #@a
    move/from16 v0, v19

    #@c
    new-array v0, v0, [I

    #@e
    move-object/from16 v18, v0

    #@10
    .line 959
    .local v18, "skeletonFieldWidth":[I
    const/16 v4, 0x1000

    #@12
    .line 960
    .local v4, "DIFFERENT_FIELD":I
    const/16 v5, 0x100

    #@14
    .line 961
    .local v5, "STRING_NUMERIC_DIFFERENCE":I
    const/16 v3, 0x41

    #@16
    .line 966
    .local v3, "BASE":I
    const/4 v15, 0x0

    #@17
    .line 967
    .local v15, "replaceZWithV":Z
    const/16 v19, 0x7a

    #@19
    move-object/from16 v0, p1

    #@1b
    move/from16 v1, v19

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@20
    move-result v19

    #@21
    const/16 v20, -0x1

    #@23
    move/from16 v0, v19

    #@25
    move/from16 v1, v20

    #@27
    if-eq v0, v1, :cond_0

    #@29
    .line 968
    const/16 v19, 0x7a

    #@2b
    const/16 v20, 0x76

    #@2d
    move-object/from16 v0, p1

    #@2f
    move/from16 v1, v19

    #@31
    move/from16 v2, v20

    #@33
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@36
    move-result-object p1

    #@37
    .line 969
    const/4 v15, 0x1

    #@38
    .line 972
    :cond_0
    move-object/from16 v0, p1

    #@3a
    invoke-static {v0, v14}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    #@3d
    .line 973
    const v6, 0x7fffffff

    #@40
    .line 978
    .local v6, "bestDistance":I
    const/4 v7, 0x0

    #@41
    .line 979
    .local v7, "bestFieldDifference":I
    move-object/from16 v0, p0

    #@43
    iget-object v0, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@45
    move-object/from16 v19, v0

    #@47
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@4a
    move-result-object v19

    #@4b
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v17

    #@4f
    .local v17, "skeleton$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v19

    #@53
    if-eqz v19, :cond_9

    #@55
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v16

    #@59
    check-cast v16, Ljava/lang/String;

    #@5b
    .line 981
    .local v16, "skeleton":Ljava/lang/String;
    const/4 v12, 0x0

    #@5c
    .local v12, "i":I
    :goto_0
    move-object/from16 v0, v18

    #@5e
    array-length v0, v0

    #@5f
    move/from16 v19, v0

    #@61
    move/from16 v0, v19

    #@63
    if-ge v12, v0, :cond_2

    #@65
    .line 982
    const/16 v19, 0x0

    #@67
    aput v19, v18, v12

    #@69
    .line 981
    add-int/lit8 v12, v12, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 984
    :cond_2
    move-object/from16 v0, v16

    #@6e
    move-object/from16 v1, v18

    #@70
    invoke-static {v0, v1}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    #@73
    .line 986
    const/4 v9, 0x0

    #@74
    .line 987
    .local v9, "distance":I
    const/4 v10, 0x1

    #@75
    .line 988
    .local v10, "fieldDifference":I
    const/4 v12, 0x0

    #@76
    :goto_1
    array-length v0, v14

    #@77
    move/from16 v19, v0

    #@79
    move/from16 v0, v19

    #@7b
    if-ge v12, v0, :cond_7

    #@7d
    .line 989
    aget v13, v14, v12

    #@7f
    .line 990
    .local v13, "inputFieldWidth":I
    aget v11, v18, v12

    #@81
    .line 991
    .local v11, "fieldWidth":I
    if-ne v13, v11, :cond_3

    #@83
    .line 988
    :goto_2
    add-int/lit8 v12, v12, 0x1

    #@85
    goto :goto_1

    #@86
    .line 994
    :cond_3
    if-nez v13, :cond_4

    #@88
    .line 995
    const/4 v10, -0x1

    #@89
    .line 996
    add-int/lit16 v9, v9, 0x1000

    #@8b
    goto :goto_2

    #@8c
    .line 997
    :cond_4
    if-nez v11, :cond_5

    #@8e
    .line 998
    const/4 v10, -0x1

    #@8f
    .line 999
    add-int/lit16 v9, v9, 0x1000

    #@91
    goto :goto_2

    #@92
    .line 1001
    :cond_5
    add-int/lit8 v19, v12, 0x41

    #@94
    move/from16 v0, v19

    #@96
    int-to-char v0, v0

    #@97
    move/from16 v19, v0

    #@99
    .line 1000
    move/from16 v0, v19

    #@9b
    invoke-static {v13, v11, v0}, Landroid/icu/text/DateIntervalInfo;->stringNumeric(IIC)Z

    #@9e
    move-result v19

    #@9f
    if-eqz v19, :cond_6

    #@a1
    .line 1002
    add-int/lit16 v9, v9, 0x100

    #@a3
    goto :goto_2

    #@a4
    .line 1004
    :cond_6
    sub-int v19, v13, v11

    #@a6
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    #@a9
    move-result v19

    #@aa
    add-int v9, v9, v19

    #@ac
    goto :goto_2

    #@ad
    .line 1007
    .end local v11    # "fieldWidth":I
    .end local v13    # "inputFieldWidth":I
    :cond_7
    if-ge v9, v6, :cond_8

    #@af
    .line 1008
    move-object/from16 v8, v16

    #@b1
    .line 1009
    move v6, v9

    #@b2
    .line 1010
    move v7, v10

    #@b3
    .line 1012
    :cond_8
    if-nez v9, :cond_1

    #@b5
    .line 1013
    const/4 v7, 0x0

    #@b6
    .line 1017
    .end local v9    # "distance":I
    .end local v10    # "fieldDifference":I
    .end local v12    # "i":I
    .end local v16    # "skeleton":Ljava/lang/String;
    :cond_9
    if-eqz v15, :cond_a

    #@b8
    const/16 v19, -0x1

    #@ba
    move/from16 v0, v19

    #@bc
    if-eq v7, v0, :cond_a

    #@be
    .line 1018
    const/4 v7, 0x2

    #@bf
    .line 1020
    :cond_a
    new-instance v19, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    #@c1
    move-object/from16 v0, v19

    #@c3
    invoke-direct {v0, v8, v7}, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;-><init>(Ljava/lang/String;I)V

    #@c6
    return-object v19
.end method

.method public getDefaultOrder()Z
    .locals 1

    #@0
    .prologue
    .line 809
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    #@2
    return v0
.end method

.method public getFallbackIntervalPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 762
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .locals 4
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "field"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 739
    const/16 v2, 0xc

    #@3
    if-le p2, v2, :cond_0

    #@5
    .line 740
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v3, "no support for field less than MINUTE"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 742
    :cond_0
    iget-object v2, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@10
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/util/Map;

    #@16
    .line 743
    .local v1, "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;"
    if-eqz v1, :cond_1

    #@18
    .line 745
    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@1a
    aget-object v2, v2, p2

    #@1c
    .line 744
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@22
    .line 746
    .local v0, "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    if-eqz v0, :cond_1

    #@24
    .line 747
    return-object v0

    #@25
    .line 750
    .end local v0    # "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_1
    return-object v3
.end method

.method public getPatterns()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1049
    new-instance v2, Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    #@5
    .line 1050
    .local v2, "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v3, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@7
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/Map$Entry;

    #@1b
    .line 1051
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Ljava/lang/String;

    #@21
    new-instance v5, Ljava/util/LinkedHashSet;

    #@23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Ljava/util/Map;

    #@29
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v5, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    #@30
    invoke-virtual {v2, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    goto :goto_0

    #@34
    .line 1053
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    :cond_0
    return-object v2
.end method

.method public getRawPatterns()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1063
    new-instance v2, Ljava/util/LinkedHashMap;

    #@2
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    #@5
    .line 1064
    .local v2, "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    iget-object v3, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@7
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/Map$Entry;

    #@1b
    .line 1065
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Ljava/lang/String;

    #@21
    new-instance v5, Ljava/util/LinkedHashMap;

    #@23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Ljava/util/Map;

    #@29
    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    #@2c
    invoke-virtual {v2, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    goto :goto_0

    #@30
    .line 1067
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    :cond_0
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 1040
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 877
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    #@2
    return v0
.end method

.method public setFallbackIntervalPattern(Ljava/lang/String;)V
    .locals 4
    .param p1, "fallbackPattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 784
    iget-boolean v2, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 785
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@7
    const-string/jumbo v3, "no modification is allowed after DII is frozen"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 787
    :cond_0
    const-string/jumbo v2, "{0}"

    #@11
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@14
    move-result v0

    #@15
    .line 788
    .local v0, "firstPatternIndex":I
    const-string/jumbo v2, "{1}"

    #@18
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1b
    move-result v1

    #@1c
    .line 789
    .local v1, "secondPatternIndex":I
    if-eq v0, v3, :cond_1

    #@1e
    if-ne v1, v3, :cond_2

    #@20
    .line 790
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v3, "no pattern {0} or pattern {1} in fallbackPattern"

    #@25
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 792
    :cond_2
    if-le v0, v1, :cond_3

    #@2b
    .line 793
    const/4 v2, 0x1

    #@2c
    iput-boolean v2, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    #@2e
    .line 795
    :cond_3
    iput-object p1, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    #@30
    .line 782
    return-void
.end method

.method public setIntervalPattern(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "lrgDiffCalUnit"    # I
    .param p3, "intervalPattern"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x5

    #@1
    .line 616
    iget-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 617
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@7
    const-string/jumbo v2, "no modification is allowed after DII is frozen"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 619
    :cond_0
    const/16 v1, 0xc

    #@10
    if-le p2, v1, :cond_1

    #@12
    .line 620
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v2, "calendar field is larger than MINIMUM_SUPPORTED_CALENDAR_FIELD"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 622
    :cond_1
    iget-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 623
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@21
    invoke-static {v1}, Landroid/icu/text/DateIntervalInfo;->cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;

    #@24
    move-result-object v1

    #@25
    iput-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    #@27
    .line 624
    const/4 v1, 0x0

    #@28
    iput-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    #@2a
    .line 627
    :cond_2
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@2c
    aget-object v1, v1, p2

    #@2e
    .line 626
    invoke-direct {p0, p1, v1, p3}, Landroid/icu/text/DateIntervalInfo;->setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@31
    move-result-object v0

    #@32
    .line 629
    .local v0, "ptnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    const/16 v1, 0xb

    #@34
    if-ne p2, v1, :cond_4

    #@36
    .line 631
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@38
    const/16 v2, 0x9

    #@3a
    aget-object v1, v1, v2

    #@3c
    .line 630
    invoke-direct {p0, p1, v1, v0}, Landroid/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V

    #@3f
    .line 634
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@41
    const/16 v2, 0xa

    #@43
    aget-object v1, v1, v2

    #@45
    .line 633
    invoke-direct {p0, p1, v1, v0}, Landroid/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V

    #@48
    .line 614
    :cond_3
    :goto_0
    return-void

    #@49
    .line 636
    :cond_4
    if-eq p2, v2, :cond_5

    #@4b
    .line 637
    const/4 v1, 0x7

    #@4c
    if-ne p2, v1, :cond_3

    #@4e
    .line 639
    :cond_5
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    #@50
    aget-object v1, v1, v2

    #@52
    .line 638
    invoke-direct {p0, p1, v1, v0}, Landroid/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V

    #@55
    goto :goto_0
.end method
