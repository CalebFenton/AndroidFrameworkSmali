.class public abstract Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;
.super Lcom/android/internal/telephony/data/DataCallback;
.source "TelephonyNetworkAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TelephonyNetworkAgentCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onQosCallbackRegistered(ILandroid/net/QosFilter;)V
    .registers 3

    .line 0
    return-void
.end method

.method public blacklist onQosCallbackUnregistered(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onStartSocketKeepalive(ILjava/time/Duration;Landroid/net/KeepalivePacketData;)V
    .registers 4

    .line 0
    return-void
.end method

.method public blacklist onStopSocketKeepalive(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public blacklist onValidationStatus(ILandroid/net/Uri;)V
    .registers 3

    .line 0
    return-void
.end method
