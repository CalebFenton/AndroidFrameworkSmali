.class Lcom/android/server/media/MediaSessionRecord$ControllerStub;
.super Landroid/media/session/ISessionController$Stub;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    #@0
    .prologue
    .line 1063
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-direct {p0}, Landroid/media/session/ISessionController$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;)V
    .locals 8
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v4

    #@9
    .line 1157
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v6

    #@d
    .line 1159
    .local v6, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@f
    const/4 v5, 0x0

    #@10
    move v1, p1

    #@11
    move v2, p2

    #@12
    move-object v3, p3

    #@13
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(IILjava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 1161
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@19
    .line 1154
    return-void

    #@1a
    .line 1160
    :catchall_0
    move-exception v0

    #@1b
    .line 1161
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 1160
    throw v0
.end method

.method public fastForward()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1259
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->fastForward()V

    #@e
    .line 1257
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    #@0
    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1315
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@9
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get9(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 1314
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public getFlags()J
    .locals 2

    #@0
    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get10(Lcom/android/server/media/MediaSessionRecord;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get12(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMetadata()Landroid/media/MediaMetadata;
    .locals 2

    #@0
    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1291
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@9
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get15(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 1290
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get17(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .locals 1

    #@0
    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap0(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getQueue()Landroid/content/pm/ParceledListSlice;
    .locals 2

    #@0
    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1303
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@9
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get19(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 1302
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
    .line 1309
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get20(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getRatingType()I
    .locals 1

    #@0
    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get21(Lcom/android/server/media/MediaSessionRecord;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get24(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;
    .locals 9

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 1137
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@3
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    #@6
    move-result-object v7

    #@7
    monitor-enter v7

    #@8
    .line 1138
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@a
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get26(Lcom/android/server/media/MediaSessionRecord;)I

    #@d
    move-result v0

    #@e
    if-ne v0, v3, :cond_1

    #@10
    .line 1139
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@12
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get16(Lcom/android/server/media/MediaSessionRecord;)I

    #@15
    move-result v0

    #@16
    const/4 v3, -0x1

    #@17
    if-eq v0, v3, :cond_0

    #@19
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@1b
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get16(Lcom/android/server/media/MediaSessionRecord;)I

    #@1e
    move-result v5

    #@1f
    .line 1140
    .local v5, "current":I
    :goto_0
    new-instance v0, Landroid/media/session/ParcelableVolumeInfo;

    #@21
    .line 1141
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@23
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-get26(Lcom/android/server/media/MediaSessionRecord;)I

    #@26
    move-result v1

    #@27
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@29
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-get1(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioAttributes;

    #@2c
    move-result-object v2

    #@2d
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2f
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-get25(Lcom/android/server/media/MediaSessionRecord;)I

    #@32
    move-result v3

    #@33
    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@35
    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->-get14(Lcom/android/server/media/MediaSessionRecord;)I

    #@38
    move-result v4

    #@39
    .line 1140
    invoke-direct/range {v0 .. v5}, Landroid/media/session/ParcelableVolumeInfo;-><init>(ILandroid/media/AudioAttributes;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3c
    monitor-exit v7

    #@3d
    return-object v0

    #@3e
    .line 1139
    .end local v5    # "current":I
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@40
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get7(Lcom/android/server/media/MediaSessionRecord;)I

    #@43
    move-result v5

    #@44
    .restart local v5    # "current":I
    goto :goto_0

    #@45
    .line 1143
    .end local v5    # "current":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@47
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get26(Lcom/android/server/media/MediaSessionRecord;)I

    #@4a
    move-result v1

    #@4b
    .line 1144
    .local v1, "volumeType":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@4d
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get1(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioAttributes;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    move-result-object v2

    #@51
    .local v2, "attributes":Landroid/media/AudioAttributes;
    monitor-exit v7

    #@52
    .line 1146
    invoke-static {v2}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    #@55
    move-result v6

    #@56
    .line 1147
    .local v6, "stream":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@58
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get2(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    #@5f
    move-result v4

    #@60
    .line 1148
    .local v4, "max":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@62
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get2(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;

    #@65
    move-result-object v0

    #@66
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@69
    move-result v5

    #@6a
    .line 1149
    .restart local v5    # "current":I
    new-instance v0, Landroid/media/session/ParcelableVolumeInfo;

    #@6c
    invoke-direct/range {v0 .. v5}, Landroid/media/session/ParcelableVolumeInfo;-><init>(ILandroid/media/AudioAttributes;III)V

    #@6f
    return-object v0

    #@70
    .line 1137
    .end local v1    # "volumeType":I
    .end local v2    # "attributes":Landroid/media/AudioAttributes;
    .end local v4    # "max":I
    .end local v5    # "current":I
    .end local v6    # "stream":I
    :catchall_0
    move-exception v0

    #@71
    monitor-exit v7

    #@72
    throw v0
.end method

.method public isTransportControlEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1326
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->isTransportControlEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1247
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->next()V

    #@e
    .line 1245
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1235
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->pause()V

    #@e
    .line 1233
    return-void
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1205
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->play()V

    #@e
    .line 1203
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1211
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    #@e
    .line 1209
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1217
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    #@e
    .line 1215
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1223
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@e
    .line 1221
    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1180
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepare()V

    #@e
    .line 1178
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1187
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    #@e
    .line 1185
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1193
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    #@e
    .line 1191
    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1199
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@e
    .line 1197
    return-void
.end method

.method public previous()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1253
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->previous()V

    #@e
    .line 1251
    return-void
.end method

.method public rate(Landroid/media/Rating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/Rating;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1277
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rate(Landroid/media/Rating;)V

    #@e
    .line 1275
    return-void
.end method

.method public registerCallbackListener(Landroid/media/session/ISessionControllerCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    #@0
    .prologue
    .line 1079
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1082
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@9
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get8(Lcom/android/server/media/MediaSessionRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 1084
    :try_start_1
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    :goto_0
    monitor-exit v2

    #@13
    .line 1088
    return-void

    #@14
    .line 1085
    :catch_0
    move-exception v0

    #@15
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    #@16
    .line 1090
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@18
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->-wrap1(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    #@1b
    move-result v1

    #@1c
    if-gez v1, :cond_1

    #@1e
    .line 1091
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@20
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get6(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    .line 1092
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->-get0()Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_1

    #@2d
    .line 1093
    const-string/jumbo v1, "MediaSessionRecord"

    #@30
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v4, "registering controller callback "

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@47
    :cond_1
    monitor-exit v2

    #@48
    .line 1078
    return-void

    #@49
    .line 1079
    :catchall_0
    move-exception v1

    #@4a
    monitor-exit v2

    #@4b
    throw v1
.end method

.method public rewind()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1265
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rewind()V

    #@e
    .line 1263
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1271
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->seekTo(J)V

    #@e
    .line 1269
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1068
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    #@e
    .line 1066
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1284
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    #@e
    .line 1282
    return-void
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "mediaButtonIntent"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1074
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1167
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@8
    move-result v2

    #@9
    .line 1169
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@c
    move-result-wide v0

    #@d
    .line 1171
    .local v0, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@f
    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 1173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 1166
    return-void

    #@16
    .line 1172
    :catchall_0
    move-exception v3

    #@17
    .line 1173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1a
    .line 1172
    throw v3
.end method

.method public skipToQueueItem(J)V
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1229
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->skipToTrack(J)V

    #@e
    .line 1227
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-wrap10(Lcom/android/server/media/MediaSessionRecord;)V

    #@5
    .line 1241
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@7
    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get23(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->stop()V

    #@e
    .line 1239
    return-void
.end method

.method public unregisterCallbackListener(Landroid/media/session/ISessionControllerCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1102
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@2
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get13(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 1103
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@9
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->-wrap1(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    #@c
    move-result v0

    #@d
    .line 1104
    .local v0, "index":I
    const/4 v1, -0x1

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 1105
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    #@12
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get6(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@19
    .line 1107
    :cond_0
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->-get0()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 1108
    const-string/jumbo v1, "MediaSessionRecord"

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "unregistering callback "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    const-string/jumbo v4, ". index="

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    :cond_1
    monitor-exit v2

    #@45
    .line 1101
    return-void

    #@46
    .line 1102
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    #@47
    monitor-exit v2

    #@48
    throw v1
.end method
