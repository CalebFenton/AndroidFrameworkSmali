.class public final Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;
.super Ljava/lang/Object;
.source "TimeServiceHelperImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/nitz/TimeServiceHelper;


# instance fields
.field private blacklist mLastSuggestedTimeZone:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

.field private final blacklist mSlotIndex:I

.field private final blacklist mTimeDetector:Landroid/app/timedetector/TimeDetector;

.field private final blacklist mTimeLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mTimeZoneDetector:Landroid/app/timezonedetector/TimeZoneDetector;

.field private final blacklist mTimeZoneLog:Lcom/android/internal/telephony/LocalLog;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mTimeZoneLog:Lcom/android/internal/telephony/LocalLog;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mTimeLog:Lcom/android/internal/telephony/LocalLog;

    .line 58
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mSlotIndex:I

    .line 59
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    const-class v0, Landroid/app/timedetector/TimeDetector;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/TimeDetector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mTimeDetector:Landroid/app/timedetector/TimeDetector;

    .line 61
    const-class v0, Landroid/app/timezonedetector/TimeZoneDetector;

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/timezonedetector/TimeZoneDetector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mTimeZoneDetector:Landroid/app/timezonedetector/TimeZoneDetector;

    return-void
.end method

.method private static blacklist shouldSendNewTimeZoneSuggestion(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 99
    :cond_4
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public blacklist dumpLogs(Lcom/android/internal/telephony/IndentingPrintWriter;)V
    .registers 5

    .line 104
    const-string v0, "TimeServiceHelperImpl:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemClock.elapsedRealtime()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System.currentTimeMillis()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v0, "Time Logs:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mTimeLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 112
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 114
    const-string v0, "Time zone Logs:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mTimeZoneLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 117
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 118
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public blacklist dumpState(Ljava/io/PrintWriter;)V
    .registers 4

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " TimeServiceHelperImpl.mLastSuggestedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mLastSuggestedTimeZone:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist maybeSuggestDeviceTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .registers 5

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mLastSuggestedTimeZone:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 84
    invoke-static {v0, p1}, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->shouldSendNewTimeZoneSuggestion(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mTimeZoneLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suggesting time zone update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mTimeZoneDetector:Landroid/app/timezonedetector/TimeZoneDetector;

    invoke-interface {v0, p1}, Landroid/app/timezonedetector/TimeZoneDetector;->suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mLastSuggestedTimeZone:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    :cond_28
    return-void
.end method

.method public blacklist suggestDeviceTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .registers 7

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mTimeLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending time suggestion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 72
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mSlotIndex:I

    .line 74
    invoke-virtual {v0}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v3

    .line 73
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeNITZEvent(IJ)V

    .line 76
    :cond_30
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeServiceHelperImpl;->mTimeDetector:Landroid/app/timedetector/TimeDetector;

    invoke-interface {p0, p1}, Landroid/app/timedetector/TimeDetector;->suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    return-void
.end method
