.class public interface abstract Landroid/app/timedetector/TimeDetector;
.super Ljava/lang/Object;
.source "TimeDetector.java"


# static fields
.field public static final blacklist SHELL_COMMAND_CLEAR_NETWORK_TIME:Ljava/lang/String; = "clear_network_time"

.field public static final blacklist SHELL_COMMAND_CLEAR_SYSTEM_CLOCK_NETWORK_TIME:Ljava/lang/String; = "clear_system_clock_network_time"

.field public static final blacklist SHELL_COMMAND_CONFIRM_TIME:Ljava/lang/String; = "confirm_time"

.field public static final blacklist SHELL_COMMAND_GET_NETWORK_TIME:Ljava/lang/String; = "get_network_time"

.field public static final blacklist SHELL_COMMAND_GET_TIME_STATE:Ljava/lang/String; = "get_time_state"

.field public static final blacklist SHELL_COMMAND_IS_AUTO_DETECTION_ENABLED:Ljava/lang/String; = "is_auto_detection_enabled"

.field public static final blacklist SHELL_COMMAND_SERVICE_NAME:Ljava/lang/String; = "time_detector"

.field public static final blacklist SHELL_COMMAND_SET_AUTO_DETECTION_ENABLED:Ljava/lang/String; = "set_auto_detection_enabled"

.field public static final blacklist SHELL_COMMAND_SET_SYSTEM_CLOCK_NETWORK_TIME:Ljava/lang/String; = "set_system_clock_network_time"

.field public static final blacklist SHELL_COMMAND_SET_TIME_STATE:Ljava/lang/String; = "set_time_state_for_tests"

.field public static final blacklist SHELL_COMMAND_SUGGEST_EXTERNAL_TIME:Ljava/lang/String; = "suggest_external_time"

.field public static final blacklist SHELL_COMMAND_SUGGEST_GNSS_TIME:Ljava/lang/String; = "suggest_gnss_time"

.field public static final blacklist SHELL_COMMAND_SUGGEST_MANUAL_TIME:Ljava/lang/String; = "suggest_manual_time"

.field public static final blacklist SHELL_COMMAND_SUGGEST_NETWORK_TIME:Ljava/lang/String; = "suggest_network_time"

.field public static final blacklist SHELL_COMMAND_SUGGEST_TELEPHONY_TIME:Ljava/lang/String; = "suggest_telephony_time"


# direct methods
.method public static blacklist createManualTimeSuggestion(JLjava/lang/String;)Landroid/app/timedetector/ManualTimeSuggestion;
    .registers 6
    .param p0, "when"    # J
    .param p2, "why"    # Ljava/lang/String;

    .line 137
    new-instance v0, Landroid/app/time/UnixEpochTime;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 138
    .local v0, "unixEpochTime":Landroid/app/time/UnixEpochTime;
    new-instance v1, Landroid/app/timedetector/ManualTimeSuggestion;

    invoke-direct {v1, v0}, Landroid/app/timedetector/ManualTimeSuggestion;-><init>(Landroid/app/time/UnixEpochTime;)V

    .line 139
    .local v1, "manualTimeSuggestion":Landroid/app/timedetector/ManualTimeSuggestion;
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/timedetector/ManualTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 140
    return-object v1
.end method


# virtual methods
.method public abstract blacklist suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
.end method

.method public abstract blacklist suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
.end method
