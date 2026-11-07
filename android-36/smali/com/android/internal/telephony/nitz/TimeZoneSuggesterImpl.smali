.class public Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;
.super Ljava/lang/Object;
.source "TimeZoneSuggesterImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;


# instance fields
.field private final blacklist mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

.field private final blacklist mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    return-void
.end method

.method private blacklist countryUsesUtc(Ljava/lang/String;Lcom/android/internal/telephony/NitzData;)Z
    .registers 5

    .line 297
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    .line 298
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v0

    .line 297
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->countryUsesUtc(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method private blacklist findTimeZoneForTestNetwork(ILcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 6

    .line 139
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    new-instance v1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTimeZoneForTestNetwork: nitzSignal="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 145
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitz(Lcom/android/internal/telephony/NitzData;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p0

    if-nez p0, :cond_31

    .line 148
    const-string p0, "findTimeZoneForTestNetwork: No zone found"

    invoke-virtual {v1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    goto :goto_60

    .line 150
    :cond_31
    invoke-virtual {p0}, Landroid/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    const/4 p1, 0x5

    .line 151
    invoke-virtual {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 153
    invoke-virtual {p0}, Landroid/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch()Z

    move-result p1

    if-eqz p1, :cond_48

    const/4 p1, 0x1

    goto :goto_49

    :cond_48
    const/4 p1, 0x2

    .line 156
    :goto_49
    invoke-virtual {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findTimeZoneForTestNetwork: lookupResult="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 160
    :goto_60
    invoke-virtual {v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method private blacklist findTimeZoneFromCountryAndNitz(ILjava/lang/String;Lcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 9

    .line 170
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findTimeZoneFromCountryAndNitz: countryIsoCode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nitzSignal="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 178
    invoke-virtual {p3}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->isNitzSignalOffsetInfoBogus(Ljava/lang/String;Lcom/android/internal/telephony/NitzData;)Z

    move-result p3

    if-eqz p3, :cond_3e

    .line 180
    const-string p0, "findTimeZoneFromCountryAndNitz: NITZ signal looks bogus"

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 182
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 186
    :cond_3e
    iget-object p3, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    .line 187
    invoke-virtual {p3, p1, p2}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_7a

    .line 189
    invoke-virtual {p3}, Landroid/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    const/4 p0, 0x3

    .line 190
    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 192
    invoke-virtual {p3}, Landroid/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch()Z

    move-result p0

    if-eqz p0, :cond_5e

    move v1, v2

    .line 195
    :cond_5e
    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 196
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "findTimeZoneFromCountryAndNitz: lookupResult="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 198
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 202
    :cond_7a
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    .line 203
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v3

    .line 202
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByCountry(Ljava/lang/String;J)Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;

    move-result-object p0

    if-nez p0, :cond_90

    .line 206
    const-string p0, "findTimeZoneFromCountryAndNitz: lookupByCountry() country not recognized"

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 208
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 214
    :cond_90
    iget p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->quality:I

    if-eq p1, v2, :cond_b0

    if-ne p1, v1, :cond_97

    goto :goto_b0

    .line 227
    :cond_97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findTimeZoneFromCountryAndNitz: country-only suggestion quality not high enough. countryResult="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 229
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 216
    :cond_b0
    :goto_b0
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 217
    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 219
    invoke-virtual {v0, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findTimeZoneFromCountryAndNitz: high quality country-only suggestion: countryResult="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method private blacklist findTimeZoneFromNetworkCountryCode(ILjava/lang/String;J)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 8

    .line 242
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 247
    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findTimeZoneFromNetworkCountryCode: whenMillis="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", countryIsoCode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 251
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByCountry(Ljava/lang/String;J)Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;

    move-result-object p0

    if-eqz p0, :cond_8b

    .line 254
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    const/4 p1, 0x2

    .line 255
    invoke-virtual {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 259
    iget v1, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->quality:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4a

    if-ne v1, p1, :cond_43

    goto :goto_4a

    :cond_43
    const/4 v2, 0x3

    if-ne v1, v2, :cond_47

    goto :goto_73

    :cond_47
    const/4 p1, 0x4

    if-ne v1, p1, :cond_4c

    :cond_4a
    :goto_4a
    move p1, v2

    goto :goto_73

    .line 269
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lookupResult.quality not recognized: countryIsoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", whenMillis="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", lookupResult="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :goto_73
    invoke-virtual {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findTimeZoneFromNetworkCountryCode: lookupResult="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    goto :goto_90

    .line 277
    :cond_8b
    const-string p0, "findTimeZoneFromNetworkCountryCode: Country not recognized?"

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 280
    :goto_90
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 244
    :cond_95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "countryIsoCode must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist isNitzSignalOffsetInfoBogus(Ljava/lang/String;Lcom/android/internal/telephony/NitzData;)Z
    .registers 5

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 292
    :cond_8
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v0

    if-nez v0, :cond_16

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->countryUsesUtc(Ljava/lang/String;Lcom/android/internal/telephony/NitzData;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method


# virtual methods
.method public blacklist getTimeZoneSuggestion(ILjava/lang/String;Lcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 8

    if-eqz p3, :cond_43

    .line 63
    :try_start_2
    invoke-virtual {p3}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 65
    new-instance v1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 67
    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v1

    const/4 v2, 0x4

    .line 68
    invoke-virtual {v1, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 69
    invoke-virtual {v1, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emulator time zone override: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {v1, v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_44

    :catch_41
    move-exception p0

    goto :goto_9a

    :cond_43
    const/4 v0, 0x0

    :goto_44
    if-eqz v0, :cond_47

    goto :goto_96

    :cond_47
    if-nez p2, :cond_6d

    if-nez p3, :cond_52

    .line 80
    const-string p0, "getTimeZoneSuggestion: nitzSignal=null, countryIsoCode=null"

    invoke-static {p1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_96

    .line 84
    :cond_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTimeZoneSuggestion: nitzSignal="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", countryIsoCode=null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_96

    :cond_6d
    if-nez p3, :cond_87

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 91
    const-string p0, "getTimeZoneSuggestion: nitzSignal=null, countryIsoCode=\"\""

    invoke-static {p1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_96

    .line 95
    :cond_7c
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 96
    invoke-interface {v0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->findTimeZoneFromNetworkCountryCode(ILjava/lang/String;J)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_96

    .line 99
    :cond_87
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 105
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->findTimeZoneForTestNetwork(ILcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_96

    .line 108
    :cond_92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->findTimeZoneFromCountryAndNitz(ILjava/lang/String;Lcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    .line 115
    :goto_96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_99
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_99} :catch_41

    return-object v0

    .line 121
    :goto_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimeZoneSuggestion: Error during lookup:  countryIsoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", nitzSignal="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", e="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-static {p1, p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p1

    .line 126
    const-string p3, "NitzStateMachineImpl"

    invoke-static {p3, p2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method
