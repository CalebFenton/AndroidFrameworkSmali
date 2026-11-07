.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityLog;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$WakeupStats;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkStats;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpProvisioningEvent;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfProgramEvent;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ConnectStatistics;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLatencies;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ValidationProbeEvent;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkEvent;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$Pair;,
        Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$NetworkId;
    }
.end annotation


# static fields
.field public static final blacklist BLUETOOTH:I = 0x1

.field public static final blacklist CELLULAR:I = 0x2

.field public static final blacklist ETHERNET:I = 0x3

.field public static final blacklist LOWPAN:I = 0x9

.field public static final blacklist MULTIPLE:I = 0x6

.field public static final blacklist NONE:I = 0x5

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist WIFI:I = 0x4

.field public static final blacklist WIFI_NAN:I = 0x8

.field public static final blacklist WIFI_P2P:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
