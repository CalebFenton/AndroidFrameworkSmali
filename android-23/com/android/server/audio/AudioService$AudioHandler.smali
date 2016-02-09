.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    .line 4037
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    #@3
    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    #@0
    .prologue
    .line 4314
    if-eqz p1, :cond_0

    #@2
    .line 4316
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    #@5
    .line 4317
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 4313
    :cond_0
    :goto_0
    return-void

    #@9
    .line 4318
    :catch_0
    move-exception v0

    #@a
    .line 4319
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "AudioService"

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "MediaPlayer IllegalStateException: "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    goto :goto_0
.end method

.method private onLoadSoundEffects()Z
    .locals 15

    #@0
    .prologue
    .line 4110
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get33(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@5
    move-result-object v11

    #@6
    monitor-enter v11

    #@7
    .line 4111
    :try_start_0
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@9
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)Z

    #@c
    move-result v10

    #@d
    if-nez v10, :cond_0

    #@f
    .line 4112
    const-string/jumbo v10, "AudioService"

    #@12
    const-string/jumbo v12, "onLoadSoundEffects() called before boot complete"

    #@15
    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 4113
    const/4 v10, 0x0

    #@19
    monitor-exit v11

    #@1a
    return v10

    #@1b
    .line 4116
    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@1d
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result-object v10

    #@21
    if-eqz v10, :cond_1

    #@23
    .line 4117
    const/4 v10, 0x1

    #@24
    monitor-exit v11

    #@25
    return v10

    #@26
    .line 4120
    :cond_1
    :try_start_2
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@28
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-wrap16(Lcom/android/server/audio/AudioService;)V

    #@2b
    .line 4122
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2d
    new-instance v12, Landroid/media/SoundPool$Builder;

    #@2f
    invoke-direct {v12}, Landroid/media/SoundPool$Builder;-><init>()V

    #@32
    .line 4123
    const/4 v13, 0x4

    #@33
    .line 4122
    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    #@36
    move-result-object v12

    #@37
    .line 4124
    new-instance v13, Landroid/media/AudioAttributes$Builder;

    #@39
    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@3c
    .line 4125
    const/16 v14, 0xd

    #@3e
    .line 4124
    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@41
    move-result-object v13

    #@42
    .line 4126
    const/4 v14, 0x4

    #@43
    .line 4124
    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@46
    move-result-object v13

    #@47
    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@4a
    move-result-object v13

    #@4b
    .line 4122
    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    #@4e
    move-result-object v12

    #@4f
    invoke-virtual {v12}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    #@52
    move-result-object v12

    #@53
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    #@56
    .line 4129
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@58
    const/4 v12, 0x0

    #@59
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set13(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    #@5c
    .line 4130
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@5e
    new-instance v12, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    #@60
    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@62
    invoke-direct {v12, v13}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;-><init>(Lcom/android/server/audio/AudioService;)V

    #@65
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    #@68
    .line 4131
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@6a
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get36(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    #@6d
    move-result-object v10

    #@6e
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->start()V

    #@71
    .line 4132
    const/4 v0, 0x3

    #@72
    .local v0, "attempts":I
    move v1, v0

    #@73
    .line 4133
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_0
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@75
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@78
    move-result-object v10

    #@79
    if-nez v10, :cond_2

    #@7b
    add-int/lit8 v0, v1, -0x1

    #@7d
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_3

    #@7f
    .line 4136
    :try_start_3
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@81
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get33(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@84
    move-result-object v10

    #@85
    const-wide/16 v12, 0x1388

    #@87
    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8a
    :goto_1
    move v1, v0

    #@8b
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_0

    #@8c
    :cond_2
    move v0, v1

    #@8d
    .line 4142
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :cond_3
    :try_start_4
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@8f
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    #@92
    move-result-object v10

    #@93
    if-nez v10, :cond_5

    #@95
    .line 4143
    const-string/jumbo v10, "AudioService"

    #@98
    const-string/jumbo v12, "onLoadSoundEffects() SoundPool listener or thread creation error"

    #@9b
    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    .line 4144
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@a0
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    #@a3
    move-result-object v10

    #@a4
    if-eqz v10, :cond_4

    #@a6
    .line 4145
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@a8
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    #@ab
    move-result-object v10

    #@ac
    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    #@af
    .line 4146
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@b1
    const/4 v12, 0x0

    #@b2
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    #@b5
    .line 4148
    :cond_4
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@b7
    const/4 v12, 0x0

    #@b8
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    #@bb
    .line 4149
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@bd
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    #@c0
    move-result-object v10

    #@c1
    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    #@c4
    .line 4150
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@c6
    const/4 v12, 0x0

    #@c7
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ca
    .line 4151
    const/4 v10, 0x0

    #@cb
    monitor-exit v11

    #@cc
    return v10

    #@cd
    .line 4137
    :catch_0
    move-exception v2

    #@ce
    .line 4138
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v10, "AudioService"

    #@d1
    const-string/jumbo v12, "Interrupted while waiting sound pool listener thread."

    #@d4
    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@d7
    goto :goto_1

    #@d8
    .line 4110
    .end local v0    # "attempts":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v10

    #@d9
    monitor-exit v11

    #@da
    throw v10

    #@db
    .line 4159
    .restart local v0    # "attempts":I
    :cond_5
    :try_start_6
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    #@de
    move-result-object v10

    #@df
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@e2
    move-result v10

    #@e3
    new-array v7, v10, [I

    #@e5
    .line 4160
    .local v7, "poolId":[I
    const/4 v4, 0x0

    #@e6
    .local v4, "fileIdx":I
    :goto_2
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    #@e9
    move-result-object v10

    #@ea
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@ed
    move-result v10

    #@ee
    if-ge v4, v10, :cond_6

    #@f0
    .line 4161
    const/4 v10, -0x1

    #@f1
    aput v10, v7, v4

    #@f3
    .line 4160
    add-int/lit8 v4, v4, 0x1

    #@f5
    goto :goto_2

    #@f6
    .line 4169
    :cond_6
    const/4 v6, 0x0

    #@f7
    .line 4170
    .local v6, "numSamples":I
    const/4 v3, 0x0

    #@f8
    .local v3, "effect":I
    :goto_3
    const/16 v10, 0xa

    #@fa
    if-ge v3, v10, :cond_a

    #@fc
    .line 4172
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@fe
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@101
    move-result-object v10

    #@102
    aget-object v10, v10, v3

    #@104
    const/4 v12, 0x1

    #@105
    aget v10, v10, v12

    #@107
    if-nez v10, :cond_7

    #@109
    .line 4170
    :goto_4
    add-int/lit8 v3, v3, 0x1

    #@10b
    goto :goto_3

    #@10c
    .line 4175
    :cond_7
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@10e
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@111
    move-result-object v10

    #@112
    aget-object v10, v10, v3

    #@114
    const/4 v12, 0x0

    #@115
    aget v10, v10, v12

    #@117
    aget v10, v7, v10

    #@119
    const/4 v12, -0x1

    #@11a
    if-ne v10, v12, :cond_9

    #@11c
    .line 4176
    new-instance v10, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@124
    move-result-object v12

    #@125
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v10

    #@129
    .line 4177
    const-string/jumbo v12, "/media/audio/ui/"

    #@12c
    .line 4176
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v12

    #@130
    .line 4178
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    #@133
    move-result-object v10

    #@134
    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@136
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@139
    move-result-object v13

    #@13a
    aget-object v13, v13, v3

    #@13c
    const/4 v14, 0x0

    #@13d
    aget v13, v13, v14

    #@13f
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@142
    move-result-object v10

    #@143
    check-cast v10, Ljava/lang/String;

    #@145
    .line 4176
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v10

    #@149
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v5

    #@14d
    .line 4179
    .local v5, "filePath":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@14f
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    #@152
    move-result-object v10

    #@153
    const/4 v12, 0x0

    #@154
    invoke-virtual {v10, v5, v12}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    #@157
    move-result v8

    #@158
    .line 4180
    .local v8, "sampleId":I
    if-gtz v8, :cond_8

    #@15a
    .line 4181
    const-string/jumbo v10, "AudioService"

    #@15d
    new-instance v12, Ljava/lang/StringBuilder;

    #@15f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@162
    const-string/jumbo v13, "Soundpool could not load file: "

    #@165
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v12

    #@169
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v12

    #@16d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@170
    move-result-object v12

    #@171
    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@174
    goto :goto_4

    #@175
    .line 4183
    :cond_8
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@177
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@17a
    move-result-object v10

    #@17b
    aget-object v10, v10, v3

    #@17d
    const/4 v12, 0x1

    #@17e
    aput v8, v10, v12

    #@180
    .line 4184
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@182
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@185
    move-result-object v10

    #@186
    aget-object v10, v10, v3

    #@188
    const/4 v12, 0x0

    #@189
    aget v10, v10, v12

    #@18b
    aput v8, v7, v10

    #@18d
    .line 4185
    add-int/lit8 v6, v6, 0x1

    #@18f
    goto/16 :goto_4

    #@191
    .line 4188
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v8    # "sampleId":I
    :cond_9
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@193
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@196
    move-result-object v10

    #@197
    aget-object v10, v10, v3

    #@199
    .line 4189
    iget-object v12, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@19b
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@19e
    move-result-object v12

    #@19f
    aget-object v12, v12, v3

    #@1a1
    const/4 v13, 0x0

    #@1a2
    aget v12, v12, v13

    #@1a4
    aget v12, v7, v12

    #@1a6
    .line 4188
    const/4 v13, 0x1

    #@1a7
    aput v12, v10, v13

    #@1a9
    goto/16 :goto_4

    #@1ab
    .line 4193
    :cond_a
    if-lez v6, :cond_f

    #@1ad
    .line 4194
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@1af
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    #@1b2
    move-result-object v10

    #@1b3
    invoke-virtual {v10, v7}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1b6
    .line 4196
    const/4 v0, 0x3

    #@1b7
    .line 4197
    const/4 v9, 0x1

    #@1b8
    .local v9, "status":I
    move v1, v0

    #@1b9
    .line 4198
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :goto_5
    const/4 v10, 0x1

    #@1ba
    if-ne v9, v10, :cond_b

    #@1bc
    add-int/lit8 v0, v1, -0x1

    #@1be
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_c

    #@1c0
    .line 4200
    :try_start_7
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@1c2
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get33(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@1c5
    move-result-object v10

    #@1c6
    const-wide/16 v12, 0x1388

    #@1c8
    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V

    #@1cb
    .line 4201
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@1cd
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get35(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    #@1d0
    move-result-object v10

    #@1d1
    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->status()I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@1d4
    move-result v9

    #@1d5
    :goto_6
    move v1, v0

    #@1d6
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_5

    #@1d7
    :cond_b
    move v0, v1

    #@1d8
    .line 4210
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :cond_c
    :goto_7
    :try_start_8
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@1da
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    #@1dd
    move-result-object v10

    #@1de
    if-eqz v10, :cond_d

    #@1e0
    .line 4211
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@1e2
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get37(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    #@1e5
    move-result-object v10

    #@1e6
    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    #@1e9
    .line 4212
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@1eb
    const/4 v12, 0x0

    #@1ec
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    #@1ef
    .line 4214
    :cond_d
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@1f1
    const/4 v12, 0x0

    #@1f2
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set14(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    #@1f5
    .line 4215
    if-eqz v9, :cond_11

    #@1f7
    .line 4216
    const-string/jumbo v10, "AudioService"

    #@1fa
    .line 4217
    new-instance v12, Ljava/lang/StringBuilder;

    #@1fc
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@1ff
    const-string/jumbo v13, "onLoadSoundEffects(), Error "

    #@202
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v12

    #@206
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@209
    move-result-object v12

    #@20a
    const-string/jumbo v13, " while loading samples"

    #@20d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@210
    move-result-object v12

    #@211
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@214
    move-result-object v12

    #@215
    .line 4216
    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@218
    .line 4218
    const/4 v3, 0x0

    #@219
    :goto_8
    const/16 v10, 0xa

    #@21b
    if-ge v3, v10, :cond_10

    #@21d
    .line 4219
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@21f
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@222
    move-result-object v10

    #@223
    aget-object v10, v10, v3

    #@225
    const/4 v12, 0x1

    #@226
    aget v10, v10, v12

    #@228
    if-lez v10, :cond_e

    #@22a
    .line 4220
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@22c
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@22f
    move-result-object v10

    #@230
    aget-object v10, v10, v3

    #@232
    const/4 v12, -0x1

    #@233
    const/4 v13, 0x1

    #@234
    aput v12, v10, v13

    #@236
    .line 4218
    :cond_e
    add-int/lit8 v3, v3, 0x1

    #@238
    goto :goto_8

    #@239
    .line 4202
    :catch_1
    move-exception v2

    #@23a
    .line 4203
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v10, "AudioService"

    #@23d
    const-string/jumbo v12, "Interrupted while waiting sound pool callback."

    #@240
    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@243
    goto :goto_6

    #@244
    .line 4207
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "status":I
    :cond_f
    const/4 v9, -0x1

    #@245
    .restart local v9    # "status":I
    goto :goto_7

    #@246
    .line 4224
    :cond_10
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@248
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    #@24b
    move-result-object v10

    #@24c
    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    #@24f
    .line 4225
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@251
    const/4 v12, 0x0

    #@252
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@255
    :cond_11
    monitor-exit v11

    #@256
    .line 4228
    if-nez v9, :cond_12

    #@258
    const/4 v10, 0x1

    #@259
    :goto_9
    return v10

    #@25a
    :cond_12
    const/4 v10, 0x0

    #@25b
    goto :goto_9
.end method

.method private onPersistSafeVolumeState(I)V
    .locals 2
    .param p1, "state"    # I

    #@0
    .prologue
    .line 4331
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 4332
    const-string/jumbo v1, "audio_safe_volume_state"

    #@9
    .line 4331
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@c
    .line 4330
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .locals 13
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    #@0
    .prologue
    .line 4263
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get33(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@5
    move-result-object v12

    #@6
    monitor-enter v12

    #@7
    .line 4265
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    #@a
    .line 4267
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@c
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v0

    #@10
    if-nez v0, :cond_0

    #@12
    monitor-exit v12

    #@13
    .line 4268
    return-void

    #@14
    .line 4272
    :cond_0
    if-gez p2, :cond_1

    #@16
    .line 4273
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    #@18
    :try_start_1
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get43()I

    #@1b
    move-result v3

    #@1c
    int-to-float v3, v3

    #@1d
    const/high16 v4, 0x41a00000    # 20.0f

    #@1f
    div-float/2addr v3, v4

    #@20
    float-to-double v4, v3

    #@21
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@24
    move-result-wide v0

    #@25
    double-to-float v2, v0

    #@26
    .line 4278
    .local v2, "volFloat":F
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@28
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@2b
    move-result-object v0

    #@2c
    aget-object v0, v0, p1

    #@2e
    const/4 v1, 0x1

    #@2f
    aget v0, v0, v1

    #@31
    if-lez v0, :cond_2

    #@33
    .line 4279
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@35
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    #@38
    move-result-object v0

    #@39
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@3b
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@3e
    move-result-object v1

    #@3f
    aget-object v1, v1, p1

    #@41
    const/4 v3, 0x1

    #@42
    aget v1, v1, v3

    #@44
    .line 4280
    const/4 v4, 0x0

    #@45
    const/4 v5, 0x0

    #@46
    const/high16 v6, 0x3f800000    # 1.0f

    #@48
    move v3, v2

    #@49
    .line 4279
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    :goto_1
    monitor-exit v12

    #@4d
    .line 4262
    return-void

    #@4e
    .line 4275
    .end local v2    # "volFloat":F
    :cond_1
    int-to-float v0, p2

    #@4f
    const/high16 v1, 0x447a0000    # 1000.0f

    #@51
    div-float v2, v0, v1

    #@53
    .restart local v2    # "volFloat":F
    goto :goto_0

    #@54
    .line 4282
    :cond_2
    :try_start_2
    new-instance v11, Landroid/media/MediaPlayer;

    #@56
    invoke-direct {v11}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@59
    .line 4284
    .local v11, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    const-string/jumbo v1, "/media/audio/ui/"

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    .line 4285
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    #@70
    move-result-object v0

    #@71
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@73
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@76
    move-result-object v3

    #@77
    aget-object v3, v3, p1

    #@79
    const/4 v4, 0x0

    #@7a
    aget v3, v3, v4

    #@7c
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7f
    move-result-object v0

    #@80
    check-cast v0, Ljava/lang/String;

    #@82
    .line 4284
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v10

    #@8a
    .line 4286
    .local v10, "filePath":Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    #@8d
    .line 4287
    const/4 v0, 0x1

    #@8e
    invoke-virtual {v11, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    #@91
    .line 4288
    invoke-virtual {v11}, Landroid/media/MediaPlayer;->prepare()V

    #@94
    .line 4289
    invoke-virtual {v11, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    #@97
    .line 4290
    new-instance v0, Lcom/android/server/audio/AudioService$AudioHandler$1;

    #@99
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioHandler$1;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    #@9c
    invoke-virtual {v11, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    #@9f
    .line 4295
    new-instance v0, Lcom/android/server/audio/AudioService$AudioHandler$2;

    #@a1
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioHandler$2;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    #@a4
    invoke-virtual {v11, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    #@a7
    .line 4301
    invoke-virtual {v11}, Landroid/media/MediaPlayer;->start()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@aa
    goto :goto_1

    #@ab
    .line 4302
    .end local v10    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@ac
    .line 4303
    .local v7, "ex":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v0, "AudioService"

    #@af
    new-instance v1, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v3, "MediaPlayer IOException: "

    #@b7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v1

    #@bb
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v1

    #@bf
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v1

    #@c3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c6
    goto :goto_1

    #@c7
    .line 4263
    .end local v2    # "volFloat":F
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v11    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v0

    #@c8
    monitor-exit v12

    #@c9
    throw v0

    #@ca
    .line 4306
    .restart local v2    # "volFloat":F
    .restart local v11    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_1
    move-exception v9

    #@cb
    .line 4307
    .local v9, "ex":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string/jumbo v0, "AudioService"

    #@ce
    new-instance v1, Ljava/lang/StringBuilder;

    #@d0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d3
    const-string/jumbo v3, "MediaPlayer IllegalStateException: "

    #@d6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v1

    #@da
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v1

    #@de
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v1

    #@e2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e5
    goto/16 :goto_1

    #@e7
    .line 4304
    .end local v9    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v8

    #@e8
    .line 4305
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "AudioService"

    #@eb
    new-instance v1, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    const-string/jumbo v3, "MediaPlayer IllegalArgumentException: "

    #@f3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v1

    #@f7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v1

    #@fb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v1

    #@ff
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@102
    goto/16 :goto_1
.end method

.method private onUnloadSoundEffects()V
    .locals 7

    #@0
    .prologue
    .line 4237
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get33(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    monitor-enter v4

    #@7
    .line 4238
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@9
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v3

    #@d
    if-nez v3, :cond_0

    #@f
    monitor-exit v4

    #@10
    .line 4239
    return-void

    #@11
    .line 4242
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    #@14
    move-result-object v3

    #@15
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@18
    move-result v3

    #@19
    new-array v2, v3, [I

    #@1b
    .line 4243
    .local v2, "poolId":[I
    const/4 v1, 0x0

    #@1c
    .local v1, "fileIdx":I
    :goto_0
    invoke-static {}, Lcom/android/server/audio/AudioService;->-get2()Ljava/util/List;

    #@1f
    move-result-object v3

    #@20
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@23
    move-result v3

    #@24
    if-ge v1, v3, :cond_1

    #@26
    .line 4244
    const/4 v3, 0x0

    #@27
    aput v3, v2, v1

    #@29
    .line 4243
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 4247
    :cond_1
    const/4 v0, 0x0

    #@2d
    .local v0, "effect":I
    :goto_1
    const/16 v3, 0xa

    #@2f
    if-ge v0, v3, :cond_4

    #@31
    .line 4248
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@33
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@36
    move-result-object v3

    #@37
    aget-object v3, v3, v0

    #@39
    const/4 v5, 0x1

    #@3a
    aget v3, v3, v5

    #@3c
    if-gtz v3, :cond_3

    #@3e
    .line 4247
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_1

    #@41
    .line 4251
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@43
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@46
    move-result-object v3

    #@47
    aget-object v3, v3, v0

    #@49
    const/4 v5, 0x0

    #@4a
    aget v3, v3, v5

    #@4c
    aget v3, v2, v3

    #@4e
    if-nez v3, :cond_2

    #@50
    .line 4252
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@52
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    #@55
    move-result-object v3

    #@56
    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@58
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@5b
    move-result-object v5

    #@5c
    aget-object v5, v5, v0

    #@5e
    const/4 v6, 0x1

    #@5f
    aget v5, v5, v6

    #@61
    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    #@64
    .line 4253
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@66
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@69
    move-result-object v3

    #@6a
    aget-object v3, v3, v0

    #@6c
    const/4 v5, -0x1

    #@6d
    const/4 v6, 0x1

    #@6e
    aput v5, v3, v6

    #@70
    .line 4254
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@72
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get3(Lcom/android/server/audio/AudioService;)[[I

    #@75
    move-result-object v3

    #@76
    aget-object v3, v3, v0

    #@78
    const/4 v5, 0x0

    #@79
    aget v3, v3, v5

    #@7b
    const/4 v5, -0x1

    #@7c
    aput v5, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7e
    goto :goto_2

    #@7f
    .line 4237
    .end local v0    # "effect":I
    .end local v1    # "fileIdx":I
    .end local v2    # "poolId":[I
    :catchall_0
    move-exception v3

    #@80
    monitor-exit v4

    #@81
    throw v3

    #@82
    .line 4257
    .restart local v0    # "effect":I
    .restart local v1    # "fileIdx":I
    .restart local v2    # "poolId":[I
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@84
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    #@8b
    .line 4258
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@8d
    const/4 v5, 0x0

    #@8e
    invoke-static {v3, v5}, Lcom/android/server/audio/AudioService;->-set12(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@91
    monitor-exit v4

    #@92
    .line 4236
    return-void
.end method

.method private persistRingerMode(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    #@0
    .prologue
    .line 4101
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 4102
    return-void

    #@9
    .line 4104
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@b
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "mode_ringer"

    #@12
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    #@15
    .line 4100
    return-void
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    #@0
    .prologue
    .line 4088
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 4089
    return-void

    #@9
    .line 4091
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@b
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    #@14
    move-result v0

    #@15
    const/4 v1, 0x3

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 4092
    return-void

    #@19
    .line 4094
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@1b
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@1e
    move-result-object v0

    #@1f
    .line 4095
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 4096
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    #@26
    move-result v2

    #@27
    add-int/lit8 v2, v2, 0x5

    #@29
    div-int/lit8 v2, v2, 0xa

    #@2b
    .line 4097
    const/4 v3, -0x2

    #@2c
    .line 4094
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@2f
    .line 4087
    return-void
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@0
    .prologue
    .line 4075
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    #@3
    .line 4078
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@6
    move-result v0

    #@7
    .line 4079
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    #@9
    .local v1, "streamType":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 4080
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    #@e
    move-result v2

    #@f
    if-eq v1, v2, :cond_0

    #@11
    .line 4081
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@13
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)[I

    #@16
    move-result-object v2

    #@17
    aget v2, v2, v1

    #@19
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    #@1c
    move-result v3

    #@1d
    if-ne v2, v3, :cond_0

    #@1f
    .line 4082
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@21
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get38(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@24
    move-result-object v2

    #@25
    aget-object v2, v2, v1

    #@27
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    #@2a
    .line 4079
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 4072
    :cond_1
    return-void
.end method

.method private setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 10
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4041
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3
    monitor-enter v1

    #@4
    .line 4043
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    #@7
    .line 4046
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    #@a
    move-result v7

    #@b
    .line 4047
    .local v7, "numStreamTypes":I
    add-int/lit8 v9, v7, -0x1

    #@d
    .local v9, "streamType":I
    :goto_0
    if-ltz v9, :cond_2

    #@f
    .line 4048
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    #@12
    move-result v0

    #@13
    if-eq v9, v0, :cond_1

    #@15
    .line 4049
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@17
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get39(Lcom/android/server/audio/AudioService;)[I

    #@1a
    move-result-object v0

    #@1b
    aget v0, v0, v9

    #@1d
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->-get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    #@20
    move-result v2

    #@21
    if-ne v0, v2, :cond_1

    #@23
    .line 4052
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@25
    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->-wrap4(Lcom/android/server/audio/AudioService;I)I

    #@28
    move-result v8

    #@29
    .line 4053
    .local v8, "streamDevice":I
    if-eq p2, v8, :cond_0

    #@2b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2d
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get10(Lcom/android/server/audio/AudioService;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_0

    #@33
    .line 4054
    and-int/lit16 v0, p2, 0x380

    #@35
    if-eqz v0, :cond_0

    #@37
    .line 4055
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@39
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get38(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@3c
    move-result-object v0

    #@3d
    aget-object v0, v0, v9

    #@3f
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    #@42
    .line 4057
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@44
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get38(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@47
    move-result-object v0

    #@48
    aget-object v0, v0, v9

    #@4a
    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    .line 4047
    .end local v8    # "streamDevice":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    #@4f
    goto :goto_0

    #@50
    :cond_2
    monitor-exit v1

    #@51
    .line 4062
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@53
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get7(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    #@56
    move-result-object v0

    #@57
    .line 4063
    const/4 v1, 0x1

    #@58
    .line 4064
    const/4 v2, 0x2

    #@59
    .line 4068
    const/16 v6, 0x1f4

    #@5b
    move v3, p2

    #@5c
    move-object v5, p1

    #@5d
    .line 4062
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap35(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    #@60
    .line 4039
    return-void

    #@61
    .line 4041
    .end local v7    # "numStreamTypes":I
    .end local v9    # "streamType":I
    :catchall_0
    move-exception v0

    #@62
    monitor-exit v1

    #@63
    throw v0
.end method

.method private setForceUse(II)V
    .locals 2
    .param p1, "usage"    # I
    .param p2, "config"    # I

    #@0
    .prologue
    .line 4325
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 4326
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@9
    invoke-static {v0, p1, p2}, Lcom/android/server/audio/AudioService;->-wrap37(Lcom/android/server/audio/AudioService;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 4324
    return-void

    #@e
    .line 4325
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 4338
    iget v2, p1, Landroid/os/Message;->what:I

    #@4
    sparse-switch v2, :sswitch_data_0

    #@7
    .line 4337
    :cond_0
    :goto_0
    return-void

    #@8
    .line 4341
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a
    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@c
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@e
    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    #@11
    goto :goto_0

    #@12
    .line 4345
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@16
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    #@19
    goto :goto_0

    #@1a
    .line 4349
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1c
    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    #@1e
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@20
    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    #@23
    goto :goto_0

    #@24
    .line 4353
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@26
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_1

    #@2c
    .line 4354
    return-void

    #@2d
    .line 4356
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@2f
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@32
    move-result-object v0

    #@33
    .line 4357
    const-string/jumbo v1, "volume_master_mute"

    #@36
    .line 4358
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@38
    .line 4359
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@3a
    .line 4356
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@3d
    goto :goto_0

    #@3e
    .line 4365
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@40
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    #@43
    move-result v0

    #@44
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    #@47
    goto :goto_0

    #@48
    .line 4369
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@4a
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onMediaServerDied()V

    #@4d
    goto :goto_0

    #@4e
    .line 4373
    :sswitch_6
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onUnloadSoundEffects()V

    #@51
    goto :goto_0

    #@52
    .line 4379
    :sswitch_7
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    #@55
    move-result v9

    #@56
    .line 4380
    .local v9, "loaded":Z
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@58
    if-eqz v2, :cond_0

    #@5a
    .line 4381
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5c
    check-cast v12, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    #@5e
    .line 4382
    .local v12, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v12

    #@5f
    .line 4383
    if-eqz v9, :cond_2

    #@61
    :goto_1
    :try_start_0
    iput v0, v12, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    #@63
    .line 4384
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@66
    monitor-exit v12

    #@67
    goto :goto_0

    #@68
    :cond_2
    move v0, v1

    #@69
    .line 4383
    goto :goto_1

    #@6a
    .line 4382
    :catchall_0
    move-exception v0

    #@6b
    monitor-exit v12

    #@6c
    throw v0

    #@6d
    .line 4390
    .end local v9    # "loaded":Z
    .end local v12    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@6f
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@71
    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    #@74
    goto :goto_0

    #@75
    .line 4395
    :sswitch_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@77
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get14(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    #@7a
    move-result-object v1

    #@7b
    monitor-enter v1

    #@7c
    .line 4396
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@7e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@80
    check-cast v0, Ljava/lang/String;

    #@82
    invoke-static {v2, v0}, Lcom/android/server/audio/AudioService;->-wrap18(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@85
    monitor-exit v1

    #@86
    goto :goto_0

    #@87
    .line 4395
    :catchall_1
    move-exception v0

    #@88
    monitor-exit v1

    #@89
    throw v0

    #@8a
    .line 4402
    :sswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@8c
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@8e
    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setForceUse(II)V

    #@91
    goto/16 :goto_0

    #@93
    .line 4406
    :sswitch_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@95
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap33(Lcom/android/server/audio/AudioService;)V

    #@98
    goto/16 :goto_0

    #@9a
    .line 4411
    :sswitch_c
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9c
    check-cast v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    #@9e
    .line 4412
    .local v7, "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@a0
    iget v1, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    #@a2
    iget v2, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mState:I

    #@a4
    .line 4413
    iget-object v3, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    #@a6
    iget-object v4, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    #@a8
    iget-object v5, v7, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    #@aa
    .line 4412
    invoke-static/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->-wrap28(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ad
    .line 4414
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@af
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    #@b2
    move-result-object v0

    #@b3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@b6
    goto/16 :goto_0

    #@b8
    .line 4419
    .end local v7    # "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    :sswitch_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@ba
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@bc
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@be
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@c0
    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap27(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    #@c3
    .line 4420
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@c5
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    #@c8
    move-result-object v0

    #@c9
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@cc
    goto/16 :goto_0

    #@ce
    .line 4424
    :sswitch_e
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@d0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@d2
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    #@d4
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@d6
    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap26(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    #@d9
    .line 4425
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@db
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get6(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    #@de
    move-result-object v0

    #@df
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@e2
    goto/16 :goto_0

    #@e4
    .line 4429
    :sswitch_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@e6
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    #@e8
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@eb
    move-result v6

    #@ec
    .line 4430
    .local v6, "N":I
    if-lez v6, :cond_3

    #@ee
    .line 4432
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@f0
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@f2
    monitor-enter v2

    #@f3
    .line 4433
    :try_start_2
    new-instance v13, Landroid/media/AudioRoutesInfo;

    #@f5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@f7
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    #@f9
    invoke-direct {v13, v0}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@fc
    .local v13, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v2

    #@fd
    .line 4435
    :goto_2
    if-lez v6, :cond_3

    #@ff
    .line 4436
    add-int/lit8 v6, v6, -0x1

    #@101
    .line 4437
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@103
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    #@105
    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@108
    move-result-object v11

    #@109
    check-cast v11, Landroid/media/IAudioRoutesObserver;

    #@10b
    .line 4439
    .local v11, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_3
    invoke-interface {v11, v13}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    #@10e
    goto :goto_2

    #@10f
    .line 4440
    :catch_0
    move-exception v8

    #@110
    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@111
    .line 4432
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v11    # "obs":Landroid/media/IAudioRoutesObserver;
    .end local v13    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_2
    move-exception v0

    #@112
    monitor-exit v2

    #@113
    throw v0

    #@114
    .line 4444
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@116
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    #@118
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@11b
    .line 4445
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@11d
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-wrap20(Lcom/android/server/audio/AudioService;I)V

    #@120
    goto/16 :goto_0

    #@122
    .line 4450
    .end local v6    # "N":I
    :sswitch_10
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@124
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@126
    check-cast v0, Ljava/lang/String;

    #@128
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioService;->-wrap22(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    #@12b
    goto/16 :goto_0

    #@12d
    .line 4454
    :sswitch_11
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@12f
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap25(Lcom/android/server/audio/AudioService;)V

    #@132
    goto/16 :goto_0

    #@134
    .line 4459
    :sswitch_12
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@136
    iget v1, p1, Landroid/os/Message;->what:I

    #@138
    const/16 v3, 0x11

    #@13a
    if-ne v1, v3, :cond_4

    #@13c
    const/4 v0, 0x1

    #@13d
    move v1, v0

    #@13e
    .line 4460
    :goto_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@140
    check-cast v0, Ljava/lang/String;

    #@142
    .line 4459
    invoke-static {v2, v1, v0}, Lcom/android/server/audio/AudioService;->-wrap23(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    #@145
    goto/16 :goto_0

    #@147
    :cond_4
    move v1, v0

    #@148
    goto :goto_3

    #@149
    .line 4463
    :sswitch_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    #@14b
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    #@14e
    goto/16 :goto_0

    #@150
    .line 4467
    :sswitch_14
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@152
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@154
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-wrap21(Lcom/android/server/audio/AudioService;I)V

    #@157
    goto/16 :goto_0

    #@159
    .line 4471
    :sswitch_15
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@15b
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    #@15e
    goto/16 :goto_0

    #@160
    .line 4475
    :sswitch_16
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@162
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    #@165
    goto/16 :goto_0

    #@167
    .line 4479
    :sswitch_17
    iget v10, p1, Landroid/os/Message;->arg1:I

    #@169
    .line 4480
    .local v10, "musicActiveMs":I
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@16b
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@16e
    move-result-object v0

    #@16f
    .line 4481
    const-string/jumbo v1, "unsafe_volume_music_active_ms"

    #@172
    .line 4482
    const/4 v2, -0x2

    #@173
    .line 4480
    invoke-static {v0, v1, v10, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@176
    goto/16 :goto_0

    #@178
    .line 4485
    .end local v10    # "musicActiveMs":I
    :sswitch_18
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@17a
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    #@17d
    move-result-object v0

    #@17e
    .line 4486
    const-string/jumbo v1, "microphone_mute"

    #@181
    .line 4487
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@183
    .line 4488
    iget v3, p1, Landroid/os/Message;->arg2:I

    #@185
    .line 4485
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@188
    goto/16 :goto_0

    #@18a
    .line 4491
    :sswitch_19
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@18c
    iget v1, p1, Landroid/os/Message;->arg1:I

    #@18e
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@190
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioService;->-wrap29(Lcom/android/server/audio/AudioService;II)V

    #@193
    goto/16 :goto_0

    #@195
    .line 4494
    :sswitch_1a
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    #@197
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@199
    check-cast v0, Ljava/lang/String;

    #@19b
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@19d
    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-wrap24(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    #@1a0
    goto/16 :goto_0

    #@1a2
    .line 4338
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x7 -> :sswitch_7
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_1
        0xb -> :sswitch_3
        0xc -> :sswitch_f
        0xd -> :sswitch_a
        0xe -> :sswitch_10
        0xf -> :sswitch_11
        0x10 -> :sswitch_12
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_6
        0x15 -> :sswitch_15
        0x16 -> :sswitch_17
        0x17 -> :sswitch_18
        0x18 -> :sswitch_19
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_16
        0x64 -> :sswitch_c
        0x65 -> :sswitch_d
        0x66 -> :sswitch_e
    .end sparse-switch
.end method
