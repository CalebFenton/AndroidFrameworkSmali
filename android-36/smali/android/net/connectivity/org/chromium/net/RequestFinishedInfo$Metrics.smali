.class public abstract Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;
.super Ljava/lang/Object;
.source "RequestFinishedInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Metrics"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getConnectEnd()Ljava/util/Date;
.end method

.method public abstract blacklist getConnectStart()Ljava/util/Date;
.end method

.method public abstract blacklist getDnsEnd()Ljava/util/Date;
.end method

.method public abstract blacklist getDnsStart()Ljava/util/Date;
.end method

.method public abstract blacklist getPushEnd()Ljava/util/Date;
.end method

.method public abstract blacklist getPushStart()Ljava/util/Date;
.end method

.method public abstract blacklist getReceivedByteCount()Ljava/lang/Long;
.end method

.method public abstract blacklist getRequestEnd()Ljava/util/Date;
.end method

.method public abstract blacklist getRequestStart()Ljava/util/Date;
.end method

.method public abstract blacklist getResponseStart()Ljava/util/Date;
.end method

.method public abstract blacklist getSendingEnd()Ljava/util/Date;
.end method

.method public abstract blacklist getSendingStart()Ljava/util/Date;
.end method

.method public abstract blacklist getSentByteCount()Ljava/lang/Long;
.end method

.method public abstract blacklist getSocketReused()Z
.end method

.method public abstract blacklist getSslEnd()Ljava/util/Date;
.end method

.method public abstract blacklist getSslStart()Ljava/util/Date;
.end method

.method public abstract blacklist getTotalTimeMs()Ljava/lang/Long;
.end method

.method public abstract blacklist getTtfbMs()Ljava/lang/Long;
.end method
