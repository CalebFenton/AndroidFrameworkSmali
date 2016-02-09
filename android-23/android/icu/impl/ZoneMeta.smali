.class public final Landroid/icu/impl/ZoneMeta;
.super Ljava/lang/Object;
.source "ZoneMeta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;,
        Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;
    }
.end annotation


# static fields
.field private static synthetic -android_icu_util_TimeZone$SystemTimeZoneTypeSwitchesValues:[I = null

.field static final synthetic -assertionsDisabled:Z

.field private static final ASSERT:Z = false

.field private static CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

.field private static REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static REGION_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

.field private static ZONEIDS:[Ljava/lang/String; = null

.field private static final ZONEINFORESNAME:Ljava/lang/String; = "zoneinfo64"

.field private static final kCUSTOM_TZ_PREFIX:Ljava/lang/String; = "GMT"

.field private static final kGMT_ID:Ljava/lang/String; = "GMT"

.field private static final kMAX_CUSTOM_HOUR:I = 0x17

.field private static final kMAX_CUSTOM_MIN:I = 0x3b

.field private static final kMAX_CUSTOM_SEC:I = 0x3b

.field private static final kNAMES:Ljava/lang/String; = "Names"

.field private static final kREGIONS:Ljava/lang/String; = "Regions"

.field private static final kWorld:Ljava/lang/String; = "001"

.field private static final kZONES:Ljava/lang/String; = "Zones"


# direct methods
.method private static synthetic -getandroid_icu_util_TimeZone$SystemTimeZoneTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/impl/ZoneMeta;->-android_icu_util_TimeZone$SystemTimeZoneTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/impl/ZoneMeta;->-android_icu_util_TimeZone$SystemTimeZoneTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone$SystemTimeZoneType;->values()[Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@10
    invoke-virtual {v1}, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@19
    invoke-virtual {v1}, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@22
    invoke-virtual {v1}, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Landroid/icu/impl/ZoneMeta;->-android_icu_util_TimeZone$SystemTimeZoneTypeSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const-class v0, Landroid/icu/impl/ZoneMeta;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    sput-boolean v0, Landroid/icu/impl/ZoneMeta;->-assertionsDisabled:Z

    #@c
    .line 279
    sput-object v1, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    #@e
    .line 340
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@10
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@13
    sput-object v0, Landroid/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache;

    #@15
    .line 341
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@17
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@1a
    sput-object v0, Landroid/icu/impl/ZoneMeta;->REGION_CACHE:Landroid/icu/impl/ICUCache;

    #@1c
    .line 342
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@1e
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@21
    sput-object v0, Landroid/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache;

    #@23
    .line 568
    new-instance v0, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

    #@25
    invoke-direct {v0, v1}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;-><init>(Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;)V

    #@28
    sput-object v0, Landroid/icu/impl/ZoneMeta;->SYSTEM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

    #@2a
    .line 606
    new-instance v0, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    #@2c
    invoke-direct {v0, v1}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;-><init>(Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;)V

    #@2f
    sput-object v0, Landroid/icu/impl/ZoneMeta;->CUSTOM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    #@31
    .line 42
    return-void

    #@32
    :cond_0
    const/4 v0, 0x1

    #@33
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized countEquivalentIDs(Ljava/lang/String;)I
    .locals 7
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v6, Landroid/icu/impl/ZoneMeta;

    #@2
    monitor-enter v6

    #@3
    .line 221
    const/4 v0, 0x0

    #@4
    .line 222
    .local v0, "count":I
    const/4 v5, 0x0

    #@5
    :try_start_0
    invoke-static {v5, p0}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v3

    #@9
    .line 223
    .local v3, "res":Landroid/icu/util/UResourceBundle;
    if-eqz v3, :cond_0

    #@b
    .line 225
    :try_start_1
    const-string/jumbo v5, "links"

    #@e
    invoke-virtual {v3, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@11
    move-result-object v2

    #@12
    .line 226
    .local v2, "links":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    #@15
    move-result-object v4

    #@16
    .line 227
    .local v4, "v":[I
    array-length v0, v4
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    .end local v2    # "links":Landroid/icu/util/UResourceBundle;
    .end local v4    # "v":[I
    :cond_0
    :goto_0
    monitor-exit v6

    #@18
    .line 232
    return v0

    #@19
    .end local v3    # "res":Landroid/icu/util/UResourceBundle;
    :catchall_0
    move-exception v5

    #@1a
    monitor-exit v6

    #@1b
    throw v5

    #@1c
    .line 228
    .restart local v3    # "res":Landroid/icu/util/UResourceBundle;
    :catch_0
    move-exception v1

    #@1d
    .local v1, "ex":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method private static findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "tzid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 392
    const/4 v1, 0x0

    #@1
    .line 393
    .local v1, "canonical":Ljava/lang/String;
    const/16 v8, 0x2f

    #@3
    const/16 v9, 0x3a

    #@5
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@8
    move-result-object v7

    #@9
    .line 397
    .local v7, "tzidKey":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v8, "android/icu/impl/data/icudt55b"

    #@c
    .line 398
    const-string/jumbo v9, "keyTypeData"

    #@f
    sget-object v10, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@11
    .line 397
    invoke-static {v8, v9, v10}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@14
    move-result-object v3

    #@15
    .line 399
    .local v3, "keyTypeData":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v8, "typeMap"

    #@18
    invoke-virtual {v3, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@1b
    move-result-object v6

    #@1c
    .line 400
    .local v6, "typeMap":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v8, "timezone"

    #@1f
    invoke-virtual {v6, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    #@22
    move-result-object v5

    #@23
    .line 402
    .local v5, "typeKeys":Landroid/icu/util/UResourceBundle;
    :try_start_1
    invoke-virtual {v5, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    #@26
    .line 404
    move-object v1, p0

    #@27
    .line 408
    .end local v1    # "canonical":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    #@29
    .line 410
    :try_start_2
    const-string/jumbo v8, "typeAlias"

    #@2c
    invoke-virtual {v3, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@2f
    move-result-object v4

    #@30
    .line 411
    .local v4, "typeAlias":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v8, "timezone"

    #@33
    invoke-virtual {v4, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@36
    move-result-object v0

    #@37
    .line 412
    .local v0, "aliasesForKey":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0, v7}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    #@3a
    move-result-object v1

    #@3b
    .line 417
    .end local v0    # "aliasesForKey":Landroid/icu/util/UResourceBundle;
    .end local v3    # "keyTypeData":Landroid/icu/util/UResourceBundle;
    .end local v4    # "typeAlias":Landroid/icu/util/UResourceBundle;
    .end local v5    # "typeKeys":Landroid/icu/util/UResourceBundle;
    .end local v6    # "typeMap":Landroid/icu/util/UResourceBundle;
    :cond_0
    :goto_1
    return-object v1

    #@3c
    .line 405
    .restart local v1    # "canonical":Ljava/lang/String;
    .restart local v3    # "keyTypeData":Landroid/icu/util/UResourceBundle;
    .restart local v5    # "typeKeys":Landroid/icu/util/UResourceBundle;
    .restart local v6    # "typeMap":Landroid/icu/util/UResourceBundle;
    :catch_0
    move-exception v2

    #@3d
    .local v2, "e":Ljava/util/MissingResourceException;
    goto :goto_0

    #@3e
    .line 414
    .end local v1    # "canonical":Ljava/lang/String;
    .end local v2    # "e":Ljava/util/MissingResourceException;
    .end local v3    # "keyTypeData":Landroid/icu/util/UResourceBundle;
    .end local v5    # "typeKeys":Landroid/icu/util/UResourceBundle;
    .end local v6    # "typeMap":Landroid/icu/util/UResourceBundle;
    :catch_1
    move-exception v2

    #@3f
    .restart local v2    # "e":Ljava/util/MissingResourceException;
    goto :goto_1
.end method

.method static formatCustomID(IIIZ)Ljava/lang/String;
    .locals 5
    .param p0, "hour"    # I
    .param p1, "min"    # I
    .param p2, "sec"    # I
    .param p3, "negative"    # Z

    #@0
    .prologue
    const/16 v4, 0x3a

    #@2
    const/16 v3, 0x30

    #@4
    const/16 v2, 0xa

    #@6
    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    const-string/jumbo v1, "GMT"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    .line 803
    .local v0, "zid":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    #@10
    if-eqz p1, :cond_4

    #@12
    .line 804
    :cond_0
    if-eqz p3, :cond_5

    #@14
    .line 805
    const/16 v1, 0x2d

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    .line 810
    :goto_0
    if-ge p0, v2, :cond_1

    #@1b
    .line 811
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 813
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    .line 814
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 815
    if-ge p1, v2, :cond_2

    #@26
    .line 816
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 818
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    .line 820
    if-eqz p2, :cond_4

    #@2e
    .line 822
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 823
    if-ge p2, v2, :cond_3

    #@33
    .line 824
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    .line 826
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    .line 829
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    return-object v1

    #@3e
    .line 807
    :cond_5
    const/16 v1, 0x2b

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    goto :goto_0
.end method

.method public static getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;
    .locals 8
    .param p0, "type"    # Landroid/icu/util/TimeZone$SystemTimeZoneType;
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "rawOffset"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/TimeZone$SystemTimeZoneType;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 158
    const/4 v0, 0x0

    #@1
    .line 159
    .local v0, "baseSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->-getandroid_icu_util_TimeZone$SystemTimeZoneTypeSwitchesValues()[I

    #@4
    move-result-object v6

    #@5
    invoke-virtual {p0}, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ordinal()I

    #@8
    move-result v7

    #@9
    aget v6, v6, v7

    #@b
    packed-switch v6, :pswitch_data_0

    #@e
    .line 171
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v7, "Unknown SystemTimeZoneType"

    #@13
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v6

    #@17
    .line 161
    :pswitch_0
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getSystemZIDs()Ljava/util/Set;

    #@1a
    move-result-object v0

    #@1b
    .line 174
    .local v0, "baseSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    if-nez p1, :cond_0

    #@1d
    if-nez p2, :cond_0

    #@1f
    .line 175
    return-object v0

    #@20
    .line 164
    .local v0, "baseSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_1
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getCanonicalSystemZIDs()Ljava/util/Set;

    #@23
    move-result-object v0

    #@24
    .local v0, "baseSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    #@25
    .line 167
    .local v0, "baseSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_2
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getCanonicalSystemLocationZIDs()Ljava/util/Set;

    #@28
    move-result-object v0

    #@29
    .local v0, "baseSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    #@2a
    .line 178
    :cond_0
    if-eqz p1, :cond_1

    #@2c
    .line 179
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@2e
    invoke-virtual {p1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@31
    move-result-object p1

    #@32
    .line 183
    :cond_1
    new-instance v4, Ljava/util/TreeSet;

    #@34
    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    #@37
    .line 184
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v2

    #@3b
    .local v2, "id$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_5

    #@41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v1

    #@45
    check-cast v1, Ljava/lang/String;

    #@47
    .line 185
    .local v1, "id":Ljava/lang/String;
    if-eqz p1, :cond_3

    #@49
    .line 186
    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v3

    #@4d
    .line 187
    .local v3, "r":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v6

    #@51
    if-eqz v6, :cond_2

    #@53
    .line 191
    .end local v3    # "r":Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_4

    #@55
    .line 193
    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getSystemTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    #@58
    move-result-object v5

    #@59
    .line 194
    .local v5, "z":Landroid/icu/util/TimeZone;
    if-eqz v5, :cond_2

    #@5b
    invoke-virtual {v5}, Landroid/icu/util/TimeZone;->getRawOffset()I

    #@5e
    move-result v6

    #@5f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {p2, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v6

    #@67
    if-eqz v6, :cond_2

    #@69
    .line 198
    .end local v5    # "z":Landroid/icu/util/TimeZone;
    :cond_4
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6c
    goto :goto_1

    #@6d
    .line 200
    .end local v1    # "id":Ljava/lang/String;
    :cond_5
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    #@70
    move-result v6

    #@71
    if-eqz v6, :cond_6

    #@73
    .line 201
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@76
    move-result-object v6

    #@77
    return-object v6

    #@78
    .line 204
    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@7b
    move-result-object v6

    #@7c
    return-object v6

    #@7d
    .line 159
    nop

    #@7e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .param p0, "tz"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 345
    instance-of v0, p0, Landroid/icu/impl/OlsonTimeZone;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 346
    check-cast p0, Landroid/icu/impl/OlsonTimeZone;

    #@6
    .end local p0    # "tz":Landroid/icu/util/TimeZone;
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 348
    .restart local p0    # "tz":Landroid/icu/util/TimeZone;
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "tzid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 359
    sget-object v6, Landroid/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache;

    #@2
    invoke-interface {v6, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 360
    .local v0, "canonical":Ljava/lang/String;
    if-nez v0, :cond_2

    #@a
    .line 361
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 362
    if-nez v0, :cond_1

    #@10
    .line 365
    :try_start_0
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    #@13
    move-result v4

    #@14
    .line 366
    .local v4, "zoneIdx":I
    if-ltz v4, :cond_1

    #@16
    .line 367
    const-string/jumbo v6, "android/icu/impl/data/icudt55b"

    #@19
    .line 368
    const-string/jumbo v7, "zoneinfo64"

    #@1c
    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@1e
    .line 367
    invoke-static {v6, v7, v8}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@21
    move-result-object v2

    #@22
    .line 369
    .local v2, "top":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v6, "Zones"

    #@25
    invoke-virtual {v2, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@28
    move-result-object v5

    #@29
    .line 370
    .local v5, "zones":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v5, v4}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@2c
    move-result-object v3

    #@2d
    .line 371
    .local v3, "zone":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getType()I

    #@30
    move-result v6

    #@31
    const/4 v7, 0x7

    #@32
    if-ne v6, v7, :cond_0

    #@34
    .line 373
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getInt()I

    #@37
    move-result v6

    #@38
    invoke-static {v6}, Landroid/icu/impl/ZoneMeta;->getZoneID(I)Ljava/lang/String;

    #@3b
    move-result-object p0

    #@3c
    .line 374
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    move-result-object v0

    #@40
    .line 376
    :cond_0
    if-nez v0, :cond_1

    #@42
    .line 377
    move-object v0, p0

    #@43
    .line 384
    .end local v2    # "top":Landroid/icu/util/UResourceBundle;
    .end local v3    # "zone":Landroid/icu/util/UResourceBundle;
    .end local v4    # "zoneIdx":I
    .end local v5    # "zones":Landroid/icu/util/UResourceBundle;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    #@45
    .line 385
    sget-object v6, Landroid/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache;

    #@47
    invoke-interface {v6, p0, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@4a
    .line 388
    :cond_2
    return-object v0

    #@4b
    .line 380
    :catch_0
    move-exception v1

    #@4c
    .local v1, "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method public static getCanonicalCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tzid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 452
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 453
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v1, "001"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 454
    const/4 v0, 0x0

    #@10
    .line 456
    .end local v0    # "country":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getCanonicalCountry(Ljava/lang/String;Landroid/icu/util/Output;)Ljava/lang/String;
    .locals 12
    .param p0, "tzid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "isPrimary":Landroid/icu/util/Output;, "Lcom/ibm/icu/util/Output<Ljava/lang/Boolean;>;"
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v11, 0x0

    #@3
    .line 465
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@5
    iput-object v10, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@7
    .line 467
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 468
    .local v2, "country":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@d
    const-string/jumbo v10, "001"

    #@10
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v10

    #@14
    if-eqz v10, :cond_0

    #@16
    .line 469
    return-object v11

    #@17
    .line 473
    :cond_0
    sget-object v10, Landroid/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache;

    #@19
    invoke-interface {v10, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v7

    #@1d
    check-cast v7, Ljava/lang/Boolean;

    #@1f
    .line 474
    .local v7, "singleZone":Ljava/lang/Boolean;
    if-nez v7, :cond_3

    #@21
    .line 475
    sget-object v10, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    #@23
    invoke-static {v10, v2, v11}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    #@26
    move-result-object v4

    #@27
    .line 476
    .local v4, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-boolean v10, Landroid/icu/impl/ZoneMeta;->-assertionsDisabled:Z

    #@29
    if-nez v10, :cond_2

    #@2b
    invoke-interface {v4}, Ljava/util/Set;->size()I

    #@2e
    move-result v10

    #@2f
    if-lt v10, v8, :cond_1

    #@31
    move v10, v8

    #@32
    :goto_0
    if-nez v10, :cond_2

    #@34
    new-instance v8, Ljava/lang/AssertionError;

    #@36
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@39
    throw v8

    #@3a
    :cond_1
    move v10, v9

    #@3b
    goto :goto_0

    #@3c
    .line 477
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->size()I

    #@3f
    move-result v10

    #@40
    if-gt v10, v8, :cond_5

    #@42
    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@45
    move-result-object v7

    #@46
    .line 478
    sget-object v8, Landroid/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache;

    #@48
    invoke-interface {v8, p0, v7}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@4b
    .line 481
    .end local v4    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    #@4e
    move-result v8

    #@4f
    if-eqz v8, :cond_6

    #@51
    .line 482
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@53
    iput-object v8, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@55
    .line 506
    :cond_4
    :goto_2
    return-object v2

    #@56
    .restart local v4    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    move v8, v9

    #@57
    .line 477
    goto :goto_1

    #@58
    .line 489
    .end local v4    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    :try_start_0
    const-string/jumbo v8, "android/icu/impl/data/icudt55b"

    #@5b
    const-string/jumbo v9, "metaZones"

    #@5e
    invoke-static {v8, v9}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@61
    move-result-object v0

    #@62
    .line 490
    .local v0, "bundle":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v8, "primaryZones"

    #@65
    invoke-virtual {v0, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@68
    move-result-object v6

    #@69
    .line 491
    .local v6, "primaryZones":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v6, v2}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    .line 492
    .local v5, "primaryZone":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v8

    #@71
    if-eqz v8, :cond_7

    #@73
    .line 493
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@75
    iput-object v8, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    #@77
    goto :goto_2

    #@78
    .line 501
    .end local v0    # "bundle":Landroid/icu/util/UResourceBundle;
    .end local v5    # "primaryZone":Ljava/lang/String;
    .end local v6    # "primaryZones":Landroid/icu/util/UResourceBundle;
    :catch_0
    move-exception v3

    #@79
    .local v3, "e":Ljava/util/MissingResourceException;
    goto :goto_2

    #@7a
    .line 496
    .end local v3    # "e":Ljava/util/MissingResourceException;
    .restart local v0    # "bundle":Landroid/icu/util/UResourceBundle;
    .restart local v5    # "primaryZone":Ljava/lang/String;
    .restart local v6    # "primaryZones":Landroid/icu/util/UResourceBundle;
    :cond_7
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    #@7d
    move-result-object v1

    #@7e
    .line 497
    .local v1, "canonicalID":Ljava/lang/String;
    if-eqz v1, :cond_4

    #@80
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v8

    #@84
    if-eqz v8, :cond_4

    #@86
    .line 498
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@88
    iput-object v8, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@8a
    goto :goto_2
.end method

.method private static declared-synchronized getCanonicalSystemLocationZIDs()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const-class v8, Landroid/icu/impl/ZoneMeta;

    #@2
    monitor-enter v8

    #@3
    .line 124
    const/4 v4, 0x0

    #@4
    .line 125
    .local v4, "canonicalSystemLocationZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    sget-object v7, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 126
    sget-object v7, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;

    #@a
    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v7

    #@e
    move-object v0, v7

    #@f
    check-cast v0, Ljava/util/Set;

    #@11
    move-object v4, v0

    #@12
    .line 128
    .end local v4    # "canonicalSystemLocationZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    if-nez v4, :cond_4

    #@14
    .line 129
    new-instance v3, Ljava/util/TreeSet;

    #@16
    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    #@19
    .line 130
    .local v3, "canonicalSystemLocationIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 131
    .local v1, "allIDs":[Ljava/lang/String;
    const/4 v7, 0x0

    #@1e
    array-length v9, v1

    #@1f
    :goto_0
    if-ge v7, v9, :cond_3

    #@21
    aget-object v5, v1, v7

    #@23
    .line 133
    .local v5, "id":Ljava/lang/String;
    const-string/jumbo v10, "Etc/Unknown"

    #@26
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v10

    #@2a
    if-eqz v10, :cond_2

    #@2c
    .line 131
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 136
    :cond_2
    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 137
    .local v2, "canonicalID":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v10

    #@37
    if-eqz v10, :cond_1

    #@39
    .line 138
    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    .line 139
    .local v6, "region":Ljava/lang/String;
    if-eqz v6, :cond_1

    #@3f
    const-string/jumbo v10, "001"

    #@42
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v10

    #@46
    if-nez v10, :cond_1

    #@48
    .line 140
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    goto :goto_1

    #@4c
    .end local v1    # "allIDs":[Ljava/lang/String;
    .end local v2    # "canonicalID":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "region":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@4d
    monitor-exit v8

    #@4e
    throw v7

    #@4f
    .line 144
    .restart local v1    # "allIDs":[Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@52
    move-result-object v4

    #@53
    .line 145
    .local v4, "canonicalSystemLocationZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/ref/SoftReference;

    #@55
    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@58
    sput-object v7, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5a
    :cond_4
    monitor-exit v8

    #@5b
    .line 147
    return-object v4
.end method

.method private static declared-synchronized getCanonicalSystemZIDs()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const-class v7, Landroid/icu/impl/ZoneMeta;

    #@2
    monitor-enter v7

    #@3
    .line 92
    const/4 v4, 0x0

    #@4
    .line 93
    .local v4, "canonicalSystemZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    sget-object v6, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    #@6
    if-eqz v6, :cond_0

    #@8
    .line 94
    sget-object v6, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    #@a
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v6

    #@e
    move-object v0, v6

    #@f
    check-cast v0, Ljava/util/Set;

    #@11
    move-object v4, v0

    #@12
    .line 96
    .end local v4    # "canonicalSystemZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    if-nez v4, :cond_4

    #@14
    .line 97
    new-instance v3, Ljava/util/TreeSet;

    #@16
    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    #@19
    .line 98
    .local v3, "canonicalSystemIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 99
    .local v1, "allIDs":[Ljava/lang/String;
    const/4 v6, 0x0

    #@1e
    array-length v8, v1

    #@1f
    :goto_0
    if-ge v6, v8, :cond_3

    #@21
    aget-object v5, v1, v6

    #@23
    .line 101
    .local v5, "id":Ljava/lang/String;
    const-string/jumbo v9, "Etc/Unknown"

    #@26
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v9

    #@2a
    if-eqz v9, :cond_2

    #@2c
    .line 99
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 104
    :cond_2
    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 105
    .local v2, "canonicalID":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v9

    #@37
    if-eqz v9, :cond_1

    #@39
    .line 106
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    goto :goto_1

    #@3d
    .end local v1    # "allIDs":[Ljava/lang/String;
    .end local v2    # "canonicalID":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@3e
    monitor-exit v7

    #@3f
    throw v6

    #@40
    .line 109
    .restart local v1    # "allIDs":[Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@43
    move-result-object v4

    #@44
    .line 110
    .local v4, "canonicalSystemZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/ref/SoftReference;

    #@46
    invoke-direct {v6, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@49
    sput-object v6, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    :cond_4
    monitor-exit v7

    #@4c
    .line 112
    return-object v4
.end method

.method public static getCustomID(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 637
    const/4 v3, 0x4

    #@3
    new-array v0, v3, [I

    #@5
    .line 638
    .local v0, "fields":[I
    invoke-static {p0, v0}, Landroid/icu/impl/ZoneMeta;->parseCustomID(Ljava/lang/String;[I)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_1

    #@b
    .line 639
    aget v3, v0, v1

    #@d
    const/4 v4, 0x2

    #@e
    aget v4, v0, v4

    #@10
    const/4 v5, 0x3

    #@11
    aget v5, v0, v5

    #@13
    aget v6, v0, v2

    #@15
    if-gez v6, :cond_0

    #@17
    :goto_0
    invoke-static {v3, v4, v5, v1}, Landroid/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    :cond_0
    move v1, v2

    #@1d
    goto :goto_0

    #@1e
    .line 641
    :cond_1
    const/4 v1, 0x0

    #@1f
    return-object v1
.end method

.method public static getCustomTimeZone(I)Landroid/icu/util/TimeZone;
    .locals 7
    .param p0, "offset"    # I

    #@0
    .prologue
    .line 773
    const/4 v2, 0x0

    #@1
    .line 774
    .local v2, "negative":Z
    move v4, p0

    #@2
    .line 775
    .local v4, "tmp":I
    if-gez p0, :cond_0

    #@4
    .line 776
    const/4 v2, 0x1

    #@5
    .line 777
    neg-int v4, p0

    #@6
    .line 785
    :cond_0
    div-int/lit16 v4, v4, 0x3e8

    #@8
    .line 786
    rem-int/lit8 v3, v4, 0x3c

    #@a
    .line 787
    .local v3, "sec":I
    div-int/lit8 v4, v4, 0x3c

    #@c
    .line 788
    rem-int/lit8 v1, v4, 0x3c

    #@e
    .line 789
    .local v1, "min":I
    div-int/lit8 v0, v4, 0x3c

    #@10
    .line 792
    .local v0, "hour":I
    invoke-static {v0, v1, v3, v2}, Landroid/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    .line 794
    .local v5, "zid":Ljava/lang/String;
    new-instance v6, Landroid/icu/util/SimpleTimeZone;

    #@16
    invoke-direct {v6, p0, v5}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@19
    return-object v6
.end method

.method public static getCustomTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 616
    const/4 v2, 0x4

    #@1
    new-array v0, v2, [I

    #@3
    .line 617
    .local v0, "fields":[I
    invoke-static {p0, v0}, Landroid/icu/impl/ZoneMeta;->parseCustomID(Ljava/lang/String;[I)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 623
    const/4 v2, 0x0

    #@a
    aget v2, v0, v2

    #@c
    const/4 v3, 0x1

    #@d
    aget v3, v0, v3

    #@f
    const/4 v4, 0x2

    #@10
    aget v4, v0, v4

    #@12
    shl-int/lit8 v4, v4, 0x5

    #@14
    or-int/2addr v3, v4

    #@15
    const/4 v4, 0x3

    #@16
    aget v4, v0, v4

    #@18
    shl-int/lit8 v4, v4, 0xb

    #@1a
    or-int/2addr v3, v4

    #@1b
    mul-int/2addr v2, v3

    #@1c
    .line 622
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v1

    #@20
    .line 624
    .local v1, "key":Ljava/lang/Integer;
    sget-object v2, Landroid/icu/impl/ZoneMeta;->CUSTOM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    #@22
    invoke-virtual {v2, v1, v0}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/icu/util/TimeZone;

    #@28
    return-object v2

    #@29
    .line 626
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_0
    const/4 v2, 0x0

    #@2a
    return-object v2
.end method

.method public static declared-synchronized getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "index"    # I

    #@0
    .prologue
    const-class v8, Landroid/icu/impl/ZoneMeta;

    #@2
    monitor-enter v8

    #@3
    .line 254
    :try_start_0
    const-string/jumbo v3, ""

    #@6
    .line 255
    .local v3, "result":Ljava/lang/String;
    if-ltz p1, :cond_1

    #@8
    .line 256
    const/4 v7, 0x0

    #@9
    invoke-static {v7, p0}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v2

    #@d
    .line 257
    .local v2, "res":Landroid/icu/util/UResourceBundle;
    if-eqz v2, :cond_1

    #@f
    .line 258
    const/4 v5, -0x1

    #@10
    .line 260
    .local v5, "zoneIdx":I
    :try_start_1
    const-string/jumbo v7, "links"

    #@13
    invoke-virtual {v2, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@16
    move-result-object v1

    #@17
    .line 261
    .local v1, "links":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    #@1a
    move-result-object v6

    #@1b
    .line 262
    .local v6, "zones":[I
    array-length v7, v6

    #@1c
    if-ge p1, v7, :cond_0

    #@1e
    .line 263
    aget v5, v6, p1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 268
    .end local v1    # "links":Landroid/icu/util/UResourceBundle;
    .end local v6    # "zones":[I
    :cond_0
    :goto_0
    if-ltz v5, :cond_1

    #@22
    .line 269
    :try_start_2
    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getZoneID(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    move-result-object v4

    #@26
    .line 270
    .local v4, "tmp":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@28
    .line 271
    move-object v3, v4

    #@29
    .end local v2    # "res":Landroid/icu/util/UResourceBundle;
    .end local v4    # "tmp":Ljava/lang/String;
    .end local v5    # "zoneIdx":I
    :cond_1
    monitor-exit v8

    #@2a
    .line 276
    return-object v3

    #@2b
    .end local v3    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@2c
    monitor-exit v8

    #@2d
    throw v7

    #@2e
    .line 265
    .restart local v2    # "res":Landroid/icu/util/UResourceBundle;
    .restart local v3    # "result":Ljava/lang/String;
    .restart local v5    # "zoneIdx":I
    :catch_0
    move-exception v0

    #@2f
    .local v0, "ex":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method public static getRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "tzid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 425
    sget-object v5, Landroid/icu/impl/ZoneMeta;->REGION_CACHE:Landroid/icu/impl/ICUCache;

    #@2
    invoke-interface {v5, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/lang/String;

    #@8
    .line 426
    .local v1, "region":Ljava/lang/String;
    if-nez v1, :cond_1

    #@a
    .line 427
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    #@d
    move-result v4

    #@e
    .line 428
    .local v4, "zoneIdx":I
    if-ltz v4, :cond_1

    #@10
    .line 431
    :try_start_0
    const-string/jumbo v5, "android/icu/impl/data/icudt55b"

    #@13
    const-string/jumbo v6, "zoneinfo64"

    #@16
    sget-object v7, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@18
    .line 430
    invoke-static {v5, v6, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@1b
    move-result-object v3

    #@1c
    .line 432
    .local v3, "top":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v5, "Regions"

    #@1f
    invoke-virtual {v3, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@22
    move-result-object v2

    #@23
    .line 433
    .local v2, "regions":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@26
    move-result v5

    #@27
    if-ge v4, v5, :cond_0

    #@29
    .line 434
    invoke-virtual {v2, v4}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v1

    #@2d
    .line 439
    .end local v2    # "regions":Landroid/icu/util/UResourceBundle;
    .end local v3    # "top":Landroid/icu/util/UResourceBundle;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    #@2f
    .line 440
    sget-object v5, Landroid/icu/impl/ZoneMeta;->REGION_CACHE:Landroid/icu/impl/ICUCache;

    #@31
    invoke-interface {v5, p0, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@34
    .line 444
    .end local v4    # "zoneIdx":I
    :cond_1
    return-object v1

    #@35
    .line 436
    .restart local v4    # "zoneIdx":I
    :catch_0
    move-exception v0

    #@36
    .local v0, "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method public static getShortID(Landroid/icu/util/TimeZone;)Ljava/lang/String;
    .locals 3
    .param p0, "tz"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 839
    const/4 v0, 0x0

    #@2
    .line 841
    .local v0, "canonicalID":Ljava/lang/String;
    instance-of v1, p0, Landroid/icu/impl/OlsonTimeZone;

    #@4
    if-eqz v1, :cond_0

    #@6
    move-object v1, p0

    #@7
    .line 842
    check-cast v1, Landroid/icu/impl/OlsonTimeZone;

    #@9
    invoke-virtual {v1}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 844
    .end local v0    # "canonicalID":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 845
    .local v0, "canonicalID":Ljava/lang/String;
    if-nez v0, :cond_1

    #@17
    .line 846
    return-object v2

    #@18
    .line 848
    :cond_1
    invoke-static {v0}, Landroid/icu/impl/ZoneMeta;->getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    return-object v1
.end method

.method public static getShortID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 858
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 859
    .local v0, "canonicalID":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 860
    return-object v1

    #@8
    .line 862
    :cond_0
    invoke-static {v0}, Landroid/icu/impl/ZoneMeta;->getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method private static getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "canonicalID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 866
    const/4 v2, 0x0

    #@1
    .line 867
    .local v2, "shortID":Ljava/lang/String;
    const/16 v6, 0x2f

    #@3
    const/16 v7, 0x3a

    #@5
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    .line 871
    .local v5, "tzidKey":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "android/icu/impl/data/icudt55b"

    #@c
    .line 872
    const-string/jumbo v7, "keyTypeData"

    #@f
    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@11
    .line 871
    invoke-static {v6, v7, v8}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@14
    move-result-object v1

    #@15
    .line 873
    .local v1, "keyTypeData":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v6, "typeMap"

    #@18
    invoke-virtual {v1, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@1b
    move-result-object v4

    #@1c
    .line 874
    .local v4, "typeMap":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v6, "timezone"

    #@1f
    invoke-virtual {v4, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@22
    move-result-object v3

    #@23
    .line 875
    .local v3, "typeKeys":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3, v5}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    move-result-object v2

    #@27
    .line 880
    .end local v1    # "keyTypeData":Landroid/icu/util/UResourceBundle;
    .end local v2    # "shortID":Ljava/lang/String;
    .end local v3    # "typeKeys":Landroid/icu/util/UResourceBundle;
    .end local v4    # "typeMap":Landroid/icu/util/UResourceBundle;
    :goto_0
    return-object v2

    #@28
    .line 876
    .restart local v2    # "shortID":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@29
    .local v0, "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method public static getSystemTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 575
    sget-object v0, Landroid/icu/impl/ZoneMeta;->SYSTEM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

    #@2
    invoke-virtual {v0, p0, p0}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/TimeZone;

    #@8
    return-object v0
.end method

.method private static declared-synchronized getSystemZIDs()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const-class v6, Landroid/icu/impl/ZoneMeta;

    #@2
    monitor-enter v6

    #@3
    .line 65
    const/4 v4, 0x0

    #@4
    .line 66
    .local v4, "systemZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    sget-object v5, Landroid/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    #@6
    if-eqz v5, :cond_0

    #@8
    .line 67
    sget-object v5, Landroid/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    #@a
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@d
    move-result-object v5

    #@e
    move-object v0, v5

    #@f
    check-cast v0, Ljava/util/Set;

    #@11
    move-object v4, v0

    #@12
    .line 69
    .end local v4    # "systemZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    if-nez v4, :cond_3

    #@14
    .line 70
    new-instance v3, Ljava/util/TreeSet;

    #@16
    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    #@19
    .line 71
    .local v3, "systemIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    .line 72
    .local v1, "allIDs":[Ljava/lang/String;
    const/4 v5, 0x0

    #@1e
    array-length v7, v1

    #@1f
    :goto_0
    if-ge v5, v7, :cond_2

    #@21
    aget-object v2, v1, v5

    #@23
    .line 74
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v8, "Etc/Unknown"

    #@26
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v8

    #@2a
    if-eqz v8, :cond_1

    #@2c
    .line 72
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 77
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    goto :goto_1

    #@33
    .end local v1    # "allIDs":[Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@34
    monitor-exit v6

    #@35
    throw v5

    #@36
    .line 79
    .restart local v1    # "allIDs":[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@39
    move-result-object v4

    #@3a
    .line 80
    .local v4, "systemZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/ref/SoftReference;

    #@3c
    invoke-direct {v5, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@3f
    sput-object v5, Landroid/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    :cond_3
    monitor-exit v6

    #@42
    .line 82
    return-object v4
.end method

.method private static getZoneID(I)Ljava/lang/String;
    .locals 2
    .param p0, "idx"    # I

    #@0
    .prologue
    .line 301
    if-ltz p0, :cond_0

    #@2
    .line 302
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 303
    .local v0, "ids":[Ljava/lang/String;
    array-length v1, v0

    #@7
    if-ge p0, v1, :cond_0

    #@9
    .line 304
    aget-object v1, v0, p0

    #@b
    return-object v1

    #@c
    .line 307
    .end local v0    # "ids":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method private static declared-synchronized getZoneIDs()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const-class v3, Landroid/icu/impl/ZoneMeta;

    #@2
    monitor-enter v3

    #@3
    .line 285
    :try_start_0
    sget-object v2, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v2, :cond_0

    #@7
    .line 288
    :try_start_1
    const-string/jumbo v2, "android/icu/impl/data/icudt55b"

    #@a
    const-string/jumbo v4, "zoneinfo64"

    #@d
    sget-object v5, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@f
    .line 287
    invoke-static {v2, v4, v5}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@12
    move-result-object v1

    #@13
    .line 289
    .local v1, "top":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v2, "Names"

    #@16
    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    sput-object v2, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 294
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    #@1e
    if-nez v2, :cond_1

    #@20
    .line 295
    const/4 v2, 0x0

    #@21
    new-array v2, v2, [Ljava/lang/String;

    #@23
    sput-object v2, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    #@25
    .line 297
    :cond_1
    sget-object v2, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    monitor-exit v3

    #@28
    return-object v2

    #@29
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit v3

    #@2b
    throw v2

    #@2c
    .line 290
    :catch_0
    move-exception v0

    #@2d
    .local v0, "ex":Ljava/util/MissingResourceException;
    goto :goto_0
.end method

.method private static getZoneIndex(Ljava/lang/String;)I
    .locals 8
    .param p0, "zid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 311
    const/4 v6, -0x1

    #@1
    .line 313
    .local v6, "zoneIdx":I
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 314
    .local v0, "all":[Ljava/lang/String;
    array-length v7, v0

    #@6
    if-lez v7, :cond_0

    #@8
    .line 315
    const/4 v5, 0x0

    #@9
    .line 316
    .local v5, "start":I
    array-length v2, v0

    #@a
    .line 318
    .local v2, "limit":I
    const v1, 0x7fffffff

    #@d
    .line 320
    .local v1, "lastMid":I
    :goto_0
    add-int v7, v5, v2

    #@f
    div-int/lit8 v3, v7, 0x2

    #@11
    .line 321
    .local v3, "mid":I
    if-ne v1, v3, :cond_1

    #@13
    .line 337
    .end local v1    # "lastMid":I
    .end local v2    # "limit":I
    .end local v3    # "mid":I
    .end local v5    # "start":I
    :cond_0
    :goto_1
    return v6

    #@14
    .line 324
    .restart local v1    # "lastMid":I
    .restart local v2    # "limit":I
    .restart local v3    # "mid":I
    .restart local v5    # "start":I
    :cond_1
    move v1, v3

    #@15
    .line 325
    aget-object v7, v0, v3

    #@17
    invoke-virtual {p0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@1a
    move-result v4

    #@1b
    .line 326
    .local v4, "r":I
    if-nez v4, :cond_2

    #@1d
    .line 327
    move v6, v3

    #@1e
    .line 328
    goto :goto_1

    #@1f
    .line 329
    :cond_2
    if-gez v4, :cond_3

    #@21
    .line 330
    move v2, v3

    #@22
    goto :goto_0

    #@23
    .line 332
    :cond_3
    move v5, v3

    #@24
    goto :goto_0
.end method

.method public static openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 8
    .param p0, "top"    # Landroid/icu/util/UResourceBundle;
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 519
    const/4 v1, 0x0

    #@1
    .line 520
    .local v1, "res":Landroid/icu/util/UResourceBundle;
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    #@4
    move-result v3

    #@5
    .line 521
    .local v3, "zoneIdx":I
    if-ltz v3, :cond_2

    #@7
    .line 523
    if-nez p0, :cond_0

    #@9
    .line 525
    :try_start_0
    const-string/jumbo v5, "android/icu/impl/data/icudt55b"

    #@c
    const-string/jumbo v6, "zoneinfo64"

    #@f
    sget-object v7, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@11
    .line 524
    invoke-static {v5, v6, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@14
    move-result-object p0

    #@15
    .line 527
    :cond_0
    const-string/jumbo v5, "Zones"

    #@18
    invoke-virtual {p0, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@1b
    move-result-object v4

    #@1c
    .line 528
    .local v4, "zones":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v4, v3}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@1f
    move-result-object v2

    #@20
    .line 529
    .local v2, "zone":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getType()I

    #@23
    move-result v5

    #@24
    const/4 v6, 0x7

    #@25
    if-ne v5, v6, :cond_1

    #@27
    .line 531
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getInt()I

    #@2a
    move-result v5

    #@2b
    invoke-virtual {v4, v5}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    move-result-object v2

    #@2f
    .line 533
    :cond_1
    move-object v1, v2

    #@30
    .line 538
    .end local v1    # "res":Landroid/icu/util/UResourceBundle;
    .end local v2    # "zone":Landroid/icu/util/UResourceBundle;
    .end local v4    # "zones":Landroid/icu/util/UResourceBundle;
    :cond_2
    :goto_0
    return-object v1

    #@31
    .line 534
    .restart local v1    # "res":Landroid/icu/util/UResourceBundle;
    :catch_0
    move-exception v0

    #@32
    .line 535
    .local v0, "e":Ljava/util/MissingResourceException;
    const/4 v1, 0x0

    #@33
    goto :goto_0
.end method

.method static parseCustomID(Ljava/lang/String;[I)Z
    .locals 12
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "fields"    # [I

    #@0
    .prologue
    .line 655
    const/4 v4, 0x0

    #@1
    .line 657
    .local v4, "numberFormat":Landroid/icu/text/NumberFormat;
    if-eqz p0, :cond_11

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v10

    #@7
    const-string/jumbo v11, "GMT"

    #@a
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@d
    move-result v11

    #@e
    if-le v10, v11, :cond_11

    #@10
    .line 658
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@12
    invoke-virtual {p0, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@15
    move-result-object v10

    #@16
    const-string/jumbo v11, "GMT"

    #@19
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1c
    move-result v10

    #@1d
    .line 657
    if-eqz v10, :cond_11

    #@1f
    .line 659
    new-instance v6, Ljava/text/ParsePosition;

    #@21
    const-string/jumbo v10, "GMT"

    #@24
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@27
    move-result v10

    #@28
    invoke-direct {v6, v10}, Ljava/text/ParsePosition;-><init>(I)V

    #@2b
    .line 660
    .local v6, "pos":Ljava/text/ParsePosition;
    const/4 v8, 0x1

    #@2c
    .line 661
    .local v8, "sign":I
    const/4 v0, 0x0

    #@2d
    .line 662
    .local v0, "hour":I
    const/4 v2, 0x0

    #@2e
    .line 663
    .local v2, "min":I
    const/4 v7, 0x0

    #@2f
    .line 665
    .local v7, "sec":I
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@32
    move-result v10

    #@33
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@36
    move-result v10

    #@37
    const/16 v11, 0x2d

    #@39
    if-ne v10, v11, :cond_1

    #@3b
    .line 666
    const/4 v8, -0x1

    #@3c
    .line 670
    :cond_0
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@3f
    move-result v10

    #@40
    add-int/lit8 v10, v10, 0x1

    #@42
    invoke-virtual {v6, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    #@45
    .line 672
    invoke-static {}, Landroid/icu/text/NumberFormat;->getInstance()Landroid/icu/text/NumberFormat;

    #@48
    move-result-object v4

    #@49
    .line 673
    .local v4, "numberFormat":Landroid/icu/text/NumberFormat;
    const/4 v10, 0x1

    #@4a
    invoke-virtual {v4, v10}, Landroid/icu/text/NumberFormat;->setParseIntegerOnly(Z)V

    #@4d
    .line 676
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@50
    move-result v9

    #@51
    .line 678
    .local v9, "start":I
    invoke-virtual {v4, p0, v6}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@54
    move-result-object v3

    #@55
    .line 679
    .local v3, "n":Ljava/lang/Number;
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@58
    move-result v10

    #@59
    if-ne v10, v9, :cond_2

    #@5b
    .line 680
    const/4 v10, 0x0

    #@5c
    return v10

    #@5d
    .line 667
    .end local v3    # "n":Ljava/lang/Number;
    .end local v9    # "start":I
    .local v4, "numberFormat":Landroid/icu/text/NumberFormat;
    :cond_1
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@60
    move-result v10

    #@61
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@64
    move-result v10

    #@65
    const/16 v11, 0x2b

    #@67
    if-eq v10, v11, :cond_0

    #@69
    .line 668
    const/4 v10, 0x0

    #@6a
    return v10

    #@6b
    .line 682
    .restart local v3    # "n":Ljava/lang/Number;
    .local v4, "numberFormat":Landroid/icu/text/NumberFormat;
    .restart local v9    # "start":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    #@6e
    move-result v0

    #@6f
    .line 684
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@72
    move-result v10

    #@73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@76
    move-result v11

    #@77
    if-ge v10, v11, :cond_e

    #@79
    .line 685
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@7c
    move-result v10

    #@7d
    sub-int/2addr v10, v9

    #@7e
    const/4 v11, 0x2

    #@7f
    if-gt v10, v11, :cond_3

    #@81
    .line 686
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@84
    move-result v10

    #@85
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@88
    move-result v10

    #@89
    const/16 v11, 0x3a

    #@8b
    if-eq v10, v11, :cond_4

    #@8d
    .line 687
    :cond_3
    const/4 v10, 0x0

    #@8e
    return v10

    #@8f
    .line 690
    :cond_4
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@92
    move-result v10

    #@93
    add-int/lit8 v10, v10, 0x1

    #@95
    invoke-virtual {v6, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    #@98
    .line 691
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@9b
    move-result v5

    #@9c
    .line 692
    .local v5, "oldPos":I
    invoke-virtual {v4, p0, v6}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@9f
    move-result-object v3

    #@a0
    .line 693
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@a3
    move-result v10

    #@a4
    sub-int/2addr v10, v5

    #@a5
    const/4 v11, 0x2

    #@a6
    if-eq v10, v11, :cond_5

    #@a8
    .line 695
    const/4 v10, 0x0

    #@a9
    return v10

    #@aa
    .line 697
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    #@ad
    move-result v2

    #@ae
    .line 698
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@b1
    move-result v10

    #@b2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b5
    move-result v11

    #@b6
    if-ge v10, v11, :cond_9

    #@b8
    .line 699
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@bb
    move-result v10

    #@bc
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@bf
    move-result v10

    #@c0
    const/16 v11, 0x3a

    #@c2
    if-eq v10, v11, :cond_6

    #@c4
    .line 700
    const/4 v10, 0x0

    #@c5
    return v10

    #@c6
    .line 703
    :cond_6
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@c9
    move-result v10

    #@ca
    add-int/lit8 v10, v10, 0x1

    #@cc
    invoke-virtual {v6, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    #@cf
    .line 704
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@d2
    move-result v5

    #@d3
    .line 705
    invoke-virtual {v4, p0, v6}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@d6
    move-result-object v3

    #@d7
    .line 706
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@da
    move-result v10

    #@db
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@de
    move-result v11

    #@df
    if-ne v10, v11, :cond_7

    #@e1
    .line 707
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@e4
    move-result v10

    #@e5
    sub-int/2addr v10, v5

    #@e6
    const/4 v11, 0x2

    #@e7
    if-eq v10, v11, :cond_8

    #@e9
    .line 708
    :cond_7
    const/4 v10, 0x0

    #@ea
    return v10

    #@eb
    .line 710
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    #@ee
    move-result v7

    #@ef
    .line 746
    .end local v5    # "oldPos":I
    :cond_9
    :goto_0
    :pswitch_0
    const/16 v10, 0x17

    #@f1
    if-gt v0, v10, :cond_11

    #@f3
    const/16 v10, 0x3b

    #@f5
    if-gt v2, v10, :cond_11

    #@f7
    const/16 v10, 0x3b

    #@f9
    if-gt v7, v10, :cond_11

    #@fb
    .line 747
    if-eqz p1, :cond_d

    #@fd
    .line 748
    array-length v10, p1

    #@fe
    const/4 v11, 0x1

    #@ff
    if-lt v10, v11, :cond_a

    #@101
    .line 749
    const/4 v10, 0x0

    #@102
    aput v8, p1, v10

    #@104
    .line 751
    :cond_a
    array-length v10, p1

    #@105
    const/4 v11, 0x2

    #@106
    if-lt v10, v11, :cond_b

    #@108
    .line 752
    const/4 v10, 0x1

    #@109
    aput v0, p1, v10

    #@10b
    .line 754
    :cond_b
    array-length v10, p1

    #@10c
    const/4 v11, 0x3

    #@10d
    if-lt v10, v11, :cond_c

    #@10f
    .line 755
    const/4 v10, 0x2

    #@110
    aput v2, p1, v10

    #@112
    .line 757
    :cond_c
    array-length v10, p1

    #@113
    const/4 v11, 0x4

    #@114
    if-lt v10, v11, :cond_d

    #@116
    .line 758
    const/4 v10, 0x3

    #@117
    aput v7, p1, v10

    #@119
    .line 761
    :cond_d
    const/4 v10, 0x1

    #@11a
    return v10

    #@11b
    .line 722
    :cond_e
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@11e
    move-result v10

    #@11f
    sub-int v1, v10, v9

    #@121
    .line 723
    .local v1, "length":I
    if-lez v1, :cond_f

    #@123
    const/4 v10, 0x6

    #@124
    if-ge v10, v1, :cond_10

    #@126
    .line 725
    :cond_f
    const/4 v10, 0x0

    #@127
    return v10

    #@128
    .line 727
    :cond_10
    packed-switch v1, :pswitch_data_0

    #@12b
    goto :goto_0

    #@12c
    .line 734
    :pswitch_1
    rem-int/lit8 v2, v0, 0x64

    #@12e
    .line 735
    div-int/lit8 v0, v0, 0x64

    #@130
    goto :goto_0

    #@131
    .line 739
    :pswitch_2
    rem-int/lit8 v7, v0, 0x64

    #@133
    .line 740
    div-int/lit8 v10, v0, 0x64

    #@135
    rem-int/lit8 v2, v10, 0x64

    #@137
    .line 741
    div-int/lit16 v0, v0, 0x2710

    #@139
    goto :goto_0

    #@13a
    .line 764
    .end local v0    # "hour":I
    .end local v1    # "length":I
    .end local v2    # "min":I
    .end local v3    # "n":Ljava/lang/Number;
    .end local v4    # "numberFormat":Landroid/icu/text/NumberFormat;
    .end local v6    # "pos":Ljava/text/ParsePosition;
    .end local v7    # "sec":I
    .end local v8    # "sign":I
    .end local v9    # "start":I
    :cond_11
    const/4 v10, 0x0

    #@13b
    return v10

    #@13c
    .line 727
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
