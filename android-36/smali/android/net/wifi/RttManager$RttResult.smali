.class public Landroid/net/wifi/RttManager$RttResult;
.super Ljava/lang/Object;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RttResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

.field public whitelist LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

.field public whitelist bssid:Ljava/lang/String;

.field public whitelist burstDuration:I

.field public whitelist burstNumber:I

.field public whitelist distance:I

.field public whitelist distanceSpread:I

.field public whitelist distanceStandardDeviation:I

.field public whitelist distance_cm:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist distance_sd_cm:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist distance_spread_cm:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist frameNumberPerBurstPeer:I

.field public whitelist measurementFrameNumber:I

.field public whitelist measurementType:I

.field public whitelist negotiatedBurstNum:I

.field public whitelist requestType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist retryAfterDuration:I

.field public whitelist rssi:I

.field public whitelist rssiSpread:I

.field public whitelist rssi_spread:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist rtt:J

.field public whitelist rttSpread:J

.field public whitelist rttStandardDeviation:J

.field public whitelist rtt_ns:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist rtt_sd_ns:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist rtt_spread_ns:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist rxRate:I

.field public whitelist secure:Z

.field public whitelist status:I

.field public whitelist successMeasurementFrameNumber:I

.field public whitelist ts:J

.field public whitelist txRate:I

.field public whitelist tx_rate:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
