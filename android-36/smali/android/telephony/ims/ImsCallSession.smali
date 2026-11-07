.class public Landroid/telephony/ims/ImsCallSession;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;,
        Landroid/telephony/ims/ImsCallSession$Listener;,
        Landroid/telephony/ims/ImsCallSession$State;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsCallSession"


# instance fields
.field private blacklist mCallId:Ljava/lang/String;

.field private greylist-max-o mClosed:Z

.field private blacklist mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

.field private greylist-max-o mListener:Landroid/telephony/ims/ImsCallSession$Listener;

.field private blacklist mListenerExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o miSession:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerExecutor(Landroid/telephony/ims/ImsCallSession;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/ImsCallSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 6
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    .line 538
    new-instance v1, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 539
    iput-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    .line 542
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 543
    new-instance v1, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession-IA;)V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallSession;->mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    .line 545
    const/4 v0, 0x1

    if-eqz p1, :cond_46

    .line 547
    :try_start_1e
    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession;->mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    invoke-interface {p1, v1}, Lcom/android/ims/internal/IImsCallSession;->setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_24

    .line 554
    :cond_23
    :goto_23
    goto :goto_48

    .line 548
    :catch_24
    move-exception v1

    .line 549
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->ignoreAlreadyTerminatedIncomingCallBeforeRegisteringListener()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsCallSession : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsCallSession"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    goto :goto_23

    .line 556
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_46
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    .line 558
    :goto_48
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "listener"    # Landroid/telephony/ims/ImsCallSession$Listener;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 561
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 562
    invoke-virtual {p0, p2, p3}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 563
    return-void
.end method


# virtual methods
.method public greylist-max-o accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 866
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 867
    return-void

    .line 871
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 873
    goto :goto_c

    .line 872
    :catch_b
    move-exception v0

    .line 874
    :goto_c
    return-void
.end method

