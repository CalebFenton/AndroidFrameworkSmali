.class public interface abstract Landroid/app/timezonedetector/TimeZoneDetector;
.super Ljava/lang/Object;
.source "TimeZoneDetector.java"


# static fields
.field public static final blacklist SHELL_COMMAND_CONFIRM_TIME_ZONE:Ljava/lang/String; = "confirm_time_zone"

.field public static final blacklist SHELL_COMMAND_DUMP_METRICS:Ljava/lang/String; = "dump_metrics"

.field public static final blacklist SHELL_COMMAND_ENABLE_TELEPHONY_FALLBACK:Ljava/lang/String; = "enable_telephony_fallback"

.field public static final blacklist SHELL_COMMAND_GET_TIME_ZONE_STATE:Ljava/lang/String; = "get_time_zone_state"

.field public static final blacklist SHELL_COMMAND_HANDLE_LOCATION_ALGORITHM_EVENT:Ljava/lang/String; = "handle_location_algorithm_event"

.field public static final blacklist SHELL_COMMAND_IS_AUTO_DETECTION_ENABLED:Ljava/lang/String; = "is_auto_detection_enabled"

.field public static final blacklist SHELL_COMMAND_IS_GEO_DETECTION_ENABLED:Ljava/lang/String; = "is_geo_detection_enabled"

.field public static final blacklist SHELL_COMMAND_IS_GEO_DETECTION_SUPPORTED:Ljava/lang/String; = "is_geo_detection_supported"

.field public static final blacklist SHELL_COMMAND_IS_TELEPHONY_DETECTION_SUPPORTED:Ljava/lang/String; = "is_telephony_detection_supported"

.field public static final blacklist SHELL_COMMAND_SERVICE_NAME:Ljava/lang/String; = "time_zone_detector"

.field public static final blacklist SHELL_COMMAND_SET_AUTO_DETECTION_ENABLED:Ljava/lang/String; = "set_auto_detection_enabled"

.field public static final blacklist SHELL_COMMAND_SET_GEO_DETECTION_ENABLED:Ljava/lang/String; = "set_geo_detection_enabled"

.field public static final blacklist SHELL_COMMAND_SET_TIME_ZONE_STATE:Ljava/lang/String; = "set_time_zone_state_for_tests"

.field public static final blacklist SHELL_COMMAND_SUGGEST_MANUAL_TIME_ZONE:Ljava/lang/String; = "suggest_manual_time_zone"

.field public static final blacklist SHELL_COMMAND_SUGGEST_TELEPHONY_TIME_ZONE:Ljava/lang/String; = "suggest_telephony_time_zone"


# direct methods
.method public static blacklist createManualTimeZoneSuggestion(Ljava/lang/String;Ljava/lang/String;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .registers 4
    .param p0, "tzId"    # Ljava/lang/String;
    .param p1, "debugInfo"    # Ljava/lang/String;

    .line 142
    new-instance v0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    invoke-direct {v0, p0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "suggestion":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 144
    return-object v0
.end method


# virtual methods
.method public abstract blacklist suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
.end method

.method public abstract blacklist suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
.end method
