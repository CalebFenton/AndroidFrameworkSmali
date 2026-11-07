.class public interface abstract Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;
.super Ljava/lang/Object;
.source "LoudnessCodecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/LoudnessCodecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLoudnessCodecUpdateListener"
.end annotation


# virtual methods
.method public whitelist onLoudnessCodecUpdate(Landroid/media/MediaCodec;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "codecValues"    # Landroid/os/Bundle;

    .line 84
    return-object p2
.end method
