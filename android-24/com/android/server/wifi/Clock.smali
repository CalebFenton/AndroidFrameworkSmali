.class public Lcom/android/server/wifi/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public elapsedRealtime()J
    .locals 2

    #@0
    .prologue
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public elapsedRealtimeNanos()J
    .locals 2

    #@0
    .prologue
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public nanoTime()J
    .locals 2

    #@0
    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
