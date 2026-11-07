.class Landroid/media/AudioRecordRoutingProxy;
.super Landroid/media/AudioRecord;
.source "AudioRecordRoutingProxy.java"


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 3
    .param p1, "nativeRecordInJavaObj"    # J

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;-><init>(J)V

    .line 31
    return-void
.end method
