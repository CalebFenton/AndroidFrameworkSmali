.class public Lcom/android/internal/telephony/metrics/MetricsCollector;
.super Ljava/lang/Object;
.source "MetricsCollector.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# static fields
.field private static final blacklist CELL_SERVICE_DURATION_BUCKET_MILLIS:J

.field private static final blacklist DURATION_BUCKET_MILLIS:J

.field private static final blacklist MILLIS_PER_HOUR:J

.field private static final blacklist MILLIS_PER_MINUTE:J

.field private static final blacklist MILLIS_PER_SECOND:J

.field private static final blacklist MIN_COOLDOWN_MILLIS:J

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sRandom:Ljava/util/Random;


# instance fields
.field private final blacklist mAirplaneModeStats:Lcom/android/internal/telephony/metrics/AirplaneModeStats;

.field private final blacklist mDefaultNetworkMonitor:Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

.field private final blacklist mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

.field private final blacklist mOngoingDataCallStats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/metrics/DataCallSessionStats;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPowerCorrelatedMinCooldownMillis:J

.field private final blacklist mStatsManager:Landroid/app/StatsManager;

.field private final blacklist mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

.field private final blacklist mVonrHelper:Lcom/android/internal/telephony/metrics/VonrHelper;


# direct methods
.method public static synthetic blacklist $r8$lambda$0EMcIIGrENo36A7bqqrAYPL_K04(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)V
    .registers 2

    .line 824
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$22zNs5cXGcOMWaxNgaBtNeLQplQ(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;)V
    .registers 2

    .line 541
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3Cc8fV2CfIkbBUFXZaN5XpnXLsk(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;)V
    .registers 2

    .line 735
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5ZvgMB7RGMMKyb3dmpxpnWQ1BWo(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)V
    .registers 2

    .line 679
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8V1h6vztFvSS9TFerMiQWXbjj70(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)V
    .registers 2

    .line 761
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8ZArNRrhMQPpEPg5QgUeWWOkEnU(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;)V
    .registers 2

    .line 722
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9mM-7-TnyjSZ6EMz4itW6K77hn0(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;)V
    .registers 2

    .line 748
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9vYdldvJBgwbTqfI7brhj0JuClk(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)V
    .registers 2

    .line 666
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AQWUsoQc1IuIZOsWgd8_Y5xfMoo(Lcom/android/internal/telephony/Phone;)Z
    .registers 3

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    if-eq v0, v1, :cond_17

    .line 643
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$BeuGNxMgTipax6kppRdy0CR-1Nk(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)Z
    .registers 5

    .line 499
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->callCount:J

    const-wide/16 v2, 0x5

    cmp-long p0, v0, v2

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$CECG1UU0ZJnzpUEqkskrT1KEzbo(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;)V
    .registers 2

    .line 886
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CcQiMO1rP6uyiFfgaWb5X22bEiM(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;)V
    .registers 2

    .line 966
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DHPfwf6d3wUWWi0IUKgSC68-hIs(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V
    .registers 2

    .line 517
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Fsd6LUlKaRuP2gZgY8zAZmHLqVc(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;)V
    .registers 2

    .line 1045
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HjvXjqUqTxvu6mhGuacFX8E2lYM(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)V
    .registers 2

    .line 774
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$J69xNxnKEyW4Jm5RVH3OiSt_-So(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)V
    .registers 2

    .line 788
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JLfYH2i2YrdwOxTf65rG_pDO7xw(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;)V
    .registers 2

    .line 925
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KOEl_Ndq0uQG8CtIYjU-tKeRnqQ(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)V
    .registers 2

    .line 707
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Kc1E0MS-HQKkj-mGUQNEzhtsr6w(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)J
    .registers 5

    .line 498
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->carrierId:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->rat:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static synthetic blacklist $r8$lambda$KmPCGDjYS24k-VFpi7BCECxiU1Q(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)V
    .registers 2

    .line 586
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LN6Y_5p2VE7iDZhNqj-lrmx1cmE(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;)V
    .registers 2

    .line 992
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LjRD3cXA1kG-6AqgZj95ZnA_l0Q(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;)V
    .registers 2

    .line 939
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NAvGdeiGDG94tIvZz9wo9vf_KR8(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V
    .registers 2

    .line 529
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UN8Aea_31QjAqnYP3cKIIQoEI68(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)V
    .registers 2

    .line 500
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VZ10LfkLourjwaof6xWS3id65fE(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;)V
    .registers 2

    .line 871
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XGCfEmDZZOmfknfPaYykZyKUitA(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V
    .registers 2

    .line 615
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$b95UDDE28MaUMmQz6JiRJbNOcYE(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;)V
    .registers 2

    .line 899
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dXWubvzQApYsG3HhclIBhI1mflI(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V
    .registers 2

    .line 627
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gXPaCrTJkSUplGgiGdt0Pln0PLw(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)V
    .registers 2

    .line 694
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$h51rgLhOzRL15UVS406z2T35ciA(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V
    .registers 2

    .line 601
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kaeK5alPpLDIGAtNY2XJetXJqqA(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;)V
    .registers 2

    .line 979
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kf4AE8q-DamF6ODE2-j7Hj8-r1w(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)V
    .registers 2

    .line 812
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lhuDa79cll_t2NObvvB6__sAWoo(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)V
    .registers 2

    .line 800
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nuJMXzHZh08tQ4ckMPIHD4vF-5s(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;)V
    .registers 2

    .line 953
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$r1VIe4CR138rwdYESnzlxPnnu4k(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;)V
    .registers 2

    .line 1005
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rEhBcHgg46dYznoNpzMtYFBBw0E(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;)V
    .registers 2

    .line 1032
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sWerr6nkTLyHzaqwh_cgesELtFs(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;)V
    .registers 2

    .line 1019
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v178VPfhO59OTwu0CqaBRQZYR7o(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)V
    .registers 2

    .line 556
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$w8cLji2S5WVJt5yx6hqwHHh7xXM(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;)V
    .registers 2

    .line 912
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wUQGD-EjBTENByJOqvW8AUiI6d8(Ljava/util/List;Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V
    .registers 2

    .line 570
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 135
    const-class v0, Lcom/android/internal/telephony/metrics/MetricsCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1

    .line 140
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/internal/telephony/metrics/MetricsCollector;->MILLIS_PER_HOUR:J

    .line 141
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/internal/telephony/metrics/MetricsCollector;->MILLIS_PER_MINUTE:J

    .line 142
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MILLIS_PER_SECOND:J

    const-wide/16 v6, 0x17

    mul-long/2addr v2, v6

    .line 150
    sput-wide v2, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    const-wide/16 v2, 0x5

    mul-long v6, v4, v2

    .line 162
    sput-wide v6, Lcom/android/internal/telephony/metrics/MetricsCollector;->DURATION_BUCKET_MILLIS:J

    .line 171
    sget-boolean v6, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_3b

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    goto :goto_3d

    :cond_3b
    mul-long v0, v4, v2

    :goto_3d
    sput-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->CELL_SERVICE_DURATION_BUCKET_MILLIS:J

    .line 187
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 10

    .line 190
    new-instance v2, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/metrics/DeviceStateHelper;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/internal/telephony/metrics/VonrHelper;

    invoke-direct {v4, p2}, Lcom/android/internal/telephony/metrics/VonrHelper;-><init>(Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    new-instance v5, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

    invoke-direct {v5, p1, p2}, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/metrics/MetricsCollector;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/metrics/PersistAtomsStorage;Lcom/android/internal/telephony/metrics/DeviceStateHelper;Lcom/android/internal/telephony/metrics/VonrHelper;Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/metrics/PersistAtomsStorage;Lcom/android/internal/telephony/metrics/DeviceStateHelper;Lcom/android/internal/telephony/metrics/VonrHelper;Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 7

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p5

    iput-object p5, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mOngoingDataCallStats:Ljava/util/Set;

    .line 200
    iput-object p2, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 201
    iput-object p3, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    .line 202
    const-string p2, "stats"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/StatsManager;

    iput-object p2, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStatsManager:Landroid/app/StatsManager;

    .line 203
    iput-object p4, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mVonrHelper:Lcom/android/internal/telephony/metrics/VonrHelper;

    if-eqz p2, :cond_f5

    const/16 p2, 0x276b

    .line 206
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x276a

    .line 207
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x275e

    .line 208
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x275f

    .line 209
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x275d

    .line 210
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x275c

    .line 211
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x2766

    .line 212
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x2767

    .line 213
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x2768

    .line 214
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x2769

    .line 215
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x276e

    .line 216
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x276d

    .line 217
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27a9

    .line 218
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x2795

    .line 219
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x2796

    .line 220
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x2797

    .line 221
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x2798

    .line 222
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x2799

    .line 223
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x279a

    .line 224
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x279b

    .line 225
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27aa

    .line 226
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x279c

    .line 227
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x279d

    .line 228
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x279e

    .line 229
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x279f

    .line 230
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27a0

    .line 231
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27a1

    .line 232
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27a2

    .line 233
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27b2

    .line 234
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27c4

    .line 235
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27c6

    .line 236
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27c7

    .line 237
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27c8

    .line 238
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27c9

    .line 239
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27ca

    .line 240
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27cb

    .line 241
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27df

    .line 242
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27e3

    .line 243
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27e4

    .line 244
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27e6

    .line 245
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27e7

    .line 246
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    const/16 p2, 0x27eb

    .line 247
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->registerAtom(I)V

    .line 248
    sget-object p2, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p3, "registered"

    invoke-static {p2, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc

    .line 250
    :cond_f5
    sget-object p2, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p3, "could not get StatsManager, atoms not registered"

    invoke-static {p2, p3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_fc
    new-instance p2, Lcom/android/internal/telephony/metrics/AirplaneModeStats;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/AirplaneModeStats;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mAirplaneModeStats:Lcom/android/internal/telephony/metrics/AirplaneModeStats;

    .line 254
    new-instance p2, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

    invoke-direct {p2, p1, p6}, Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    iput-object p2, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mDefaultNetworkMonitor:Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

    .line 256
    sget-boolean p2, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz p2, :cond_114

    const-wide/16 p1, 0x4

    sget-wide p3, Lcom/android/internal/telephony/metrics/MetricsCollector;->MILLIS_PER_MINUTE:J

    mul-long/2addr p3, p1

    goto :goto_120

    :cond_114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00d4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p3, p1

    :goto_120
    iput-wide p3, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mPowerCorrelatedMinCooldownMillis:J

    return-void
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;)Landroid/util/StatsEvent;
    .registers 14

    .line 1617
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->configDataSource:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfEntitlementStatusQueryRequest:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteConfigUpdateRequest:I

    iget v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteNotificationDisplayed:I

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMinSec:I

    iget v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapAvgSec:I

    iget v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMaxSec:I

    iget v8, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->carrierId:I

    iget-boolean v9, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isDeviceEntitled:Z

    iget-boolean v10, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isMultiSim:Z

    iget v11, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteSessions:I

    iget-boolean v12, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isNbIotNtn:Z

    const/16 v0, 0x27e4

    invoke-static/range {v0 .. v12}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIIIIIZZIZ)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;)Landroid/util/StatsEvent;
    .registers 25

    move-object/from16 v0, p0

    .line 1591
    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->carrierId:I

    iget-boolean v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNtnRoamingInHomeCountry:Z

    iget v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->totalSatelliteModeTimeSec:I

    iget v5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->numberOfSatelliteConnections:I

    iget v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->avgDurationOfSatelliteConnectionSec:I

    iget v7, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMinSec:I

    iget v8, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapAvgSec:I

    iget v9, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMaxSec:I

    iget v10, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpAvg:I

    iget v11, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpMedian:I

    iget v12, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrAvg:I

    iget v13, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrMedian:I

    iget v14, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingSms:I

    iget v15, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingSms:I

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingMms:I

    move/from16 v16, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingMms:I

    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    move-object/from16 v18, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->serviceDataPolicy:I

    move/from16 v20, v1

    move/from16 v19, v2

    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteDataConsumedBytes:J

    move-wide/from16 v21, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isMultiSim:Z

    iget-boolean v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNbIotNtn:Z

    move/from16 v2, v19

    move/from16 v19, v20

    move-wide/from16 v20, v21

    move/from16 v22, v1

    const/16 v1, 0x27e3

    move/from16 v23, v0

    invoke-static/range {v1 .. v23}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIZIIIIIIIIIIIIII[IIJZZ)Landroid/util/StatsEvent;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)Landroid/util/StatsEvent;
    .registers 9

    .line 1060
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    iget-boolean v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    iget v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    iget-boolean v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isOpportunistic:Z

    const/16 v0, 0x276b

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIZIIZ)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Landroid/util/StatsEvent;
    .registers 21

    move-object/from16 v0, p0

    .line 1072
    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    iget v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    iget v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    iget v5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    iget-boolean v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    iget v7, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    iget-boolean v8, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    iget v9, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    iget-wide v10, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    sget-wide v12, Lcom/android/internal/telephony/metrics/MetricsCollector;->CELL_SERVICE_DURATION_BUCKET_MILLIS:J

    .line 1082
    invoke-static {v10, v11, v12, v13}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(JJ)I

    move-result v10

    iget-boolean v11, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    iget-boolean v12, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    iget v13, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    iget-boolean v14, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    iget-boolean v15, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    iget-boolean v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isOpportunistic:Z

    move/from16 v18, v1

    const/16 v1, 0x276a

    move/from16 v19, v0

    .line 1072
    invoke-static/range {v1 .. v19}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIZIZIIZZIZZZZZZ)Landroid/util/StatsEvent;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)Landroid/util/StatsEvent;
    .registers 32

    move-object/from16 v0, p0

    .line 1210
    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    iget-boolean v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isMultiSim:Z

    iget-boolean v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isEsim:Z

    iget v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    iget v7, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->carrierId:I

    iget-boolean v8, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isRoaming:Z

    iget v9, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    iget-boolean v10, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->oosAtEnd:Z

    iget-wide v11, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    iget-boolean v13, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isOpportunistic:Z

    iget v14, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ipType:I

    iget-boolean v15, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->setupFailed:Z

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    iget v5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->suggestedRetryMillis:I

    move/from16 v16, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->deactivateReason:I

    move/from16 v18, v1

    move/from16 v17, v2

    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    sget-wide v19, Lcom/android/internal/telephony/metrics/MetricsCollector;->MILLIS_PER_MINUTE:J

    mul-long v1, v1, v19

    .line 1228
    invoke-static {v1, v2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToMinutes(J)I

    move-result v1

    int-to-long v1, v1

    move-wide/from16 v19, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ongoing:Z

    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->bandAtEnd:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    move-object/from16 v24, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNonDds:Z

    move/from16 v25, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    move/from16 v26, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNtn:Z

    move/from16 v27, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isSatelliteTransport:Z

    move/from16 v28, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isProvisioningProfile:Z

    iget-boolean v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNbIotNtn:Z

    move/from16 v29, v1

    const/16 v1, 0x2769

    move/from16 v22, v2

    move/from16 v2, v17

    move/from16 v17, v5

    const/4 v5, 0x0

    move/from16 v30, v0

    .line 1210
    invoke-static/range {v1 .. v30}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIZZIIIZIZJZIZIIIJZI[I[IZZZZZZ)Landroid/util/StatsEvent;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;)Landroid/util/StatsEvent;
    .registers 10

    .line 1579
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkType:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->apnTypeBitmask:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->signalStrength:I

    iget v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->validationResult:I

    iget-wide v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->elapsedTimeInMillis:J

    iget-boolean v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->handoverAttempted:Z

    iget v8, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkValidationCount:I

    const/16 v0, 0x27df

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIJZI)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;)Landroid/util/StatsEvent;
    .registers 12

    .line 1441
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->isDbVersionIgnored:Z

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->assetVersion:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->otaVersion:I

    iget-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->route:I

    iget-object v8, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    iget-object v10, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    const/16 v0, 0x27c4

    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[I[I)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)Landroid/util/StatsEvent;
    .registers 7

    .line 1423
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    iget-boolean v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    iget v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    const/16 v0, 0x27a1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIZII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)Landroid/util/StatsEvent;
    .registers 11

    .line 1373
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    iget v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    iget-boolean v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    iget-boolean v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    iget-boolean v8, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    iget v9, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    const/16 v0, 0x279d

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIIZZZI)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)Landroid/util/StatsEvent;
    .registers 8

    .line 1362
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    iget v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    iget-boolean v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    iget v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    const/16 v0, 0x279c

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIZI)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)Landroid/util/StatsEvent;
    .registers 8

    .line 1286
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    iget v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    iget-wide v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    .line 1292
    invoke-static {v5, v6}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v5

    const/16 v0, 0x2795

    .line 1286
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)Landroid/util/StatsEvent;
    .registers 9

    .line 1387
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    iget v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    iget-wide v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    .line 1394
    invoke-static {v6, v7}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v6

    const/16 v0, 0x279e

    .line 1387
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIFII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)Landroid/util/StatsEvent;
    .registers 19

    move-object/from16 v0, p0

    .line 1243
    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    iget v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    iget v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    iget-wide v5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 1248
    invoke-static {v5, v6}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v5

    iget-wide v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 1249
    invoke-static {v6, v7}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v6

    iget-wide v7, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 1250
    invoke-static {v7, v8}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v7

    iget-wide v8, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 1251
    invoke-static {v8, v9}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v8

    iget-wide v9, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 1252
    invoke-static {v9, v10}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v9

    iget-wide v10, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 1253
    invoke-static {v10, v11}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v10

    iget-wide v11, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 1254
    invoke-static {v11, v12}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v11

    iget-wide v12, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 1255
    invoke-static {v12, v13}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v12

    iget-wide v13, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    .line 1256
    invoke-static {v13, v14}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v13

    iget-wide v14, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    .line 1257
    invoke-static {v14, v15}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v14

    move v15, v2

    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    .line 1258
    invoke-static {v1, v2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v1

    iget-boolean v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    iget v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    move/from16 v16, v2

    move v2, v15

    move v15, v1

    const/16 v1, 0x276e

    move/from16 v17, v0

    .line 1243
    invoke-static/range {v1 .. v17}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIIIIIIIIIIIZI)Landroid/util/StatsEvent;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)Landroid/util/StatsEvent;
    .registers 11

    .line 1264
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    iget-boolean v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isMultiSim:Z

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    iget-boolean v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->setupFailed:Z

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->reasonCode:I

    iget v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraCode:I

    iget-object v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    iget-boolean v9, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isIwlanCrossSim:Z

    const/16 v0, 0x276d

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIZIZIILjava/lang/String;IZ)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)Landroid/util/StatsEvent;
    .registers 23

    move-object/from16 v0, p0

    .line 1159
    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    iget v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    iget v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    iget v5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    iget v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    iget v7, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    iget-boolean v8, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    iget v9, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    iget-boolean v10, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    iget v11, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    iget-boolean v12, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    iget-boolean v13, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    iget v14, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    move v15, v2

    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    move-wide/from16 v16, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    iget-boolean v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isManagedProfile:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNtn:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEmergency:Z

    iget-boolean v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNbIotNtn:Z

    move/from16 v20, v1

    const/16 v1, 0x2766

    move/from16 v21, v18

    move/from16 v18, v2

    move v2, v15

    move-wide/from16 v15, v16

    move/from16 v17, v21

    move/from16 v21, v0

    invoke-static/range {v1 .. v21}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIIIZIZIZZIJIZZZZ)Landroid/util/StatsEvent;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)Landroid/util/StatsEvent;
    .registers 4

    .line 1278
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    const/16 v2, 0x27a9

    invoke-static {v2, v0, v1, p0}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;)Landroid/util/StatsEvent;
    .registers 4

    .line 1433
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->category:I

    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->xmlVersion:I

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->shortCodeSmsCount:I

    const/16 v2, 0x27b2

    invoke-static {v2, v0, v1, p0}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;)Landroid/util/StatsEvent;
    .registers 27

    move-object/from16 v0, p0

    .line 1183
    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    iget v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    iget v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    iget v5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    iget v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    iget-boolean v7, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    iget-boolean v8, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    iget v9, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    iget-boolean v10, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    iget-boolean v11, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    iget v12, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    iget-wide v13, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    iget v15, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    move/from16 v16, v2

    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    move-wide/from16 v17, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendErrorCode:I

    move/from16 v19, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->networkErrorCode:I

    move/from16 v20, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isManagedProfile:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEmergency:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNtn:Z

    move/from16 v23, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMtSmsPolling:Z

    iget-boolean v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNbIotNtn:Z

    move/from16 v24, v1

    const/16 v1, 0x2767

    move/from16 v25, v19

    move/from16 v19, v2

    move/from16 v2, v16

    move-wide/from16 v16, v17

    move/from16 v18, v25

    move/from16 v25, v0

    invoke-static/range {v1 .. v25}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIIZZIZZIJIJIIIZZZZZ)Landroid/util/StatsEvent;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)Landroid/util/StatsEvent;
    .registers 10

    .line 1410
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    iget-boolean v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    iget v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    iget v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    iget v8, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    const/16 v0, 0x27a0

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIZIIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)Landroid/util/StatsEvent;
    .registers 10

    .line 1305
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    iget v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    iget-boolean v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    iget v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    iget-wide v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    .line 1313
    invoke-static {v7, v8}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v7

    const/16 v0, 0x2797

    .line 1305
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIZII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)Landroid/util/StatsEvent;
    .registers 5

    .line 1296
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    const/16 v3, 0x2796

    invoke-static {v3, v0, v1, v2, p0}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;)Landroid/util/StatsEvent;
    .registers 18

    move-object/from16 v0, p0

    .line 1655
    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->accessControlType:I

    iget-wide v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->locationQueryTimeMillis:J

    iget-wide v5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->onDeviceLookupTimeMillis:J

    iget-wide v7, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->totalCheckingTimeMillis:J

    iget-boolean v9, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isAllowed:Z

    iget-boolean v10, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isEmergency:Z

    iget v11, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->resultCode:I

    iget-object v12, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    iget v13, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->configDataSource:I

    iget v14, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->carrierId:I

    iget v15, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->triggeringEvent:I

    iget-boolean v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isNtnOnlyCarrier:Z

    const/16 v1, 0x27eb

    move/from16 v16, v0

    invoke-static/range {v1 .. v16}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIJJJZZI[Ljava/lang/String;IIIZ)Landroid/util/StatsEvent;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;)Landroid/util/StatsEvent;
    .registers 5

    .line 1647
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->configVersion:I

    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->oemConfigResult:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->carrierConfigResult:I

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->count:I

    const/16 v3, 0x27e7

    invoke-static {v3, v0, v1, v2, p0}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;)Landroid/util/StatsEvent;
    .registers 46

    move-object/from16 v0, p0

    .line 1456
    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsSuccess:I

    iget v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsFail:I

    iget v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramSuccess:I

    iget v5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramFail:I

    iget v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramSuccess:I

    iget v7, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramFail:I

    iget v8, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsSuccess:I

    iget v9, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsFail:I

    iget v10, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingSuccess:I

    iget v11, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingFail:I

    iget v12, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionSuccess:I

    iget v13, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionFail:I

    iget v14, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionSuccess:I

    iget v15, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionFail:I

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalServiceUptimeSec:I

    move/from16 v16, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryConsumptionPercent:I

    move/from16 v17, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryChargedTimeSec:I

    move/from16 v18, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsSuccess:I

    move/from16 v19, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsFail:I

    move/from16 v20, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramSuccess:I

    move/from16 v21, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramFail:I

    move/from16 v22, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramSuccess:I

    move/from16 v23, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramFail:I

    move/from16 v24, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveSuccess:I

    move/from16 v25, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveFail:I

    move/from16 v26, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfAllowedSatelliteAccess:I

    move/from16 v27, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDisallowedSatelliteAccess:I

    move/from16 v28, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAccessCheckFail:I

    move/from16 v29, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isProvisioned:Z

    move/from16 v30, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierId:I

    move/from16 v31, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAllowedStateChangedEvents:I

    move/from16 v32, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSuccessfulLocationQueries:I

    move/from16 v33, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfFailedLocationQueries:I

    move/from16 v34, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationShown:I

    move/from16 v35, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationRemoved:I

    move/from16 v36, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isNtnOnlyCarrier:Z

    move/from16 v37, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->versionOfSatelliteAccessConfig:I

    move/from16 v38, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsSuccess:I

    move/from16 v39, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsFail:I

    move/from16 v40, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsSuccess:I

    move/from16 v41, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsFail:I

    move/from16 v42, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsSuccess:I

    iget v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsFail:I

    move/from16 v43, v1

    const/16 v1, 0x27c6

    move/from16 v44, v0

    invoke-static/range {v1 .. v44}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIIIIIIIIIIIIIIIIIIIIIIIIIZIIIIIIZIIIIIII)Landroid/util/StatsEvent;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;)Landroid/util/StatsEvent;
    .registers 10

    .line 1634
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    iget-boolean v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    iget-boolean v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isAllowedServiceEntitlement:Z

    iget-object v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    iget v8, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementDataPolicy:I

    const/16 v0, 0x27e6

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIZIZ[II)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;)Landroid/util/StatsEvent;
    .registers 9

    .line 1529
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->resultCode:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramSizeBytes:I

    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramTransferTimeMillis:J

    iget-boolean v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isDemoMode:Z

    iget v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->carrierId:I

    iget-boolean v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isNtnOnlyCarrier:Z

    const/16 v0, 0x27c8

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIJZIZ)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;)Landroid/util/StatsEvent;
    .registers 10

    .line 1540
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramType:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->resultCode:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramSizeBytes:I

    iget-wide v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramTransferTimeMillis:J

    iget-boolean v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isDemoMode:Z

    iget v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->carrierId:I

    iget-boolean v8, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isNtnOnlyCarrier:Z

    const/16 v0, 0x27c9

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIJZIZ)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;)Landroid/util/StatsEvent;
    .registers 8

    .line 1552
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->resultCode:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->provisioningTimeSec:I

    iget-boolean v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->isProvisionRequest:Z

    iget-boolean v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->isCanceled:Z

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->carrierId:I

    iget-boolean v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->isNtnOnlyCarrier:Z

    const/16 v0, 0x27ca

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIZZIZ)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;)Landroid/util/StatsEvent;
    .registers 25

    move-object/from16 v0, p0

    .line 1504
    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceInitializationResult:I

    iget v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteTechnology:I

    iget v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->count:I

    iget v5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceTerminationResult:I

    iget-wide v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->initializationProcessingTimeMillis:J

    iget-wide v8, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->terminationProcessingTimeMillis:J

    iget v10, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->sessionDurationSeconds:I

    iget v11, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramSuccess:I

    iget v12, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramFailed:I

    iget v13, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramSuccess:I

    iget v14, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramFailed:I

    iget-boolean v15, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isDemoMode:Z

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxNtnSignalStrengthLevel:I

    move/from16 v16, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->carrierId:I

    move/from16 v17, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfSatelliteNotificationDisplayed:I

    move/from16 v18, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToScreenOff:I

    move/from16 v19, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToTnNetwork:I

    move/from16 v20, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isEmergency:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isNtnOnlyCarrier:Z

    iget v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxInactivityDurationSec:I

    move/from16 v22, v1

    const/16 v1, 0x27c7

    move/from16 v23, v0

    invoke-static/range {v1 .. v23}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIJJIIIIIZIIIIIZZI)Landroid/util/StatsEvent;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;)Landroid/util/StatsEvent;
    .registers 13

    .line 1563
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    iget-boolean v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    iget v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    iget-boolean v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    iget v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    iget-boolean v8, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    iget-boolean v9, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    iget v10, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    iget-boolean v11, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isNtnOnlyCarrier:Z

    const/16 v0, 0x27cb

    invoke-static/range {v0 .. v11}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IZIZIIZIZZIZ)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)Landroid/util/StatsEvent;
    .registers 7

    .line 1317
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->dimension:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->carrierId:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->slotId:I

    iget-wide v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    .line 1322
    invoke-static {v4, v5}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v4

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    const/16 v0, 0x2798

    .line 1317
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;)Landroid/util/StatsEvent;
    .registers 9

    .line 1338
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    iget v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    iget v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    iget v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    const/16 v0, 0x279a

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;)Landroid/util/StatsEvent;
    .registers 9

    .line 1327
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->slotId:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->featureTagName:I

    iget v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeniedReason:I

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeregisteredReason:I

    iget-wide v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    .line 1334
    invoke-static {v6, v7}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v6

    const/16 v0, 0x2799

    .line 1327
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;)Landroid/util/StatsEvent;
    .registers 9

    .line 1350
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    iget v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    iget v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    iget v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    const/16 v0, 0x279b

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)Landroid/util/StatsEvent;
    .registers 9

    .line 1398
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    iget v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    iget-boolean v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    iget v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    iget v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    iget v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    const/16 v0, 0x279f

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIZIII)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)Landroid/util/StatsEvent;
    .registers 8

    .line 1096
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->carrierId:I

    iget v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->rat:I

    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->totalDurationMillis:J

    .line 1100
    invoke-static {v3, v4}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(J)I

    move-result v0

    int-to-long v3, v0

    iget-wide v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->callCount:J

    const/16 v0, 0x275d

    .line 1096
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist buildStatsEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)Landroid/util/StatsEvent;
    .registers 53

    move-object/from16 v0, p0

    .line 1105
    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtStart:I

    iget v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    iget v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->direction:I

    iget-boolean v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    iget v7, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    iget v8, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    iget-object v9, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    iget v10, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtStart:I

    iget v11, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    iget-wide v12, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    iget-wide v14, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtStart:I

    iget v5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtEnd:I

    move/from16 v16, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    move/from16 v18, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiSim:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEsim:Z

    move/from16 v20, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCompleted:Z

    move/from16 v22, v1

    move/from16 v17, v2

    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    move-wide/from16 v25, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->rttEnabled:Z

    iget-boolean v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    move/from16 v27, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isRoaming:Z

    sget-object v28, Lcom/android/internal/telephony/metrics/MetricsCollector;->sRandom:Ljava/util/Random;

    .line 1133
    invoke-virtual/range {v28 .. v28}, Ljava/util/Random;->nextInt()I

    move-result v30

    move/from16 v29, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->signalStrengthAtEnd:I

    move/from16 v31, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bandAtEnd:I

    move/from16 v32, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    move/from16 v33, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mainCodecQuality:I

    move/from16 v34, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->videoEnabled:Z

    move/from16 v35, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtConnected:I

    move/from16 v36, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiparty:Z

    move/from16 v37, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callDuration:I

    move/from16 v38, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->lastKnownRat:I

    move/from16 v39, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->foldState:I

    move/from16 v40, v1

    move/from16 v28, v2

    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCountAfterConnected:J

    move-wide/from16 v41, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->handoverInProgress:Z

    iget-boolean v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtStart:Z

    move/from16 v43, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtEnd:Z

    move/from16 v45, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtConnected:Z

    move/from16 v46, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->vonrEnabled:Z

    move/from16 v47, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isNtn:Z

    move/from16 v48, v1

    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->supportsBusinessCallComposer:Z

    move/from16 v49, v1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callComposerStatus:I

    iget v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->preciseCallStateOnSetup:I

    move/from16 v50, v1

    const/16 v1, 0x275c

    move/from16 v44, v2

    move/from16 v2, v17

    move/from16 v17, v5

    const/4 v5, 0x0

    move/from16 v51, v0

    .line 1105
    invoke-static/range {v1 .. v51}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIZIILjava/lang/String;IIJJIIIZZIZJJZZZIIIIIZIZIIIJZZZZZZZII)Landroid/util/StatsEvent;

    move-result-object v0

    return-object v0
