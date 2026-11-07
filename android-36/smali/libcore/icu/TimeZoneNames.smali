.class public final Llibcore/icu/TimeZoneNames;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/TimeZoneNames$ZoneStringsCache;
    }
.end annotation


# static fields
.field private static final blacklist LONG_NAME:I = 0x1

.field private static final blacklist LONG_NAME_DST:I = 0x3

.field private static final blacklist NAME_COUNT:I = 0x5

.field private static final blacklist OLSON_NAME:I = 0x0

.field private static final blacklist SHORT_NAME:I = 0x2

.field private static final blacklist SHORT_NAME_DST:I = 0x4

.field private static final blacklist ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist availableTimeZoneIds:[Ljava/lang/String;

.field private static final blacklist cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetavailableTimeZoneIds()[Ljava/lang/String;
    .registers 1

    sget-object v0, Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;

    .line 45
    new-instance v0, Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    invoke-direct {v0}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;-><init>()V

    sput-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    .line 114
    new-instance v0, Llibcore/icu/TimeZoneNames$1;

    invoke-direct {v0}, Llibcore/icu/TimeZoneNames$1;-><init>()V

    sput-object v0, Llibcore/icu/TimeZoneNames;->ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 8
    .param p0, "zoneStrings"    # [[Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "daylight"    # Z
    .param p3, "style"    # I

    .line 126
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "needle":[Ljava/lang/String;
    sget-object v1, Llibcore/icu/TimeZoneNames;->ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 128
    .local v1, "index":I
    if-ltz v1, :cond_24

    .line 129
    aget-object v2, p0, v1

    .line 130
    .local v2, "row":[Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz p2, :cond_1b

    .line 131
    if-ne p3, v3, :cond_17

    const/4 v3, 0x3

    aget-object v3, v2, v3

    goto :goto_1a

    :cond_17
    const/4 v3, 0x4

    aget-object v3, v2, v3

    :goto_1a
    return-object v3

    .line 133
    :cond_1b
    if-ne p3, v3, :cond_20

    aget-object v3, v2, v3

    goto :goto_23

    :cond_20
    const/4 v3, 0x2

    aget-object v3, v2, v3

    :goto_23
    return-object v3

    .line 136
    .end local v2    # "row":[Ljava/lang/String;
    :cond_24
    const/4 v2, 0x0

    return-object v2
.end method

.method public static blacklist getDisplayNames(Landroid/icu/text/TimeZoneNames;Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V
    .registers 11
    .param p0, "timeZoneNames"    # Landroid/icu/text/TimeZoneNames;
    .param p1, "tzId"    # Ljava/lang/String;
    .param p2, "nameTypes"    # [Landroid/icu/text/TimeZoneNames$NameType;
    .param p3, "date"    # J
    .param p5, "names"    # [Ljava/lang/String;
    .param p6, "namesOffset"    # I

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_11

    .line 157
    aget-object v1, p2, v0

    .line 158
    .local v1, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    add-int v2, p6, v0

    invoke-virtual {p0, p1, v1, p3, p4}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p5, v2

    .line 156
    .end local v1    # "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    .end local v0    # "i":I
    :cond_11
    return-void
.end method

.method public static blacklist getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 143
    if-nez p0, :cond_6

    .line 144
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 146
    :cond_6
    sget-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    invoke-virtual {v0, p0}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method
