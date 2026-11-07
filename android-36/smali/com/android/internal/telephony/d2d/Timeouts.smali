.class public final Lcom/android/internal/telephony/d2d/Timeouts;
.super Ljava/lang/Object;
.source "Timeouts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/d2d/Timeouts$Adapter;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist get(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 6

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "telephony.d2d."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist getDtmfDurationFuzzMillis(Landroid/content/ContentResolver;)J
    .registers 4

    .line 122
    const-string v0, "dtmf_duration_fuzz_millis"

    const-wide/16 v1, 0xa

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/telephony/d2d/Timeouts;->get(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getDtmfMinimumIntervalMillis(Landroid/content/ContentResolver;)J
    .registers 4

    .line 92
    const-string v0, "dtmf_minimum_interval_millis"

    const-wide/16 v1, 0x64

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/telephony/d2d/Timeouts;->get(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getDtmfNegotiationTimeoutMillis(Landroid/content/ContentResolver;)J
    .registers 4

    .line 110
    const-string v0, "dtmf_negotiation_timeout_millis"

    const-wide/16 v1, 0xbb8

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/telephony/d2d/Timeouts;->get(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getMaxDurationOfDtmfMessageMillis(Landroid/content/ContentResolver;)J
    .registers 4

    .line 101
    const-string v0, "dtmf_max_message_duration_millis"

    const-wide/16 v1, 0x3e8

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/telephony/d2d/Timeouts;->get(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getRtpMessageAckDurationMillis(Landroid/content/ContentResolver;)J
    .registers 4

    .line 82
    const-string v0, "rtp_message_ack_duration_millis"

    const-wide/16 v1, 0x3e8

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/telephony/d2d/Timeouts;->get(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
