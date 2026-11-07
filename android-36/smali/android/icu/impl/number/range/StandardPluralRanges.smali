.class public Landroid/icu/impl/number/range/StandardPluralRanges;
.super Ljava/lang/Object;
.source "StandardPluralRanges.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/range/StandardPluralRanges$PluralRangeSetsDataSink;,
        Landroid/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT:Landroid/icu/impl/number/range/StandardPluralRanges;

.field private static volatile blacklist languageToSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist flatTriples:[Landroid/icu/impl/StandardPlural;

.field blacklist numTriples:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddPluralRange(Landroid/icu/impl/number/range/StandardPluralRanges;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/number/range/StandardPluralRanges;->addPluralRange(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetCapacity(Landroid/icu/impl/number/range/StandardPluralRanges;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/impl/number/range/StandardPluralRanges;->setCapacity(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/icu/impl/number/range/StandardPluralRanges;

    invoke-direct {v0}, Landroid/icu/impl/number/range/StandardPluralRanges;-><init>()V

    sput-object v0, Landroid/icu/impl/number/range/StandardPluralRanges;->DEFAULT:Landroid/icu/impl/number/range/StandardPluralRanges;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->numTriples:I

    .line 143
    return-void
.end method

.method private blacklist addPluralRange(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V
    .registers 6
    .param p1, "first"    # Landroid/icu/impl/StandardPlural;
    .param p2, "second"    # Landroid/icu/impl/StandardPlural;
    .param p3, "result"    # Landroid/icu/impl/StandardPlural;

    .line 147
    iget-object v0, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->flatTriples:[Landroid/icu/impl/StandardPlural;

    iget v1, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->numTriples:I

    mul-int/lit8 v1, v1, 0x3

    aput-object p1, v0, v1

    .line 148
    iget-object v0, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->flatTriples:[Landroid/icu/impl/StandardPlural;

    iget v1, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->numTriples:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 149
    iget-object v0, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->flatTriples:[Landroid/icu/impl/StandardPlural;

    iget v1, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->numTriples:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    aput-object p3, v0, v1

    .line 150
    iget v0, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->numTriples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->numTriples:I

    .line 151
    return-void
.end method

.method public static blacklist forLocale(Landroid/icu/util/ULocale;)Landroid/icu/impl/number/range/StandardPluralRanges;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 123
    invoke-static {p0}, Landroid/icu/impl/number/range/StandardPluralRanges;->getSetForLocale(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/number/range/StandardPluralRanges;->forSet(Ljava/lang/String;)Landroid/icu/impl/number/range/StandardPluralRanges;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forSet(Ljava/lang/String;)Landroid/icu/impl/number/range/StandardPluralRanges;
    .registers 3
    .param p0, "set"    # Ljava/lang/String;

    .line 128
    new-instance v0, Landroid/icu/impl/number/range/StandardPluralRanges;

    invoke-direct {v0}, Landroid/icu/impl/number/range/StandardPluralRanges;-><init>()V

    .line 129
    .local v0, "result":Landroid/icu/impl/number/range/StandardPluralRanges;
    if-nez p0, :cond_a

    .line 131
    sget-object v1, Landroid/icu/impl/number/range/StandardPluralRanges;->DEFAULT:Landroid/icu/impl/number/range/StandardPluralRanges;

    return-object v1

    .line 133
    :cond_a
    invoke-static {p0, v0}, Landroid/icu/impl/number/range/StandardPluralRanges;->getPluralRangesData(Ljava/lang/String;Landroid/icu/impl/number/range/StandardPluralRanges;)V

    .line 134
    return-object v0
.end method

.method private static blacklist getLanguageToSet()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Landroid/icu/impl/number/range/StandardPluralRanges;->languageToSet:Ljava/util/Map;

    .line 61
    .local v0, "candidate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_22

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/icu/impl/number/range/StandardPluralRanges$PluralRangeSetsDataSink;

    invoke-direct {v2, v1}, Landroid/icu/impl/number/range/StandardPluralRanges$PluralRangeSetsDataSink;-><init>(Ljava/util/Map;)V

    .line 64
    .local v2, "sink":Landroid/icu/impl/number/range/StandardPluralRanges$PluralRangeSetsDataSink;
    nop

    .line 65
    const-string v3, "android/icu/impl/data/icudata"

    const-string v4, "pluralRanges"

    invoke-static {v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    .line 66
    .local v3, "resource":Landroid/icu/impl/ICUResourceBundle;
    const-string v4, "locales"

    invoke-virtual {v3, v4, v2}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 67
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 70
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "sink":Landroid/icu/impl/number/range/StandardPluralRanges$PluralRangeSetsDataSink;
    .end local v3    # "resource":Landroid/icu/impl/ICUResourceBundle;
    :cond_22
    sget-object v1, Landroid/icu/impl/number/range/StandardPluralRanges;->languageToSet:Ljava/util/Map;

    if-nez v1, :cond_28

    .line 71
    sput-object v0, Landroid/icu/impl/number/range/StandardPluralRanges;->languageToSet:Ljava/util/Map;

    .line 73
    :cond_28
    sget-object v1, Landroid/icu/impl/number/range/StandardPluralRanges;->languageToSet:Ljava/util/Map;

    return-object v1
.end method

.method private static blacklist getPluralRangesData(Ljava/lang/String;Landroid/icu/impl/number/range/StandardPluralRanges;)V
    .registers 6
    .param p0, "set"    # Ljava/lang/String;
    .param p1, "out"    # Landroid/icu/impl/number/range/StandardPluralRanges;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "android/icu/impl/data/icudata"

    const-string v2, "pluralRanges"

    invoke-static {v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 111
    .local v1, "resource":Landroid/icu/impl/ICUResourceBundle;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 112
    const-string v2, "rules/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Landroid/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;

    invoke-direct {v3, p1}, Landroid/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;-><init>(Landroid/icu/impl/number/range/StandardPluralRanges;)V

    .line 116
    .local v3, "sink":Landroid/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;
    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 117
    return-void
.end method

.method public static blacklist getSetForLocale(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 139
    invoke-static {}, Landroid/icu/impl/number/range/StandardPluralRanges;->getLanguageToSet()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private blacklist setCapacity(I)V
    .registers 3
    .param p1, "length"    # I

    .line 155
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [Landroid/icu/impl/StandardPlural;

    iput-object v0, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->flatTriples:[Landroid/icu/impl/StandardPlural;

    .line 156
    return-void
.end method


# virtual methods
.method public blacklist resolve(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;
    .registers 6
    .param p1, "first"    # Landroid/icu/impl/StandardPlural;
    .param p2, "second"    # Landroid/icu/impl/StandardPlural;

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->numTriples:I

    if-ge v0, v1, :cond_23

    .line 160
    iget-object v1, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->flatTriples:[Landroid/icu/impl/StandardPlural;

    mul-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_20

    iget-object v1, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->flatTriples:[Landroid/icu/impl/StandardPlural;

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    if-ne p2, v1, :cond_20

    .line 161
    iget-object v1, p0, Landroid/icu/impl/number/range/StandardPluralRanges;->flatTriples:[Landroid/icu/impl/StandardPlural;

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x2

    aget-object v1, v1, v2

    return-object v1

    .line 159
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    .end local v0    # "i":I
    :cond_23
    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    return-object v0
.end method
