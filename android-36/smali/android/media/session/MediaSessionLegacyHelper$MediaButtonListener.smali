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
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/app/PendingIntent;Landroid/content/Context;)V
    .registers 3
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "context"    # Landroid/content/Context;

    .line 351
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 352
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    .line 353
    iput-object p2, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mContext:Landroid/content/Context;

    .line 354
    return-void
.end method

.method private greylist-max-o sendKeyEvent(I)V
    .registers 7
    .param p1, "keyCode"    # I

    .line 398
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 399
    .local v0, "ke":Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 402
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 403
    iget-object v3, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v1}, Landroid/media/session/MediaSessionLegacyHelper;->-$$Nest$smsendKeyEvent(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V

    .line 405
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 406
    .end local v0    # "ke":Landroid/view/KeyEvent;
    .local v3, "ke":Landroid/view/KeyEvent;
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 407
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Landroid/media/session/MediaSessionLegacyHelper;->-$$Nest$smsendKeyEvent(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V

    .line 409
    invoke-static {}, Landroid/media/session/MediaSessionLegacyHelper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to pending intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaSessionHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_58
    return-void
.end method


# virtual methods
.method public whitelist onFastForward()V
    .registers 2

    .line 384
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 385
    return-void
.end method

.method public whitelist onMediaButtonEvent(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .line 358
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Landroid/media/session/MediaSessionLegacyHelper;->-$$Nest$smsendKeyEvent(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onPause()V
    .registers 2

    .line 369
    const/16 v0, 0x7f

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 370
    return-void
.end method

.method public whitelist onPlay()V
    .registers 2

    .line 364
    const/16 v0, 0x7e

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 365
    return-void
.end method

.method public whitelist onRewind()V
    .registers 2

    .line 389
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 390
    return-void
.end method

.method public whitelist onSkipToNext()V
    .registers 2

    .line 374
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 375
    return-void
.end method

.method public whitelist onSkipToPrevious()V
    .registers 2

    .line 379
    const/16 v0, 0x58

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 380
    return-void
.end method

.method public whitelist onStop()V
    .registers 2

    .line 394
    const/16 v0, 0x56

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 395
    return-void
.end method
