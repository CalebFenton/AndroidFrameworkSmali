.class public final Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags; = null

.field public static final blacklist FLAG_DENSITY_BASED_COARSE_LOCATIONS:Ljava/lang/String; = "android.location.flags.density_based_coarse_locations"

.field public static final blacklist FLAG_DEPRECATE_PROVIDER_REQUEST_APIS:Ljava/lang/String; = "android.location.flags.deprecate_provider_request_apis"

.field public static final blacklist FLAG_DISABLE_STATIONARY_THROTTLING:Ljava/lang/String; = "android.location.flags.disable_stationary_throttling"

.field public static final blacklist FLAG_ENABLE_LOCATION_BYPASS:Ljava/lang/String; = "android.location.flags.enable_location_bypass"

.field public static final blacklist FLAG_ENABLE_NI_SUPL_MESSAGE_INJECTION_BY_CARRIER_CONFIG:Ljava/lang/String; = "android.location.flags.enable_ni_supl_message_injection_by_carrier_config"

.field public static final blacklist FLAG_ENABLE_NI_SUPL_MESSAGE_INJECTION_BY_CARRIER_CONFIG_BUGFIX:Ljava/lang/String; = "android.location.flags.enable_ni_supl_message_injection_by_carrier_config_bugfix"

.field public static final blacklist FLAG_FIX_IS_IN_EMERGENCY_ANR:Ljava/lang/String; = "android.location.flags.fix_is_in_emergency_anr"

.field public static final blacklist FLAG_FIX_SERVICE_WATCHER:Ljava/lang/String; = "android.location.flags.fix_service_watcher"

.field public static final blacklist FLAG_GEOID_HEIGHTS_VIA_ALTITUDE_HAL:Ljava/lang/String; = "android.location.flags.geoid_heights_via_altitude_hal"

.field public static final blacklist FLAG_GNSS_API_MEASUREMENT_REQUEST_WORK_SOURCE:Ljava/lang/String; = "android.location.flags.gnss_api_measurement_request_work_source"

.field public static final blacklist FLAG_GNSS_API_NAVIC_L1:Ljava/lang/String; = "android.location.flags.gnss_api_navic_l1"

.field public static final blacklist FLAG_GNSS_ASSISTANCE_INTERFACE:Ljava/lang/String; = "android.location.flags.gnss_assistance_interface"

.field public static final blacklist FLAG_GNSS_ASSISTANCE_INTERFACE_JNI:Ljava/lang/String; = "android.location.flags.gnss_assistance_interface_jni"

.field public static final blacklist FLAG_GNSS_CONFIGURATION_FROM_RESOURCE:Ljava/lang/String; = "android.location.flags.gnss_configuration_from_resource"

.field public static final blacklist FLAG_GNSS_LOCATION_PROVIDER_OVERLAY_2025_DEVICES:Ljava/lang/String; = "android.location.flags.gnss_location_provider_overlay_2025_devices"

.field public static final blacklist FLAG_KEEP_GNSS_STATIONARY_THROTTLING:Ljava/lang/String; = "android.location.flags.keep_gnss_stationary_throttling"

.field public static final blacklist FLAG_LIMIT_FUSED_GPS:Ljava/lang/String; = "android.location.flags.limit_fused_gps"

.field public static final blacklist FLAG_LOCATION_BYPASS:Ljava/lang/String; = "android.location.flags.location_bypass"

.field public static final blacklist FLAG_LOCATION_VALIDATION:Ljava/lang/String; = "android.location.flags.location_validation"

.field public static final blacklist FLAG_MISSING_ATTRIBUTION_TAGS_IN_OVERLAY:Ljava/lang/String; = "android.location.flags.missing_attribution_tags_in_overlay"

.field public static final blacklist FLAG_NEW_GEOCODER:Ljava/lang/String; = "android.location.flags.new_geocoder"

.field public static final blacklist FLAG_POPULATION_DENSITY_PROVIDER:Ljava/lang/String; = "android.location.flags.population_density_provider"

.field public static final blacklist FLAG_RELEASE_SUPL_CONNECTION_ON_TIMEOUT:Ljava/lang/String; = "android.location.flags.release_supl_connection_on_timeout"

.field public static final blacklist FLAG_REPLACE_FUTURE_ELAPSED_REALTIME_JNI:Ljava/lang/String; = "android.location.flags.replace_future_elapsed_realtime_jni"

.field public static final blacklist FLAG_SERVICE_WATCHER_UNSTABLE_FALLBACK:Ljava/lang/String; = "android.location.flags.service_watcher_unstable_fallback"

.field public static final blacklist FLAG_SUBSCRIPTIONS_CHANGED_LISTENER_THREAD:Ljava/lang/String; = "android.location.flags.subscriptions_changed_listener_thread"

.field public static final blacklist FLAG_UPDATE_MIN_LOCATION_REQUEST_INTERVAL:Ljava/lang/String; = "android.location.flags.update_min_location_request_interval"

