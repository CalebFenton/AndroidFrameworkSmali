.class public interface abstract Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;
.super Ljava/lang/Object;
.source "SoundTriggerInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GlobalCallback"
.end annotation


# virtual methods
.method public blacklist onClientAttached()V
    .registers 1

    .line 107
    return-void
.end method

.method public blacklist onClientDetached()V
    .registers 1

    .line 113
    return-void
.end method

.method public blacklist onFrameworkDetached()V
    .registers 1

    .line 101
    return-void
.end method

.method public abstract blacklist onModelLoaded(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V
.end method

.method public blacklist onPreempted()V
    .registers 1

    .line 89
    return-void
.end method

.method public blacklist onRestarted()V
    .registers 1

    .line 95
    return-void
.end method
