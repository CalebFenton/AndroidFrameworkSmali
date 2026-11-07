.class public interface abstract Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;,
        Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;
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