.field public static final blacklist FLAG_USE_LEGACY_NTP_TIME:Ljava/lang/String; = "android.location.flags.use_legacy_ntp_time"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 260
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist densityBasedCoarseLocations()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->densityBasedCoarseLocations()Z

    move-result v0

    return v0
.end method

.method public static blacklist deprecateProviderRequestApis()Z
    .registers 1

    .line 75
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->deprecateProviderRequestApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableStationaryThrottling()Z
    .registers 1

    .line 82
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->disableStationaryThrottling()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableLocationBypass()Z
    .registers 1

    .line 89
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->enableLocationBypass()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableNiSuplMessageInjectionByCarrierConfig()Z
    .registers 1

    .line 96
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->enableNiSuplMessageInjectionByCarrierConfig()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableNiSuplMessageInjectionByCarrierConfigBugfix()Z
    .registers 1

    .line 103
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->enableNiSuplMessageInjectionByCarrierConfigBugfix()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixIsInEmergencyAnr()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->fixIsInEmergencyAnr()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixServiceWatcher()Z
    .registers 1

    .line 117
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->fixServiceWatcher()Z

    move-result v0

    return v0
.end method

.method public static blacklist geoidHeightsViaAltitudeHal()Z
    .registers 1

    .line 124
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->geoidHeightsViaAltitudeHal()Z

    move-result v0

    return v0
.end method

.method public static blacklist gnssApiMeasurementRequestWorkSource()Z
    .registers 1

    .line 131
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->gnssApiMeasurementRequestWorkSource()Z

    move-result v0

    return v0
.end method

.method public static blacklist gnssApiNavicL1()Z
    .registers 1

    .line 138
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->gnssApiNavicL1()Z

    move-result v0

    return v0
.end method

.method public static blacklist gnssAssistanceInterface()Z
    .registers 1

    .line 145
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->gnssAssistanceInterface()Z

    move-result v0

    return v0
.end method

.method public static blacklist gnssAssistanceInterfaceJni()Z
    .registers 1

    .line 152
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->gnssAssistanceInterfaceJni()Z

    move-result v0

    return v0
.end method

.method public static blacklist gnssConfigurationFromResource()Z
    .registers 1

    .line 159
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->gnssConfigurationFromResource()Z

    move-result v0

    return v0
.end method

.method public static blacklist gnssLocationProviderOverlay2025Devices()Z
    .registers 1

    .line 166
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->gnssLocationProviderOverlay2025Devices()Z

    move-result v0

    return v0
.end method

.method public static blacklist keepGnssStationaryThrottling()Z
    .registers 1

    .line 173
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->keepGnssStationaryThrottling()Z

    move-result v0

    return v0
.end method

.method public static blacklist limitFusedGps()Z
    .registers 1

    .line 180
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->limitFusedGps()Z

    move-result v0

    return v0
.end method

.method public static blacklist locationBypass()Z
    .registers 1

    .line 187
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->locationBypass()Z

    move-result v0

    return v0
.end method

.method public static blacklist locationValidation()Z
    .registers 1

    .line 194
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->locationValidation()Z

    move-result v0

    return v0
.end method

.method public static blacklist missingAttributionTagsInOverlay()Z
    .registers 1

    .line 201
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->missingAttributionTagsInOverlay()Z

    move-result v0

    return v0
.end method

.method public static blacklist newGeocoder()Z
    .registers 1

    .line 208
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->newGeocoder()Z

    move-result v0

    return v0
.end method

.method public static blacklist populationDensityProvider()Z
    .registers 1

    .line 215
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->populationDensityProvider()Z

    move-result v0

    return v0
.end method

.method public static blacklist releaseSuplConnectionOnTimeout()Z
    .registers 1

    .line 222
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->releaseSuplConnectionOnTimeout()Z

    move-result v0

    return v0
.end method

.method public static blacklist replaceFutureElapsedRealtimeJni()Z
    .registers 1

    .line 229
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->replaceFutureElapsedRealtimeJni()Z

    move-result v0

    return v0
.end method

.method public static blacklist serviceWatcherUnstableFallback()Z
    .registers 1

    .line 236
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->serviceWatcherUnstableFallback()Z

    move-result v0

    return v0
.end method

.method public static blacklist subscriptionsChangedListenerThread()Z
    .registers 1

    .line 243
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->subscriptionsChangedListenerThread()Z

    move-result v0

    return v0
.end method

.method public static blacklist updateMinLocationRequestInterval()Z
    .registers 1

    .line 250
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->updateMinLocationRequestInterval()Z

    move-result v0

    return v0
.end method

.method public static blacklist useLegacyNtpTime()Z
    .registers 1

    .line 257
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/FeatureFlags;->useLegacyNtpTime()Z

    move-result v0

    return v0
.end method
