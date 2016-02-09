.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;
.super Landroid/support/v4/media/session/IMediaSession$Stub;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaSessionStub"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@0
    .prologue
    .line 1512
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-direct {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1602
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap1(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    #@5
    .line 1601
    return-void
.end method

.method public fastForward()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1657
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x9

    #@8
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    #@b
    .line 1656
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    #@0
    .prologue
    .line 1705
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get8(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1706
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@9
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 1705
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public getFlags()J
    .locals 4

    #@0
    .prologue
    .line 1571
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get8(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1572
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@9
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get5(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    int-to-long v2, v0

    #@e
    monitor-exit v1

    #@f
    return-wide v2

    #@10
    .line 1571
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 2

    #@0
    .prologue
    .line 1563
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get8(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1564
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@9
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get14(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 1563
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    #@0
    .prologue
    .line 1683
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get9(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/MediaMetadataCompat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1552
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get10(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    #@0
    .prologue
    .line 1688
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap0(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getQueue()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1693
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get8(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1694
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@9
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get11(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 1693
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1700
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get12(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRatingType()I
    .locals 1

    #@0
    .prologue
    .line 1713
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get13(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1558
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get16(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .locals 8

    #@0
    .prologue
    .line 1583
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get8(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Ljava/lang/Object;

    #@5
    move-result-object v7

    #@6
    monitor-enter v7

    #@7
    .line 1584
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@9
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get18(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    #@c
    move-result v1

    #@d
    .line 1585
    .local v1, "volumeType":I
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@f
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get7(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    #@12
    move-result v2

    #@13
    .line 1586
    .local v2, "stream":I
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@15
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get17(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/VolumeProviderCompat;

    #@18
    move-result-object v6

    #@19
    .line 1587
    .local v6, "vp":Landroid/support/v4/media/VolumeProviderCompat;
    const/4 v0, 0x2

    #@1a
    if-ne v1, v0, :cond_0

    #@1c
    .line 1588
    invoke-virtual {v6}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    #@1f
    move-result v3

    #@20
    .line 1589
    .local v3, "controlType":I
    invoke-virtual {v6}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    #@23
    move-result v4

    #@24
    .line 1590
    .local v4, "max":I
    invoke-virtual {v6}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result v5

    #@28
    .local v5, "current":I
    :goto_0
    monitor-exit v7

    #@29
    .line 1597
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    #@2b
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    #@2e
    return-object v0

    #@2f
    .line 1592
    .end local v3    # "controlType":I
    .end local v4    # "max":I
    .end local v5    # "current":I
    :cond_0
    const/4 v3, 0x2

    #@30
    .line 1593
    .restart local v3    # "controlType":I
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@32
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get0(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/media/AudioManager;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    #@39
    move-result v4

    #@3a
    .line 1594
    .restart local v4    # "max":I
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@3c
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get0(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/media/AudioManager;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    move-result v5

    #@44
    .restart local v5    # "current":I
    goto :goto_0

    #@45
    .line 1583
    .end local v1    # "volumeType":I
    .end local v2    # "stream":I
    .end local v3    # "controlType":I
    .end local v4    # "max":I
    .end local v5    # "current":I
    .end local v6    # "vp":Landroid/support/v4/media/VolumeProviderCompat;
    :catchall_0
    move-exception v0

    #@46
    monitor-exit v7

    #@47
    throw v0
.end method

.method public isTransportControlEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1718
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@3
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get5(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    #@6
    move-result v1

    #@7
    and-int/lit8 v1, v1, 0x2

    #@9
    if-eqz v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public next()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1647
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x7

    #@7
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    #@a
    .line 1646
    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1637
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x5

    #@7
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    #@a
    .line 1636
    return-void
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1612
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    #@a
    .line 1611
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1617
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@a
    .line 1616
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1622
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@a
    .line 1621
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1627
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x12

    #@8
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@b
    .line 1626
    return-void
.end method

.method public previous()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1652
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x8

    #@8
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    #@b
    .line 1651
    return-void
.end method

.method public rate(Landroid/support/v4/media/RatingCompat;)V
    .locals 2
    .param p1, "rating"    # Landroid/support/v4/media/RatingCompat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1672
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xc

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    #@b
    .line 1671
    return-void
.end method

.method public registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/support/v4/media/session/IMediaControllerCallback;

    #@0
    .prologue
    .line 1533
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1535
    :try_start_0
    invoke-interface {p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onSessionDestroyed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1539
    :goto_0
    return-void

    #@c
    .line 1536
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    #@e
    .line 1541
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@10
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/RemoteCallbackList;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@17
    .line 1530
    return-void
.end method

.method public rewind()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1662
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xa

    #@8
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    #@b
    .line 1661
    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1667
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v1

    #@a
    const/16 v2, 0xb

    #@c
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    #@f
    .line 1666
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    #@0
    .prologue
    .line 1515
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    .line 1516
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;

    #@8
    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->-get0(Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)Landroid/os/ResultReceiver;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, p1, p2, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    #@f
    .line 1515
    const/16 v2, 0xf

    #@11
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    #@14
    .line 1514
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1678
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xd

    #@8
    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    #@b
    .line 1677
    return-void
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "mediaButton"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1522
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get5(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)I

    #@5
    move-result v1

    #@6
    and-int/lit8 v1, v1, 0x1

    #@8
    if-eqz v1, :cond_1

    #@a
    const/4 v0, 0x1

    #@b
    .line 1523
    .local v0, "handlesMediaButtons":Z
    :goto_0
    if-eqz v0, :cond_0

    #@d
    .line 1524
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@f
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@12
    move-result-object v1

    #@13
    const/16 v2, 0xe

    #@15
    invoke-virtual {v1, v2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    #@18
    .line 1526
    :cond_0
    return v0

    #@19
    .line 1522
    .end local v0    # "handlesMediaButtons":Z
    :cond_1
    const/4 v0, 0x0

    #@1a
    .restart local v0    # "handlesMediaButtons":Z
    goto :goto_0
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1607
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-wrap3(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    #@5
    .line 1606
    return-void
.end method

.method public skipToQueueItem(J)V
    .locals 3
    .param p1, "id"    # J

    #@0
    .prologue
    .line 1632
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x4

    #@b
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    #@e
    .line 1631
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1642
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get6(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x6

    #@7
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(I)V

    #@a
    .line 1641
    return-void
.end method

.method public unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/support/v4/media/session/IMediaControllerCallback;

    #@0
    .prologue
    .line 1546
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    #@2
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->-get2(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/os/RemoteCallbackList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@9
    .line 1545
    return-void
.end method
