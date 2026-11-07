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
        Landroid/icu/text/DateIntervalInfo$DateIntervalSink;,
        Landroid/icu/text/DateIntervalInfo$PatternInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/text/DateIntervalInfo;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final greylist-max-o CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

.field private static greylist-max-o CALENDAR_KEY:Ljava/lang/String; = null

.field private static final greylist-max-o DIICACHE:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o EARLIEST_FIRST_PREFIX:Ljava/lang/String; = null

.field private static greylist-max-o FALLBACK_STRING:Ljava/lang/String; = null

.field private static greylist-max-o INTERVAL_FORMATS_KEY:Ljava/lang/String; = null

.field private static greylist-max-o LATEST_FIRST_PREFIX:Ljava/lang/String; = null

.field private static final greylist-max-o MINIMUM_SUPPORTED_CALENDAR_FIELD:I = 0xe

.field static final greylist-max-o currentSerialVersion:I = 0x1

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private greylist-max-o fFallbackIntervalPattern:Ljava/lang/String;

.field private greylist-max-o fFirstDateInPtnIsLaterDate:Z

.field private greylist-max-o fIntervalPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o fIntervalPatternsReadOnly:Z

.field private volatile transient greylist-max-o frozen:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetfIntervalPatterns(Landroid/icu/text/DateIntervalInfo;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetIntervalPatternInternally(Landroid/icu/text/DateIntervalInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/DateIntervalInfo;->setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCALENDAR_KEY()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetINTERVAL_FORMATS_KEY()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/icu/text/DateIntervalInfo;->INTERVAL_FORMATS_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 25

    .line 277
    const-string v23, " "

    const-string v24, " "

    const-string v1, "G"

    const-string v2, "y"

    const-string v3, "M"

    const-string v4, "w"

    const-string v5, "W"

    const-string v6, "d"

    const-string v7, "D"

    const-string v8, "E"

    const-string v9, "F"

    const-string v10, "a"

    const-string v11, "h"

    const-string v12, "H"

    const-string v13, "m"

    const-string v14, "s"

    const-string v15, "S"

    const-string v16, "z"

    const-string v17, " "

    const-string v18, "Y"

    const-string v19, "e"

    const-string v20, "u"

    const-string v21, "g"

    const-string v22, "A"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    .line 295
    const-string v0, "calendar"

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_KEY:Ljava/lang/String;

    .line 296
    const-string v0, "intervalFormats"

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->INTERVAL_FORMATS_KEY:Ljava/lang/String;

    .line 297
    const-string v0, "fallback"

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->FALLBACK_STRING:Ljava/lang/String;

    .line 298
    const-string v0, "latestFirst:"

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    .line 299
    const-string v0, "earliestFirst:"

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    .line 302
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/DateIntervalInfo;->DIICACHE:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 313
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    .line 319
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 341
    const-string v0, "{0} \u2013 {1}"

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 313
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    .line 319
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 353
    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalInfo;->initializeData(Landroid/icu/util/ULocale;)V

    .line 354
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 365
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/DateIntervalInfo;-><init>(Landroid/icu/util/ULocale;)V

    .line 366
    return-void
.end method

.method private static greylist-max-o cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation

    .line 960
    .local p0, "patterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 961
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 962
    .local v2, "skeletonEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 963
    .local v3, "skeleton":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 964
    .local v4, "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 965
    .local v5, "oneSetPtn":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 966
    .local v7, "calEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 967
    .local v8, "calField":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    .line 968
    .local v9, "value":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    .end local v7    # "calEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    .end local v8    # "calField":Ljava/lang/String;
    .end local v9    # "value":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    goto :goto_32

    .line 970
    :cond_4e
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    .end local v2    # "skeletonEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    .end local v3    # "skeleton":Ljava/lang/String;
    .end local v4    # "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    .end local v5    # "oneSetPtn":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    goto :goto_d

    .line 972
    :cond_52
    return-object v0
.end method

.method private greylist-max-o cloneUnfrozenDII()Ljava/lang/Object;
    .registers 4

    .line 939
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    .line 940
    .local v0, "other":Landroid/icu/text/DateIntervalInfo;
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    .line 941
    iget-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    iput-boolean v1, v0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 942
    iget-boolean v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 943
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iput-object v1, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 944
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    goto :goto_25

    .line 946
    :cond_1b
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-static {v1}, Landroid/icu/text/DateIntervalInfo;->cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 947
    iput-boolean v2, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 949
    :goto_25
    iput-boolean v2, v0, Landroid/icu/text/DateIntervalInfo;->frozen:Z
    :try_end_27
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_27} :catch_28

    .line 950
    return-object v0

    .line 951
    .end local v0    # "other":Landroid/icu/text/DateIntervalInfo;
    :catch_28
    move-exception v0

    .line 953
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string v2, "clone is not supported"

    invoke-direct {v1, v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static greylist-max-o genPatternInfo(Ljava/lang/String;Z)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .registers 6
    .param p0, "intervalPattern"    # Ljava/lang/String;
    .param p1, "laterDateFirst"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 825
    invoke-static {p0}, Landroid/icu/text/DateIntervalInfo;->splitPatternInto2Part(Ljava/lang/String;)I

    move-result v0

    .line 827
    .local v0, "splitPoint":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, "firstPart":Ljava/lang/String;
    const/4 v2, 0x0

    .line 829
    .local v2, "secondPart":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_18

    .line 830
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 833
    :cond_18
    new-instance v3, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    invoke-direct {v3, v1, v2, p1}, Landroid/icu/text/DateIntervalInfo$PatternInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v3
.end method

.method private greylist-max-o initializeData(Landroid/icu/util/ULocale;)V
    .registers 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 374
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->DIICACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, v0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateIntervalInfo;

    .line 376
    .local v1, "dii":Landroid/icu/text/DateIntervalInfo;
    if-nez v1, :cond_24

    .line 378
    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalInfo;->setup(Landroid/icu/util/ULocale;)V

    .line 380
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 382
    sget-object v2, Landroid/icu/text/DateIntervalInfo;->DIICACHE:Landroid/icu/impl/ICUCache;

    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/DateIntervalInfo;

    invoke-virtual {v3}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_27

    .line 384
    :cond_24
    invoke-direct {p0, v1}, Landroid/icu/text/DateIntervalInfo;->initializeFromReadOnlyPatterns(Landroid/icu/text/DateIntervalInfo;)V

    .line 386
    :goto_27
    return-void
.end method

.method private greylist-max-o initializeFromReadOnlyPatterns(Landroid/icu/text/DateIntervalInfo;)V
    .registers 3
    .param p1, "dii"    # Landroid/icu/text/DateIntervalInfo;

    .line 395
    iget-object v0, p1, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    .line 396
    iget-boolean v0, p1, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 397
    iget-object v0, p1, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 399
    return-void
.end method

.method static greylist-max-o parseSkeleton(Ljava/lang/String;[I)V
    .registers 6
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "skeletonFieldWidth"    # [I

    .line 1013
    const/16 v0, 0x41

    .line 1014
    .local v0, "PATTERN_CHAR_BASE":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 1015
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    aget v3, p1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p1, v2

    .line 1014
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1017
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private greylist-max-o setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V
    .registers 5
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "lrgDiffCalUnit"    # Ljava/lang/String;
    .param p3, "ptnInfo"    # Landroid/icu/text/DateIntervalInfo$PatternInfo;

    .line 807
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 808
    .local v0, "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    return-void
.end method

.method private greylist-max-o setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .registers 9
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "lrgDiffCalUnit"    # Ljava/lang/String;
    .param p3, "intervalPattern"    # Ljava/lang/String;

    .line 770
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 771
    .local v0, "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    const/4 v1, 0x0

    .line 772
    .local v1, "emptyHash":Z
    if-nez v0, :cond_12

    .line 773
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, v2

    .line 774
    const/4 v1, 0x1

    .line 776
    :cond_12
    iget-boolean v2, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 778
    .local v2, "order":Z
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 779
    const/4 v2, 0x1

    .line 780
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->LATEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 781
    .local v3, "prefixLength":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .end local v3    # "prefixLength":I
    goto :goto_44

    .line 782
    :cond_2c
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 783
    const/4 v2, 0x0

    .line 784
    sget-object v3, Landroid/icu/text/DateIntervalInfo;->EARLIEST_FIRST_PREFIX:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 785
    .local v3, "earliestFirstLength":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_45

    .line 782
    .end local v3    # "earliestFirstLength":I
    :cond_44
    :goto_44
    nop

    .line 787
    :goto_45
    invoke-static {p3, v2}, Landroid/icu/text/DateIntervalInfo;->genPatternInfo(Ljava/lang/String;Z)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v3

    .line 789
    .local v3, "itvPtnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const/4 v4, 0x1

    if-ne v1, v4, :cond_54

    .line 791
    iget-object v4, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    :cond_54
    return-object v3
.end method

.method private greylist-max-o setup(Landroid/icu/util/ULocale;)V
    .registers 11
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 567
    const-string v0, "calendar"

    const-string v1, "/"

    const/16 v2, 0x13

    .line 568
    .local v2, "DEFAULT_HASH_SIZE":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 571
    const-string v3, "{0} \u2013 {1}"

    iput-object v3, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    .line 575
    :try_start_11
    invoke-virtual {p1, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, "calendarTypeToUse":Ljava/lang/String;
    if-nez v3, :cond_21

    .line 577
    nop

    .line 578
    const/4 v4, 0x1

    invoke-static {v0, p1, v4}, Landroid/icu/util/Calendar;->getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "preferredCalendarTypes":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    move-object v3, v4

    .line 581
    .end local v0    # "preferredCalendarTypes":[Ljava/lang/String;
    :cond_21
    if-nez v3, :cond_26

    .line 582
    const-string v0, "gregorian"

    move-object v3, v0

    .line 586
    :cond_26
    new-instance v0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;

    invoke-direct {v0, p0}, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;-><init>(Landroid/icu/text/DateIntervalInfo;)V

    .line 587
    .local v0, "sink":Landroid/icu/text/DateIntervalInfo$DateIntervalSink;
    const-string v4, "android/icu/impl/data/icudata"

    .line 588
    invoke-static {v4, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    .line 591
    .local v4, "resource":Landroid/icu/impl/ICUResourceBundle;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/icu/text/DateIntervalInfo;->CALENDAR_KEY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/icu/text/DateIntervalInfo;->INTERVAL_FORMATS_KEY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/icu/text/DateIntervalInfo;->FALLBACK_STRING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 593
    .local v5, "fallbackPattern":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/icu/text/DateIntervalInfo;->setFallbackIntervalPattern(Ljava/lang/String;)V

    .line 596
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 598
    .local v6, "loadedCalendarTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_6a
    if-eqz v3, :cond_ae

    .line 600
    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_95

    .line 605
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 608
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/icu/text/DateIntervalInfo;->CALENDAR_KEY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 609
    .local v7, "pathToIntervalFormats":Ljava/lang/String;
    invoke-virtual {v4, v7, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 612
    invoke-virtual {v0}, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->getAndResetNextCalendarType()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 613
    .end local v7    # "pathToIntervalFormats":Ljava/lang/String;
    goto :goto_6a

    .line 601
    :cond_95
    new-instance v1, Landroid/icu/util/ICUException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loop in calendar type fallback: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    .end local v2    # "DEFAULT_HASH_SIZE":I
    .end local p0    # "this":Landroid/icu/text/DateIntervalInfo;
    .end local p1    # "locale":Landroid/icu/util/ULocale;
    throw v1
    :try_end_ae
    .catch Ljava/util/MissingResourceException; {:try_start_11 .. :try_end_ae} :catch_af

    .line 616
    .end local v0    # "sink":Landroid/icu/text/DateIntervalInfo$DateIntervalSink;
    .end local v3    # "calendarTypeToUse":Ljava/lang/String;
    .end local v4    # "resource":Landroid/icu/impl/ICUResourceBundle;
    .end local v5    # "fallbackPattern":Ljava/lang/String;
    .end local v6    # "loadedCalendarTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "DEFAULT_HASH_SIZE":I
    .restart local p0    # "this":Landroid/icu/text/DateIntervalInfo;
    .restart local p1    # "locale":Landroid/icu/util/ULocale;
    :cond_ae
    goto :goto_b0

    .line 614
    :catch_af
    move-exception v0

    .line 617
    :goto_b0
    return-void
.end method

.method private static greylist-max-o splitPatternInto2Part(Ljava/lang/String;)I
    .registers 13
    .param p0, "intervalPattern"    # Ljava/lang/String;

    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, "inQuote":Z
    const/4 v1, 0x0

    .line 628
    .local v1, "prevCh":C
    const/4 v2, 0x0

    .line 634
    .local v2, "count":I
    const/16 v3, 0x3a

    new-array v3, v3, [I

    .line 636
    .local v3, "patternRepeated":[I
    const/16 v4, 0x41

    .line 643
    .local v4, "PATTERN_CHAR_BASE":I
    const/4 v5, 0x0

    .line 644
    .local v5, "foundRepetition":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_5d

    .line 645
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 647
    .local v7, "ch":C
    const/4 v8, 0x1

    if-eq v7, v1, :cond_28

    if-lez v2, :cond_28

    .line 649
    sub-int v9, v1, v4

    aget v9, v3, v9

    .line 650
    .local v9, "repeated":I
    if-nez v9, :cond_26

    .line 651
    sub-int v10, v1, v4

    aput v8, v3, v10

    .line 656
    const/4 v2, 0x0

    goto :goto_28

    .line 653
    :cond_26
    const/4 v5, 0x1

    .line 654
    goto :goto_5d

    .line 658
    .end local v9    # "repeated":I
    :cond_28
    :goto_28
    const/16 v9, 0x27

    if-ne v7, v9, :cond_46

    .line 661
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_3f

    add-int/lit8 v10, v6, 0x1

    .line 662
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_3f

    .line 663
    add-int/lit8 v6, v6, 0x1

    goto :goto_5b

    .line 665
    :cond_3f
    if-nez v0, :cond_43

    move v9, v8

    goto :goto_44

    :cond_43
    const/4 v9, 0x0

    :goto_44
    move v0, v9

    .end local v0    # "inQuote":Z
    .local v9, "inQuote":Z
    goto :goto_5b

    .line 668
    .end local v9    # "inQuote":Z
    .restart local v0    # "inQuote":Z
    :cond_46
    if-nez v0, :cond_5b

    const/16 v9, 0x61

    if-lt v7, v9, :cond_50

    const/16 v9, 0x7a

    if-le v7, v9, :cond_58

    :cond_50
    const/16 v9, 0x41

    if-lt v7, v9, :cond_5b

    const/16 v9, 0x5a

    if-gt v7, v9, :cond_5b

    .line 671
    :cond_58
    move v1, v7

    .line 672
    add-int/lit8 v2, v2, 0x1

    .line 644
    .end local v7    # "ch":C
    :cond_5b
    :goto_5b
    add-int/2addr v6, v8

    goto :goto_b

    .line 679
    :cond_5d
    :goto_5d
    if-lez v2, :cond_68

    if-nez v5, :cond_68

    .line 680
    sub-int v7, v1, v4

    aget v7, v3, v7

    if-nez v7, :cond_68

    .line 681
    const/4 v2, 0x0

    .line 684
    :cond_68
    sub-int v7, v6, v2

    return v7
.end method

.method private static greylist-max-o stringNumeric(IIC)Z
    .registers 4
    .param p0, "fieldWidth"    # I
    .param p1, "anotherFieldWidth"    # I
    .param p2, "patternLetter"    # C

    .line 1035
    const/16 v0, 0x4d

    if-ne p2, v0, :cond_f

    .line 1036
    const/4 v0, 0x2

    if-gt p0, v0, :cond_9

    if-gt p1, v0, :cond_d

    :cond_9
    if-le p0, v0, :cond_f

    if-gt p1, v0, :cond_f

    .line 1038
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 1041
    :cond_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 925
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    if-eqz v0, :cond_5

    .line 926
    return-object p0

    .line 928
    :cond_5
    invoke-direct {p0}, Landroid/icu/text/DateIntervalInfo;->cloneUnfrozenDII()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api cloneAsThawed()Landroid/icu/text/DateIntervalInfo;
    .registers 2

    .line 1000
    invoke-direct {p0}, Landroid/icu/text/DateIntervalInfo;->cloneUnfrozenDII()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    .line 1001
    .local v0, "result":Landroid/icu/text/DateIntervalInfo;
    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 160
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->cloneAsThawed()Landroid/icu/text/DateIntervalInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "a"    # Ljava/lang/Object;

    .line 1138
    instance-of v0, p1, Landroid/icu/text/DateIntervalInfo;

    if-eqz v0, :cond_10

    .line 1139
    move-object v0, p1

    check-cast v0, Landroid/icu/text/DateIntervalInfo;

    .line 1140
    .local v0, "dtInfo":Landroid/icu/text/DateIntervalInfo;
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    iget-object v2, v0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1142
    .end local v0    # "dtInfo":Landroid/icu/text/DateIntervalInfo;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api freeze()Landroid/icu/text/DateIntervalInfo;
    .registers 2

    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 991
    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    .line 992
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 160
    invoke-virtual {p0}, Landroid/icu/text/DateIntervalInfo;->freeze()Landroid/icu/text/DateIntervalInfo;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getBestSkeleton(Ljava/lang/String;)Landroid/icu/text/DateIntervalFormat$BestMatchInfo;
    .registers 21
    .param p1, "inputSkeleton"    # Ljava/lang/String;

    .line 1060
    move-object/from16 v0, p1

    move-object/from16 v1, p1

    .line 1061
    .local v1, "bestSkeleton":Ljava/lang/String;
    const/16 v2, 0x3a

    new-array v3, v2, [I

    .line 1062
    .local v3, "inputSkeletonFieldWidth":[I
    new-array v2, v2, [I

    .line 1064
    .local v2, "skeletonFieldWidth":[I
    const/16 v4, 0x1000

    .line 1065
    .local v4, "DIFFERENT_FIELD":I
    const/16 v5, 0x100

    .line 1066
    .local v5, "STRING_NUMERIC_DIFFERENCE":I
    const/16 v6, 0x41

    .line 1072
    .local v6, "BASE":I
    const/4 v7, 0x0

    .line 1073
    .local v7, "replacedAlternateChars":Z
    const/16 v8, 0x7a

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/16 v10, 0x4b

    const/16 v11, 0x6b

    const/4 v12, -0x1

    if-ne v9, v12, :cond_3a

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v9, v12, :cond_3a

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v9, v12, :cond_3a

    const/16 v9, 0x61

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v9, v12, :cond_3a

    const/16 v9, 0x62

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v12, :cond_5b

    .line 1074
    :cond_3a
    const/16 v9, 0x76

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1075
    .end local p1    # "inputSkeleton":Ljava/lang/String;
    .local v0, "inputSkeleton":Ljava/lang/String;
    const/16 v8, 0x48

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1076
    const/16 v8, 0x68

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1077
    const-string v8, "a"

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1078
    const-string v8, "b"

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    const/4 v7, 0x1

    .line 1082
    :cond_5b
    invoke-static {v0, v3}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    .line 1083
    const v8, 0x7fffffff

    .line 1088
    .local v8, "bestDistance":I
    const/4 v9, 0x0

    .line 1089
    .local v9, "bestFieldDifference":I
    move-object/from16 v10, p0

    iget-object v11, v10, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1091
    .local v13, "skeleton":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_7b
    array-length v15, v2

    if-ge v14, v15, :cond_84

    .line 1092
    const/4 v15, 0x0

    aput v15, v2, v14

    .line 1091
    add-int/lit8 v14, v14, 0x1

    goto :goto_7b

    .line 1094
    .end local v14    # "i":I
    :cond_84
    invoke-static {v13, v2}, Landroid/icu/text/DateIntervalInfo;->parseSkeleton(Ljava/lang/String;[I)V

    .line 1096
    const/4 v14, 0x0

    .line 1097
    .local v14, "distance":I
    const/4 v15, 0x1

    .line 1098
    .local v15, "fieldDifference":I
    const/16 v16, 0x0

    move/from16 v12, v16

    .local v12, "i":I
    :goto_8d
    move-object/from16 p1, v0

    .end local v0    # "inputSkeleton":Ljava/lang/String;
    .restart local p1    # "inputSkeleton":Ljava/lang/String;
    array-length v0, v3

    if-ge v12, v0, :cond_cb

    .line 1099
    aget v0, v3, v12

    .line 1100
    .local v0, "inputFieldWidth":I
    move-object/from16 v17, v1

    .end local v1    # "bestSkeleton":Ljava/lang/String;
    .local v17, "bestSkeleton":Ljava/lang/String;
    aget v1, v2, v12

    .line 1101
    .local v1, "fieldWidth":I
    if-ne v0, v1, :cond_9d

    .line 1102
    move-object/from16 v18, v2

    goto :goto_c2

    .line 1104
    :cond_9d
    if-nez v0, :cond_a5

    .line 1105
    const/4 v15, -0x1

    .line 1106
    add-int/lit16 v14, v14, 0x1000

    move-object/from16 v18, v2

    goto :goto_c2

    .line 1107
    :cond_a5
    if-nez v1, :cond_ad

    .line 1108
    const/4 v15, -0x1

    .line 1109
    add-int/lit16 v14, v14, 0x1000

    move-object/from16 v18, v2

    goto :goto_c2

    .line 1110
    :cond_ad
    move-object/from16 v18, v2

    .end local v2    # "skeletonFieldWidth":[I
    .local v18, "skeletonFieldWidth":[I
    add-int/lit8 v2, v12, 0x41

    int-to-char v2, v2

    invoke-static {v0, v1, v2}, Landroid/icu/text/DateIntervalInfo;->stringNumeric(IIC)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 1112
    add-int/lit16 v14, v14, 0x100

    goto :goto_c2

    .line 1114
    :cond_bb
    sub-int v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v14, v2

    .line 1098
    .end local v0    # "inputFieldWidth":I
    .end local v1    # "fieldWidth":I
    :goto_c2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto :goto_8d

    .end local v17    # "bestSkeleton":Ljava/lang/String;
    .end local v18    # "skeletonFieldWidth":[I
    .local v1, "bestSkeleton":Ljava/lang/String;
    .restart local v2    # "skeletonFieldWidth":[I
    :cond_cb
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 1117
    .end local v1    # "bestSkeleton":Ljava/lang/String;
    .end local v2    # "skeletonFieldWidth":[I
    .end local v12    # "i":I
    .restart local v17    # "bestSkeleton":Ljava/lang/String;
    .restart local v18    # "skeletonFieldWidth":[I
    if-ge v14, v8, :cond_d8

    .line 1118
    move-object v0, v13

    .line 1119
    .end local v17    # "bestSkeleton":Ljava/lang/String;
    .local v0, "bestSkeleton":Ljava/lang/String;
    move v1, v14

    .line 1120
    .end local v8    # "bestDistance":I
    .local v1, "bestDistance":I
    move v2, v15

    move v8, v1

    move v9, v2

    move-object v1, v0

    .end local v9    # "bestFieldDifference":I
    .local v2, "bestFieldDifference":I
    goto :goto_da

    .line 1117
    .end local v0    # "bestSkeleton":Ljava/lang/String;
    .end local v1    # "bestDistance":I
    .end local v2    # "bestFieldDifference":I
    .restart local v8    # "bestDistance":I
    .restart local v9    # "bestFieldDifference":I
    .restart local v17    # "bestSkeleton":Ljava/lang/String;
    :cond_d8
    move-object/from16 v1, v17

    .line 1122
    .end local v17    # "bestSkeleton":Ljava/lang/String;
    .local v1, "bestSkeleton":Ljava/lang/String;
    :goto_da
    if-nez v14, :cond_de

    .line 1123
    const/4 v9, 0x0

    .line 1124
    goto :goto_ea

    .line 1126
    .end local v13    # "skeleton":Ljava/lang/String;
    .end local v14    # "distance":I
    .end local v15    # "fieldDifference":I
    :cond_de
    move-object/from16 v0, p1

    move-object/from16 v2, v18

    const/4 v12, -0x1

    goto :goto_6e

    .line 1089
    .end local v18    # "skeletonFieldWidth":[I
    .end local p1    # "inputSkeleton":Ljava/lang/String;
    .local v0, "inputSkeleton":Ljava/lang/String;
    .local v2, "skeletonFieldWidth":[I
    :cond_e4
    move-object/from16 p1, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 1127
    .end local v0    # "inputSkeleton":Ljava/lang/String;
    .end local v2    # "skeletonFieldWidth":[I
    .restart local v18    # "skeletonFieldWidth":[I
    .restart local p1    # "inputSkeleton":Ljava/lang/String;
    :goto_ea
    if-eqz v7, :cond_f0

    const/4 v0, -0x1

    if-eq v9, v0, :cond_f0

    .line 1128
    const/4 v9, 0x2

    .line 1130
    :cond_f0
    new-instance v0, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;

    invoke-direct {v0, v1, v9}, Landroid/icu/text/DateIntervalFormat$BestMatchInfo;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public whitelist test-api getDefaultOrder()Z
    .registers 2

    .line 914
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    return v0
.end method

.method public whitelist test-api getFallbackIntervalPattern()Ljava/lang/String;
    .registers 2

    .line 870
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getIntervalPattern(Ljava/lang/String;I)Landroid/icu/text/DateIntervalInfo$PatternInfo;
    .registers 5
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "field"    # I

    .line 848
    const/16 v0, 0xe

    if-gt p2, v0, :cond_1d

    .line 851
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 852
    .local v0, "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    if-eqz v0, :cond_1b

    .line 853
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v1, v1, p2

    .line 854
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    .line 855
    .local v1, "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    if-eqz v1, :cond_1b

    .line 856
    return-object v1

    .line 859
    .end local v1    # "intervalPattern":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_1b
    const/4 v1, 0x0

    return-object v1

    .line 849
    .end local v0    # "patternsOfOneSkeleton":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;"
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no support for field less than MILLISECOND"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getPatterns()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1160
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1161
    .local v0, "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1162
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    goto :goto_f

    .line 1164
    :cond_34
    return-object v0
.end method

.method public greylist-max-o getRawPatterns()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalInfo$PatternInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1175
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1176
    .local v0, "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1177
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;>;>;"
    goto :goto_f

    .line 1179
    :cond_30
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1150
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 982
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    return v0
.end method

.method public whitelist test-api setFallbackIntervalPattern(Ljava/lang/String;)V
    .registers 6
    .param p1, "fallbackPattern"    # Ljava/lang/String;

    .line 890
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    if-nez v0, :cond_25

    .line 893
    const-string v0, "{0}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 894
    .local v0, "firstPatternIndex":I
    const-string v1, "{1}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 895
    .local v1, "secondPatternIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1d

    if-eq v1, v2, :cond_1d

    .line 898
    if-le v0, v1, :cond_1a

    .line 899
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/icu/text/DateIntervalInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 901
    :cond_1a
    iput-object p1, p0, Landroid/icu/text/DateIntervalInfo;->fFallbackIntervalPattern:Ljava/lang/String;

    .line 902
    return-void

    .line 896
    :cond_1d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no pattern {0} or pattern {1} in fallbackPattern"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 891
    .end local v0    # "firstPatternIndex":I
    .end local v1    # "secondPatternIndex":I
    :cond_25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "no modification is allowed after DII is frozen"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setIntervalPattern(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "skeleton"    # Ljava/lang/String;
    .param p2, "lrgDiffCalUnit"    # I
    .param p3, "intervalPattern"    # Ljava/lang/String;

    .line 725
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->frozen:Z

    if-nez v0, :cond_4c

    .line 728
    const/16 v0, 0xe

    if-gt p2, v0, :cond_44

    .line 731
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    if-eqz v0, :cond_17

    .line 732
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    invoke-static {v0}, Landroid/icu/text/DateIntervalInfo;->cloneIntervalPatterns(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatterns:Ljava/util/Map;

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/DateIntervalInfo;->fIntervalPatternsReadOnly:Z

    .line 735
    :cond_17
    sget-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/DateIntervalInfo;->setIntervalPatternInternally(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    move-result-object v0

    .line 738
    .local v0, "ptnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    const/16 v1, 0xb

    if-ne p2, v1, :cond_36

    .line 739
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-direct {p0, p1, v1, v0}, Landroid/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V

    .line 742
    sget-object v1, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-direct {p0, p1, v1, v0}, Landroid/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V

    goto :goto_43

    .line 745
    :cond_36
    const/4 v1, 0x5

    if-eq p2, v1, :cond_3c

    const/4 v2, 0x7

    if-ne p2, v2, :cond_43

    .line 747
    :cond_3c
    sget-object v2, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-direct {p0, p1, v1, v0}, Landroid/icu/text/DateIntervalInfo;->setIntervalPattern(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/DateIntervalInfo$PatternInfo;)V

    .line 751
    :cond_43
    :goto_43
    return-void

    .line 729
    .end local v0    # "ptnInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calendar field is larger than MINIMUM_SUPPORTED_CALENDAR_FIELD"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_4c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "no modification is allowed after DII is frozen"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