.end method

.method private blacklist concludeAll()V
    .registers 1

    .line 436
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->concludeDataCallSessionStats()V

    .line 437
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->concludeImsStats()V

    .line 438
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->concludeServiceStateStats()V

    .line 439
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->concludeRcsStats()V

    return-void
.end method

.method private blacklist concludeDataCallSessionStats()V
    .registers 2

    .line 405
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mOngoingDataCallStats:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    .line 406
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->conclude()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private blacklist concludeImsStats()V
    .registers 4

    .line 411
    invoke-static {}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getPhonesIfAny()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_1c

    aget-object v2, p0, v1

    .line 412
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v2, :cond_19

    .line 414
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsStats()Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/ImsStats;->conclude()V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return-void
.end method

.method private blacklist concludeRcsStats()V
    .registers 1

    .line 426
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->getInstance()Lcom/android/internal/telephony/metrics/RcsStats;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->concludeSipTransportFeatureTagsStat()V

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->onFlushIncompleteRcsAcsProvisioningStats()V

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->onFlushIncompleteImsRegistrationServiceDescStats()V

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->onFlushIncompleteImsRegistrationFeatureTagStats()V

    :cond_12
    return-void
.end method

.method private blacklist concludeServiceStateStats()V
    .registers 4

    .line 420
    invoke-static {}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getPhonesIfAny()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_18

    aget-object v2, p0, v1

    .line 421
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceStateStats()Lcom/android/internal/telephony/metrics/ServiceStateStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->conclude()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method static blacklist getPhonesIfAny()[Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 1674
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    const/4 v0, 0x0

    .line 1677
    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private static blacklist pullCarrierIdTableVersion(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 479
    invoke-static {}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getPhonesIfAny()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 480
    array-length v1, v0

    if-nez v1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 v1, 0x0

    .line 485
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierIdListVersion()I

    move-result v0

    const/16 v2, 0x2768

    .line 486
    invoke-static {v2, v0}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method private blacklist pullCarrierRoamingSatelliteControllerStats(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1001
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 1002
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getCarrierRoamingSatelliteControllerStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1004
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda21;-><init>(Ljava/util/List;)V

    .line 1005
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 1008
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "CARRIER_ROAMING_SATELLITE_CONTROLLER_STATS pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullCarrierRoamingSatelliteSession(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 988
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 989
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getCarrierRoamingSatelliteSessionStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 991
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda26;-><init>(Ljava/util/List;)V

    .line 992
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 995
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "CARRIER_ROAMING_SATELLITE_SESSION pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullCellularDataServiceSwitch(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 565
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 566
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getCellularDataServiceSwitches(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 569
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda33;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda33;-><init>(Ljava/util/List;)V

    .line 570
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 573
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "CELLULAR_DATA_SERVICE_SWITCH pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullCellularServiceState(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 580
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->concludeServiceStateStats()V

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mPowerCorrelatedMinCooldownMillis:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getCellularServiceStates(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 585
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda20;-><init>(Ljava/util/List;)V

    .line 586
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 589
    :cond_1b
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "CELLULAR_SERVICE_STATE pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullDataCallSession(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 551
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->concludeDataCallSessionStats()V

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mPowerCorrelatedMinCooldownMillis:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getDataCallSessions(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 555
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda9;-><init>(Ljava/util/List;)V

    .line 556
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 559
    :cond_1b
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "DATA_CALL_SESSION pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullDataNetworkValidation(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mPowerCorrelatedMinCooldownMillis:J

    .line 976
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getDataNetworkValidation(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 978
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 979
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 982
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "DATA_NETWORK_VALIDATION pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullDeviceTelephonyProperties(Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 636
    invoke-static {}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getPhonesIfAny()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 637
    array-length v1, v0

    if-nez v1, :cond_9

    const/4 p0, 0x1

    return p0

    .line 640
    :cond_9
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda10;-><init>()V

    .line 641
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    .line 645
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda11;-><init>()V

    .line 646
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v7

    .line 648
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    .line 649
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda12;-><init>()V

    .line 650
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 651
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int v8, v0

    .line 653
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 654
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getAutoDataSwitchToggleCount()I

    move-result v6

    const/16 v3, 0x27aa

    const/4 v4, 0x1

    .line 653
    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IZZIZI)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist pullEmergencyNumbersInfo(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 881
    invoke-static {}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getPhonesIfAny()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const/4 v3, 0x1

    if-ge v1, v0, :cond_28

    aget-object v4, p0, v1

    if-eqz v4, :cond_25

    .line 883
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 885
    invoke-virtual {v4}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumbersProtoArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    move-result-object v2

    .line 886
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda39;

    invoke-direct {v4, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda39;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    move v2, v3

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_28
    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method private blacklist pullGbaEvent(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 821
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getGbaEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 823
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda38;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda38;-><init>(Ljava/util/List;)V

    .line 824
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 827
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "GBA_EVENT pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullImsDedicatedBearerEvent(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 770
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 771
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getImsDedicatedBearerEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 773
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda36;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda36;-><init>(Ljava/util/List;)V

    .line 774
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 777
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "IMS_DEDICATED_BEARER_EVENT pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullImsDedicatedBearerListenerEvent(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 757
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 758
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getImsDedicatedBearerListenerEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 760
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda41;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda41;-><init>(Ljava/util/List;)V

    .line 761
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 764
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "IMS_DEDICATED_BEARER_LISTENER_EVENT pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullImsRegistrationFeatureTagStats(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 660
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->getInstance()Lcom/android/internal/telephony/metrics/RcsStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/RcsStats;->onFlushIncompleteImsRegistrationFeatureTagStats()V

    .line 662
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 663
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getImsRegistrationFeatureTagStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 665
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda24;-><init>(Ljava/util/List;)V

    .line 666
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 669
    :cond_1f
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "IMS_REGISTRATION_FEATURE_TAG_STATS pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullImsRegistrationServiceDescStats(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 783
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->getInstance()Lcom/android/internal/telephony/metrics/RcsStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/RcsStats;->onFlushIncompleteImsRegistrationServiceDescStats()V

    .line 784
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 785
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getImsRegistrationServiceDescStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 787
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda22;-><init>(Ljava/util/List;)V

    .line 788
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 791
    :cond_1f
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "IMS_REGISTRATION_SERVICE_DESC_STATS pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullImsRegistrationStats(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 596
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->concludeImsStats()V

    .line 597
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getImsRegistrationStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 600
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda34;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda34;-><init>(Ljava/util/List;)V

    .line 601
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 604
    :cond_1b
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "IMS_REGISTRATION_STATS pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullImsRegistrationTermination(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mPowerCorrelatedMinCooldownMillis:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getImsRegistrationTerminations(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 614
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    .line 615
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 618
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "IMS_REGISTRATION_TERMINATION pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullIncomingSms(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 526
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getIncomingSms(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 529
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda15;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 532
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "INCOMING_SMS pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullOutgoingShortCodeSms(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 867
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 868
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getOutgoingShortCodeSms(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 871
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda35;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda35;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 874
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "OUTGOING_SHORT_CODE_SMS pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullOutgoingSms(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 538
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getOutgoingSms(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 541
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda14;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 544
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "OUTGOING_SMS pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullPerSimStatus(Ljava/util/List;)I
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 834
    invoke-static {}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getPhonesIfAny()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v1, :cond_71

    aget-object v5, v0, v4

    .line 835
    invoke-static {v5}, Lcom/android/internal/telephony/metrics/PerSimStatus;->getCurrentState(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/metrics/PerSimStatus;

    move-result-object v6

    if-nez v6, :cond_1a

    move-object/from16 v30, v0

    move/from16 v31, v1

    move/from16 v29, v4

    move-object/from16 v1, p1

    goto :goto_6a

    .line 841
    :cond_1a
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    iget v9, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->carrierId:I

    iget v10, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->phoneNumberSourceUicc:I

    iget v11, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->phoneNumberSourceCarrier:I

    iget v12, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->phoneNumberSourceIms:I

    iget-boolean v13, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->advancedCallingSettingEnabled:Z

    iget-boolean v14, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->voWiFiSettingEnabled:Z

    iget v15, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->voWiFiModeSetting:I

    iget v2, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->voWiFiRoamingModeSetting:I

    iget-boolean v5, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->vtSettingEnabled:Z

    iget-boolean v7, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->dataRoamingEnabled:Z

    move/from16 v29, v4

    iget-wide v3, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->preferredNetworkType:J

    move-object/from16 v30, v0

    iget-boolean v0, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->disabled2g:Z

    move/from16 v21, v0

    iget-boolean v0, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->pin1Enabled:Z

    move/from16 v22, v0

    iget v0, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->minimumVoltageClass:I

    move/from16 v23, v0

    iget v0, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->userModifiedApnTypes:I

    move/from16 v24, v0

    move/from16 v31, v1

    iget-wide v0, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->unmeteredNetworks:J

    move-wide/from16 v25, v0

    iget-boolean v0, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->vonrEnabled:Z

    iget-boolean v1, v6, Lcom/android/internal/telephony/metrics/PerSimStatus;->crossSimCallingEnabled:Z

    move/from16 v18, v7

    const/16 v7, 0x27a2

    move/from16 v27, v0

    move/from16 v28, v1

    move/from16 v16, v2

    move-wide/from16 v19, v3

    move/from16 v17, v5

    .line 839
    invoke-static/range {v7 .. v28}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIIIZZIIZZJZZIIJZZ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p1

    .line 860
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_6a
    add-int/lit8 v4, v29, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    goto :goto_7

    :cond_71
    return v2
.end method

.method private blacklist pullPresenceNotifyEvent(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 809
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getPresenceNotifyEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 811
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda30;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda30;-><init>(Ljava/util/List;)V

    .line 812
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 815
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "PRESENCE_NOTIFY_EVENT pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullRcsAcsProvisioningStats(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 688
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->getInstance()Lcom/android/internal/telephony/metrics/RcsStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/RcsStats;->onFlushIncompleteRcsAcsProvisioningStats()V

    .line 690
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 691
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getRcsAcsProvisioningStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 693
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda16;-><init>(Ljava/util/List;)V

    .line 694
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 697
    :cond_1f
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "RCS_ACS_PROVISIONING_STATS pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullRcsClientProvisioningStats(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 675
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 676
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getRcsClientProvisioningStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 678
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;)V

    .line 679
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 682
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "RCS_CLIENT_PROVISIONING_STATS pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullSatelliteAccessController(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1041
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 1042
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSatelliteAccessControllerStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1044
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda17;-><init>(Ljava/util/List;)V

    .line 1045
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 1048
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "SATELLITE_ACCESS_CONTROLLER pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullSatelliteConfigUpdater(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1028
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 1029
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSatelliteConfigUpdaterStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1031
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda23;-><init>(Ljava/util/List;)V

    .line 1032
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 1035
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "SATELLITE_CONFIG_UPDATER pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullSatelliteController(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 895
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 896
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSatelliteControllerStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 898
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    .line 899
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 902
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "SATELLITE_CONTROLLER pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullSatelliteEntitlement(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1015
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 1016
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSatelliteEntitlementStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1018
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    .line 1019
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 1022
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "SATELLITE_ENTITLEMENT pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullSatelliteIncomingDatagram(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 921
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 922
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSatelliteIncomingDatagramStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 924
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    .line 925
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 928
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "SATELLITE_INCOMING_DATAGRAM pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullSatelliteOutgoingDatagram(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 935
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 936
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSatelliteOutgoingDatagramStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 938
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda19;-><init>(Ljava/util/List;)V

    .line 939
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 942
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "SATELLITE_OUTGOING_DATAGRAM pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullSatelliteProvision(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 949
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 950
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSatelliteProvisionStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 952
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda13;-><init>(Ljava/util/List;)V

    .line 953
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 956
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "SATELLITE_PROVISION pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullSatelliteSession(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 908
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 909
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSatelliteSessionStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 911
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda40;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda40;-><init>(Ljava/util/List;)V

    .line 912
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 915
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "SATELLITE_SESSION pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullSatelliteSosMessageRecommender(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 962
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 963
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSatelliteSosMessageRecommenderStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 965
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda25;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda25;-><init>(Ljava/util/List;)V

    .line 966
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 969
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "SATELLITE_SOS_MESSAGE_RECOMMENDER pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist pullSimSlotState(Ljava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 445
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->getCurrentState()Lcom/android/internal/telephony/metrics/SimSlotState;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_19

    .line 451
    iget v2, v0, Lcom/android/internal/telephony/metrics/SimSlotState;->numActiveSlots:I

    iget v3, v0, Lcom/android/internal/telephony/metrics/SimSlotState;->numActiveSims:I

    iget v4, v0, Lcom/android/internal/telephony/metrics/SimSlotState;->numActiveEsims:I

    iget v5, v0, Lcom/android/internal/telephony/metrics/SimSlotState;->numActiveEsimSlots:I

    iget v6, v0, Lcom/android/internal/telephony/metrics/SimSlotState;->numActiveMepSlots:I

    const/16 v1, 0x275e

    .line 452
    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    move-result-object v0

    .line 451
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    :catch_19
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullSipDelegateStats(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 703
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 704
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSipDelegateStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 706
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda31;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda31;-><init>(Ljava/util/List;)V

    .line 707
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 710
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "SIP_DELEGATE_STATS pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullSipMessageResponse(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 731
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 732
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSipMessageResponse(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 734
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda18;-><init>(Ljava/util/List;)V

    .line 735
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 738
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "RCS_SIP_MESSAGE_RESPONSE pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullSipTransportFeatureTagStats(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 716
    invoke-static {}, Lcom/android/internal/telephony/metrics/RcsStats;->getInstance()Lcom/android/internal/telephony/metrics/RcsStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/RcsStats;->concludeSipTransportFeatureTagsStat()V

    .line 718
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 719
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSipTransportFeatureTagStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 721
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda37;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda37;-><init>(Ljava/util/List;)V

    .line 722
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 725
    :cond_1f
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "SIP_DELEGATE_STATS pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullSipTransportSession(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 744
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    .line 745
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSipTransportSession(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 747
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;)V

    .line 748
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 751
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "RCS_SIP_TRANSPORT_SESSION pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist pullSupportedRadioAccessFamily(Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 463
    invoke-static {}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getPhonesIfAny()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 464
    array-length v0, v0

    if-nez v0, :cond_9

    const/4 p0, 0x1

    return p0

    .line 470
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_12
    if-ge v5, v1, :cond_1f

    aget-object v6, v0, v5

    .line 471
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_1f
    const/16 v0, 0x275f

    .line 474
    invoke-static {v0, v3, v4}, Lcom/android/internal/telephony/TelephonyStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method private blacklist pullTelephonyNetworkRequestsV2(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 624
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getNetworkRequestsV2(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 626
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda32;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda32;-><init>(Ljava/util/List;)V

    .line 627
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 630
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "TELEPHONY_NETWORK_REQUESTS_V2 pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullUceEventStats(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 797
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getUceEventStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 799
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 800
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 803
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "UCE_EVENT_STATS pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullVoiceCallRatUsages(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 492
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getVoiceCallRatUsages(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    move-result-object p0

    if-eqz p0, :cond_4a

    .line 495
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda27;-><init>()V

    .line 497
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    .line 496
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda28;-><init>()V

    .line 499
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda29;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda29;-><init>(Ljava/util/List;)V

    .line 500
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 501
    sget-object v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    .line 505
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 503
    const-string p1, "%d out of %d VOICE_CALL_RAT_USAGE pulled"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 501
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 508
    :cond_4a
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "VOICE_CALL_RAT_USAGE pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist pullVoiceCallSessions(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 514
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MIN_COOLDOWN_MILLIS:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getVoiceCallSessions(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 517
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/MetricsCollector$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return p0

    .line 520
    :cond_18
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    const-string p1, "VOICE_CALL_SESSION pull too frequent, skipping"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private blacklist registerAtom(I)V
    .registers 5

    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStatsManager:Landroid/app/StatsManager;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method private static blacklist roundAndConvertMillisToMinutes(J)I
    .registers 6

    long-to-double p0, p0

    .line 1701
    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->DURATION_BUCKET_MILLIS:J

    long-to-double v2, v0

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    mul-long/2addr p0, v0

    .line 1703
    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->MILLIS_PER_MINUTE:J

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static blacklist roundAndConvertMillisToSeconds(J)I
    .registers 4

    .line 1685
    sget-wide v0, Lcom/android/internal/telephony/metrics/MetricsCollector;->DURATION_BUCKET_MILLIS:J

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/metrics/MetricsCollector;->roundAndConvertMillisToSeconds(JJ)I

    move-result p0

    return p0
.end method

.method private static blacklist roundAndConvertMillisToSeconds(JJ)I
    .registers 6

    long-to-double p0, p0

    long-to-double v0, p2

    div-double/2addr p0, v0

    .line 1692
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    mul-long/2addr p0, p2

    .line 1694
    sget-wide p2, Lcom/android/internal/telephony/metrics/MetricsCollector;->MILLIS_PER_SECOND:J

    div-long/2addr p0, p2

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public blacklist clearAtomsStorage()V
    .registers 1

    .line 383
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->concludeAll()V

    .line 384
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->clearAtoms()V

    return-void
.end method

.method public blacklist flushAtomsStorage()V
    .registers 1

    .line 377
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->concludeAll()V

    .line 378
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->flushAtoms()V

    return-void
.end method

.method public blacklist getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;
    .registers 1

    .line 362
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    return-object p0
.end method

.method public blacklist getDefaultNetworkMonitor()Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;
    .registers 1

    .line 401
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mDefaultNetworkMonitor:Lcom/android/internal/telephony/metrics/DefaultNetworkMonitor;

    return-object p0
.end method

.method public blacklist getDeviceStateHelper()Lcom/android/internal/telephony/metrics/DeviceStateHelper;
    .registers 1

    .line 367
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    return-object p0
.end method

.method public blacklist getVonrHelper()Lcom/android/internal/telephony/metrics/VonrHelper;
    .registers 1

    .line 372
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mVonrHelper:Lcom/android/internal/telephony/metrics/VonrHelper;

    return-object p0
.end method

.method public whitelist onPullAtom(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const/16 v0, 0x276d

    if-eq p1, v0, :cond_11e

    const/16 v0, 0x276e

    if-eq p1, v0, :cond_119

    const/16 v0, 0x27a9

    if-eq p1, v0, :cond_114

    const/16 v0, 0x27aa

    if-eq p1, v0, :cond_10f

    const/16 v0, 0x27b2

    if-eq p1, v0, :cond_10a

    const/16 v0, 0x27c4

    if-eq p1, v0, :cond_105

    const/16 v0, 0x27df

    if-eq p1, v0, :cond_100

    const/16 v0, 0x27eb

    if-eq p1, v0, :cond_fb

    const/16 v0, 0x27e3

    if-eq p1, v0, :cond_f6

    const/16 v0, 0x27e4

    if-eq p1, v0, :cond_f1

    const/16 v0, 0x27e6

    if-eq p1, v0, :cond_ec

    const/16 v0, 0x27e7

    if-eq p1, v0, :cond_e7

    packed-switch p1, :pswitch_data_124

    packed-switch p1, :pswitch_data_130

    packed-switch p1, :pswitch_data_140

    packed-switch p1, :pswitch_data_160

    .line 355
    sget-object p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "unexpected atom ID %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 341
    :pswitch_51
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSatelliteSosMessageRecommender(Ljava/util/List;)I

    move-result p0

    return p0

    .line 339
    :pswitch_56
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSatelliteProvision(Ljava/util/List;)I

    move-result p0

    return p0

    .line 337
    :pswitch_5b
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSatelliteOutgoingDatagram(Ljava/util/List;)I

    move-result p0

    return p0

    .line 335
    :pswitch_60
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSatelliteIncomingDatagram(Ljava/util/List;)I

    move-result p0

    return p0

    .line 333
    :pswitch_65
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSatelliteSession(Ljava/util/List;)I

    move-result p0

    return p0

    .line 331
    :pswitch_6a
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSatelliteController(Ljava/util/List;)I

    move-result p0

    return p0

    .line 325
    :pswitch_6f
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullPerSimStatus(Ljava/util/List;)I

    move-result p0

    return p0

    .line 323
    :pswitch_74
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullGbaEvent(Ljava/util/List;)I

    move-result p0

    return p0

    .line 321
    :pswitch_79
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullPresenceNotifyEvent(Ljava/util/List;)I

    move-result p0

    return p0

    .line 319
    :pswitch_7e
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullUceEventStats(Ljava/util/List;)I

    move-result p0

    return p0

    .line 317
    :pswitch_83
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullImsRegistrationServiceDescStats(Ljava/util/List;)I

    move-result p0

    return p0

    .line 315
    :pswitch_88
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullImsDedicatedBearerEvent(Ljava/util/List;)I

    move-result p0

    return p0

    .line 313
    :pswitch_8d
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullImsDedicatedBearerListenerEvent(Ljava/util/List;)I

    move-result p0

    return p0

    .line 311
    :pswitch_92
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSipTransportSession(Ljava/util/List;)I

    move-result p0

    return p0

    .line 309
    :pswitch_97
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSipMessageResponse(Ljava/util/List;)I

    move-result p0

    return p0

    .line 307
    :pswitch_9c
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSipTransportFeatureTagStats(Ljava/util/List;)I

    move-result p0

    return p0

    .line 305
    :pswitch_a1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSipDelegateStats(Ljava/util/List;)I

    move-result p0

    return p0

    .line 303
    :pswitch_a6
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullRcsAcsProvisioningStats(Ljava/util/List;)I

    move-result p0

    return p0

    .line 301
    :pswitch_ab
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullRcsClientProvisioningStats(Ljava/util/List;)I

    move-result p0

    return p0

    .line 299
    :pswitch_b0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullImsRegistrationFeatureTagStats(Ljava/util/List;)I

    move-result p0

    return p0

    .line 271
    :pswitch_b5
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullCellularDataServiceSwitch(Ljava/util/List;)I

    move-result p0

    return p0

    .line 273
    :pswitch_ba
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullCellularServiceState(Ljava/util/List;)I

    move-result p0

    return p0

    .line 289
    :pswitch_bf
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullDataCallSession(Ljava/util/List;)I

    move-result p0

    return p0

    .line 287
    :pswitch_c4
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullCarrierIdTableVersion(Ljava/util/List;)I

    move-result p0

    return p0

    .line 285
    :pswitch_c9
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullOutgoingSms(Ljava/util/List;)I

    move-result p0

    return p0

    .line 283
    :pswitch_ce
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullIncomingSms(Ljava/util/List;)I

    move-result p0

    return p0

    .line 277
    :pswitch_d3
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSupportedRadioAccessFamily(Ljava/util/List;)I

    move-result p0

    return p0

    .line 275
    :pswitch_d8
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSimSlotState(Ljava/util/List;)I

    move-result p0

    return p0

    .line 279
    :pswitch_dd
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullVoiceCallRatUsages(Ljava/util/List;)I

    move-result p0

    return p0

    .line 281
    :pswitch_e2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullVoiceCallSessions(Ljava/util/List;)I

    move-result p0

    return p0

    .line 351
    :cond_e7
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSatelliteConfigUpdater(Ljava/util/List;)I

    move-result p0

    return p0

    .line 349
    :cond_ec
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSatelliteEntitlement(Ljava/util/List;)I

    move-result p0

    return p0

    .line 347
    :cond_f1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullCarrierRoamingSatelliteControllerStats(Ljava/util/List;)I

    move-result p0

    return p0

    .line 345
    :cond_f6
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullCarrierRoamingSatelliteSession(Ljava/util/List;)I

    move-result p0

    return p0

    .line 353
    :cond_fb
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullSatelliteAccessController(Ljava/util/List;)I

    move-result p0

    return p0

    .line 343
    :cond_100
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullDataNetworkValidation(Ljava/util/List;)I

    move-result p0

    return p0

    .line 329
    :cond_105
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullEmergencyNumbersInfo(Ljava/util/List;)I

    move-result p0

    return p0

    .line 327
    :cond_10a
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullOutgoingShortCodeSms(Ljava/util/List;)I

    move-result p0

    return p0

    .line 297
    :cond_10f
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullDeviceTelephonyProperties(Ljava/util/List;)I

    move-result p0

    return p0

    .line 295
    :cond_114
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullTelephonyNetworkRequestsV2(Ljava/util/List;)I

    move-result p0

    return p0

    .line 291
    :cond_119
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullImsRegistrationStats(Ljava/util/List;)I

    move-result p0

    return p0

    .line 293
    :cond_11e
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/MetricsCollector;->pullImsRegistrationTermination(Ljava/util/List;)I

    move-result p0

    return p0

    nop

    :pswitch_data_124
    .packed-switch 0x275c
        :pswitch_e2
        :pswitch_dd
        :pswitch_d8
        :pswitch_d3
    .end packed-switch

    :pswitch_data_130
    .packed-switch 0x2766
        :pswitch_ce
        :pswitch_c9
        :pswitch_c4
        :pswitch_bf
        :pswitch_ba
        :pswitch_b5
    .end packed-switch

    :pswitch_data_140
    .packed-switch 0x2795
        :pswitch_b0
        :pswitch_ab
        :pswitch_a6
        :pswitch_a1
        :pswitch_9c
        :pswitch_97
        :pswitch_92
        :pswitch_8d
        :pswitch_88
        :pswitch_83
        :pswitch_7e
        :pswitch_79
        :pswitch_74
        :pswitch_6f
    .end packed-switch

    :pswitch_data_160
    .packed-switch 0x27c6
        :pswitch_6a
        :pswitch_65
        :pswitch_60
        :pswitch_5b
        :pswitch_56
        :pswitch_51
    .end packed-switch
.end method

.method public blacklist registerOngoingDataCallStat(Lcom/android/internal/telephony/metrics/DataCallSessionStats;)V
    .registers 2

    .line 392
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mOngoingDataCallStats:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist unregisterOngoingDataCallStat(Lcom/android/internal/telephony/metrics/DataCallSessionStats;)V
    .registers 2

    .line 397
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/MetricsCollector;->mOngoingDataCallStats:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
