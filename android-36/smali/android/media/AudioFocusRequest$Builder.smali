.class public final Landroid/media/AudioFocusRequest$Builder;
.super Ljava/lang/Object;
.source "AudioFocusRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFocusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mA11yForceDucking:Z

.field private greylist-max-o mAttr:Landroid/media/AudioAttributes;

.field private greylist-max-o mDelayedFocus:Z

.field private greylist-max-o mFocusGain:I

.field private greylist-max-o mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private greylist-max-o mFocusLocked:Z

.field private greylist-max-o mListenerHandler:Landroid/os/Handler;

.field private greylist-max-o mPausesOnDuck:Z


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "focusGain"    # I

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    invoke-static {}, Landroid/media/AudioFocusRequest;->-$$Nest$sfgetFOCUS_DEFAULT_ATTR()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    .line 356
    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    .line 357
    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusLocked:Z

    .line 358
    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mA11yForceDucking:Z

    .line 373
    invoke-virtual {p0, p1}, Landroid/media/AudioFocusRequest$Builder;->setFocusGain(I)Landroid/media/AudioFocusRequest$Builder;

    .line 374
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioFocusRequest;)V
    .registers 4
    .param p1, "requestToCopy"    # Landroid/media/AudioFocusRequest;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    invoke-static {}, Landroid/media/AudioFocusRequest;->-$$Nest$sfgetFOCUS_DEFAULT_ATTR()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    .line 356
    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    .line 357
    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusLocked:Z

    .line 358
    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mA11yForceDucking:Z

    .line 384
    if-eqz p1, :cond_39

    .line 387
    invoke-static {p1}, Landroid/media/AudioFocusRequest;->-$$Nest$fgetmAttr(Landroid/media/AudioFocusRequest;)Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    .line 388
    invoke-static {p1}, Landroid/media/AudioFocusRequest;->-$$Nest$fgetmFocusListener(Landroid/media/AudioFocusRequest;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 389
    invoke-static {p1}, Landroid/media/AudioFocusRequest;->-$$Nest$fgetmListenerHandler(Landroid/media/AudioFocusRequest;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    .line 390
    invoke-static {p1}, Landroid/media/AudioFocusRequest;->-$$Nest$fgetmFocusGain(Landroid/media/AudioFocusRequest;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusGain:I

    .line 391
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->willPauseWhenDucked()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    .line 392
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->acceptsDelayedFocusGain()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    .line 393
    return-void

    .line 385
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/media/AudioFocusRequest;
    .registers 10

    .line 561
    iget-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    if-eqz v0, :cond_c

    :cond_8
    iget-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_5e

    .line 565
    :cond_c
    iget-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mA11yForceDucking:Z

    if-eqz v0, :cond_3b

    .line 567
    iget-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 568
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "extraInfo":Landroid/os/Bundle;
    goto :goto_24

    .line 570
    .end local v0    # "extraInfo":Landroid/os/Bundle;
    :cond_1e
    iget-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 573
    .restart local v0    # "extraInfo":Landroid/os/Bundle;
    :goto_24
    const-string v1, "a11y_force_ducking"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 574
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    .line 576
    .end local v0    # "extraInfo":Landroid/os/Bundle;
    :cond_3b
    nop

    .line 577
    iget-boolean v0, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    const/4 v1, 0x0

    or-int/2addr v0, v1

    .line 578
    iget-boolean v2, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    if-eqz v2, :cond_46

    const/4 v2, 0x2

    goto :goto_47

    :cond_46
    move v2, v1

    :goto_47
    or-int/2addr v0, v2

    .line 579
    iget-boolean v2, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusLocked:Z

    if-eqz v2, :cond_4d

    const/4 v1, 0x4

    :cond_4d
    or-int v7, v0, v1

    .line 580
    .local v7, "flags":I
    new-instance v2, Landroid/media/AudioFocusRequest;

    iget-object v3, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v4, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    iget v6, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusGain:I

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioFocusRequest;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;IILandroid/media/AudioFocusRequest-IA;)V

    return-object v2

    .line 562
    .end local v7    # "flags":I
    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t use delayed focus or pause on duck without a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;
    .registers 2
    .param p1, "acceptsDelayedFocusGain"    # Z

    .line 517
    iput-boolean p1, p0, Landroid/media/AudioFocusRequest$Builder;->mDelayedFocus:Z

    .line 518
    return-object p0
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;
    .registers 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 484
    if-eqz p1, :cond_5

    .line 487
    iput-object p1, p0, Landroid/media/AudioFocusRequest$Builder;->mAttr:Landroid/media/AudioAttributes;

    .line 488
    return-object p0

    .line 485
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFocusGain(I)Landroid/media/AudioFocusRequest$Builder;
    .registers 5
    .param p1, "focusGain"    # I

    .line 404
    invoke-static {p1}, Landroid/media/AudioFocusRequest;->isValidFocusGain(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 407
    iput p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusGain:I

    .line 408
    return-object p0

    .line 405
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal audio focus gain type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setForceDucking(Z)Landroid/media/AudioFocusRequest$Builder;
    .registers 2
    .param p1, "forceDucking"    # Z

    .line 548
    iput-boolean p1, p0, Landroid/media/AudioFocusRequest$Builder;->mA11yForceDucking:Z

    .line 549
    return-object p0
.end method

.method public whitelist setLocksFocus(Z)Landroid/media/AudioFocusRequest$Builder;
    .registers 2
    .param p1, "focusLocked"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 533
    iput-boolean p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusLocked:Z

    .line 534
    return-object p0
.end method

.method public whitelist setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 426
    if-eqz p1, :cond_8

    .line 429
    iput-object p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    .line 431
    return-object p0

    .line 427
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null focus listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;
    .registers 5
    .param p1, "listener"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 462
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 465
    iput-object p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 466
    iput-object p2, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    .line 467
    return-object p0

    .line 463
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null focus listener or handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o setOnAudioFocusChangeListenerInt(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;
    .registers 3
    .param p1, "listener"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 443
    iput-object p1, p0, Landroid/media/AudioFocusRequest$Builder;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 444
    iput-object p2, p0, Landroid/media/AudioFocusRequest$Builder;->mListenerHandler:Landroid/os/Handler;

    .line 445
    return-object p0
.end method

.method public whitelist setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;
    .registers 2
    .param p1, "pauseOnDuck"    # Z

    .line 502
    iput-boolean p1, p0, Landroid/media/AudioFocusRequest$Builder;->mPausesOnDuck:Z

    .line 503
    return-object p0
.end method
