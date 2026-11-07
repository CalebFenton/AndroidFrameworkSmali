.class public final Landroid/net/connectivity/org/chromium/net/impl/NoOpLogger;
.super Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
.source "NoOpLogger.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist generateId()J
    .registers 3

    .line 11
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist logCronetEngineBuilderInitializedInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;

    .line 15
    return-void
.end method

.method public blacklist logCronetEngineCreation(JLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)V
    .registers 6
    .param p1, "cronetEngineId"    # J
    .param p3, "engineBuilderInfo"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;
    .param p4, "version"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;
    .param p5, "source"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 25
    return-void
.end method

.method public blacklist logCronetInitializedInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    .line 18
    return-void
.end method

.method public blacklist logCronetTrafficInfo(JLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;)V
    .registers 4
    .param p1, "cronetEngineId"    # J
    .param p3, "trafficInfo"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;

    .line 28
    return-void
.end method
