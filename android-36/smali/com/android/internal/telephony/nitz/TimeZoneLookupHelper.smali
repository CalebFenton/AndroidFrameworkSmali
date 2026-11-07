.class public final Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;
.super Ljava/lang/Object;
.source "TimeZoneLookupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;
    }
.end annotation


# instance fields
.field private blacklist mLastCountryTimeZones:Landroid/timezone/CountryTimeZones;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist countryUsesDifferentOffsets(JLjava/util/List;Landroid/icu/util/TimeZone;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/timezone/CountryTimeZones$TimeZoneMapping;",
            ">;",
            "Landroid/icu/util/TimeZone;",
            ")Z"
        }
    .end annotation

    .line 243
    invoke-virtual {p3}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p3, p0, p1}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result p3

    .line 245
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/timezone/CountryTimeZones$TimeZoneMapping;

    .line 246
    invoke-virtual {v1}, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_c

    .line 250
    :cond_23
    invoke-virtual {v1}, Landroid/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 251
    invoke-virtual {v1, p0, p1}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v1

    if-eq p3, v1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getCountryTimeZones(Ljava/lang/String;)Landroid/timezone/CountryTimeZones;
    .registers 3

    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    monitor-enter p0

    .line 326
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->mLastCountryTimeZones:Landroid/timezone/CountryTimeZones;

    if-eqz v0, :cond_14

    .line 327
    invoke-virtual {v0, p1}, Landroid/timezone/CountryTimeZones;->matchesCountryCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 328
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->mLastCountryTimeZones:Landroid/timezone/CountryTimeZones;

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    goto :goto_22

    .line 334
    :cond_14
    invoke-static {}, Landroid/timezone/TimeZoneFinder;->getInstance()Landroid/timezone/TimeZoneFinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Landroid/timezone/CountryTimeZones;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 336
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->mLastCountryTimeZones:Landroid/timezone/CountryTimeZones;

    .line 338
    :cond_20
    monitor-exit p0

    return-object p1

    .line 339
    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_12

    throw p1
.end method

.method private static blacklist lookupByInstantOffsetDst(JILjava/lang/Boolean;)Landroid/timezone/CountryTimeZones$OffsetResult;
    .registers 12

    .line 266
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    .line 269
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :goto_9
    if-ge v4, v1, :cond_1d

    aget-object v6, v0, v4

    .line 270
    invoke-static {v6}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v6

    .line 271
    invoke-static {v6, p2, p3, p0, p1}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->offsetMatchesAtTime(Landroid/icu/util/TimeZone;ILjava/lang/Boolean;J)Z

    move-result v7

    if-eqz v7, :cond_1a

    if-nez v5, :cond_1e

    move-object v5, v6

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1d
    const/4 v3, 0x1

    :cond_1e
    if-nez v5, :cond_21

    return-object v2

    .line 284
    :cond_21
    new-instance p0, Landroid/timezone/CountryTimeZones$OffsetResult;

    invoke-direct {p0, v5, v3}, Landroid/timezone/CountryTimeZones$OffsetResult;-><init>(Landroid/icu/util/TimeZone;Z)V

    return-object p0
.end method

.method private static blacklist offsetMatchesAtTime(Landroid/icu/util/TimeZone;ILjava/lang/Boolean;J)Z
    .registers 7

    const/4 v0, 0x2

    .line 295
    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 296
    invoke-virtual {p0, p3, p4, v1, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 298
    aget p0, v0, v1

    const/4 p3, 0x1

    aget p4, v0, p3

    add-int/2addr p0, p4

    if-eq p1, p0, :cond_10

    return v1

    :cond_10
    if-eqz p2, :cond_21

    .line 302
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    aget p1, v0, p3

    if-eqz p1, :cond_1c

    move p1, p3

    goto :goto_1d

    :cond_1c
    move p1, v1

    :goto_1d
    if-ne p0, p1, :cond_20

    goto :goto_21

    :cond_20
    return v1

    :cond_21
    :goto_21
    return p3
.end method


# virtual methods
.method public blacklist countryUsesUtc(Ljava/lang/String;J)Z
    .registers 6

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 315
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->getCountryTimeZones(Ljava/lang/String;)Landroid/timezone/CountryTimeZones;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 316
    invoke-virtual {p0, p2, p3}, Landroid/timezone/CountryTimeZones;->hasUtcZone(J)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public blacklist lookupByCountry(Ljava/lang/String;J)Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;
    .registers 8

    .line 199
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->getCountryTimeZones(Ljava/lang/String;)Landroid/timezone/CountryTimeZones;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 204
    :cond_8
    invoke-virtual {p0}, Landroid/timezone/CountryTimeZones;->getDefaultTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    if-nez v0, :cond_f

    return-object p1

    .line 212
    :cond_f
    invoke-virtual {p0}, Landroid/timezone/CountryTimeZones;->isDefaultTimeZoneBoosted()Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p0, 0x2

    .line 214
    const-string p1, "Country default is boosted"

    goto :goto_76

    .line 217
    :cond_19
    invoke-virtual {p0, p2, p3}, Landroid/timezone/CountryTimeZones;->getEffectiveTimeZoneMappingsAt(J)Ljava/util/List;

    move-result-object p0

    .line 218
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x4

    if-eqz p1, :cond_37

    .line 222
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No effective time zones found at whenMillis="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move p0, v1

    goto :goto_76

    .line 223
    :cond_37
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_51

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "One effective time zone found at whenMillis="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move p0, v2

    goto :goto_76

    .line 228
    :cond_51
    invoke-static {p2, p3, p0, v0}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->countryUsesDifferentOffsets(JLjava/util/List;Landroid/icu/util/TimeZone;)Z

    move-result p0

    if-eqz p0, :cond_59

    move p1, v1

    goto :goto_5a

    :cond_59
    const/4 p1, 0x3

    .line 233
    :goto_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countryUsesDifferentOffsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " at whenMillis="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move v3, p1

    move-object p1, p0

    move p0, v3

    .line 237
    :goto_76
    new-instance p2, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p0, p1}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p2
.end method

.method public blacklist lookupByNitz(Lcom/android/internal/telephony/NitzData;)Landroid/timezone/CountryTimeZones$OffsetResult;
    .registers 6

    .line 168
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result p0

    .line 169
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v0

    .line 175
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getDstAdjustmentMillis()Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_11

    move-object p1, v2

    goto :goto_1e

    .line 176
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 178
    :goto_1e
    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByInstantOffsetDst(JILjava/lang/Boolean;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object v3

    if-nez v3, :cond_2b

    if-eqz p1, :cond_2b

    .line 185
    invoke-static {v0, v1, p0, v2}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByInstantOffsetDst(JILjava/lang/Boolean;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p0

    return-object p0

    :cond_2b
    return-object v3
.end method

.method public blacklist lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Landroid/timezone/CountryTimeZones$OffsetResult;
    .registers 9

    .line 131
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->getCountryTimeZones(Ljava/lang/String;)Landroid/timezone/CountryTimeZones;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_8
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v3

    .line 141
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getDstAdjustmentMillis()Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_1f

    .line 144
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result p0

    .line 143
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;I)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p0

    return-object p0

    .line 149
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    :goto_26
    move v5, p0

    goto :goto_2a

    :cond_28
    const/4 p0, 0x0

    goto :goto_26

    .line 151
    :goto_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v1

    .line 152
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v4

    .line 150
    invoke-virtual/range {v0 .. v5}, Landroid/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p0

    return-object p0
.end method
