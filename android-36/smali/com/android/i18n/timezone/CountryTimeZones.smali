.class public final Lcom/android/i18n/timezone/CountryTimeZones;
.super Ljava/lang/Object;
.source "CountryTimeZones.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;,
        Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;
    }
.end annotation


# instance fields
.field private final blacklist countryIso:Ljava/lang/String;

.field private blacklist defaultTimeZone:Landroid/icu/util/TimeZone;

.field private final blacklist defaultTimeZoneBoosted:Z

.field private final blacklist defaultTimeZoneId:Ljava/lang/String;

.field private final blacklist everUsesUtc:Z

.field private final blacklist timeZoneMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;)V
    .registers 7
    .param p1, "countryIso"    # Ljava/lang/String;
    .param p2, "defaultTimeZoneId"    # Ljava/lang/String;
    .param p3, "defaultTimeZoneBoosted"    # Z
    .param p4, "everUsesUtc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p5, "timeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->countryIso:Ljava/lang/String;

    .line 224
    iput-object p2, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneId:Ljava/lang/String;

    .line 225
    iput-boolean p3, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneBoosted:Z

    .line 226
    iput-boolean p4, p0, Lcom/android/i18n/timezone/CountryTimeZones;->everUsesUtc:Z

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->timeZoneMappings:Ljava/util/List;

    .line 229
    return-void
.end method

.method public static blacklist createValidated(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;
    .registers 15
    .param p0, "countryIso"    # Ljava/lang/String;
    .param p1, "defaultTimeZoneId"    # Ljava/lang/String;
    .param p2, "defaultTimeZoneBoosted"    # Z
    .param p3, "everUsesUtc"    # Z
    .param p5, "debugInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/i18n/timezone/CountryTimeZones;"
        }
    .end annotation

    .line 241
    .local p4, "timeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "validTimeZoneIdsArray":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 243
    .local v1, "validTimeZoneIdsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    .line 244
    .local v8, "validCountryTimeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, " at "

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 245
    .local v3, "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    invoke-static {v3}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->-$$Nest$fgettimeZoneId(Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;)Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "timeZoneId":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping invalid zone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/i18n/util/Log;->w(Ljava/lang/String;)V

    goto :goto_55

    .line 249
    :cond_52
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v3    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    .end local v5    # "timeZoneId":Ljava/lang/String;
    :goto_55
    goto :goto_1b

    .line 257
    :cond_56
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid default time zone ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/i18n/util/Log;->w(Ljava/lang/String;)V

    .line 260
    const/4 p1, 0x0

    move-object v5, p1

    goto :goto_7e

    .line 257
    :cond_7d
    move-object v5, p1

    .line 263
    .end local p1    # "defaultTimeZoneId":Ljava/lang/String;
    .local v5, "defaultTimeZoneId":Ljava/lang/String;
    :goto_7e
    invoke-static {p0}, Lcom/android/i18n/timezone/CountryTimeZones;->normalizeCountryIso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "normalizedCountryIso":Ljava/lang/String;
    new-instance v3, Lcom/android/i18n/timezone/CountryTimeZones;

    move v6, p2

    move v7, p3

    .end local p2    # "defaultTimeZoneBoosted":Z
    .end local p3    # "everUsesUtc":Z
    .local v6, "defaultTimeZoneBoosted":Z
    .local v7, "everUsesUtc":Z
    invoke-direct/range {v3 .. v8}, Lcom/android/i18n/timezone/CountryTimeZones;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;)V

    return-object v3
.end method

