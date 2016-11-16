.class public Ljava/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;
    }
.end annotation


# static fields
.field static final PATTERN_AM_PM:I = 0xe

.field static final PATTERN_DAY_OF_MONTH:I = 0x3

.field static final PATTERN_DAY_OF_WEEK:I = 0x9

.field static final PATTERN_DAY_OF_WEEK_IN_MONTH:I = 0xb

.field static final PATTERN_DAY_OF_YEAR:I = 0xa

.field static final PATTERN_ERA:I = 0x0

.field static final PATTERN_HOUR0:I = 0x10

.field static final PATTERN_HOUR1:I = 0xf

.field static final PATTERN_HOUR_OF_DAY0:I = 0x5

.field static final PATTERN_HOUR_OF_DAY1:I = 0x4

.field static final PATTERN_ISO_DAY_OF_WEEK:I = 0x14

.field static final PATTERN_ISO_ZONE:I = 0x15

.field static final PATTERN_MILLISECOND:I = 0x8

.field static final PATTERN_MINUTE:I = 0x6

.field static final PATTERN_MONTH:I = 0x2

.field static final PATTERN_SECOND:I = 0x7

.field static final PATTERN_STANDALONE_DAY_OF_WEEK:I = 0x17

.field static final PATTERN_STANDALONE_MONTH:I = 0x16

.field static final PATTERN_WEEK_OF_MONTH:I = 0xd

.field static final PATTERN_WEEK_OF_YEAR:I = 0xc

.field static final PATTERN_WEEK_YEAR:I = 0x13

.field static final PATTERN_YEAR:I = 0x1

.field static final PATTERN_ZONE_NAME:I = 0x11

.field static final PATTERN_ZONE_VALUE:I = 0x12

.field private static final cachedInstances:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/text/DateFormatSymbols;",
            ">;>;"
        }
    .end annotation
.end field

.field static final currentSerialVersion:I = 0x1

.field static final millisPerHour:I = 0x36ee80

.field static final patternChars:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZYuXLc"

