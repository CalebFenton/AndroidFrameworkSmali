.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpConnectivityEvent;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IpConnectivityEvent"
.end annotation


# static fields
.field public static final blacklist APF_PROGRAM_EVENT:J = 0x10b00000009L

.field public static final blacklist APF_STATISTICS:J = 0x10b0000000aL

.field public static final blacklist CONNECT_STATISTICS:J = 0x10b0000000eL

.field public static final blacklist DEFAULT_NETWORK_EVENT:J = 0x10b00000002L

.field public static final blacklist DHCP_EVENT:J = 0x10b00000006L

.field public static final blacklist DNS_LATENCIES:J = 0x10b0000000dL

.field public static final blacklist DNS_LOOKUP_BATCH:J = 0x10b00000005L

.field public static final blacklist IF_NAME:J = 0x10900000011L

.field public static final blacklist IP_PROVISIONING_EVENT:J = 0x10b00000007L

.field public static final blacklist IP_REACHABILITY_EVENT:J = 0x10b00000003L

.field public static final blacklist LINK_LAYER:J = 0x10e0000000fL

.field public static final blacklist NETWORK_EVENT:J = 0x10b00000004L

.field public static final blacklist NETWORK_ID:J = 0x10500000010L

.field public static final blacklist NETWORK_STATS:J = 0x10b00000013L

.field public static final blacklist RA_EVENT:J = 0x10b0000000bL

.field public static final blacklist TIME_MS:J = 0x10300000001L

.field public static final blacklist TRANSPORTS:J = 0x10300000012L

.field public static final blacklist VALIDATION_PROBE_EVENT:J = 0x10b00000008L

.field public static final blacklist WAKEUP_STATS:J = 0x10b00000014L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
