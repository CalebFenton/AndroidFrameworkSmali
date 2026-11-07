.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$RaEvent;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RaEvent"
.end annotation


# static fields
.field public static final blacklist DNSSL_LIFETIME:J = 0x10300000006L

.field public static final blacklist PREFIX_PREFERRED_LIFETIME:J = 0x10300000003L

.field public static final blacklist PREFIX_VALID_LIFETIME:J = 0x10300000002L

.field public static final blacklist RDNSS_LIFETIME:J = 0x10300000005L

.field public static final blacklist ROUTER_LIFETIME:J = 0x10300000001L

.field public static final blacklist ROUTE_INFO_LIFETIME:J = 0x10300000004L


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

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
