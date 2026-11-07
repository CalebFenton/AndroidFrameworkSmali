.class public Lcom/android/internal/telephony/metrics/DeviceTelephonyPropertiesStats;
.super Ljava/lang/Object;
.source "DeviceTelephonyPropertiesStats.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist recordAutoDataSwitchFeatureToggle()V
    .registers 1

    .line 29
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->recordToggledAutoDataSwitch()V

    return-void
.end method