.method public blacklist callSessionNotifyAnbr(III)V
    .registers 7
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 1251
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1252
    return-void

    .line 1256
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsCallSession;->callSessionNotifyAnbr(III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1259
    goto :goto_24

    .line 1257
    :catch_b
    move-exception v0

    .line 1258
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionNotifyAnbr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsCallSession"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public greylist-max-o close()V
    .registers 2

    .line 576
    monitor-enter p0

    .line 577
    :try_start_1
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_7

    .line 578
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_13

    return-void

    .line 582
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->close()V

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 585
    goto :goto_11

    .line 584
    :catch_10
    move-exception v0

    .line 586
    :goto_11
    :try_start_11
    monitor-exit p0

    .line 587
    return-void

    .line 586
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public greylist-max-o deflect(Ljava/lang/String;)V
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .line 882
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 883
    return-void

    .line 887
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->deflect(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 889
    goto :goto_c

    .line 888
    :catch_b
    move-exception v0

    .line 890
    :goto_c
    return-void
.end method

.method public greylist-max-o extendToConference([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1038
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1039
    return-void

    .line 1043
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1045
    goto :goto_c

    .line 1044
    :catch_b
    move-exception v0

    .line 1046
    :goto_c
    return-void
.end method

.method public greylist-max-o getCallId()Ljava/lang/String;
    .registers 3

    .line 596
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 597
    return-object v1

    .line 600
    :cond_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 601
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    return-object v0

    .line 604
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return-object v0

    .line 605
    :catch_16
    move-exception v0

    .line 606
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-o getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 630
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 631
    return-object v1

    .line 635
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 636
    :catch_d
    move-exception v0

    .line 637
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public final blacklist getIImsCallSessionListenerProxy()Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;
    .registers 2

    .line 569
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->mIImsCallSessionListenerProxy:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    return-object v0
.end method

.method public greylist-max-o getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 647
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 648
    return-object v1

    .line 652
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 653
    :catch_d
    move-exception v0

    .line 654
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-o getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 698
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 699
    return-object v1

    .line 703
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 704
    :catch_d
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-o getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 664
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 665
    return-object v1

    .line 669
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 670
    :catch_d
    move-exception v0

    .line 671
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-o getSession()Lcom/android/ims/internal/IImsCallSession;
    .registers 2

    .line 757
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public greylist-max-o getState()I
    .registers 3

    .line 716
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 717
    return v1

    .line 721
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getState()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 722
    :catch_d
    move-exception v0

    .line 723
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public greylist-max-o getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 3

    .line 681
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 682
    return-object v1

    .line 686
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 687
    :catch_d
    move-exception v0

    .line 688
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public greylist-max-o hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 967
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 968
    return-void

    .line 972
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 974
    goto :goto_c

    .line 973
    :catch_b
    move-exception v0

    .line 975
    :goto_c
    return-void
.end method

.method public greylist-max-o inviteParticipants([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1056
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1057
    return-void

    .line 1061
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1063
    goto :goto_c

    .line 1062
    :catch_b
    move-exception v0

    .line 1064
    :goto_c
    return-void
.end method

.method public greylist-max-o isAlive()Z
    .registers 3

    .line 734
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 735
    return v1

    .line 738
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->getState()I

    move-result v0

    .line 739
    .local v0, "state":I
    packed-switch v0, :pswitch_data_10

    .line 749
    return v1

    .line 747
    :pswitch_e
    const/4 v1, 0x1

    return v1

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public greylist-max-o isInCall()Z
    .registers 3

    .line 766
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 767
    return v1

    .line 771
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->isInCall()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 772
    :catch_d
    move-exception v0

    .line 773
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public greylist-max-o isMultiparty()Z
    .registers 3

    .line 1157
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1158
    return v1

    .line 1162
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->isMultiparty()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    .line 1163
    :catch_d
    move-exception v0

    .line 1164
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public greylist-max-o merge()V
    .registers 2

    .line 1002
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1003
    return-void

    .line 1007
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->merge()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1009
    goto :goto_c

    .line 1008
    :catch_b
    move-exception v0

    .line 1010
    :goto_c
    return-void
.end method

.method public greylist-max-o reject(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 899
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 900
    return-void

    .line 904
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->reject(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 906
    goto :goto_c

    .line 905
    :catch_b
    move-exception v0

    .line 907
    :goto_c
    return-void
.end method

.method public greylist-max-o removeParticipants([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1074
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1075
    return-void

    .line 1079
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1081
    goto :goto_c

    .line 1080
    :catch_b
    move-exception v0

    .line 1082
    :goto_c
    return-void
.end method

.method public greylist-max-o resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 985
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 986
    return-void

    .line 990
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 992
    goto :goto_c

    .line 991
    :catch_b
    move-exception v0

    .line 993
    :goto_c
    return-void
.end method

.method public greylist-max-o sendDtmf(CLandroid/os/Message;)V
    .registers 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1093
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1094
    return-void

    .line 1098
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1100
    goto :goto_c

    .line 1099
    :catch_b
    move-exception v0

    .line 1101
    :goto_c
    return-void
.end method

.method public blacklist sendRtpHeaderExtensions(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 1230
    .local p1, "rtpHeaderExtensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1231
    return-void

    .line 1235
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsCallSession;->sendRtpHeaderExtensions(Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_10

    .line 1238
    goto :goto_11

    .line 1237
    :catch_10
    move-exception v0

    .line 1239
    :goto_11
    return-void
.end method

.method public greylist-max-o sendRttMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1174
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1175
    return-void

    .line 1179
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttMessage(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1181
    goto :goto_c

    .line 1180
    :catch_b
    move-exception v0

    .line 1182
    :goto_c
    return-void
.end method

.method public greylist-max-o sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "to"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1190
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1191
    return-void

    .line 1195
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1197
    goto :goto_c

    .line 1196
    :catch_b
    move-exception v0

    .line 1198
    :goto_c
    return-void
.end method

.method public greylist-max-o sendRttModifyResponse(Z)V
    .registers 3
    .param p1, "response"    # Z

    .line 1206
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1207
    return-void

    .line 1211
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendRttModifyResponse(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1213
    goto :goto_c

    .line 1212
    :catch_b
    move-exception v0

    .line 1214
    :goto_c
    return-void
.end method

.method public greylist-max-o sendUssd(Ljava/lang/String;)V
    .registers 3
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 1141
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1142
    return-void

    .line 1146
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1148
    goto :goto_c

    .line 1147
    :catch_b
    move-exception v0

    .line 1149
    :goto_c
    return-void
.end method

.method public blacklist setCallId(Ljava/lang/String;)V
    .registers 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 619
    if-eqz p1, :cond_4

    .line 620
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    .line 622
    :cond_4
    return-void
.end method

.method public blacklist setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSession$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 786
    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    .line 787
    if-eqz p2, :cond_6

    .line 788
    iput-object p2, p0, Landroid/telephony/ims/ImsCallSession;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 790
    :cond_6
    return-void
.end method

.method public greylist-max-o setMute(Z)V
    .registers 3
    .param p1, "muted"    # Z

    .line 798
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 799
    return-void

    .line 803
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->setMute(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 805
    goto :goto_c

    .line 804
    :catch_b
    move-exception v0

    .line 806
    :goto_c
    return-void
.end method

.method public greylist-max-o start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 823
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 824
    return-void

    .line 828
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 830
    goto :goto_c

    .line 829
    :catch_b
    move-exception v0

    .line 831
    :goto_c
    return-void
.end method

.method public greylist-max-o start([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 848
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 849
    return-void

    .line 853
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 855
    goto :goto_c

    .line 854
    :catch_b
    move-exception v0

    .line 856
    :goto_c
    return-void
.end method

.method public greylist-max-o startDtmf(C)V
    .registers 3
    .param p1, "c"    # C

    .line 1111
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1112
    return-void

    .line 1116
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->startDtmf(C)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1118
    goto :goto_c

    .line 1117
    :catch_b
    move-exception v0

    .line 1119
    :goto_c
    return-void
.end method

.method public greylist-max-o stopDtmf()V
    .registers 2

    .line 1125
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1126
    return-void

    .line 1130
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->stopDtmf()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1132
    goto :goto_c

    .line 1131
    :catch_b
    move-exception v0

    .line 1133
    :goto_c
    return-void
.end method

.method public greylist-max-o terminate(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 950
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 951
    return-void

    .line 955
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->terminate(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 957
    goto :goto_c

    .line 956
    :catch_b
    move-exception v0

    .line 958
    :goto_c
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1786
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsCallSession objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1788
    const-string v1, " callId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession;->mCallId:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    const-string v1, "[UNINITIALIZED]"

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist transfer(Landroid/telephony/ims/ImsCallSession;)V
    .registers 4
    .param p1, "transferToSession"    # Landroid/telephony/ims/ImsCallSession;

    .line 932
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 933
    return-void

    .line 937
    :cond_5
    if-eqz p1, :cond_13

    .line 938
    :try_start_7
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsCallSession;->consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_13

    .line 940
    :catch_11
    move-exception v0

    goto :goto_14

    .line 941
    :cond_13
    :goto_13
    nop

    .line 942
    :goto_14
    return-void
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 916
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 917
    return-void

    .line 921
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->transfer(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 923
    goto :goto_c

    .line 922
    :catch_b
    move-exception v0

    .line 924
    :goto_c
    return-void
.end method

.method public greylist-max-o update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1020
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_5

    .line 1021
    return-void

    .line 1025
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1027
    goto :goto_c

    .line 1026
    :catch_b
    move-exception v0

    .line 1028
    :goto_c
    return-void
.end method
