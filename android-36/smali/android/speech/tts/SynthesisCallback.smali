.class public interface abstract Landroid/speech/tts/SynthesisCallback;
.super Ljava/lang/Object;
.source "SynthesisCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/SynthesisCallback$SupportedAudioFormat;
    }
.end annotation


# virtual methods
.method public abstract whitelist audioAvailable([BII)I
.end method

.method public abstract whitelist done()I
.end method

.method public abstract whitelist error()V
.end method

.method public abstract whitelist error(I)V
.end method

.method public abstract whitelist getMaxBufferSize()I
.end method

.method public abstract whitelist hasFinished()Z
.end method

.method public abstract whitelist hasStarted()Z
.end method

.method public whitelist rangeStart(III)V
    .registers 4
    .param p1, "markerInFrames"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 169
    return-void
.end method

.method public abstract whitelist start(III)I
.end method
