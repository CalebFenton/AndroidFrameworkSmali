.class public abstract Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
.super Ljava/lang/Object;
.source "AlwaysOnHotwordDetector.java"

# interfaces
.implements Landroid/service/voice/HotwordDetector$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onAvailabilityChanged(I)V
.end method

.method public abstract whitelist onDetected(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V
.end method

.method public abstract whitelist onError()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onFailure(Landroid/service/voice/SoundTriggerFailure;)V
    .registers 2
    .param p1, "soundTriggerFailure"    # Landroid/service/voice/SoundTriggerFailure;

    .line 856
    invoke-virtual {p0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onError()V

    .line 857
    return-void
.end method

.method public whitelist onHotwordDetectionServiceInitialized(I)V
    .registers 2
    .param p1, "status"    # I

    .line 871
    return-void
.end method

.method public whitelist onHotwordDetectionServiceRestarted()V
    .registers 1

    .line 875
    return-void
.end method

.method public abstract whitelist onRecognitionPaused()V
.end method

.method public abstract whitelist onRecognitionResumed()V
.end method

.method public whitelist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 2
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;

    .line 867
    return-void
.end method
