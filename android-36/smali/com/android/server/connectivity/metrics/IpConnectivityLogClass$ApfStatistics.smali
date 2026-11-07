.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$ApfStatistics;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ApfStatistics"
.end annotation


# static fields
.field public static final blacklist DROPPED_RAS:J = 0x10500000005L

.field public static final blacklist DURATION_MS:J = 0x10300000001L

.field public static final blacklist HARDWARE_COUNTERS:J = 0x20b0000000eL

.field public static final blacklist MATCHING_RAS:J = 0x10500000003L

.field public static final blacklist MAX_PROGRAM_SIZE:J = 0x10500000009L

.field public static final blacklist PARSE_ERRORS:J = 0x10500000007L

.field public static final blacklist PROGRAM_UPDATES:J = 0x10500000008L

.field public static final blacklist PROGRAM_UPDATES_ALL:J = 0x1050000000aL

.field public static final blacklist PROGRAM_UPDATES_ALLOWING_MULTICAST:J = 0x1050000000bL

.field public static final blacklist RECEIVED_RAS:J = 0x10500000002L

.field public static final blacklist TOTAL_PACKET_DROPPED:J = 0x1050000000dL

.field public static final blacklist TOTAL_PACKET_PROCESSED:J = 0x1050000000cL

.field public static final blacklist ZERO_LIFETIME_RAS:J = 0x10500000006L


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

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
