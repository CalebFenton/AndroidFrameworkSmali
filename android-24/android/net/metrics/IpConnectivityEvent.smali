.class public abstract Landroid/net/metrics/IpConnectivityEvent;
.super Ljava/lang/Object;
.source "IpConnectivityEvent.java"


# static fields
.field private static final COMPONENT_TAG:I

.field private static final sMetricsLogger:Landroid/net/ConnectivityMetricsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 29
    new-instance v0, Landroid/net/ConnectivityMetricsLogger;

    #@2
    invoke-direct {v0}, Landroid/net/ConnectivityMetricsLogger;-><init>()V

    #@5
    sput-object v0, Landroid/net/metrics/IpConnectivityEvent;->sMetricsLogger:Landroid/net/ConnectivityMetricsLogger;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static logEvent(Landroid/net/metrics/IpConnectivityEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/net/metrics/IpConnectivityEvent;",
            ":",
            "Landroid/os/Parcelable;",
            ">(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "event":Landroid/net/metrics/IpConnectivityEvent;, "TT;"
    const/4 v4, 0x0

    #@1
    .line 33
    sget-object v1, Landroid/net/metrics/IpConnectivityEvent;->sMetricsLogger:Landroid/net/ConnectivityMetricsLogger;

    #@3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v2

    #@7
    move-object v6, p0

    #@8
    check-cast v6, Landroid/os/Parcelable;

    #@a
    move v5, v4

    #@b
    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityMetricsLogger;->logEvent(JIILandroid/os/Parcelable;)V

    #@e
    .line 31
    return-void
.end method
