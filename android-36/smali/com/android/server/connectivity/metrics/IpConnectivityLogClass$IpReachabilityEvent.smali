.class public final Lcom/android/server/connectivity/metrics/IpConnectivityLogClass$IpReachabilityEvent;
.super Ljava/lang/Object;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IpReachabilityEvent"
.end annotation


# static fields
.field public static final blacklist EVENT_TYPE:J = 0x10500000002L

.field public static final blacklist IF_NAME:J = 0x10900000001L


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

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
