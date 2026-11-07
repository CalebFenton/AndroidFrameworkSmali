.class Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;
.super Ljava/lang/Object;
.source "SynthesisPlaybackQueueItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/SynthesisPlaybackQueueItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressMarker"
.end annotation


# instance fields
.field public final blacklist end:I

.field public final blacklist frames:I

.field public final blacklist start:I


# direct methods
.method public constructor blacklist <init>(Landroid/speech/tts/SynthesisPlaybackQueueItem;III)V
    .registers 5
    .param p2, "frames"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput p2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    .line 221
    iput p3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->start:I

    .line 222
    iput p4, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->end:I

    .line 223
    return-void
.end method
