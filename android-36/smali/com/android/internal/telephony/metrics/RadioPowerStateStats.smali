.class public Lcom/android/internal/telephony/metrics/RadioPowerStateStats;
.super Ljava/lang/Object;
.source "RadioPowerStateStats.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist onRadioStateChanged(I)V
    .registers 2

    const/16 v0, 0x2c9

    .line 36
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/RadioPowerStateStats;->radioPowerStateToProtoEnum(I)I

    move-result p0

    .line 35
    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(II)V

    return-void
.end method

.method private static blacklist radioPowerStateToProtoEnum(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v0, :cond_c

    if-eq p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x3

    return p0

    :cond_c
    return v1

    :cond_d
    return v0
.end method
