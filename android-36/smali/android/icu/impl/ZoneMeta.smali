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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist ASSERT:Z = false

.field private static blacklist CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CUSTOM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

.field private static blacklist REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist REGION_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

.field private static blacklist ZONEIDS:[Ljava/lang/String; = null

.field private static final blacklist ZONEINFORESNAME:Ljava/lang/String; = "zoneinfo64"

.field private static final blacklist kCUSTOM_TZ_PREFIX:Ljava/lang/String; = "GMT"

.field private static final blacklist kGMT_ID:Ljava/lang/String; = "GMT"

.field private static final blacklist kMAX_CUSTOM_HOUR:I = 0x17

.field private static final blacklist kMAX_CUSTOM_MIN:I = 0x3b

.field private static final blacklist kMAX_CUSTOM_SEC:I = 0x3b

.field private static final blacklist kNAMES:Ljava/lang/String; = "Names"

.field private static final blacklist kREGIONS:Ljava/lang/String; = "Regions"

.field private static final blacklist kWorld:Ljava/lang/String; = "001"

.field private static final blacklist kZONES:Ljava/lang/String; = "Zones"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    nop

    .line 280
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    .line 341
    new-instance v1, Landroid/icu/impl/SimpleCache;

    invoke-direct {v1}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v1, Landroid/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache;

    .line 342
    new-instance v1, Landroid/icu/impl/SimpleCache;

    invoke-direct {v1}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v1, Landroid/icu/impl/ZoneMeta;->REGION_CACHE:Landroid/icu/impl/ICUCache;

    .line 343
    new-instance v1, Landroid/icu/impl/SimpleCache;

    invoke-direct {v1}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v1, Landroid/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache;

    .line 596
    new-instance v1, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

    invoke-direct {v1, v0}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;-><init>(Landroid/icu/impl/ZoneMeta-IA;)V

    sput-object v1, Landroid/icu/impl/ZoneMeta;->SYSTEM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

    .line 634
    new-instance v1, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    invoke-direct {v1, v0}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;-><init>(Landroid/icu/impl/ZoneMeta-IA;)V

    sput-object v1, Landroid/icu/impl/ZoneMeta;->CUSTOM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist countEquivalentIDs(Ljava/lang/String;)I
    .registers 7
    .param p0, "id"    # Ljava/lang/String;

    const-class v0, Landroid/icu/impl/ZoneMeta;

    monitor-enter v0

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "count":I
    const/4 v2, 0x0

    :try_start_5
    invoke-static {v2, p0}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_1b

    .line 224
    .local v2, "res":Landroid/icu/util/UResourceBundle;
    if-eqz v2, :cond_19

    .line 226
    :try_start_b
    const-string v3, "links"

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 227
    .local v3, "links":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v4

    .line 228
    .local v4, "v":[I
    array-length v5, v4
    :try_end_16
    .catch Ljava/util/MissingResourceException; {:try_start_b .. :try_end_16} :catch_18
    .catchall {:try_start_b .. :try_end_16} :catchall_1b

    move v1, v5

    .line 231
    .end local v3    # "links":Landroid/icu/util/UResourceBundle;
    .end local v4    # "v":[I
    goto :goto_19

    .line 229
    :catch_18
    move-exception v3

    .line 233
    :cond_19
    :goto_19
    monitor-exit v0

    return v1

    .line 221
    .end local v1    # "count":I
    .end local v2    # "res":Landroid/icu/util/UResourceBundle;
    .end local p0    # "id":Ljava/lang/String;
    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private static blacklist findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "tzid"    # Ljava/lang/String;

    .line 393
    const-string v0, "timezone"

    const/4 v1, 0x0

    .line 394
    .local v1, "canonical":Ljava/lang/String;
    const/16 v2, 0x2f

    const/16 v3, 0x3a

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "tzidKey":Ljava/lang/String;
    :try_start_b
    const-string v3, "android/icu/impl/data/icudata"

    const-string v4, "keyTypeData"

    sget-object v5, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 400
    .local v3, "keyTypeData":Landroid/icu/util/UResourceBundle;
    const-string v4, "typeMap"

    invoke-virtual {v3, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 401
    .local v4, "typeMap":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v4, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5
    :try_end_1f
    .catch Ljava/util/MissingResourceException; {:try_start_b .. :try_end_1f} :catch_37

    .line 403
    .local v5, "typeKeys":Landroid/icu/util/UResourceBundle;
    :try_start_1f
    invoke-virtual {v5, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_22
    .catch Ljava/util/MissingResourceException; {:try_start_1f .. :try_end_22} :catch_24

    .line 405
    move-object v1, p0

    .line 408
    goto :goto_25

    .line 406
    :catch_24
    move-exception v6

    .line 409
    :goto_25
    if-nez v1, :cond_36

    .line 411
    :try_start_27
    const-string v6, "typeAlias"

    invoke-virtual {v3, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    .line 412
    .local v6, "typeAlias":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v6, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 413
    .local v0, "aliasesForKey":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_35
    .catch Ljava/util/MissingResourceException; {:try_start_27 .. :try_end_35} :catch_37

    move-object v1, v7

    .line 417
    .end local v0    # "aliasesForKey":Landroid/icu/util/UResourceBundle;
    .end local v3    # "keyTypeData":Landroid/icu/util/UResourceBundle;
    .end local v4    # "typeMap":Landroid/icu/util/UResourceBundle;
    .end local v5    # "typeKeys":Landroid/icu/util/UResourceBundle;
    .end local v6    # "typeAlias":Landroid/icu/util/UResourceBundle;
    :cond_36
    goto :goto_38

    .line 415
    :catch_37
    move-exception v0

    .line 418
    :goto_38
    return-object v1
.end method

.method static blacklist formatCustomID(IIIZ)Ljava/lang/String;
    .registers 8
    .param p0, "hour"    # I
    .param p1, "min"    # I
    .param p2, "sec"    # I
    .param p3, "negative"    # Z

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GMT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 819
    .local v0, "zid":Ljava/lang/StringBuilder;
    if-nez p0, :cond_b

    if-eqz p1, :cond_3e

    .line 820
    :cond_b
    if-eqz p3, :cond_13

    .line 821
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 823
    :cond_13
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 826
    :goto_18
    const/16 v1, 0x30

    const/16 v2, 0xa

    if-ge p0, v2, :cond_21

    .line 827
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 829
    :cond_21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 830
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 831
    if-ge p1, v2, :cond_2e

    .line 832
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 834
    :cond_2e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 836
    if-eqz p2, :cond_3e

    .line 838
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 839
    if-ge p2, v2, :cond_3b

    .line 840
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 842
    :cond_3b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 845
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;
    .registers 9
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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "baseSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Landroid/icu/impl/ZoneMeta$1;->$SwitchMap$android$icu$util$TimeZone$SystemTimeZoneType:[I

    invoke-virtual {p0}, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7e

    .line 172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown SystemTimeZoneType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :pswitch_14
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getCanonicalSystemLocationZIDs()Ljava/util/Set;

    move-result-object v0

    .line 169
    goto :goto_23

    .line 165
    :pswitch_19
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getCanonicalSystemZIDs()Ljava/util/Set;

    move-result-object v0

    .line 166
    goto :goto_23

    .line 162
    :pswitch_1e
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getSystemZIDs()Ljava/util/Set;

    move-result-object v0

    .line 163
    nop

    .line 175
    :goto_23
    if-nez p1, :cond_28

    if-nez p2, :cond_28

    .line 176
    return-object v0

    .line 179
    :cond_28
    if-eqz p1, :cond_30

    .line 180
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 184
    :cond_30
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 185
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_39
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 186
    .local v3, "id":Ljava/lang/String;
    if-eqz p1, :cond_52

    .line 187
    invoke-static {v3}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "r":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 189
    goto :goto_39

    .line 192
    .end local v4    # "r":Ljava/lang/String;
    :cond_52
    if-eqz p2, :cond_69

    .line 194
    invoke-static {v3}, Landroid/icu/impl/ZoneMeta;->getSystemTimeZone(Ljava/lang/String;)Landroid/icu/impl/OlsonTimeZone;

    move-result-object v4

    .line 195
    .local v4, "z":Landroid/icu/util/TimeZone;
    if-eqz v4, :cond_39

    invoke-virtual {v4}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    .line 196
    goto :goto_39

    .line 199
    .end local v4    # "z":Landroid/icu/util/TimeZone;
    :cond_69
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v3    # "id":Ljava/lang/String;
    goto :goto_39

    .line 201
    :cond_6d
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 205
    :cond_78
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method

.method public static blacklist getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;
    .registers 2
    .param p0, "tz"    # Landroid/icu/util/TimeZone;

    .line 346
    instance-of v0, p0, Landroid/icu/impl/OlsonTimeZone;

    if-eqz v0, :cond_c

    .line 347
    move-object v0, p0

    check-cast v0, Landroid/icu/impl/OlsonTimeZone;

    invoke-virtual {v0}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 349
    :cond_c
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "tzid"    # Ljava/lang/String;

    .line 360
    sget-object v0, Landroid/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v0, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    .local v0, "canonical":Ljava/lang/String;
    if-nez v0, :cond_4b

    .line 362
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    if-nez v0, :cond_44

    .line 366
    :try_start_10
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    move-result v1

    .line 367
    .local v1, "zoneIdx":I
    if-ltz v1, :cond_42

    .line 368
    const-string v2, "android/icu/impl/data/icudata"

    const-string v3, "zoneinfo64"

    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 370
    .local v2, "top":Landroid/icu/util/UResourceBundle;
    const-string v3, "Zones"

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 371
    .local v3, "zones":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 372
    .local v4, "zone":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_3f

    .line 374
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v5

    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getZoneID(I)Ljava/lang/String;

    move-result-object v5

    move-object p0, v5

    .line 375
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3e
    .catch Ljava/util/MissingResourceException; {:try_start_10 .. :try_end_3e} :catch_43

    move-object v0, v5

    .line 377
    :cond_3f
    if-nez v0, :cond_42

    .line 378
    move-object v0, p0

    .line 383
    .end local v1    # "zoneIdx":I
    .end local v2    # "top":Landroid/icu/util/UResourceBundle;
    .end local v3    # "zones":Landroid/icu/util/UResourceBundle;
    .end local v4    # "zone":Landroid/icu/util/UResourceBundle;
    :cond_42
    goto :goto_44

    .line 381
    :catch_43
    move-exception v1

    .line 385
    :cond_44
    :goto_44
    if-eqz v0, :cond_4b

    .line 386
    sget-object v1, Landroid/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, p0, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    :cond_4b
    return-object v0
.end method

.method public static blacklist getCanonicalCountry(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "tzid"    # Ljava/lang/String;

    .line 480
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_f

    const-string v1, "001"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 482
    const/4 v0, 0x0

    .line 484
    :cond_f
    return-object v0
.end method

.method public static blacklist getCanonicalCountry(Ljava/lang/String;Landroid/icu/util/Output;)Ljava/lang/String;
    .registers 9
    .param p0, "tzid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 493
    .local p1, "isPrimary":Landroid/icu/util/Output;, "Landroid/icu/util/Output<Ljava/lang/Boolean;>;"
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 495
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "country":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const-string v2, "001"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 497
    return-object v1

    .line 501
    :cond_14
    sget-object v2, Landroid/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v2, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 502
    .local v2, "singleZone":Ljava/lang/Boolean;
    if-nez v2, :cond_37

    .line 503
    sget-object v3, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {v3, v0, v1}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v1

    .line 504
    .local v1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 505
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 506
    sget-object v3, Landroid/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v3, p0, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 509
    .end local v1    # "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_37
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 510
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    goto :goto_71

    .line 517
    :cond_42
    :try_start_42
    const-string v1, "android/icu/impl/data/icudata"

    const-string v3, "metaZones"

    invoke-static {v1, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 518
    .local v1, "bundle":Landroid/icu/util/UResourceBundle;
    const-string v3, "primaryZones"

    invoke-virtual {v1, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 519
    .local v3, "primaryZones":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3, v0}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, "primaryZone":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 521
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    goto :goto_6f

    .line 524
    :cond_5f
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 525
    .local v5, "canonicalID":Ljava/lang/String;
    if-eqz v5, :cond_6f

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 526
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;
    :try_end_6f
    .catch Ljava/util/MissingResourceException; {:try_start_42 .. :try_end_6f} :catch_70

    .line 531
    .end local v1    # "bundle":Landroid/icu/util/UResourceBundle;
    .end local v3    # "primaryZones":Landroid/icu/util/UResourceBundle;
    .end local v4    # "primaryZone":Ljava/lang/String;
    .end local v5    # "canonicalID":Ljava/lang/String;
    :cond_6f
    :goto_6f
    goto :goto_71

    .line 529
    :catch_70
    move-exception v1

    .line 534
    :goto_71
    return-object v0
.end method

.method private static declared-synchronized blacklist getCanonicalSystemLocationZIDs()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/icu/impl/ZoneMeta;

    monitor-enter v0

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, "canonicalSystemLocationZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_4
    sget-object v2, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_11

    .line 127
    sget-object v2, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object v1, v2

    .line 129
    :cond_11
    if-nez v1, :cond_55

    .line 130
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 131
    .local v2, "canonicalSystemLocationIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "allIDs":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v4, :cond_49

    aget-object v6, v3, v5

    .line 134
    .local v6, "id":Ljava/lang/String;
    const-string v7, "Etc/Unknown"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 135
    goto :goto_46

    .line 137
    :cond_2b
    invoke-static {v6}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "canonicalID":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 139
    invoke-static {v6}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "region":Ljava/lang/String;
    if-eqz v8, :cond_46

    const-string v9, "001"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_46

    .line 141
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "canonicalID":Ljava/lang/String;
    .end local v8    # "region":Ljava/lang/String;
    :cond_46
    :goto_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 145
    :cond_49
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    move-object v1, v4

    .line 146
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v4, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_55
    .catchall {:try_start_4 .. :try_end_55} :catchall_57

    .line 148
    .end local v2    # "canonicalSystemLocationIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "allIDs":[Ljava/lang/String;
    :cond_55
    monitor-exit v0

    return-object v1

    .line 124
    .end local v1    # "canonicalSystemLocationZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method

.method private static declared-synchronized blacklist getCanonicalSystemZIDs()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/icu/impl/ZoneMeta;

    monitor-enter v0

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "canonicalSystemZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_4
    sget-object v2, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_11

    .line 95
    sget-object v2, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object v1, v2

    .line 97
    :cond_11
    if-nez v1, :cond_47

    .line 98
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 99
    .local v2, "canonicalSystemIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "allIDs":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v4, :cond_3b

    aget-object v6, v3, v5

    .line 102
    .local v6, "id":Ljava/lang/String;
    const-string v7, "Etc/Unknown"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 103
    goto :goto_38

    .line 105
    :cond_2b
    invoke-static {v6}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, "canonicalID":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 107
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "canonicalID":Ljava/lang/String;
    :cond_38
    :goto_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 110
    :cond_3b
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    move-object v1, v4

    .line 111
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v4, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_49

    .line 113
    .end local v2    # "canonicalSystemIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "allIDs":[Ljava/lang/String;
    :cond_47
    monitor-exit v0

    return-object v1

    .line 92
    .end local v1    # "canonicalSystemZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public static blacklist getCustomID(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "id"    # Ljava/lang/String;

    .line 664
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 665
    .local v0, "fields":[I
    invoke-static {p0, v0}, Landroid/icu/impl/ZoneMeta;->parseCustomID(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 666
    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    const/4 v5, 0x0

    aget v6, v0, v5

    if-gez v6, :cond_18

    goto :goto_19

    :cond_18
    move v1, v5

    :goto_19
    invoke-static {v2, v3, v4, v1}, Landroid/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 668
    :cond_1e
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getCustomTimeZone(I)Landroid/icu/util/SimpleTimeZone;
    .registers 8
    .param p0, "offset"    # I

    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "negative":Z
    move v1, p0

    .line 791
    .local v1, "tmp":I
    if-gez p0, :cond_6

    .line 792
    const/4 v0, 0x1

    .line 793
    neg-int v1, p0

    .line 801
    :cond_6
    div-int/lit16 v1, v1, 0x3e8

    .line 802
    rem-int/lit8 v2, v1, 0x3c

    .line 803
    .local v2, "sec":I
    div-int/lit8 v1, v1, 0x3c

    .line 804
    rem-int/lit8 v3, v1, 0x3c

    .line 805
    .local v3, "min":I
    div-int/lit8 v4, v1, 0x3c

    .line 808
    .local v4, "hour":I
    invoke-static {v4, v3, v2, v0}, Landroid/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object v5

    .line 810
    .local v5, "zid":Ljava/lang/String;
    new-instance v6, Landroid/icu/util/SimpleTimeZone;

    invoke-direct {v6, p0, v5}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v6
.end method

.method public static blacklist getCustomTimeZone(Ljava/lang/String;)Landroid/icu/util/SimpleTimeZone;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;

    .line 644
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 645
    .local v0, "fields":[I
    invoke-static {p0, v0}, Landroid/icu/impl/ZoneMeta;->parseCustomID(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 650
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget v3, v0, v3

    shl-int/lit8 v3, v3, 0xb

    or-int/2addr v2, v3

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 651
    .local v1, "key":Ljava/lang/Integer;
    sget-object v2, Landroid/icu/impl/ZoneMeta;->CUSTOM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    invoke-virtual {v2, v1, v0}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/SimpleTimeZone;

    return-object v2

    .line 653
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized blacklist getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "index"    # I

    const-class v0, Landroid/icu/impl/ZoneMeta;

    monitor-enter v0

    .line 255
    :try_start_3
    const-string v1, ""

    .line 256
    .local v1, "result":Ljava/lang/String;
    if-ltz p1, :cond_2a

    .line 257
    const/4 v2, 0x0

    invoke-static {v2, p0}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2c

    .line 258
    .local v2, "res":Landroid/icu/util/UResourceBundle;
    if-eqz v2, :cond_2a

    .line 259
    const/4 v3, -0x1

    .line 261
    .local v3, "zoneIdx":I
    :try_start_f
    const-string v4, "links"

    invoke-virtual {v2, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 262
    .local v4, "links":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v5

    .line 263
    .local v5, "zones":[I
    array-length v6, v5

    if-ge p1, v6, :cond_1f

    .line 264
    aget v6, v5, p1
    :try_end_1e
    .catch Ljava/util/MissingResourceException; {:try_start_f .. :try_end_1e} :catch_20
    .catchall {:try_start_f .. :try_end_1e} :catchall_2c

    move v3, v6

    .line 268
    .end local v4    # "links":Landroid/icu/util/UResourceBundle;
    .end local v5    # "zones":[I
    :cond_1f
    goto :goto_21

    .line 266
    :catch_20
    move-exception v4

    .line 269
    :goto_21
    if-ltz v3, :cond_2a

    .line 270
    :try_start_23
    invoke-static {v3}, Landroid/icu/impl/ZoneMeta;->getZoneID(I)Ljava/lang/String;

    move-result-object v4
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_2c

    .line 271
    .local v4, "tmp":Ljava/lang/String;
    if-eqz v4, :cond_2a

    .line 272
    move-object v1, v4

    .line 277
    .end local v2    # "res":Landroid/icu/util/UResourceBundle;
    .end local v3    # "zoneIdx":I
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_2a
    monitor-exit v0

    return-object v1

    .line 254
    .end local v1    # "result":Ljava/lang/String;
    .end local p0    # "id":Ljava/lang/String;
    .end local p1    # "index":I
    :catchall_2c
    move-exception p0

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public static blacklist getIanaID(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "tzid"    # Ljava/lang/String;

    .line 430
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "canonicalID":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 432
    const/4 v1, 0x0

    return-object v1

    .line 435
    :cond_8
    const-string v1, "keyTypeData"

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v3, "android/icu/impl/data/icudata"

    invoke-static {v3, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 437
    .local v1, "keyTypeData":Landroid/icu/util/UResourceBundle;
    const-string v2, "ianaMap"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 438
    .local v2, "ianaMap":Landroid/icu/util/UResourceBundle;
    const-string v3, "timezone"

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 440
    .local v3, "ianaTzMap":Landroid/icu/util/UResourceBundle;
    const/16 v4, 0x2f

    const/16 v5, 0x3a

    :try_start_22
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2a
    .catch Ljava/util/MissingResourceException; {:try_start_22 .. :try_end_2a} :catch_2b

    return-object v4

    .line 441
    :catch_2b
    move-exception v4

    .line 444
    .local v4, "e":Ljava/util/MissingResourceException;
    return-object v0
.end method

.method public static blacklist getRegion(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "tzid"    # Ljava/lang/String;

    .line 453
    sget-object v0, Landroid/icu/impl/ZoneMeta;->REGION_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v0, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    .local v0, "region":Ljava/lang/String;
    if-nez v0, :cond_34

    .line 455
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    move-result v1

    .line 456
    .local v1, "zoneIdx":I
    if-ltz v1, :cond_34

    .line 458
    :try_start_10
    const-string v2, "android/icu/impl/data/icudata"

    const-string v3, "zoneinfo64"

    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 460
    .local v2, "top":Landroid/icu/util/UResourceBundle;
    const-string v3, "Regions"

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 461
    .local v3, "regions":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_2b

    .line 462
    invoke-virtual {v3, v1}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_2a
    .catch Ljava/util/MissingResourceException; {:try_start_10 .. :try_end_2a} :catch_2c

    move-object v0, v4

    .line 466
    .end local v2    # "top":Landroid/icu/util/UResourceBundle;
    .end local v3    # "regions":Landroid/icu/util/UResourceBundle;
    :cond_2b
    goto :goto_2d

    .line 464
    :catch_2c
    move-exception v2

    .line 467
    :goto_2d
    if-eqz v0, :cond_34

    .line 468
    sget-object v2, Landroid/icu/impl/ZoneMeta;->REGION_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v2, p0, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 472
    .end local v1    # "zoneIdx":I
    :cond_34
    return-object v0
.end method

.method public static blacklist getShortID(Landroid/icu/util/TimeZone;)Ljava/lang/String;
    .registers 3
    .param p0, "tz"    # Landroid/icu/util/TimeZone;

    .line 855
    const/4 v0, 0x0

    .line 857
    .local v0, "canonicalID":Ljava/lang/String;
    instance-of v1, p0, Landroid/icu/impl/OlsonTimeZone;

    if-eqz v1, :cond_d

    .line 858
    move-object v1, p0

    check-cast v1, Landroid/icu/impl/OlsonTimeZone;

    invoke-virtual {v1}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 861
    :cond_d
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 863
    :goto_15
    if-nez v0, :cond_19

    .line 864
    const/4 v1, 0x0

    return-object v1

    .line 866
    :cond_19
    invoke-static {v0}, Landroid/icu/impl/ZoneMeta;->getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getShortID(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .line 876
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "canonicalID":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 878
    const/4 v1, 0x0

    return-object v1

    .line 880
    :cond_8
    invoke-static {v0}, Landroid/icu/impl/ZoneMeta;->getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "canonicalID"    # Ljava/lang/String;

    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, "shortID":Ljava/lang/String;
    const/16 v1, 0x2f

    const/16 v2, 0x3a

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, "tzidKey":Ljava/lang/String;
    :try_start_9
    const-string v2, "android/icu/impl/data/icudata"

    const-string v3, "keyTypeData"

    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 891
    .local v2, "keyTypeData":Landroid/icu/util/UResourceBundle;
    const-string v3, "typeMap"

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 892
    .local v3, "typeMap":Landroid/icu/util/UResourceBundle;
    const-string v4, "timezone"

    invoke-virtual {v3, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 893
    .local v4, "typeKeys":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v4, v1}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_23
    .catch Ljava/util/MissingResourceException; {:try_start_9 .. :try_end_23} :catch_25

    move-object v0, v5

    .line 896
    .end local v2    # "keyTypeData":Landroid/icu/util/UResourceBundle;
    .end local v3    # "typeMap":Landroid/icu/util/UResourceBundle;
    .end local v4    # "typeKeys":Landroid/icu/util/UResourceBundle;
    goto :goto_26

    .line 894
    :catch_25
    move-exception v2

    .line 898
    :goto_26
    return-object v0
.end method

.method public static blacklist getSystemTimeZone(Ljava/lang/String;)Landroid/icu/impl/OlsonTimeZone;
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .line 603
    sget-object v0, Landroid/icu/impl/ZoneMeta;->SYSTEM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

    invoke-virtual {v0, p0, p0}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/OlsonTimeZone;

    return-object v0
.end method

.method private static declared-synchronized blacklist getSystemZIDs()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/icu/impl/ZoneMeta;

    monitor-enter v0

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "systemZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_4
    sget-object v2, Landroid/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_11

    .line 68
    sget-object v2, Landroid/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object v1, v2

    .line 70
    :cond_11
    if-nez v1, :cond_3d

    .line 71
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 72
    .local v2, "systemIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "allIDs":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v4, :cond_31

    aget-object v6, v3, v5

    .line 75
    .local v6, "id":Ljava/lang/String;
    const-string v7, "Etc/Unknown"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 76
    goto :goto_2e

    .line 78
    :cond_2b
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v6    # "id":Ljava/lang/String;
    :goto_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 80
    :cond_31
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    move-object v1, v4

    .line 81
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v4, Landroid/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_3f

    .line 83
    .end local v2    # "systemIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "allIDs":[Ljava/lang/String;
    :cond_3d
    monitor-exit v0

    return-object v1

    .line 65
    .end local v1    # "systemZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private static blacklist getZoneID(I)Ljava/lang/String;
    .registers 3
    .param p0, "idx"    # I

    .line 302
    if-ltz p0, :cond_c

    .line 303
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "ids":[Ljava/lang/String;
    array-length v1, v0

    if-ge p0, v1, :cond_c

    .line 305
    aget-object v1, v0, p0

    return-object v1

    .line 308
    .end local v0    # "ids":[Ljava/lang/String;
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static declared-synchronized blacklist getZoneIDs()[Ljava/lang/String;
    .registers 4

    const-class v0, Landroid/icu/impl/ZoneMeta;

    monitor-enter v0

    .line 286
    :try_start_3
    sget-object v1, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-nez v1, :cond_1b

    .line 288
    :try_start_7
    const-string v1, "android/icu/impl/data/icudata"

    const-string v2, "zoneinfo64"

    sget-object v3, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 290
    .local v1, "top":Landroid/icu/util/UResourceBundle;
    const-string v2, "Names"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_19
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_19} :catch_1a
    .catchall {:try_start_7 .. :try_end_19} :catchall_28

    .line 293
    .end local v1    # "top":Landroid/icu/util/UResourceBundle;
    goto :goto_1b

    .line 291
    :catch_1a
    move-exception v1

    .line 295
    :cond_1b
    :goto_1b
    :try_start_1b
    sget-object v1, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    if-nez v1, :cond_24

    .line 296
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    .line 298
    :cond_24
    sget-object v1, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_28

    monitor-exit v0

    return-object v1

    .line 285
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private static blacklist getZoneIndex(Ljava/lang/String;)I
    .registers 8
    .param p0, "zid"    # Ljava/lang/String;

    .line 312
    const/4 v0, -0x1

    .line 314
    .local v0, "zoneIdx":I
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "all":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_25

    .line 316
    const/4 v2, 0x0

    .line 317
    .local v2, "start":I
    array-length v3, v1

    .line 319
    .local v3, "limit":I
    const v4, 0x7fffffff

    .line 321
    .local v4, "lastMid":I
    :goto_d
    add-int v5, v2, v3

    div-int/lit8 v5, v5, 0x2

    .line 322
    .local v5, "mid":I
    if-ne v4, v5, :cond_14

    .line 323
    goto :goto_25

    .line 325
    :cond_14
    move v4, v5

    .line 326
    aget-object v6, v1, v5

    invoke-virtual {p0, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    .line 327
    .local v6, "r":I
    if-nez v6, :cond_1f

    .line 328
    move v0, v5

    .line 329
    goto :goto_25

    .line 330
    :cond_1f
    if-gez v6, :cond_23

    .line 331
    move v3, v5

    goto :goto_24

    .line 333
    :cond_23
    move v2, v5

    .line 335
    .end local v5    # "mid":I
    .end local v6    # "r":I
    :goto_24
    goto :goto_d

    .line 338
    .end local v2    # "start":I
    .end local v3    # "limit":I
    .end local v4    # "lastMid":I
    :cond_25
    :goto_25
    return v0
.end method

.method public static blacklist openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .registers 8
    .param p0, "top"    # Landroid/icu/util/UResourceBundle;
    .param p1, "id"    # Ljava/lang/String;

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "res":Landroid/icu/util/UResourceBundle;
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    move-result v1

    .line 549
    .local v1, "zoneIdx":I
    if-ltz v1, :cond_32

    .line 551
    if-nez p0, :cond_14

    .line 552
    :try_start_9
    const-string v2, "android/icu/impl/data/icudata"

    const-string v3, "zoneinfo64"

    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    move-object p0, v2

    .line 555
    :cond_14
    const-string v2, "Zones"

    invoke-virtual {p0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 556
    .local v2, "zones":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 557
    .local v3, "zone":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2e

    .line 559
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v4
    :try_end_2d
    .catch Ljava/util/MissingResourceException; {:try_start_9 .. :try_end_2d} :catch_30

    move-object v3, v4

    .line 561
    :cond_2e
    move-object v0, v3

    .line 564
    .end local v2    # "zones":Landroid/icu/util/UResourceBundle;
    .end local v3    # "zone":Landroid/icu/util/UResourceBundle;
    goto :goto_32

    .line 562
    :catch_30
    move-exception v2

    .line 563
    .local v2, "e":Ljava/util/MissingResourceException;
    const/4 v0, 0x0

    .line 566
    .end local v2    # "e":Ljava/util/MissingResourceException;
    :cond_32
    :goto_32
    return-object v0
.end method

.method static blacklist parseCustomID(Ljava/lang/String;[I)Z
    .registers 16
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "fields"    # [I

    .line 682
    const/4 v0, 0x0

    if-eqz p0, :cond_e7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "GMT"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_e7

    .line 683
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 684
    const/4 v3, 0x1

    .line 685
    .local v3, "sign":I
    const/4 v4, 0x0

    .line 686
    .local v4, "hour":I
    const/4 v5, 0x0

    .line 687
    .local v5, "min":I
    const/4 v6, 0x0

    .line 689
    .local v6, "sec":I
    const/4 v7, 0x1

    new-array v8, v7, [I

    .line 690
    .local v8, "pos":[I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    aput v2, v8, v0

    .line 691
    aget v2, v8, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v9, 0x2d

    if-ne v2, v9, :cond_33

    .line 692
    const/4 v3, -0x1

    goto :goto_3e

    .line 693
    :cond_33
    aget v2, v8, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v9, 0x2b

    if-eq v2, v9, :cond_3e

    .line 694
    return v0

    .line 696
    :cond_3e
    :goto_3e
    aget v2, v8, v0

    add-int/2addr v2, v7

    aput v2, v8, v0

    .line 697
    aget v2, v8, v0

    .line 698
    .local v2, "start":I
    const/16 v9, 0xa

    invoke-static {p0, v8, v9}, Landroid/icu/impl/Utility;->parseNumber(Ljava/lang/String;[II)I

    move-result v4

    .line 699
    aget v10, v8, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-ne v10, v11, :cond_6b

    .line 710
    aget v9, v8, v0

    sub-int/2addr v9, v2

    .line 711
    .local v9, "length":I
    packed-switch v9, :pswitch_data_e8

    .line 729
    return v0

    .line 723
    :pswitch_5b
    rem-int/lit8 v6, v4, 0x64

    .line 724
    div-int/lit8 v10, v4, 0x64

    rem-int/lit8 v5, v10, 0x64

    .line 725
    div-int/lit16 v4, v4, 0x2710

    .line 726
    goto :goto_6a

    .line 718
    :pswitch_64
    rem-int/lit8 v5, v4, 0x64

    .line 719
    div-int/lit8 v4, v4, 0x64

    .line 720
    goto :goto_6a

    .line 715
    :pswitch_69
    nop

    .line 731
    .end local v9    # "length":I
    :goto_6a
    goto :goto_c4

    .line 737
    :cond_6b
    aget v10, v8, v0

    sub-int/2addr v10, v2

    if-lt v10, v7, :cond_e6

    aget v10, v8, v0

    sub-int/2addr v10, v2

    if-gt v10, v12, :cond_e6

    aget v10, v8, v0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_80

    goto :goto_e6

    .line 740
    :cond_80
    aget v10, v8, v0

    add-int/2addr v10, v7

    aput v10, v8, v0

    .line 741
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    aget v13, v8, v0

    if-ne v10, v13, :cond_8e

    .line 742
    return v0

    .line 744
    :cond_8e
    aget v2, v8, v0

    .line 745
    invoke-static {p0, v8, v9}, Landroid/icu/impl/Utility;->parseNumber(Ljava/lang/String;[II)I

    move-result v5

    .line 746
    aget v10, v8, v0

    sub-int/2addr v10, v2

    if-eq v10, v12, :cond_9a

    .line 747
    return v0

    .line 749
    :cond_9a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    aget v13, v8, v0

    if-le v10, v13, :cond_c4

    .line 750
    aget v10, v8, v0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v11, :cond_ab

    .line 751
    return v0

    .line 753
    :cond_ab
    aget v10, v8, v0

    add-int/2addr v10, v7

    aput v10, v8, v0

    .line 754
    aget v2, v8, v0

    .line 755
    invoke-static {p0, v8, v9}, Landroid/icu/impl/Utility;->parseNumber(Ljava/lang/String;[II)I

    move-result v6

    .line 756
    aget v9, v8, v0

    sub-int/2addr v9, v2

    if-ne v9, v12, :cond_c3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    aget v10, v8, v0

    if-le v9, v10, :cond_c4

    .line 757
    :cond_c3
    return v0

    .line 762
    :cond_c4
    :goto_c4
    const/16 v9, 0x17

    if-gt v4, v9, :cond_e7

    const/16 v9, 0x3b

    if-gt v5, v9, :cond_e7

    if-gt v6, v9, :cond_e7

    .line 763
    if-eqz p1, :cond_e5

    .line 764
    array-length v9, p1

    if-lt v9, v7, :cond_d5

    .line 765
    aput v3, p1, v0

    .line 767
    :cond_d5
    array-length v0, p1

    if-lt v0, v12, :cond_da

    .line 768
    aput v4, p1, v7

    .line 770
    :cond_da
    array-length v0, p1

    if-lt v0, v1, :cond_df

    .line 771
    aput v5, p1, v12

    .line 773
    :cond_df
    array-length v0, p1

    const/4 v9, 0x4

    if-lt v0, v9, :cond_e5

    .line 774
    aput v6, p1, v1

    .line 777
    :cond_e5
    return v7

    .line 738
    :cond_e6
    :goto_e6
    return v0

    .line 780
    .end local v2    # "start":I
    .end local v3    # "sign":I
    .end local v4    # "hour":I
    .end local v5    # "min":I
    .end local v6    # "sec":I
    .end local v8    # "pos":[I
    :cond_e7
    return v0

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_69
        :pswitch_69
        :pswitch_64
        :pswitch_64
        :pswitch_5b
        :pswitch_5b
    .end packed-switch
.end method