.field static final serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field ampms:[Ljava/lang/String;

.field eras:[Ljava/lang/String;

.field transient isZoneStringsSet:Z

.field private transient lastZoneIndex:I

.field localPatternChars:Ljava/lang/String;

.field locale:Ljava/util/Locale;

.field months:[Ljava/lang/String;

.field private serialVersionOnStream:I

.field shortMonths:[Ljava/lang/String;

.field private shortStandAloneMonths:[Ljava/lang/String;

.field private shortStandAloneWeekdays:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field private standAloneMonths:[Ljava/lang/String;

.field private standAloneWeekdays:[Ljava/lang/String;

.field private tinyMonths:[Ljava/lang/String;

.field private tinyStandAloneMonths:[Ljava/lang/String;

.field private tinyStandAloneWeekdays:[Ljava/lang/String;

.field private tinyWeekdays:[Ljava/lang/String;

.field weekdays:[Ljava/lang/String;

.field zoneStrings:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 767
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@6
    .line 766
    sput-object v0, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    #@8
    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 148
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@7
    .line 156
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@9
    .line 165
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@b
    .line 174
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@d
    .line 183
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@f
    .line 191
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@11
    .line 218
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@13
    .line 223
    iput-boolean v1, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    #@15
    .line 269
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@17
    .line 277
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@19
    .line 299
    const/4 v0, 0x1

    #@1a
    iput v0, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    #@1c
    .line 769
    iput v1, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    #@1e
    .line 121
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@20
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@23
    move-result-object v0

    #@24
    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->initializeData(Ljava/util/Locale;)V

    #@27
    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 148
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@7
    .line 156
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@9
    .line 165
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@b
    .line 174
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@d
    .line 183
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@f
    .line 191
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@11
    .line 218
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@13
    .line 223
    iput-boolean v1, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    #@15
    .line 269
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@17
    .line 277
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@19
    .line 299
    const/4 v0, 0x1

    #@1a
    iput v0, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    #@1c
    .line 769
    iput v1, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    #@1e
    .line 140
    invoke-direct {p0, p1}, Ljava/text/DateFormatSymbols;->initializeData(Ljava/util/Locale;)V

    #@21
    .line 138
    return-void
.end method

.method private final copyMembers(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)V
    .locals 3
    .param p1, "src"    # Ljava/text/DateFormatSymbols;
    .param p2, "dst"    # Ljava/text/DateFormatSymbols;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 916
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@3
    iget-object v1, p1, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@5
    array-length v1, v1

    #@6
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, [Ljava/lang/String;

    #@c
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@e
    .line 917
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@10
    iget-object v1, p1, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@12
    array-length v1, v1

    #@13
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, [Ljava/lang/String;

    #@19
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@1b
    .line 918
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@1d
    iget-object v1, p1, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@1f
    array-length v1, v1

    #@20
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, [Ljava/lang/String;

    #@26
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@28
    .line 919
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@2a
    iget-object v1, p1, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@2c
    array-length v1, v1

    #@2d
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, [Ljava/lang/String;

    #@33
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@35
    .line 920
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@37
    iget-object v1, p1, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@39
    array-length v1, v1

    #@3a
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, [Ljava/lang/String;

    #@40
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@42
    .line 921
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@44
    iget-object v1, p1, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@46
    array-length v1, v1

    #@47
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, [Ljava/lang/String;

    #@4d
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@4f
    .line 922
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@51
    if-eqz v0, :cond_0

    #@53
    .line 923
    const/4 v0, 0x1

    #@54
    invoke-direct {p1, v0}, Ljava/text/DateFormatSymbols;->getZoneStringsImpl(Z)[[Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@5a
    .line 927
    :goto_0
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@5c
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@5e
    .line 929
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    #@60
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    #@62
    .line 930
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    #@64
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    #@66
    .line 932
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    #@68
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    #@6a
    .line 933
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    #@6c
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    #@6e
    .line 934
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    #@70
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    #@72
    .line 936
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    #@74
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    #@76
    .line 937
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    #@78
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    #@7a
    .line 938
    iget-object v0, p1, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    #@7c
    iput-object v0, p2, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    #@7e
    .line 914
    return-void

    #@7f
    .line 925
    :cond_0
    iput-object v2, p2, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@81
    goto :goto_0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    #@0
    .prologue
    .line 373
    const-class v1, Ljava/text/spi/DateFormatSymbolsProvider;

    #@2
    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    #@5
    move-result-object v0

    #@6
    .line 374
    .local v0, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->getAvailableLocales()[Ljava/util/Locale;

    #@9
    move-result-object v1

    #@a
    return-object v1
.end method

.method private static getCachedInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 445
    sget-object v4, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    #@2
    invoke-interface {v4, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/ref/SoftReference;

    #@8
    .line 446
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    const/4 v0, 0x0

    #@9
    .line 447
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    if-eqz v1, :cond_0

    #@b
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    .end local v0    # "dfs":Ljava/text/DateFormatSymbols;
    check-cast v0, Ljava/text/DateFormatSymbols;

    #@11
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    if-nez v0, :cond_1

    #@13
    .line 448
    .end local v0    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_0
    new-instance v0, Ljava/text/DateFormatSymbols;

    #@15
    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@18
    .line 449
    .restart local v0    # "dfs":Ljava/text/DateFormatSymbols;
    new-instance v1, Ljava/lang/ref/SoftReference;

    #@1a
    .end local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@1d
    .line 450
    .restart local v1    # "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    sget-object v4, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    #@1f
    invoke-interface {v4, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/lang/ref/SoftReference;

    #@25
    .line 451
    .local v2, "x":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    if-eqz v2, :cond_1

    #@27
    .line 452
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Ljava/text/DateFormatSymbols;

    #@2d
    .line 453
    .local v3, "y":Ljava/text/DateFormatSymbols;
    if-eqz v3, :cond_2

    #@2f
    .line 454
    move-object v0, v3

    #@30
    .line 461
    .end local v2    # "x":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    .end local v3    # "y":Ljava/text/DateFormatSymbols;
    :cond_1
    :goto_0
    return-object v0

    #@31
    .line 457
    .restart local v2    # "x":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    .restart local v3    # "y":Ljava/text/DateFormatSymbols;
    :cond_2
    sget-object v4, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    #@33
    invoke-interface {v4, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    goto :goto_0
.end method

.method public static final getInstance()Ljava/text/DateFormatSymbols;
    .locals 1

    #@0
    .prologue
    .line 388
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 404
    invoke-static {p0}, Ljava/text/DateFormatSymbols;->getProviderInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@3
    move-result-object v0

    #@4
    .line 405
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    if-eqz v0, :cond_0

    #@6
    .line 406
    return-object v0

    #@7
    .line 408
    :cond_0
    invoke-static {p0}, Ljava/text/DateFormatSymbols;->getCachedInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/text/DateFormatSymbols;

    #@11
    return-object v1
.end method

.method static final getInstanceRef(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 418
    invoke-static {p0}, Ljava/text/DateFormatSymbols;->getProviderInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@3
    move-result-object v0

    #@4
    .line 419
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    if-eqz v0, :cond_0

    #@6
    .line 420
    return-object v0

    #@7
    .line 422
    :cond_0
    invoke-static {p0}, Ljava/text/DateFormatSymbols;->getCachedInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method private static getProviderInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 426
    const/4 v1, 0x0

    #@1
    .line 431
    .local v1, "providersInstance":Ljava/text/DateFormatSymbols;
    const-class v2, Ljava/text/spi/DateFormatSymbolsProvider;

    #@3
    invoke-static {v2}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    #@6
    move-result-object v0

    #@7
    .line 432
    .local v0, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 434
    invoke-static {}, Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;->-get0()Ljava/text/DateFormatSymbols$DateFormatSymbolsGetter;

    #@10
    move-result-object v2

    #@11
    .line 433
    const/4 v3, 0x0

    #@12
    new-array v3, v3, [Ljava/lang/Object;

    #@14
    invoke-virtual {v0, v2, p0, v3}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    .end local v1    # "providersInstance":Ljava/text/DateFormatSymbols;
    check-cast v1, Ljava/text/DateFormatSymbols;

    #@1a
    .line 436
    :cond_0
    return-object v1
.end method

.method private final getZoneStringsImpl(Z)[[Ljava/lang/String;
    .locals 6
    .param p1, "needsCopy"    # Z

    #@0
    .prologue
    .line 890
    invoke-direct {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 892
    .local v3, "zoneStrings":[[Ljava/lang/String;
    if-nez p1, :cond_0

    #@6
    .line 893
    return-object v3

    #@7
    .line 896
    :cond_0
    array-length v2, v3

    #@8
    .line 897
    .local v2, "len":I
    new-array v0, v2, [[Ljava/lang/String;

    #@a
    .line 898
    .local v0, "aCopy":[[Ljava/lang/String;
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@d
    .line 899
    aget-object v4, v3, v1

    #@f
    aget-object v5, v3, v1

    #@11
    array-length v5, v5

    #@12
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, [Ljava/lang/String;

    #@18
    aput-object v4, v0, v1

    #@1a
    .line 898
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 901
    :cond_1
    return-object v0
.end method

.method private initializeData(Ljava/util/Locale;)V
    .locals 5
    .param p1, "desiredLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 772
    iput-object p1, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@2
    .line 775
    sget-object v3, Ljava/text/DateFormatSymbols;->cachedInstances:Ljava/util/concurrent/ConcurrentMap;

    #@4
    iget-object v4, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@6
    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Ljava/lang/ref/SoftReference;

    #@c
    .line 777
    .local v2, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/text/DateFormatSymbols;>;"
    if-eqz v2, :cond_0

    #@e
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/text/DateFormatSymbols;

    #@14
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    if-eqz v0, :cond_0

    #@16
    .line 778
    invoke-direct {p0, v0, p0}, Ljava/text/DateFormatSymbols;->copyMembers(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)V

    #@19
    .line 779
    return-void

    #@1a
    .line 781
    .end local v0    # "dfs":Ljava/text/DateFormatSymbols;
    :cond_0
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@1c
    invoke-static {v3}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    #@1f
    move-result-object v3

    #@20
    iput-object v3, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@22
    .line 782
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@24
    invoke-static {v3}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@27
    move-result-object v1

    #@28
    .line 784
    .local v1, "localeData":Llibcore/icu/LocaleData;
    iget-object v3, v1, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    #@2a
    iput-object v3, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@2c
    .line 787
    iget-object v3, v1, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    #@2e
    iput-object v3, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@30
    .line 788
    iget-object v3, v1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    #@32
    iput-object v3, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@34
    .line 790
    iget-object v3, v1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@36
    iput-object v3, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@38
    .line 791
    const-string/jumbo v3, "GyMdkHmsSEDFwWahKzZYuXLc"

    #@3b
    iput-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@3d
    .line 794
    iget-object v3, v1, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    #@3f
    iput-object v3, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@41
    .line 795
    iget-object v3, v1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    #@43
    iput-object v3, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@45
    .line 797
    invoke-direct {p0, v1}, Ljava/text/DateFormatSymbols;->initializeSupplementaryData(Llibcore/icu/LocaleData;)V

    #@48
    .line 771
    return-void
.end method

.method private initializeSupplementaryData(Llibcore/icu/LocaleData;)V
    .locals 1
    .param p1, "localeData"    # Llibcore/icu/LocaleData;

    #@0
    .prologue
    .line 802
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    #@2
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    #@4
    .line 803
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    #@6
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    #@8
    .line 806
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    #@a
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    #@c
    .line 807
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    #@e
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    #@10
    .line 808
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    #@12
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    #@14
    .line 811
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    #@16
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    #@18
    .line 812
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    #@1a
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    #@1c
    .line 813
    iget-object v0, p1, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    #@1e
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    #@20
    .line 800
    return-void
.end method

.method private final declared-synchronized internalZoneStrings()[[Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 863
    :try_start_0
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@4
    if-nez v3, :cond_4

    #@6
    .line 864
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@8
    invoke-static {v3}, Llibcore/icu/TimeZoneNames;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    iput-object v3, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@e
    .line 867
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@10
    array-length v4, v3

    #@11
    :goto_0
    if-ge v2, v4, :cond_4

    #@13
    aget-object v1, v3, v2

    #@15
    .line 868
    .local v1, "zone":[Ljava/lang/String;
    const/4 v5, 0x0

    #@16
    aget-object v0, v1, v5

    #@18
    .line 869
    .local v0, "id":Ljava/lang/String;
    const/4 v5, 0x1

    #@19
    aget-object v5, v1, v5

    #@1b
    if-nez v5, :cond_0

    #@1d
    .line 871
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@20
    move-result-object v5

    #@21
    iget-object v6, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@23
    const/4 v7, 0x0

    #@24
    const/4 v8, 0x1

    #@25
    invoke-virtual {v5, v7, v8, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 870
    const/4 v6, 0x1

    #@2a
    aput-object v5, v1, v6

    #@2c
    .line 873
    :cond_0
    const/4 v5, 0x2

    #@2d
    aget-object v5, v1, v5

    #@2f
    if-nez v5, :cond_1

    #@31
    .line 875
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@34
    move-result-object v5

    #@35
    iget-object v6, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@37
    const/4 v7, 0x0

    #@38
    const/4 v8, 0x0

    #@39
    invoke-virtual {v5, v7, v8, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    .line 874
    const/4 v6, 0x2

    #@3e
    aput-object v5, v1, v6

    #@40
    .line 877
    :cond_1
    const/4 v5, 0x3

    #@41
    aget-object v5, v1, v5

    #@43
    if-nez v5, :cond_2

    #@45
    .line 878
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@48
    move-result-object v5

    #@49
    iget-object v6, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@4b
    const/4 v7, 0x1

    #@4c
    const/4 v8, 0x1

    #@4d
    invoke-virtual {v5, v7, v8, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    const/4 v6, 0x3

    #@52
    aput-object v5, v1, v6

    #@54
    .line 880
    :cond_2
    const/4 v5, 0x4

    #@55
    aget-object v5, v1, v5

    #@57
    if-nez v5, :cond_3

    #@59
    .line 882
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@5c
    move-result-object v5

    #@5d
    iget-object v6, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@5f
    const/4 v7, 0x1

    #@60
    const/4 v8, 0x0

    #@61
    invoke-virtual {v5, v7, v8, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    #@64
    move-result-object v5

    #@65
    .line 881
    const/4 v6, 0x4

    #@66
    aput-object v5, v1, v6

    #@68
    .line 867
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@6a
    goto :goto_0

    #@6b
    .line 886
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "zone":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    monitor-exit p0

    #@6e
    return-object v2

    #@6f
    :catchall_0
    move-exception v2

    #@70
    monitor-exit p0

    #@71
    throw v2
.end method

.method private final isSubclassObject()Z
    .locals 2

    #@0
    .prologue
    .line 905
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, "java.text.DateFormatSymbols"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    const/4 v0, 0x0

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 942
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 944
    iget v1, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    #@6
    if-ge v1, v2, :cond_0

    #@8
    .line 945
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    #@a
    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@d
    move-result-object v0

    #@e
    .line 946
    .local v0, "localeData":Llibcore/icu/LocaleData;
    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->initializeSupplementaryData(Llibcore/icu/LocaleData;)V

    #@11
    .line 949
    .end local v0    # "localeData":Llibcore/icu/LocaleData;
    :cond_0
    iput v2, p0, Ljava/text/DateFormatSymbols;->serialVersionOnStream:I

    #@13
    .line 941
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 960
    invoke-direct {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    #@3
    .line 961
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@6
    .line 959
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 707
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/text/DateFormatSymbols;

    #@6
    .line 708
    .local v1, "other":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, p0, v1}, Ljava/text/DateFormatSymbols;->copyMembers(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 709
    return-object v1

    #@a
    .line 710
    .end local v1    # "other":Ljava/text/DateFormatSymbols;
    :catch_0
    move-exception v0

    #@b
    .line 711
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    #@d
    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    #@10
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 732
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 733
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 734
    check-cast v0, Ljava/text/DateFormatSymbols;

    #@15
    .line 735
    .local v0, "that":Ljava/text/DateFormatSymbols;
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@17
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@19
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_7

    #@1f
    .line 736
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@21
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@23
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    .line 735
    if-eqz v3, :cond_7

    #@29
    .line 737
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@2b
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@2d
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@30
    move-result v3

    #@31
    .line 735
    if-eqz v3, :cond_7

    #@33
    .line 738
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    #@35
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    #@37
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@3a
    move-result v3

    #@3b
    .line 735
    if-eqz v3, :cond_7

    #@3d
    .line 739
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@3f
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@41
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@44
    move-result v3

    #@45
    .line 735
    if-eqz v3, :cond_7

    #@47
    .line 740
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@49
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@4b
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@4e
    move-result v3

    #@4f
    .line 735
    if-eqz v3, :cond_7

    #@51
    .line 741
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    #@53
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    #@55
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@58
    move-result v3

    #@59
    .line 735
    if-eqz v3, :cond_7

    #@5b
    .line 742
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    #@5d
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    #@5f
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@62
    move-result v3

    #@63
    .line 735
    if-eqz v3, :cond_7

    #@65
    .line 743
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    #@67
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    #@69
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@6c
    move-result v3

    #@6d
    .line 735
    if-eqz v3, :cond_7

    #@6f
    .line 744
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    #@71
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    #@73
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@76
    move-result v3

    #@77
    .line 735
    if-eqz v3, :cond_7

    #@79
    .line 745
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    #@7b
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    #@7d
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@80
    move-result v3

    #@81
    .line 735
    if-eqz v3, :cond_7

    #@83
    .line 746
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    #@85
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    #@87
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@8a
    move-result v3

    #@8b
    .line 735
    if-eqz v3, :cond_7

    #@8d
    .line 747
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    #@8f
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    #@91
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@94
    move-result v3

    #@95
    .line 735
    if-eqz v3, :cond_7

    #@97
    .line 748
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@99
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@9b
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@9e
    move-result v3

    #@9f
    .line 735
    if-eqz v3, :cond_7

    #@a1
    .line 749
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    #@a4
    move-result-object v3

    #@a5
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    #@a8
    move-result-object v4

    #@a9
    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@ac
    move-result v3

    #@ad
    .line 735
    if-eqz v3, :cond_7

    #@af
    .line 750
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@b1
    if-eqz v3, :cond_3

    #@b3
    .line 751
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@b5
    iget-object v4, v0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@b7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v3

    #@bb
    .line 750
    if-nez v3, :cond_4

    #@bd
    .line 752
    :cond_3
    iget-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@bf
    if-nez v3, :cond_6

    #@c1
    .line 753
    iget-object v3, v0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@c3
    if-nez v3, :cond_5

    #@c5
    .line 735
    :cond_4
    :goto_0
    return v1

    #@c6
    :cond_5
    move v1, v2

    #@c7
    .line 753
    goto :goto_0

    #@c8
    :cond_6
    move v1, v2

    #@c9
    .line 752
    goto :goto_0

    #@ca
    :cond_7
    move v1, v2

    #@cb
    .line 735
    goto :goto_0
.end method

.method public getAmPmStrings()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@2
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@4
    array-length v1, v1

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 469
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@2
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@4
    array-length v1, v1

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getLocalPatternChars()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMonths()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 485
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@2
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@4
    array-length v1, v1

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 501
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@2
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@4
    array-length v1, v1

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/lang/String;

    #@b
    return-object v0
.end method

.method getShortStandAloneMonths()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 677
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getShortStandAloneWeekdays()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 693
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getShortWeekdays()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 537
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@2
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@4
    array-length v1, v1

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/lang/String;

    #@b
    return-object v0
.end method

.method getStandAloneMonths()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 673
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneMonths:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getStandAloneWeekdays()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 689
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->standAloneWeekdays:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getTinyMonths()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 669
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyMonths:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getTinyStandAloneMonths()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 681
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneMonths:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getTinyStandAloneWeekdays()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 697
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyStandAloneWeekdays:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getTinyWeekdays()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 685
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->tinyWeekdays:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getWeekdays()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 518
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@2
    iget-object v1, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@4
    array-length v1, v1

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Ljava/lang/String;

    #@b
    return-object v0
.end method

.method final getZoneIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 827
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 834
    .local v1, "zoneStrings":[[Ljava/lang/String;
    iget v2, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    #@7
    array-length v3, v1

    #@8
    if-ge v2, v3, :cond_0

    #@a
    iget v2, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    #@c
    aget-object v2, v1, v2

    #@e
    aget-object v2, v2, v4

    #@10
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 835
    iget v2, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    #@18
    return v2

    #@19
    .line 839
    :cond_0
    const/4 v0, 0x0

    #@1a
    .local v0, "index":I
    :goto_0
    array-length v2, v1

    #@1b
    if-ge v0, v2, :cond_2

    #@1d
    .line 840
    aget-object v2, v1, v0

    #@1f
    aget-object v2, v2, v4

    #@21
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 841
    iput v0, p0, Ljava/text/DateFormatSymbols;->lastZoneIndex:I

    #@29
    .line 842
    return v0

    #@2a
    .line 839
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 846
    :cond_2
    const/4 v2, -0x1

    #@2e
    return v2
.end method

.method public getZoneStrings()[[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 605
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->getZoneStringsImpl(Z)[[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method final getZoneStringsWrapper()[[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 855
    invoke-direct {p0}, Ljava/text/DateFormatSymbols;->isSubclassObject()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 856
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 858
    :cond_0
    const/4 v0, 0x0

    #@c
    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;->getZoneStringsImpl(Z)[[Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 720
    const/4 v0, 0x0

    #@2
    .line 721
    .local v0, "hashcode":I
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->getZoneStringsWrapper()[[Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 722
    .local v2, "zoneStrings":[[Ljava/lang/String;
    const/4 v1, 0x0

    #@7
    .local v1, "index":I
    :goto_0
    aget-object v3, v2, v4

    #@9
    array-length v3, v3

    #@a
    if-ge v1, v3, :cond_0

    #@c
    .line 723
    aget-object v3, v2, v4

    #@e
    aget-object v3, v3, v1

    #@10
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@13
    move-result v3

    #@14
    xor-int/2addr v0, v3

    #@15
    .line 722
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 724
    :cond_0
    return v0
.end method

.method public setAmPmStrings([Ljava/lang/String;)V
    .locals 1
    .param p1, "newAmpms"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 563
    array-length v0, p1

    #@1
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, [Ljava/lang/String;

    #@7
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@9
    .line 562
    return-void
.end method

.method public setEras([Ljava/lang/String;)V
    .locals 1
    .param p1, "newEras"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 477
    array-length v0, p1

    #@1
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, [Ljava/lang/String;

    #@7
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@9
    .line 476
    return-void
.end method

.method public setLocalPatternChars(Ljava/lang/String;)V
    .locals 1
    .param p1, "newLocalPatternChars"    # Ljava/lang/String;

    #@0
    .prologue
    .line 665
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@6
    .line 663
    return-void
.end method

.method public setMonths([Ljava/lang/String;)V
    .locals 1
    .param p1, "newMonths"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 493
    array-length v0, p1

    #@1
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, [Ljava/lang/String;

    #@7
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@9
    .line 492
    return-void
.end method

.method public setShortMonths([Ljava/lang/String;)V
    .locals 1
    .param p1, "newShortMonths"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 509
    array-length v0, p1

    #@1
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, [Ljava/lang/String;

    #@7
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@9
    .line 508
    return-void
.end method

.method public setShortWeekdays([Ljava/lang/String;)V
    .locals 1
    .param p1, "newShortWeekdays"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 547
    array-length v0, p1

    #@1
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, [Ljava/lang/String;

    #@7
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@9
    .line 546
    return-void
.end method

.method public setWeekdays([Ljava/lang/String;)V
    .locals 1
    .param p1, "newWeekdays"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 528
    array-length v0, p1

    #@1
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, [Ljava/lang/String;

    #@7
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@9
    .line 527
    return-void
.end method

.method public setZoneStrings([[Ljava/lang/String;)V
    .locals 4
    .param p1, "newZoneStrings"    # [[Ljava/lang/String;

    #@0
    .prologue
    .line 638
    array-length v3, p1

    #@1
    new-array v0, v3, [[Ljava/lang/String;

    #@3
    .line 639
    .local v0, "aCopy":[[Ljava/lang/String;
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v3, p1

    #@5
    if-ge v1, v3, :cond_1

    #@7
    .line 640
    aget-object v3, p1, v1

    #@9
    array-length v2, v3

    #@a
    .line 641
    .local v2, "len":I
    const/4 v3, 0x5

    #@b
    if-ge v2, v3, :cond_0

    #@d
    .line 642
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@12
    throw v3

    #@13
    .line 644
    :cond_0
    aget-object v3, p1, v1

    #@15
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, [Ljava/lang/String;

    #@1b
    aput-object v3, v0, v1

    #@1d
    .line 639
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 646
    .end local v2    # "len":I
    :cond_1
    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@22
    .line 647
    const/4 v3, 0x1

    #@23
    iput-boolean v3, p0, Ljava/text/DateFormatSymbols;->isZoneStringsSet:Z

    #@25
    .line 637
    return-void
.end method