.method private blacklist lookupByOffsetWithBiasInternal(JLandroid/icu/util/TimeZone;ILjava/lang/Boolean;)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;
    .registers 16
    .param p1, "whenMillis"    # J
    .param p3, "bias"    # Landroid/icu/util/TimeZone;
    .param p4, "totalOffsetMillis"    # I
    .param p5, "isDst"    # Ljava/lang/Boolean;

    .line 468
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/timezone/CountryTimeZones;->getEffectiveTimeZoneMappingsAt(J)Ljava/util/List;

    move-result-object v0

    .line 469
    .local v0, "timeZoneMappings":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 470
    return-object v2

    .line 473
    :cond_c
    const/4 v1, 0x0

    .line 474
    .local v1, "firstMatch":Landroid/icu/util/TimeZone;
    const/4 v3, 0x0

    .line 475
    .local v3, "biasMatched":Z
    const/4 v4, 0x1

    .line 476
    .local v4, "oneMatch":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 477
    .local v6, "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    invoke-virtual {v6}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v7

    .line 478
    .local v7, "match":Landroid/icu/util/TimeZone;
    if-eqz v7, :cond_13

    .line 479
    invoke-static {p1, p2, v7, p4, p5}, Lcom/android/i18n/timezone/CountryTimeZones;->offsetMatchesAtTime(JLandroid/icu/util/TimeZone;ILjava/lang/Boolean;)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 480
    goto :goto_13

    .line 483
    :cond_2c
    if-nez v1, :cond_30

    .line 484
    move-object v1, v7

    goto :goto_31

    .line 486
    :cond_30
    const/4 v4, 0x0

    .line 488
    :goto_31
    if-eqz p3, :cond_42

    invoke-virtual {v7}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 489
    const/4 v3, 0x1

    .line 491
    :cond_42
    if-eqz v1, :cond_4b

    if-nez v4, :cond_4b

    if-eqz p3, :cond_4c

    if-eqz v3, :cond_4b

    .line 492
    goto :goto_4c

    .line 494
    .end local v6    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    .end local v7    # "match":Landroid/icu/util/TimeZone;
    :cond_4b
    goto :goto_13

    .line 495
    :cond_4c
    :goto_4c
    if-nez v1, :cond_4f

    .line 496
    return-object v2

    .line 499
    :cond_4f
    if-eqz v3, :cond_53

    move-object v2, p3

    goto :goto_54

    :cond_53
    move-object v2, v1

    .line 500
    .local v2, "toReturn":Landroid/icu/util/TimeZone;
    :goto_54
    new-instance v5, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    invoke-direct {v5, v2, v4}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;-><init>(Landroid/icu/util/TimeZone;Z)V

    return-object v5
.end method

