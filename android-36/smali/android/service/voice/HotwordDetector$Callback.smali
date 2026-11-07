.class public interface abstract Landroid/service/voice/HotwordDetector$Callback;
.super Ljava/lang/Object;
.source "HotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract whitelist onDetected(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V
.end method

.method public abstract whitelist onError()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 2
    .param p1, "hotwordDetectionServiceFailure"    # Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 210
    invoke-interface {p0}, Landroid/service/voice/HotwordDetector$Callback;->onError()V

    .line 211
    return-void
.end method

.method public abstract whitelist onHotwordDetectionServiceInitialized(I)V
.end method

.method public abstract whitelist onHotwordDetectionServiceRestarted()V
.end method

.method public abstract whitelist onRecognitionPaused()V
.end method

.method public abstract whitelist onRecognitionResumed()V
.end method

.method public abstract whitelist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
.end method

.method public whitelist onUnknownFailure(Ljava/lang/String;)V
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 220
    invoke-interface {p0}, Landroid/service/voice/HotwordDetector$Callback;->onError()V

    .line 221
    return-void
.end method
