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
.field private mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

.field private mFlushAll:Z

.field private mFlushedObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method static synthetic -wrap0(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 1
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .locals 1
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V
    .locals 0
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->endFlushingSpeechItems(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 462
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    .line 463
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 457
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@8
    .line 459
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    #@f
    .line 462
    return-void
.end method

.method private endFlushingSpeechItems(Ljava/lang/Object;)V
    .locals 2
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 476
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 477
    if-nez p1, :cond_0

    #@5
    .line 478
    const/4 v0, 0x0

    #@6
    :try_start_0
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :goto_0
    monitor-exit v1

    #@9
    .line 475
    return-void

    #@a
    .line 480
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    goto :goto_0

    #@10
    .line 476
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method private declared-synchronized getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 491
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method private isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    .locals 3
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@0
    .prologue
    .line 485
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 486
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    #@9
    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v0

    #@11
    :goto_0
    monitor-exit v1

    #@12
    return v0

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 485
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method private declared-synchronized maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 3
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 501
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 502
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@8
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    if-ne v1, p1, :cond_0

    #@e
    .line 503
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@10
    .line 504
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    const/4 v1, 0x0

    #@11
    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 505
    return-object v0

    #@15
    .end local v0    # "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :cond_0
    monitor-exit p0

    #@16
    .line 508
    return-object v2

    #@17
    :catchall_0
    move-exception v1

    #@18
    monitor-exit p0

    #@19
    throw v1
.end method

.method private declared-synchronized setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    .locals 2
    .param p1, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 495
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@3
    .line 496
    .local v0, "old":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mCurrentSpeechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 497
    return-object v0

    #@7
    .end local v0    # "old":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :catchall_0
    move-exception v1

    #@8
    monitor-exit p0

    #@9
    throw v1
.end method

.method private startFlushingSpeechItems(Ljava/lang/Object;)V
    .locals 2
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 467
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 468
    if-nez p1, :cond_0

    #@5
    .line 469
    const/4 v0, 0x1

    #@6
    :try_start_0
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushAll:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :goto_0
    monitor-exit v1

    #@9
    .line 466
    return-void

    #@a
    .line 471
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->mFlushedObjects:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    goto :goto_0

    #@10
    .line 467
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method


# virtual methods
.method public enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
    .locals 6
    .param p1, "queueMode"    # I
    .param p2, "speechItem"    # Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 532
    const/4 v2, 0x0

    #@3
    .line 533
    .local v2, "utterenceProgress":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    instance-of v3, p2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@5
    if-eqz v3, :cond_0

    #@7
    move-object v2, p2

    #@8
    .line 534
    check-cast v2, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@a
    .line 537
    .end local v2    # "utterenceProgress":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    :cond_0
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->isValid()Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_2

    #@10
    .line 538
    if-eqz v2, :cond_1

    #@12
    .line 540
    const/4 v3, -0x8

    #@13
    .line 539
    invoke-interface {v2, v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    #@16
    .line 542
    :cond_1
    return v5

    #@17
    .line 545
    :cond_2
    if-nez p1, :cond_4

    #@19
    .line 546
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {p0, v3}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    #@20
    .line 550
    :cond_3
    :goto_0
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;

    #@22
    invoke-direct {v1, p0, p2}, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V

    #@25
    .line 562
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@28
    move-result-object v0

    #@29
    .line 568
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallerIdentity()Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2f
    .line 570
    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_5

    #@35
    .line 571
    return v4

    #@36
    .line 547
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_4
    const/4 v3, 0x2

    #@37
    if-ne p1, v3, :cond_3

    #@39
    .line 548
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopAll()I

    #@3c
    goto :goto_0

    #@3d
    .line 573
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    :cond_5
    const-string/jumbo v3, "TextToSpeechService"

    #@40
    const-string/jumbo v4, "SynthThread has quit"

    #@43
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 574
    if-eqz v2, :cond_6

    #@48
    .line 575
    const/4 v3, -0x4

    #@49
    invoke-interface {v2, v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    #@4c
    .line 577
    :cond_6
    return v5
.end method

.method public isSpeaking()Z
    .locals 1

    #@0
    .prologue
    .line 512
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getCurrentSpeechItem()Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public quit()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 517
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->getLooper()Landroid/os/Looper;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    #@8
    .line 519
    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@b
    move-result-object v0

    #@c
    .line 520
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_0

    #@e
    .line 521
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    #@11
    .line 515
    :cond_0
    return-void
.end method

.method public stopAll()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 623
    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    #@4
    .line 626
    invoke-direct {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@7
    move-result-object v0

    #@8
    .line 627
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_0

    #@a
    .line 628
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    #@d
    .line 631
    :cond_0
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@f
    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->-get0(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Landroid/speech/tts/AudioPlaybackHandler;->stop()V

    #@16
    .line 634
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;

    #@18
    invoke-direct {v1, p0}, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;)V

    #@1b
    .line 640
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    #@22
    .line 643
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method public stopForApp(Ljava/lang/Object;)I
    .locals 3
    .param p1, "callerIdentity"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 588
    if-nez p1, :cond_0

    #@2
    .line 589
    const/4 v2, -0x1

    #@3
    return v2

    #@4
    .line 593
    :cond_0
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->startFlushingSpeechItems(Ljava/lang/Object;)V

    #@7
    .line 602
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->maybeRemoveCurrentSpeechItem(Ljava/lang/Object;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    #@a
    move-result-object v0

    #@b
    .line 603
    .local v0, "current":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    if-eqz v0, :cond_1

    #@d
    .line 604
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    #@10
    .line 608
    :cond_1
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@12
    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->-get0(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Landroid/speech/tts/AudioPlaybackHandler;->stopForApp(Ljava/lang/Object;)V

    #@19
    .line 611
    new-instance v1, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;

    #@1b
    invoke-direct {v1, p0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;-><init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V

    #@1e
    .line 617
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {p0, v2}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->sendMessage(Landroid/os/Message;)Z

    #@25
    .line 618
    const/4 v2, 0x0

    #@26
    return v2
.end method
