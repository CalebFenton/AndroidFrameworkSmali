.class public Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;
.super Ljava/lang/Object;
.source "TelephonyAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeStampedServiceState"
.end annotation


# instance fields
.field protected final blacklist mDeviceStatus:Ljava/lang/String;

.field protected final blacklist mRAT:Ljava/lang/String;

.field protected final blacklist mSlotIndex:I

.field protected final blacklist mTimestampStart:J


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mSlotIndex:I

    .line 839
    iput-object p2, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mRAT:Ljava/lang/String;

    .line 840
    iput-object p3, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mDeviceStatus:Ljava/lang/String;

    .line 841
    iput-wide p4, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mTimestampStart:J

    return-void
.end method


# virtual methods
.method public blacklist getDeviceStatus()Ljava/lang/String;
    .registers 1

    .line 867
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mDeviceStatus:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRAT()Ljava/lang/String;
    .registers 1

    .line 872
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mRAT:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSlotIndex()I
    .registers 1

    .line 857
    iget p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mSlotIndex:I

    return p0
.end method

.method public blacklist getTimestampStart()J
    .registers 3

    .line 862
    iget-wide v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mTimestampStart:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlotIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " RAT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mRAT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DeviceStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mDeviceStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TimeStampStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$ServiceStateAnalytics$TimeStampedServiceState;->mTimestampStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
