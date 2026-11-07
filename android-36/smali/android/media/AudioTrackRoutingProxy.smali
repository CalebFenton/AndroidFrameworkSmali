.class Landroid/media/AudioTrackRoutingProxy;
.super Landroid/media/AudioTrack;
.source "AudioTrackRoutingProxy.java"


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 3
    .param p1, "nativeTrackInJavaObj"    # J

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;-><init>(J)V

    .line 31
    return-void
.end method
