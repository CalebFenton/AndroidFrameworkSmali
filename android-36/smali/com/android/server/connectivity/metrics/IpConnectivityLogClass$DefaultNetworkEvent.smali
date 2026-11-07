.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DefaultNetworkEvent;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultNetworkEvent"
.end annotation


# static fields
.field public static final blacklist DEFAULT_NETWORK_DURATION_MS:J = 0x10300000005L

.field public static final blacklist DISCONNECT:I = 0x3

.field public static final blacklist DUAL:I = 0x3

.field public static final blacklist FINAL_SCORE:J = 0x10300000008L

.field public static final blacklist INITIAL_SCORE:J = 0x10300000007L

.field public static final blacklist INVALIDATION:I = 0x2

.field public static final blacklist IPV4:I = 0x1

.field public static final blacklist IPV6:I = 0x2

.field public static final blacklist IP_SUPPORT:J = 0x10e00000009L

.field public static final blacklist NETWORK_ID:J = 0x10b00000001L

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist NO_DEFAULT_NETWORK_DURATION_MS:J = 0x10300000006L

.field public static final blacklist OUTSCORED:I = 0x1

.field public static final blacklist PREVIOUS_DEFAULT_NETWORK_LINK_LAYER:J = 0x10e0000000aL

.field public static final blacklist PREVIOUS_NETWORK_ID:J = 0x10b00000002L

.field public static final blacklist PREVIOUS_NETWORK_IP_SUPPORT:J = 0x10e00000003L

.field public static final blacklist TRANSPORT_TYPES:J = 0x20500000004L

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist VALIDATION_DURATION_MS:J = 0x1030000000bL


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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
