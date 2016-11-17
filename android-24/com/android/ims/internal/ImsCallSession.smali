.class public Lcom/android/ims/internal/ImsCallSession;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;,
        Lcom/android/ims/internal/ImsCallSession$Listener;,
        Lcom/android/ims/internal/ImsCallSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsCallSession"


# instance fields
.field private mClosed:Z

.field private mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

.field private final miSession:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method static synthetic -get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 3
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    #@0
    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 408
    const/4 v1, 0x0

    #@4
    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@6
    .line 412
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@8
    .line 414
    if-eqz p1, :cond_0

    #@a
    .line 416
    :try_start_0
    new-instance v1, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-direct {v1, p0, v2}, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;)V

    #@10
    invoke-interface {p1, v1}, Lcom/android/ims/internal/IImsCallSession;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 411
    :goto_0
    return-void

    #@14
    .line 420
    :cond_0
    const/4 v1, 0x1

    #@15
    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@17
    goto :goto_0

    #@18
    .line 417
    :catch_0
    move-exception v0

    #@19
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .locals 0
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "listener"    # Lcom/android/ims/internal/ImsCallSession$Listener;

    #@0
    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    #@3
    .line 426
    invoke-virtual {p0, p2}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    #@6
    .line 424
    return-void
.end method


# virtual methods
.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    #@0
    .prologue
    .line 694
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 695
    return-void

    #@5
    .line 699
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 693
    :goto_0
    return-void

    #@b
    .line 700
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 433
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v1, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 434
    return-void

    #@7
    .line 438
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@9
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->close()V

    #@c
    .line 439
    const/4 v1, 0x1

    #@d
    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    :goto_0
    monitor-exit p0

    #@10
    .line 432
    return-void

    #@11
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1

    #@14
    .line 440
    :catch_0
    move-exception v0

    #@15
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 814
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 815
    return-void

    #@5
    .line 819
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 813
    :goto_0
    return-void

    #@b
    .line 820
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 450
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 451
    return-object v2

    #@6
    .line 455
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@8
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 456
    :catch_0
    move-exception v0

    #@e
    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 467
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 468
    return-object v2

    #@6
    .line 472
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@8
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 473
    :catch_0
    move-exception v0

    #@e
    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 484
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 485
    return-object v2

    #@6
    .line 489
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@8
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 490
    :catch_0
    move-exception v0

    #@e
    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 535
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 536
    return-object v2

    #@6
    .line 540
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@8
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 541
    :catch_0
    move-exception v0

    #@e
    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 501
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 502
    return-object v2

    #@6
    .line 506
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@8
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 507
    :catch_0
    move-exception v0

    #@e
    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    #@0
    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 553
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 554
    return v2

    #@6
    .line 558
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@8
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 559
    :catch_0
    move-exception v0

    #@e
    .line 560
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 518
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 519
    return-object v2

    #@6
    .line 523
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@8
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 524
    :catch_0
    move-exception v0

    #@e
    .line 525
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    #@0
    .prologue
    .line 744
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 745
    return-void

    #@5
    .line 749
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 743
    :goto_0
    return-void

    #@b
    .line 750
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 832
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 833
    return-void

    #@5
    .line 837
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 831
    :goto_0
    return-void

    #@b
    .line 838
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isAlive()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 571
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 572
    return v2

    #@6
    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    #@9
    move-result v0

    #@a
    .line 576
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    #@d
    .line 586
    return v2

    #@e
    .line 584
    :pswitch_0
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 576
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isInCall()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 604
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 605
    return v2

    #@6
    .line 609
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@8
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->isInCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 610
    :catch_0
    move-exception v0

    #@e
    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isMultiparty()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 933
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 934
    return v2

    #@6
    .line 938
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@8
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->isMultiparty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 939
    :catch_0
    move-exception v0

    #@e
    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public merge()V
    .locals 2

    #@0
    .prologue
    .line 779
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 780
    return-void

    #@5
    .line 784
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->merge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 778
    :goto_0
    return-void

    #@b
    .line 785
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public reject(I)V
    .locals 2
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 711
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 712
    return-void

    #@5
    .line 716
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 710
    :goto_0
    return-void

    #@b
    .line 717
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 850
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 851
    return-void

    #@5
    .line 855
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 849
    :goto_0
    return-void

    #@b
    .line 856
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    #@0
    .prologue
    .line 762
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 763
    return-void

    #@5
    .line 767
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 761
    :goto_0
    return-void

    #@b
    .line 768
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 869
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 870
    return-void

    #@5
    .line 874
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 868
    :goto_0
    return-void

    #@b
    .line 875
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 917
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 918
    return-void

    #@5
    .line 922
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 916
    :goto_0
    return-void

    #@b
    .line 923
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/ImsCallSession$Listener;

    #@0
    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    #@2
    .line 622
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    #@0
    .prologue
    .line 632
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 633
    return-void

    #@5
    .line 637
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->setMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 631
    :goto_0
    return-void

    #@b
    .line 638
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 654
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 655
    return-void

    #@5
    .line 659
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 653
    :goto_0
    return-void

    #@b
    .line 660
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public start([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 676
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 677
    return-void

    #@5
    .line 681
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 675
    :goto_0
    return-void

    #@b
    .line 682
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 887
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 888
    return-void

    #@5
    .line 892
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->startDtmf(C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 886
    :goto_0
    return-void

    #@b
    .line 893
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    #@0
    .prologue
    .line 901
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 902
    return-void

    #@5
    .line 906
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->stopDtmf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 900
    :goto_0
    return-void

    #@b
    .line 907
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public terminate(I)V
    .locals 2
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 727
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 728
    return-void

    #@5
    .line 732
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 726
    :goto_0
    return-void

    #@b
    .line 733
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1279
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[ImsCallSession objId:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 1280
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    .line 1281
    const-string/jumbo v1, " state:"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 1282
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    #@1b
    move-result v1

    #@1c
    invoke-static {v1}, Lcom/android/ims/internal/ImsCallSession$State;->toString(I)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 1283
    const-string/jumbo v1, " callId:"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 1284
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 1285
    const-string/jumbo v1, "]"

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 1286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    return-object v1
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    #@0
    .prologue
    .line 797
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 798
    return-void

    #@5
    .line 802
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->update(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 796
    :goto_0
    return-void

    #@b
    .line 803
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
