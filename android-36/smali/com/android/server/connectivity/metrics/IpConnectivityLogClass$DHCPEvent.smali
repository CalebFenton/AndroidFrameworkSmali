.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$DHCPEvent;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DHCPEvent"
.end annotation


# static fields
.field public static final blacklist DURATION_MS:J = 0x10500000004L

.field public static final blacklist ERROR_CODE:J = 0x10500000003L

.field public static final blacklist IF_NAME:J = 0x10900000001L

.field public static final blacklist STATE_TRANSITION:J = 0x10900000002L


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

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
