.class public final Llibcore/icu/TimeZoneNames;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/TimeZoneNames$ZoneStringsCache;,
        Llibcore/icu/TimeZoneNames$1;
    }
.end annotation


# static fields
.field public static final LONG_NAME:I = 0x1

.field public static final LONG_NAME_DST:I = 0x3

.field public static final NAME_COUNT:I = 0x5

.field public static final OLSON_NAME:I = 0x0

.field public static final SHORT_NAME:I = 0x2

.field public static final SHORT_NAME_DST:I = 0x4

.field private static final ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final availableTimeZoneIds:[Ljava/lang/String;

.field private static final cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 0
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "result"    # [[Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Llibcore/icu/TimeZoneNames;->fillZoneStrings(Ljava/lang/String;[[Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 32
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;

    #@6
    .line 44
    new-instance v0, Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    #@8
    invoke-direct {v0}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;-><init>()V

    #@b
    sput-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    #@d
    .line 50
    sget-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    #@f
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@11
    invoke-virtual {v0, v1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 51
    sget-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    #@16
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@18
    invoke-virtual {v0, v1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 52
    sget-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    #@1d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 102
    new-instance v0, Llibcore/icu/TimeZoneNames$1;

    #@26
    invoke-direct {v0}, Llibcore/icu/TimeZoneNames$1;-><init>()V

    #@29
    sput-object v0, Llibcore/icu/TimeZoneNames;->ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;

    #@2b
    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static native fillZoneStrings(Ljava/lang/String;[[Ljava/lang/String;)V
.end method

.method public static forLocale(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 10
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/16 v9, 0x9

    #@2
    .line 145
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 146
    .local v0, "countryCode":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    #@8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 147
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5}, Llibcore/util/ZoneInfoDB$TzData;->getZoneTab()Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    const-string/jumbo v6, "\n"

    #@16
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    const/4 v5, 0x0

    #@1b
    array-length v7, v6

    #@1c
    :goto_0
    if-ge v5, v7, :cond_2

    #@1e
    aget-object v2, v6, v5

    #@20
    .line 148
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@23
    move-result v8

    #@24
    if-eqz v8, :cond_1

    #@26
    .line 149
    const/4 v8, 0x4

    #@27
    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->indexOf(II)I

    #@2a
    move-result v8

    #@2b
    add-int/lit8 v4, v8, 0x1

    #@2d
    .line 150
    .local v4, "olsonIdStart":I
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->indexOf(II)I

    #@30
    move-result v3

    #@31
    .line 151
    .local v3, "olsonIdEnd":I
    const/4 v8, -0x1

    #@32
    if-ne v3, v8, :cond_0

    #@34
    .line 152
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@37
    move-result v3

    #@38
    .line 154
    :cond_0
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f
    .line 147
    .end local v3    # "olsonIdEnd":I
    .end local v4    # "olsonIdStart":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@41
    goto :goto_0

    #@42
    .line 157
    .end local v2    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v5

    #@46
    new-array v5, v5, [Ljava/lang/String;

    #@48
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@4b
    move-result-object v5

    #@4c
    check-cast v5, [Ljava/lang/String;

    #@4e
    return-object v5
.end method

.method public static getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5
    .param p0, "zoneStrings"    # [[Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "daylight"    # Z
    .param p3, "style"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 114
    new-array v1, v4, [Ljava/lang/String;

    #@4
    aput-object p1, v1, v3

    #@6
    .line 115
    .local v1, "needle":[Ljava/lang/String;
    sget-object v3, Llibcore/icu/TimeZoneNames;->ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;

    #@8
    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    #@b
    move-result v0

    #@c
    .line 116
    .local v0, "index":I
    if-ltz v0, :cond_3

    #@e
    .line 117
    aget-object v2, p0, v0

    #@10
    .line 118
    .local v2, "row":[Ljava/lang/String;
    if-eqz p2, :cond_1

    #@12
    .line 119
    if-ne p3, v4, :cond_0

    #@14
    const/4 v3, 0x3

    #@15
    aget-object v3, v2, v3

    #@17
    :goto_0
    return-object v3

    #@18
    :cond_0
    const/4 v3, 0x4

    #@19
    aget-object v3, v2, v3

    #@1b
    goto :goto_0

    #@1c
    .line 121
    :cond_1
    if-ne p3, v4, :cond_2

    #@1e
    aget-object v3, v2, v4

    #@20
    :goto_1
    return-object v3

    #@21
    :cond_2
    const/4 v3, 0x2

    #@22
    aget-object v3, v2, v3

    #@24
    goto :goto_1

    #@25
    .line 124
    .end local v2    # "row":[Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    #@26
    return-object v3
.end method

.method public static native getExemplarLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 131
    if-nez p0, :cond_0

    #@2
    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@5
    move-result-object p0

    #@6
    .line 134
    :cond_0
    sget-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    #@8
    invoke-virtual {v0, p0}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [[Ljava/lang/String;

    #@e
    return-object v0
.end method
