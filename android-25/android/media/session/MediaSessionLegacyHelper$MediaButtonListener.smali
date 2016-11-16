.class final Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionLegacyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaButtonListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/content/Context;)V
    .locals 0
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 389
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    #@3
    .line 390
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    #@5
    .line 391
    iput-object p2, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mContext:Landroid/content/Context;

    #@7
    .line 389
    return-void
.end method

.method private sendKeyEvent(I)V
    .locals 5
    .param p1, "keyCode"    # I

    #@0
    .prologue
    .line 436
    new-instance v1, Landroid/view/KeyEvent;

    #@2
    const/4 v2, 0x0

    #@3
    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    #@6
    .line 437
    .local v1, "ke":Landroid/view/KeyEvent;
    new-instance v0, Landroid/content/Intent;

    #@8
    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    #@b
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@e
    .line 438
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    #@10
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@13
    .line 440
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    #@16
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@19
    .line 441
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    #@1b
    iget-object v3, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mContext:Landroid/content/Context;

    #@1d
    invoke-static {v2, v3, v0}, Landroid/media/session/MediaSessionLegacyHelper;->-wrap0(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V

    #@20
    .line 443
    new-instance v1, Landroid/view/KeyEvent;

    #@22
    .end local v1    # "ke":Landroid/view/KeyEvent;
    const/4 v2, 0x1

    #@23
    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    #@26
    .line 444
    .restart local v1    # "ke":Landroid/view/KeyEvent;
    const-string/jumbo v2, "android.intent.extra.KEY_EVENT"

    #@29
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@2c
    .line 445
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    #@2e
    iget-object v3, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mContext:Landroid/content/Context;

    #@30
    invoke-static {v2, v3, v0}, Landroid/media/session/MediaSessionLegacyHelper;->-wrap0(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V

    #@33
    .line 447
    invoke-static {}, Landroid/media/session/MediaSessionLegacyHelper;->-get0()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_0

    #@39
    .line 448
    const-string/jumbo v2, "MediaSessionHelper"

    #@3c
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v4, "Sent "

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    const-string/jumbo v4, " to pending intent "

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    iget-object v4, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 435
    :cond_0
    return-void
.end method


# virtual methods
.method public onFastForward()V
    .locals 1

    #@0
    .prologue
    .line 422
    const/16 v0, 0x5a

    #@2
    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    #@5
    .line 421
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    #@2
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v0, v1, p1}, Landroid/media/session/MediaSessionLegacyHelper;->-wrap0(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V

    #@7
    .line 397
    const/4 v0, 0x1

    #@8
    return v0
.end method

.method public onPause()V
    .locals 1

    #@0
    .prologue
    .line 407
    const/16 v0, 0x7f

    #@2
    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    #@5
    .line 406
    return-void
.end method

.method public onPlay()V
    .locals 1

    #@0
    .prologue
    .line 402
    const/16 v0, 0x7e

    #@2
    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    #@5
    .line 401
    return-void
.end method

.method public onRewind()V
    .locals 1

    #@0
    .prologue
    .line 427
    const/16 v0, 0x59

    #@2
    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    #@5
    .line 426
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    #@0
    .prologue
    .line 412
    const/16 v0, 0x57

    #@2
    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    #@5
    .line 411
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    #@0
    .prologue
    .line 417
    const/16 v0, 0x58

    #@2
    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    #@5
    .line 416
    return-void
.end method

.method public onStop()V
    .locals 1

    #@0
    .prologue
    .line 432
    const/16 v0, 0x56

    #@2
    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    #@5
    .line 431
    return-void
.end method
