.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DNSLookupBatch;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DNSLookupBatch"
.end annotation


# static fields
.field public static final blacklist EVENT_TYPES:J = 0x20500000002L

.field public static final blacklist GETADDRINFO_ERRORS:J = 0x20b00000009L

.field public static final blacklist GETADDRINFO_ERROR_COUNT:J = 0x10300000007L

.field public static final blacklist GETADDRINFO_QUERY_COUNT:J = 0x10300000005L

.field public static final blacklist GETHOSTBYNAME_ERRORS:J = 0x20b0000000aL

.field public static final blacklist GETHOSTBYNAME_ERROR_COUNT:J = 0x10300000008L

.field public static final blacklist GETHOSTBYNAME_QUERY_COUNT:J = 0x10300000006L

.field public static final blacklist LATENCIES_MS:J = 0x20500000004L

.field public static final blacklist NETWORK_ID:J = 0x10b00000001L

.field public static final blacklist RETURN_CODES:J = 0x20500000003L


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

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
