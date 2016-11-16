.class public final Lcom/android/server/audio/RecordingActivityMonitor;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/media/AudioSystem$AudioRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioService.RecordingActivityMonitor"


# instance fields
.field private mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    #@a
    .line 44
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 43
    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    #@11
    .line 47
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    #@13
    .line 46
    return-void
.end method

.method private updateSnapshot(III[I)Ljava/util/List;
    .locals 17
    .param p1, "event"    # I
    .param p2, "session"    # I
    .param p3, "source"    # I
    .param p4, "recordingInfo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 129
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    #@4
    move-object/from16 v16, v0

    #@6
    monitor-enter v16

    #@7
    .line 130
    packed-switch p1, :pswitch_data_0

    #@a
    .line 170
    :try_start_0
    const-string/jumbo v2, "AudioService.RecordingActivityMonitor"

    #@d
    const-string/jumbo v3, "Unknown event %d for session %d, source %d"

    #@10
    const/4 v7, 0x3

    #@11
    new-array v7, v7, [Ljava/lang/Object;

    #@13
    .line 171
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v8

    #@17
    const/4 v9, 0x0

    #@18
    aput-object v8, v7, v9

    #@1a
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v8

    #@1e
    const/4 v9, 0x1

    #@1f
    aput-object v8, v7, v9

    #@21
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v8

    #@25
    const/4 v9, 0x2

    #@26
    aput-object v8, v7, v9

    #@28
    .line 170
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 172
    const/4 v13, 0x0

    #@30
    .line 174
    .local v13, "configChanged":Z
    :goto_0
    if-eqz v13, :cond_3

    #@32
    .line 175
    new-instance v14, Ljava/util/ArrayList;

    #@34
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    #@38
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@3b
    move-result-object v2

    #@3c
    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    :goto_1
    monitor-exit v16

    #@40
    .line 180
    return-object v14

    #@41
    .line 133
    .end local v13    # "configChanged":Z
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    #@43
    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    #@45
    new-instance v3, Ljava/lang/Integer;

    #@47
    move/from16 v0, p2

    #@49
    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    #@4c
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    move-result-object v2

    #@50
    if-eqz v2, :cond_0

    #@52
    const/4 v13, 0x1

    #@53
    .restart local v13    # "configChanged":Z
    goto :goto_0

    #@54
    .end local v13    # "configChanged":Z
    :cond_0
    const/4 v13, 0x0

    #@55
    .restart local v13    # "configChanged":Z
    goto :goto_0

    #@56
    .line 136
    .end local v13    # "configChanged":Z
    :pswitch_1
    new-instance v2, Landroid/media/AudioFormat$Builder;

    #@58
    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@5b
    .line 137
    const/4 v3, 0x0

    #@5c
    aget v3, p4, v3

    #@5e
    .line 136
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@61
    move-result-object v2

    #@62
    .line 139
    const/4 v3, 0x1

    #@63
    aget v3, p4, v3

    #@65
    .line 136
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@68
    move-result-object v2

    #@69
    .line 140
    const/4 v3, 0x2

    #@6a
    aget v3, p4, v3

    #@6c
    .line 136
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@73
    move-result-object v4

    #@74
    .line 142
    .local v4, "clientFormat":Landroid/media/AudioFormat;
    new-instance v2, Landroid/media/AudioFormat$Builder;

    #@76
    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@79
    .line 143
    const/4 v3, 0x3

    #@7a
    aget v3, p4, v3

    #@7c
    .line 142
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@7f
    move-result-object v2

    #@80
    .line 145
    const/4 v3, 0x4

    #@81
    aget v3, p4, v3

    #@83
    .line 142
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@86
    move-result-object v2

    #@87
    .line 146
    const/4 v3, 0x5

    #@88
    aget v3, p4, v3

    #@8a
    .line 142
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@91
    move-result-object v5

    #@92
    .line 148
    .local v5, "deviceFormat":Landroid/media/AudioFormat;
    const/4 v2, 0x6

    #@93
    aget v6, p4, v2

    #@95
    .line 149
    .local v6, "patchHandle":I
    new-instance v15, Ljava/lang/Integer;

    #@97
    move/from16 v0, p2

    #@99
    invoke-direct {v15, v0}, Ljava/lang/Integer;-><init>(I)V

    #@9c
    .line 150
    .local v15, "sessionKey":Ljava/lang/Integer;
    move-object/from16 v0, p0

    #@9e
    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    #@a0
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@a3
    move-result v2

    #@a4
    if-eqz v2, :cond_2

    #@a6
    .line 152
    new-instance v1, Landroid/media/AudioRecordingConfiguration;

    #@a8
    move/from16 v2, p2

    #@aa
    move/from16 v3, p3

    #@ac
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecordingConfiguration;-><init>(IILandroid/media/AudioFormat;Landroid/media/AudioFormat;I)V

    #@af
    .line 154
    .local v1, "updatedConfig":Landroid/media/AudioRecordingConfiguration;
    move-object/from16 v0, p0

    #@b1
    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    #@b3
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    move-result-object v2

    #@b7
    invoke-virtual {v1, v2}, Landroid/media/AudioRecordingConfiguration;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v2

    #@bb
    if-eqz v2, :cond_1

    #@bd
    .line 155
    const/4 v13, 0x0

    #@be
    .restart local v13    # "configChanged":Z
    goto/16 :goto_0

    #@c0
    .line 158
    .end local v13    # "configChanged":Z
    :cond_1
    move-object/from16 v0, p0

    #@c2
    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    #@c4
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c7
    .line 159
    move-object/from16 v0, p0

    #@c9
    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    #@cb
    invoke-virtual {v2, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ce
    .line 160
    const/4 v13, 0x1

    #@cf
    .restart local v13    # "configChanged":Z
    goto/16 :goto_0

    #@d1
    .line 163
    .end local v1    # "updatedConfig":Landroid/media/AudioRecordingConfiguration;
    .end local v13    # "configChanged":Z
    :cond_2
    move-object/from16 v0, p0

    #@d3
    iget-object v2, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    #@d5
    .line 164
    new-instance v7, Landroid/media/AudioRecordingConfiguration;

    #@d7
    move/from16 v8, p2

    #@d9
    move/from16 v9, p3

    #@db
    move-object v10, v4

    #@dc
    move-object v11, v5

    #@dd
    move v12, v6

    #@de
    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecordingConfiguration;-><init>(IILandroid/media/AudioFormat;Landroid/media/AudioFormat;I)V

    #@e1
    .line 163
    invoke-virtual {v2, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e4
    .line 166
    const/4 v13, 0x1

    #@e5
    .restart local v13    # "configChanged":Z
    goto/16 :goto_0

    #@e7
    .line 177
    .end local v4    # "clientFormat":Landroid/media/AudioFormat;
    .end local v5    # "deviceFormat":Landroid/media/AudioFormat;
    .end local v6    # "patchHandle":I
    .end local v15    # "sessionKey":Ljava/lang/Integer;
    :cond_3
    const/4 v14, 0x0

    #@e8
    .local v14, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioRecordingConfiguration;>;"
    goto/16 :goto_1

    #@ea
    .line 129
    .end local v13    # "configChanged":Z
    .end local v14    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioRecordingConfiguration;>;"
    :catchall_0
    move-exception v2

    #@eb
    monitor-exit v16

    #@ec
    throw v2

    #@ed
    .line 130
    nop

    #@ee
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getActiveRecordingConfigurations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 110
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    #@5
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordConfigs:Ljava/util/HashMap;

    #@7
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v2

    #@b
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    .line 109
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method initMonitor()V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-static {p0}, Landroid/media/AudioSystem;->setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V

    #@3
    .line 75
    return-void
.end method

.method public onRecordingConfigurationChanged(III[I)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "session"    # I
    .param p3, "source"    # I
    .param p4, "recordingInfo"    # [I

    #@0
    .prologue
    .line 55
    invoke-static {p3}, Landroid/media/MediaRecorder;->isSystemOnlyAudioSource(I)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 56
    return-void

    #@7
    .line 59
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(III[I)Ljava/util/List;

    #@a
    move-result-object v1

    #@b
    .line 60
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    if-eqz v1, :cond_2

    #@d
    .line 61
    iget-object v4, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    #@f
    monitor-enter v4

    #@10
    .line 62
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v0

    #@16
    .line 63
    .local v0, "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 65
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    #@22
    iget-object v3, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    #@24
    invoke-interface {v3, v1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 67
    :catch_0
    move-exception v2

    #@29
    .line 68
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "AudioService.RecordingActivityMonitor"

    #@2c
    const-string/jumbo v5, "Could not call dispatchRecordingConfigChange() on client"

    #@2f
    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 61
    .end local v0    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    #@34
    monitor-exit v4

    #@35
    throw v3

    #@36
    .restart local v0    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    :cond_1
    monitor-exit v4

    #@37
    .line 54
    .end local v0    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    :cond_2
    return-void
.end method

.method registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 3
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    #@0
    .prologue
    .line 80
    if-nez p1, :cond_0

    #@2
    .line 81
    return-void

    #@3
    .line 83
    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    #@5
    monitor-enter v2

    #@6
    .line 84
    :try_start_0
    new-instance v0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    #@8
    invoke-direct {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;-><init>(Landroid/media/IRecordingConfigDispatcher;)V

    #@b
    .line 85
    .local v0, "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    invoke-virtual {v0}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->init()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 86
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_1
    monitor-exit v2

    #@17
    .line 79
    return-void

    #@18
    .line 83
    .end local v0    # "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :catchall_0
    move-exception v1

    #@19
    monitor-exit v2

    #@1a
    throw v1
.end method

.method unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 4
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    #@0
    .prologue
    .line 92
    if-nez p1, :cond_0

    #@2
    .line 93
    return-void

    #@3
    .line 95
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    #@5
    monitor-enter v3

    #@6
    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v0

    #@c
    .line 97
    .local v0, "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_2

    #@12
    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    #@18
    .line 99
    .local v1, "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    iget-object v2, v1, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    #@1a
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 100
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->release()V

    #@23
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .end local v1    # "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :cond_2
    monitor-exit v3

    #@27
    .line 91
    return-void

    #@28
    .line 95
    .end local v0    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v3

    #@2a
    throw v2
.end method
