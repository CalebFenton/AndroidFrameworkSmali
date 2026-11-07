.class interface abstract Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent$Natives;
.super Ljava/lang/Object;
.source "EarlyTraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/EarlyTraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Natives"
.end annotation


# virtual methods
.method public abstract blacklist recordEarlyAsyncBeginEvent(Ljava/lang/String;JJ)V
.end method

.method public abstract blacklist recordEarlyAsyncEndEvent(JJ)V
.end method

.method public abstract blacklist recordEarlyBeginEvent(Ljava/lang/String;JIJ)V
.end method

.method public abstract blacklist recordEarlyEndEvent(Ljava/lang/String;JIJ)V
.end method

.method public abstract blacklist recordEarlyToplevelBeginEvent(Ljava/lang/String;JIJ)V
.end method

.method public abstract blacklist recordEarlyToplevelEndEvent(Ljava/lang/String;JIJ)V
.end method
