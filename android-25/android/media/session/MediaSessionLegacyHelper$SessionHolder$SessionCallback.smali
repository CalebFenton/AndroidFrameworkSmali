.class Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;


# direct methods
.method private constructor <init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@0
    .prologue
    .line 480
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@2
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;-><init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;)V

    #@3
    return-void
.end method


# virtual methods
.method public onFastForward()V
    .locals 1

    #@0
    .prologue
    .line 520
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@2
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 521
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@8
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@a
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onFastForward()V

    #@d
    .line 519
    :cond_0
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@2
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 485
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@8
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@a
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onMediaButtonEvent(Landroid/content/Intent;)Z

    #@d
    .line 487
    :cond_0
    const/4 v0, 0x1

    #@e
    return v0
.end method

.method public onPause()V
    .locals 1

    #@0
    .prologue
    .line 499
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@2
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 500
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@8
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@a
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onPause()V

    #@d
    .line 498
    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 1

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@2
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 493
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@8
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@a
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onPlay()V

    #@d
    .line 491
    :cond_0
    return-void
.end method

.method public onRewind()V
    .locals 1

    #@0
    .prologue
    .line 527
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@2
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 528
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@8
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@a
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onRewind()V

    #@d
    .line 526
    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@2
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 542
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@8
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    #@a
    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaSession$Callback;->onSeekTo(J)V

    #@d
    .line 540
    :cond_0
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/Rating;

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@2
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 549
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@8
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    #@a
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession$Callback;->onSetRating(Landroid/media/Rating;)V

    #@d
    .line 547
    :cond_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    #@0
    .prologue
    .line 506
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@2
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 507
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@8
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@a
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onSkipToNext()V

    #@d
    .line 505
    :cond_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    #@0
    .prologue
    .line 513
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@2
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 514
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@8
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@a
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onSkipToPrevious()V

    #@d
    .line 512
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    #@0
    .prologue
    .line 534
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@2
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 535
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;->this$1:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    #@8
    iget-object v0, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@a
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->onStop()V

    #@d
    .line 533
    :cond_0
    return-void
.end method
