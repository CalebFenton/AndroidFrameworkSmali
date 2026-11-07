.class Landroid/speech/tts/TextToSpeechService$SynthHandler;
.super Landroid/os/Handler;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthHandler"
.end annotation


# instance fields
.field private greylist-max-o mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

.field private greylist-max-o mFlushAll:I

.field private greylist-max-o mFlushedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mendFlushingSpeechItems(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->endFlushingSpeechItems(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SynthHandler;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 473
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 474
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 459
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 470
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    .line 471
    const/4 p1, 0x0

    iput p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    .line 475
    return-void
.end method

.method private greylist-max-o endFlushingSpeechItems(Ljava/lang/Object;)V
    .registers 4
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v0

    .line 488
    if-nez p1, :cond_c

    .line 489
    :try_start_5
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    goto :goto_11

    .line 491
    :cond_c
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 493
    :goto_11
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private declared-synchronized greylist-max-o getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 2

    monitor-enter p0

    .line 502
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 502
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SynthHandler;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method private greylist-max-o isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .registers 5
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 496
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v0

    .line 497
    :try_start_3
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    if-gtz v1, :cond_16

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v1, 0x1

    :goto_17
    monitor-exit v0

    return v1

    .line 498
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private declared-synchronized greylist-max-o maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 4
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    monitor-enter p0

    .line 530
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 531
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_14

    .line 532
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 533
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 534
    monitor-exit p0

    return-object v0

    .line 537
    .end local v0    # "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SynthHandler;
    :cond_14
    monitor-exit p0

    return-object v1

    .line 529
    .end local p1    # "callerIdentity":Ljava/lang/Object;
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private declared-synchronized greylist-max-o removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .registers 3

    monitor-enter p0

    .line 524
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 525
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 526
    monitor-exit p0

    return-object v0

    .line 523
    .end local v0    # "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SynthHandler;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private declared-synchronized greylist-max-o setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .registers 3
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    monitor-enter p0

    .line 516
    if-eqz p1, :cond_c

    :try_start_3
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_11

    if-eqz v0, :cond_c

    .line 517
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 519
    .end local p0    # "this":Landroid/speech/tts/TextToSpeechService$SynthHandler;
    :cond_c
    :try_start_c
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_11

    .line 520
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 515
    .end local p1    # "speechItem":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method private greylist-max-o startFlushingSpeechItems(Ljava/lang/Object;)V
    .registers 4
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    monitor-enter v0

    .line 479
    if-nez p1, :cond_c

    .line 480
    :try_start_5
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:I

    goto :goto_11

    .line 482
    :cond_c
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :goto_11
    monitor-exit v0

    .line 485
    return-void

    .line 484
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method public greylist-max-o enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
    .registers 9
    .param p1, "queueMode"    # I
    .param p2, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "utterenceProgress":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    instance-of v1, p2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    if-eqz v1, :cond_8

    .line 563
    move-object v0, p2

    check-cast v0, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 566
    :cond_8
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isValid()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_16

    .line 567
    if-eqz v0, :cond_15

    .line 568
    const/4 v1, -0x8

    invoke-interface {v0, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 571
    :cond_15
    return v2

    .line 574
    :cond_16
    if-nez p1, :cond_20

    .line 575
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    goto :goto_26

    .line 576
    :cond_20
    const/4 v1, 0x2

    if-ne p1, v1, :cond_26

    .line 577
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopAll()I

    .line 579
    :cond_26
    :goto_26
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;

    invoke-direct {v1, p0, p2}, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V

    .line 591
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v3

    .line 597
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 599
    invoke-virtual {p0, v3}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 600
    const/4 v2, 0x0

    return v2

    .line 602
    :cond_3d
    const-string v4, "TextToSpeechService"

    const-string v5, "SynthThread has quit"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    if-eqz v0, :cond_4a

    .line 604
    const/4 v4, -0x4

    invoke-interface {v0, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 606
    :cond_4a
    return v2
.end method

.method public greylist-max-o isSpeaking()Z
    .registers 2

    .line 541
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o quit()V
    .registers 2

    .line 546
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 548
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 549
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_10

    .line 550
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 553
    :cond_10
    return-void
.end method

.method public greylist-max-o stopAll()I
    .registers 4

    .line 653
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    .line 656
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->removeCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 657
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_d

    .line 658
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 661
    :cond_d
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmAudioPlaybackHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/AudioPlaybackHandler;->stop()V

    .line 664
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;

    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;)V

    .line 670
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 673
    const/4 v2, 0x0

    return v2
.end method

.method public greylist-max-o stopForApp(Ljava/lang/Object;)I
    .registers 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    .line 617
    if-nez p1, :cond_4

    .line 618
    const/4 v0, -0x1

    return v0

    .line 623
    :cond_4
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    .line 632
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    move-result-object v0

    .line 633
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_10

    .line 634
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 638
    :cond_10
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmAudioPlaybackHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/speech/tts/AudioPlaybackHandler;->stopForApp(Ljava/lang/Object;)V

    .line 641
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;

    invoke-direct {v1, p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V

    .line 647
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 648
    const/4 v2, 0x0

    return v2
.end method
