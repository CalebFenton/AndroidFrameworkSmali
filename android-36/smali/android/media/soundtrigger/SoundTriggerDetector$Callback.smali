.class public abstract Landroid/media/soundtrigger/SoundTriggerDetector$Callback;
.super Ljava/lang/Object;
.source "SoundTriggerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onAvailabilityChanged(I)V
.end method

.method public abstract whitelist onDetected(Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;)V
.end method

.method public abstract whitelist onError()V
.end method

.method public abstract whitelist onRecognitionPaused()V
.end method

.method public abstract whitelist onRecognitionResumed()V
.end method