.method private static blacklist normalizeCountryIso(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "countryIso"    # Ljava/lang/String;

    .line 525
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist offsetMatchesAtTime(JLandroid/icu/util/TimeZone;ILjava/lang/Boolean;)Z
    .registers 10
    .param p0, "whenMillis"    # J
    .param p2, "timeZone"    # Landroid/icu/util/TimeZone;
    .param p3, "totalOffsetMillis"    # I
    .param p4, "isDst"    # Ljava/lang/Boolean;

    .line 513
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 514
    .local v0, "offsets":[I
    const/4 v1, 0x0

    invoke-virtual {p2, p0, p1, v1, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 516
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    add-int/2addr v2, v4

    if-eq p3, v2, :cond_10

    .line 517
    return v1

    .line 520
    :cond_10
    if-eqz p4, :cond_1f

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aget v4, v0, v3

    if-eqz v4, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    move v4, v1

    :goto_1d
    if-ne v2, v4, :cond_20

    :cond_1f
    move v1, v3

    :cond_20
    return v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 422
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 423
    return v0

    .line 425
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_42

    .line 428
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/i18n/timezone/CountryTimeZones;

    .line 429
    .local v2, "that":Lcom/android/i18n/timezone/CountryTimeZones;
    iget-boolean v3, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneBoosted:Z

    iget-boolean v4, v2, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneBoosted:Z

    if-ne v3, v4, :cond_40

    iget-boolean v3, p0, Lcom/android/i18n/timezone/CountryTimeZones;->everUsesUtc:Z

    iget-boolean v4, v2, Lcom/android/i18n/timezone/CountryTimeZones;->everUsesUtc:Z

    if-ne v3, v4, :cond_40

    iget-object v3, p0, Lcom/android/i18n/timezone/CountryTimeZones;->countryIso:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/i18n/timezone/CountryTimeZones;->countryIso:Ljava/lang/String;

    .line 431
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneId:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneId:Ljava/lang/String;

    .line 432
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/android/i18n/timezone/CountryTimeZones;->timeZoneMappings:Ljava/util/List;

    iget-object v4, v2, Lcom/android/i18n/timezone/CountryTimeZones;->timeZoneMappings:Ljava/util/List;

    .line 433
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    .line 429
    :goto_41
    return v0

    .line 426
    .end local v2    # "that":Lcom/android/i18n/timezone/CountryTimeZones;
    :cond_42
    :goto_42
    return v1
.end method

.method public blacklist test-api getCountryIso()Ljava/lang/String;
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->countryIso:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist test-api getDefaultTimeZone()Landroid/icu/util/TimeZone;
    .registers 3

    monitor-enter p0

    .line 303
    :try_start_1
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZone:Landroid/icu/util/TimeZone;

    if-nez v0, :cond_14

    .line 305
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneId:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 306
    sget-object v0, Landroid/icu/util/TimeZone;->UNKNOWN_ZONE:Landroid/icu/util/TimeZone;

    .local v0, "timeZone":Landroid/icu/util/TimeZone;
    goto :goto_12

    .line 308
    .end local v0    # "timeZone":Landroid/icu/util/TimeZone;
    .end local p0    # "this":Lcom/android/i18n/timezone/CountryTimeZones;
    :cond_c
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 310
    .restart local v0    # "timeZone":Landroid/icu/util/TimeZone;
    :goto_12
    iput-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZone:Landroid/icu/util/TimeZone;

    .line 312
    .end local v0    # "timeZone":Landroid/icu/util/TimeZone;
    :cond_14
    const-string v0, "Etc/Unknown"

    iget-object v1, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZone:Landroid/icu/util/TimeZone;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    goto :goto_26

    :cond_24
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZone:Landroid/icu/util/TimeZone;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    :goto_26
    monitor-exit p0

    return-object v0

    .line 302
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public blacklist test-api getDefaultTimeZoneId()Ljava/lang/String;
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist test-api getEffectiveTimeZoneMappingsAt(J)Ljava/util/List;
    .registers 7
    .param p1, "whenMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/i18n/timezone/CountryTimeZones;->timeZoneMappings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 412
    .local v0, "filteredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;>;"
    iget-object v1, p0, Lcom/android/i18n/timezone/CountryTimeZones;->timeZoneMappings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 413
    .local v2, "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    invoke-virtual {v2, p1, p2}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->isEffectiveAt(J)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 414
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .end local v2    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    :cond_26
    goto :goto_11

    .line 417
    :cond_27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist test-api getTimeZoneMappings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->timeZoneMappings:Ljava/util/List;

    return-object v0
.end method

.method public blacklist test-api hasUtcZone(J)Z
    .registers 8
    .param p1, "whenMillis"    # J

    .line 350
    iget-boolean v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->everUsesUtc:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 351
    return v1

    .line 354
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/timezone/CountryTimeZones;->getEffectiveTimeZoneMappingsAt(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 355
    .local v2, "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    invoke-virtual {v2}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v3

    .line 356
    .local v3, "timeZone":Landroid/icu/util/TimeZone;
    if-eqz v3, :cond_28

    invoke-virtual {v3, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v4

    if-nez v4, :cond_28

    .line 357
    const/4 v0, 0x1

    return v0

    .line 359
    .end local v2    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    .end local v3    # "timeZone":Landroid/icu/util/TimeZone;
    :cond_28
    goto :goto_e

    .line 360
    :cond_29
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 438
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->countryIso:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneBoosted:Z

    .line 439
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/android/i18n/timezone/CountryTimeZones;->timeZoneMappings:Ljava/util/List;

    iget-boolean v4, p0, Lcom/android/i18n/timezone/CountryTimeZones;->everUsesUtc:Z

    .line 440
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 438
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist test-api isDefaultTimeZoneBoosted()Z
    .registers 2

    .line 323
    iget-boolean v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneBoosted:Z

    return v0
.end method

.method public blacklist test-api lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;I)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;
    .registers 11
    .param p1, "whenMillis"    # J
    .param p3, "bias"    # Landroid/icu/util/TimeZone;
    .param p4, "totalOffsetMillis"    # I

    .line 398
    const/4 v5, 0x0

    .line 399
    .local v5, "isDst":Ljava/lang/Boolean;
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    .end local p1    # "whenMillis":J
    .end local p3    # "bias":Landroid/icu/util/TimeZone;
    .end local p4    # "totalOffsetMillis":I
    .local v1, "whenMillis":J
    .local v3, "bias":Landroid/icu/util/TimeZone;
    .local v4, "totalOffsetMillis":I
    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/timezone/CountryTimeZones;->lookupByOffsetWithBiasInternal(JLandroid/icu/util/TimeZone;ILjava/lang/Boolean;)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist test-api lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;
    .registers 12
    .param p1, "whenMillis"    # J
    .param p3, "bias"    # Landroid/icu/util/TimeZone;
    .param p4, "totalOffsetMillis"    # I
    .param p5, "isDst"    # Z

    .line 380
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    .end local p1    # "whenMillis":J
    .end local p3    # "bias":Landroid/icu/util/TimeZone;
    .end local p4    # "totalOffsetMillis":I
    .local v1, "whenMillis":J
    .local v3, "bias":Landroid/icu/util/TimeZone;
    .local v4, "totalOffsetMillis":I
    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/timezone/CountryTimeZones;->lookupByOffsetWithBiasInternal(JLandroid/icu/util/TimeZone;ILjava/lang/Boolean;)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist test-api matchesCountryCode(Ljava/lang/String;)Z
    .registers 4
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/android/i18n/timezone/CountryTimeZones;->countryIso:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/i18n/timezone/CountryTimeZones;->normalizeCountryIso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountryTimeZones{countryIso=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/CountryTimeZones;->countryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", defaultTimeZoneId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultTimeZoneBoosted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/i18n/timezone/CountryTimeZones;->defaultTimeZoneBoosted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeZoneMappings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/timezone/CountryTimeZones;->timeZoneMappings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", everUsesUtc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/i18n/timezone/CountryTimeZones;->everUsesUtc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
