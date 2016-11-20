.class final Lcom/android/server/media/MediaSessionRecord$SessionStub;
.super Landroid/media/session/ISession$Stub;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-direct {p0}, Landroid/media/session/ISession$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$SessionStub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    #@3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    #@0
    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get22(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService;->destroySession(Lcom/android/server/media/MediaSessionRecord;)V

    #@b
    .line 730
    return-void
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get4(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getController()Landroid/media/session/ISessionController;
    .locals 1

    #@0
    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get5(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 736
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@3
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get11(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@6
    move-result-object v1

    #@7
    .line 737
    if-nez p2, :cond_0

    #@9
    .line 736
    :goto_0
    const/4 v2, 0x6

    #@a
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@d
    .line 735
    return-void

    #@e
    .line 737
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@10
    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@13
    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    #@0
    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set4(Lcom/android/server/media/MediaSessionRecord;Z)Z

    #@5
    .line 748
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get22(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService;->updateSession(Lcom/android/server/media/MediaSessionRecord;)V

    #@10
    .line 749
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@12
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get11(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@15
    move-result-object v0

    #@16
    const/4 v1, 0x7

    #@17
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    #@1a
    .line 746
    return-void
.end method

.method public setCurrentVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    #@0
    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set1(Lcom/android/server/media/MediaSessionRecord;I)I

    #@5
    .line 833
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get11(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@a
    move-result-object v0

    #@b
    const/16 v1, 0x8

    #@d
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    #@10
    .line 831
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 819
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@3
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    .line 820
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@a
    if-nez p1, :cond_0

    #@c
    :goto_0
    invoke-static {v2, v0}, Lcom/android/server/media/MediaSessionRecord;->-set2(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 822
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@12
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get11(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@15
    move-result-object v0

    #@16
    const/4 v1, 0x5

    #@17
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    #@1a
    .line 818
    return-void

    #@1b
    .line 820
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    #@1d
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    goto :goto_0

    #@21
    .line 819
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method public setFlags(I)V
    .locals 6
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 754
    const/high16 v2, 0x10000

    #@2
    and-int/2addr v2, p1

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 755
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord$SessionStub;->getCallingPid()I

    #@8
    move-result v0

    #@9
    .line 756
    .local v0, "pid":I
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord$SessionStub;->getCallingUid()I

    #@c
    move-result v1

    #@d
    .line 757
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@f
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-get22(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, v0, v1}, Lcom/android/server/media/MediaSessionService;->enforcePhoneStatePermission(II)V

    #@16
    .line 759
    .end local v0    # "pid":I
    .end local v1    # "uid":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@18
    int-to-long v4, p1

    #@19
    invoke-static {v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord;->-set3(Lcom/android/server/media/MediaSessionRecord;J)J

    #@1c
    .line 760
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@1e
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-get11(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@21
    move-result-object v2

    #@22
    const/4 v3, 0x7

    #@23
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    #@26
    .line 753
    return-void
.end method

.method public setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set6(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    #@5
    .line 769
    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set8(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    #@5
    .line 764
    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    #@0
    .prologue
    .line 775
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 776
    if-nez p1, :cond_1

    #@9
    const/4 v0, 0x0

    #@a
    .line 781
    :goto_0
    if-eqz v0, :cond_0

    #@c
    .line 782
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->size()I

    #@f
    .line 784
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@11
    invoke-static {v1, v0}, Lcom/android/server/media/MediaSessionRecord;->-set9(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v2

    #@15
    .line 786
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@17
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get11(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x1

    #@1c
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    #@1f
    .line 774
    return-void

    #@20
    .line 776
    :cond_1
    :try_start_1
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    #@22
    invoke-direct {v1, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    #@25
    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    move-result-object v0

    #@29
    .local v0, "temp":Landroid/media/MediaMetadata;
    goto :goto_0

    #@2a
    .line 775
    .end local v0    # "temp":Landroid/media/MediaMetadata;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 7
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    .line 791
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@3
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-get18(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    #@6
    move-result-object v2

    #@7
    if-nez v2, :cond_1

    #@9
    const/4 v1, 0x0

    #@a
    .line 792
    .local v1, "oldState":I
    :goto_0
    if-nez p1, :cond_2

    #@c
    const/4 v0, 0x0

    #@d
    .line 793
    .local v0, "newState":I
    :goto_1
    invoke-static {v1}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    if-ne v0, v6, :cond_0

    #@15
    .line 794
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1a
    move-result-wide v4

    #@1b
    invoke-static {v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord;->-set5(Lcom/android/server/media/MediaSessionRecord;J)J

    #@1e
    .line 796
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@20
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    monitor-enter v3

    #@25
    .line 797
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@27
    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionRecord;->-set11(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v3

    #@2b
    .line 799
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2d
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-get22(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    #@30
    move-result-object v2

    #@31
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@33
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/media/MediaSessionService;->onSessionPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)V

    #@36
    .line 800
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@38
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-get11(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, v6}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    #@3f
    .line 790
    return-void

    #@40
    .line 791
    .end local v0    # "newState":I
    .end local v1    # "oldState":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@42
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-get18(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I

    #@49
    move-result v1

    #@4a
    .restart local v1    # "oldState":I
    goto :goto_0

    #@4b
    .line 792
    :cond_2
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    #@4e
    move-result v0

    #@4f
    .restart local v0    # "newState":I
    goto :goto_1

    #@50
    .line 796
    :catchall_0
    move-exception v2

    #@51
    monitor-exit v3

    #@52
    throw v2
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .locals 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 839
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@9
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get26(Lcom/android/server/media/MediaSessionRecord;)I

    #@c
    move-result v1

    #@d
    const/4 v3, 0x2

    #@e
    if-ne v1, v3, :cond_1

    #@10
    const/4 v0, 0x1

    #@11
    .line 841
    .local v0, "typeChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@13
    const/4 v3, 0x1

    #@14
    invoke-static {v1, v3}, Lcom/android/server/media/MediaSessionRecord;->-set16(Lcom/android/server/media/MediaSessionRecord;I)I

    #@17
    .line 842
    if-eqz p1, :cond_2

    #@19
    .line 843
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@1b
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->-set0(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :goto_1
    monitor-exit v2

    #@1f
    .line 848
    if-eqz v0, :cond_0

    #@21
    .line 849
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@23
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get22(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@29
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V

    #@2c
    .line 850
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2e
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get11(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@31
    move-result-object v1

    #@32
    const/16 v2, 0x8

    #@34
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    #@37
    .line 837
    :cond_0
    return-void

    #@38
    .line 840
    .end local v0    # "typeChanged":Z
    :cond_1
    const/4 v0, 0x0

    #@39
    .restart local v0    # "typeChanged":Z
    goto :goto_0

    #@3a
    .line 845
    :cond_2
    :try_start_1
    const-string/jumbo v1, "MediaSessionRecord"

    #@3d
    const-string/jumbo v3, "Received null audio attributes, using existing attributes"

    #@40
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    goto :goto_1

    #@44
    .line 839
    .end local v0    # "typeChanged":Z
    :catchall_0
    move-exception v1

    #@45
    monitor-exit v2

    #@46
    throw v1
.end method

.method public setPlaybackToRemote(II)V
    .locals 4
    .param p1, "control"    # I
    .param p2, "max"    # I

    #@0
    .prologue
    .line 857
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 858
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@9
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get26(Lcom/android/server/media/MediaSessionRecord;)I

    #@c
    move-result v1

    #@d
    const/4 v3, 0x1

    #@e
    if-ne v1, v3, :cond_1

    #@10
    const/4 v0, 0x1

    #@11
    .line 859
    .local v0, "typeChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@13
    const/4 v3, 0x2

    #@14
    invoke-static {v1, v3}, Lcom/android/server/media/MediaSessionRecord;->-set16(Lcom/android/server/media/MediaSessionRecord;I)I

    #@17
    .line 860
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@19
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->-set15(Lcom/android/server/media/MediaSessionRecord;I)I

    #@1c
    .line 861
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@1e
    invoke-static {v1, p2}, Lcom/android/server/media/MediaSessionRecord;->-set7(Lcom/android/server/media/MediaSessionRecord;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 863
    if-eqz v0, :cond_0

    #@24
    .line 864
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@26
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get22(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2c
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V

    #@2f
    .line 865
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@31
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get11(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@34
    move-result-object v1

    #@35
    const/16 v2, 0x8

    #@37
    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    #@3a
    .line 855
    :cond_0
    return-void

    #@3b
    .line 858
    .end local v0    # "typeChanged":Z
    :cond_1
    const/4 v0, 0x0

    #@3c
    .restart local v0    # "typeChanged":Z
    goto :goto_0

    #@3d
    .line 857
    .end local v0    # "typeChanged":Z
    :catchall_0
    move-exception v1

    #@3e
    monitor-exit v2

    #@3f
    throw v1
.end method

.method public setQueue(Landroid/content/pm/ParceledListSlice;)V
    .locals 2
    .param p1, "queue"    # Landroid/content/pm/ParceledListSlice;

    #@0
    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@9
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set12(Lcom/android/server/media/MediaSessionRecord;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 808
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@f
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get11(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x3

    #@14
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    #@17
    .line 804
    return-void

    #@18
    .line 805
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set13(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    .line 814
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get11(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x4

    #@c
    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    #@f
    .line 812
    return-void
.end method

.method public setRatingType(I)V
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set14(Lcom/android/server/media/MediaSessionRecord;I)I

    #@5
    .line 826
    return-void
.end method
