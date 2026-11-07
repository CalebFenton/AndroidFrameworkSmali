.class interface abstract Landroid/net/connectivity/org/chromium/base/TimeUtils$FakeClock;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/TimeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "FakeClock"
.end annotation


# virtual methods
.method public abstract blacklist currentThreadTimeMillis()J
.end method

.method public abstract blacklist currentTimeMillis()J
.end method

.method public abstract blacklist elapsedRealtimeNanos()J
.end method

.method public abstract blacklist uptimeMillis()J
.end method
