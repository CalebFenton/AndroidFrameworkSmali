.class public final Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist densityBasedCoarseLocations()Z
    .registers 2

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist deprecateProviderRequestApis()Z
    .registers 2

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableStationaryThrottling()Z
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableLocationBypass()Z
    .registers 2

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableNiSuplMessageInjectionByCarrierConfig()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableNiSuplMessageInjectionByCarrierConfigBugfix()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist fixIsInEmergencyAnr()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist fixServiceWatcher()Z
    .registers 2

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist geoidHeightsViaAltitudeHal()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist gnssApiMeasurementRequestWorkSource()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist gnssApiNavicL1()Z
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist gnssAssistanceInterface()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist gnssAssistanceInterfaceJni()Z
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist gnssConfigurationFromResource()Z
    .registers 2

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist gnssLocationProviderOverlay2025Devices()Z
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist keepGnssStationaryThrottling()Z
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist limitFusedGps()Z
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist locationBypass()Z
    .registers 2

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist locationValidation()Z
    .registers 2

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist missingAttributionTagsInOverlay()Z
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist newGeocoder()Z
    .registers 2

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist populationDensityProvider()Z
    .registers 2

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist releaseSuplConnectionOnTimeout()Z
    .registers 2

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist replaceFutureElapsedRealtimeJni()Z
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist serviceWatcherUnstableFallback()Z
    .registers 2

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist subscriptionsChangedListenerThread()Z
    .registers 2

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist updateMinLocationRequestInterval()Z
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist useLegacyNtpTime()Z
    .registers 2

    .line 199
    const/4 v0, 0x1

    return v0
.end method
