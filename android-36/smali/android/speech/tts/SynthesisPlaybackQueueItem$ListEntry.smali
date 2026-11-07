.class final Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;
.super Ljava/lang/Object;
.source "SynthesisPlaybackQueueItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/SynthesisPlaybackQueueItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListEntry"
.end annotation


# instance fields
.field final blacklist mBytes:[B


# direct methods
.method constructor blacklist <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;->mBytes:[B

    .line 328
    return-void
.end method
