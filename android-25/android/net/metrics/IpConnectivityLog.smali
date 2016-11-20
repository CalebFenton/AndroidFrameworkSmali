.class public Landroid/net/metrics/IpConnectivityLog;
.super Ljava/lang/Object;
.source "IpConnectivityLog.java"


# static fields
.field private static final DBG:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "connmetrics"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Landroid/net/IIpConnectivityMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 32
    const-class v0, Landroid/net/metrics/IpConnectivityLog;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/net/metrics/IpConnectivityLog;->TAG:Ljava/lang/String;

    #@8
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/net/IIpConnectivityMetrics;)V
    .locals 0
    .param p1, "service"    # Landroid/net/IIpConnectivityMetrics;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    #@5
    .line 43
    return-void
.end method

.method private checkLoggerService()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 48
    iget-object v1, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 49
    return v2

    #@6
    .line 52
    :cond_0
    const-string/jumbo v1, "connmetrics"

    #@9
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@c
    move-result-object v1

    #@d
    invoke-static {v1}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    #@10
    move-result-object v0

    #@11
    .line 53
    .local v0, "service":Landroid/net/IIpConnectivityMetrics;
    if-nez v0, :cond_1

    #@13
    .line 54
    const/4 v1, 0x0

    #@14
    return v1

    #@15
    .line 58
    :cond_1
    iput-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    #@17
    .line 59
    return v2
.end method


# virtual methods
.method public log(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "event"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1, p1}, Landroid/net/metrics/IpConnectivityLog;->log(JLandroid/os/Parcelable;)Z

    #@7
    .line 85
    return-void
.end method

.method public log(JLandroid/os/Parcelable;)Z
    .locals 11
    .param p1, "timestamp"    # J
    .param p3, "data"    # Landroid/os/Parcelable;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 69
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityLog;->checkLoggerService()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 73
    return v8

    #@8
    .line 77
    :cond_0
    :try_start_0
    iget-object v9, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    #@a
    new-instance v1, Landroid/net/ConnectivityMetricsEvent;

    #@c
    const/4 v4, 0x0

    #@d
    const/4 v5, 0x0

    #@e
    move-wide v2, p1

    #@f
    move-object v6, p3

    #@10
    invoke-direct/range {v1 .. v6}, Landroid/net/ConnectivityMetricsEvent;-><init>(JIILandroid/os/Parcelable;)V

    #@13
    invoke-interface {v9, v1}, Landroid/net/IIpConnectivityMetrics;->logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result v7

    #@17
    .line 78
    .local v7, "left":I
    if-ltz v7, :cond_1

    #@19
    const/4 v1, 0x1

    #@1a
    :goto_0
    return v1

    #@1b
    :cond_1
    move v1, v8

    #@1c
    goto :goto_0

    #@1d
    .line 79
    .end local v7    # "left":I
    :catch_0
    move-exception v0

    #@1e
    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/net/metrics/IpConnectivityLog;->TAG:Ljava/lang/String;

    #@20
    const-string/jumbo v2, "Error logging event"

    #@23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 81
    return v8
.end method
