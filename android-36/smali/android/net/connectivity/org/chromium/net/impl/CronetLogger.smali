.class public abstract Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist generateId()J
.end method

.method public abstract blacklist logCronetEngineBuilderInitializedInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;)V
.end method

.method public abstract blacklist logCronetEngineCreation(JLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)V
.end method

.method public abstract blacklist logCronetInitializedInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;)V
.end method

.method public abstract blacklist logCronetTrafficInfo(JLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;)V
.end method
