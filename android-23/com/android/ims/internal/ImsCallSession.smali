.class public Lcom/android/ims/internal/ImsCallSession;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsCallSession$State;,
        Lcom/android/ims/internal/ImsCallSession$Listener;,
        Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;
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
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 398
    const/4 v1, 0x0

    #@4
    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@6
    .line 402
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@8
    .line 404
    if-eqz p1, :cond_0

    #@a
    .line 406
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
    .line 401
    :goto_0
    return-void

    #@14
    .line 410
    :cond_0
    const/4 v1, 0x1

    #@15
    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@17
    goto :goto_0

    #@18
    .line 407
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
    .line 415
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    #@3
    .line 416
    invoke-virtual {p0, p2}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    #@6
    .line 414
    return-void
.end method


# virtual methods
.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    #@0
    .prologue
    .line 684
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 685
    return-void

    #@5
    .line 689
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 683
    :goto_0
    return-void

    #@b
    .line 690
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
    .line 423
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v1, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 424
    return-void

    #@7
    .line 428
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@9
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->close()V

    #@c
    .line 429
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
    .line 422
    return-void

    #@11
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1

    #@14
    .line 430
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
    .line 804
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 805
    return-void

    #@5
    .line 809
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 803
    :goto_0
    return-void

    #@b
    .line 810
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
    .line 440
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 441
    return-object v2

    #@6
    .line 445
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
    .line 446
    :catch_0
    move-exception v0

    #@e
    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 457
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 458
    return-object v2

    #@6
    .line 462
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
    .line 463
    :catch_0
    move-exception v0

    #@e
    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 474
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 475
    return-object v2

    #@6
    .line 479
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
    .line 480
    :catch_0
    move-exception v0

    #@e
    .line 481
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
    .line 525
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 526
    return-object v2

    #@6
    .line 530
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
    .line 531
    :catch_0
    move-exception v0

    #@e
    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 491
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 492
    return-object v2

    #@6
    .line 496
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
    .line 497
    :catch_0
    move-exception v0

    #@e
    .line 498
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    #@0
    .prologue
    .line 585
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
    .line 543
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 544
    return v2

    #@6
    .line 548
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
    .line 549
    :catch_0
    move-exception v0

    #@e
    .line 550
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 508
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 509
    return-object v2

    #@6
    .line 513
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
    .line 514
    :catch_0
    move-exception v0

    #@e
    .line 515
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    #@0
    .prologue
    .line 734
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 735
    return-void

    #@5
    .line 739
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 733
    :goto_0
    return-void

    #@b
    .line 740
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
    .line 822
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 823
    return-void

    #@5
    .line 827
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 821
    :goto_0
    return-void

    #@b
    .line 828
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
    .line 561
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 562
    return v2

    #@6
    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    #@9
    move-result v0

    #@a
    .line 566
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    #@d
    .line 576
    return v2

    #@e
    .line 574
    :pswitch_0
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 566
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
    .line 594
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 595
    return v2

    #@6
    .line 599
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
    .line 600
    :catch_0
    move-exception v0

    #@e
    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isMultiparty()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 923
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 924
    return v2

    #@6
    .line 928
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
    .line 929
    :catch_0
    move-exception v0

    #@e
    .line 930
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public merge()V
    .locals 2

    #@0
    .prologue
    .line 769
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 770
    return-void

    #@5
    .line 774
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->merge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 768
    :goto_0
    return-void

    #@b
    .line 775
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
    .line 701
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 702
    return-void

    #@5
    .line 706
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 700
    :goto_0
    return-void

    #@b
    .line 707
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
    .line 840
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 841
    return-void

    #@5
    .line 845
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 839
    :goto_0
    return-void

    #@b
    .line 846
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
    .line 752
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 753
    return-void

    #@5
    .line 757
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 751
    :goto_0
    return-void

    #@b
    .line 758
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
    .line 859
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 860
    return-void

    #@5
    .line 864
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 858
    :goto_0
    return-void

    #@b
    .line 865
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
    .line 907
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 908
    return-void

    #@5
    .line 912
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 906
    :goto_0
    return-void

    #@b
    .line 913
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
    .line 613
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    #@2
    .line 612
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    #@0
    .prologue
    .line 622
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 623
    return-void

    #@5
    .line 627
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->setMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 621
    :goto_0
    return-void

    #@b
    .line 628
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
    .line 644
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 645
    return-void

    #@5
    .line 649
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 643
    :goto_0
    return-void

    #@b
    .line 650
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
    .line 666
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 667
    return-void

    #@5
    .line 671
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 665
    :goto_0
    return-void

    #@b
    .line 672
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
    .line 877
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 878
    return-void

    #@5
    .line 882
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->startDtmf(C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 876
    :goto_0
    return-void

    #@b
    .line 883
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
    .line 891
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 892
    return-void

    #@5
    .line 896
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->stopDtmf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 890
    :goto_0
    return-void

    #@b
    .line 897
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
    .line 717
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 718
    return-void

    #@5
    .line 722
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 716
    :goto_0
    return-void

    #@b
    .line 723
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
    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1260
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[ImsCallSession objId:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 1261
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    .line 1262
    const-string/jumbo v1, " state:"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 1263
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
    .line 1264
    const-string/jumbo v1, " callId:"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 1265
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 1266
    const-string/jumbo v1, "]"

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 1267
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
    .line 787
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 788
    return-void

    #@5
    .line 792
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    #@7
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->update(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 786
    :goto_0
    return-void

    #@b
    .line 793
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
