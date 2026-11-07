.class public interface abstract Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameTrackerListener"
.end annotation


# virtual methods
.method public abstract blacklist onCujEvents(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;I)V
.end method

.method public abstract blacklist triggerPerfetto(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
.end method
