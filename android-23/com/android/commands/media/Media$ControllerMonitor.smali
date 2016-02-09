.class Lcom/android/commands/media/Media$ControllerMonitor;
.super Landroid/media/session/ISessionControllerCallback$Stub;
.source "Media.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/media/Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerMonitor"
.end annotation


# instance fields
.field private final mController:Landroid/media/session/ISessionController;

.field final synthetic this$0:Lcom/android/commands/media/Media;


# direct methods
.method static synthetic -get0(Lcom/android/commands/media/Media$ControllerMonitor;)Landroid/media/session/ISessionController;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/commands/media/Media$ControllerMonitor;->mController:Landroid/media/session/ISessionController;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/commands/media/Media;Landroid/media/session/ISessionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/media/Media;
    .param p2, "controller"    # Landroid/media/session/ISessionController;

    #@0
    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/commands/media/Media$ControllerMonitor;->this$0:Lcom/android/commands/media/Media;

    #@2
    invoke-direct {p0}, Landroid/media/session/ISessionControllerCallback$Stub;-><init>()V

    #@5
    .line 178
    iput-object p2, p0, Lcom/android/commands/media/Media$ControllerMonitor;->mController:Landroid/media/session/ISessionController;

    #@7
    .line 177
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 189
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "onSessionEvent event="

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, ", extras="

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    .line 188
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "onExtrasChanged "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    .line 216
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 4
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    #@0
    .prologue
    .line 199
    if-nez p1, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    .line 201
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "onMetadataChanged "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c
    .line 198
    return-void

    #@1d
    .line 199
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "title="

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {p1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    .local v0, "mmString":Ljava/lang/String;
    goto :goto_0
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    #@0
    .prologue
    .line 194
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "onPlaybackStateChanged "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    .line 193
    return-void
.end method

.method public onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 4
    .param p1, "queue"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "onQueueChanged, "

    #@a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    .line 207
    if-nez p1, :cond_0

    #@10
    const-string/jumbo v0, "null queue"

    #@13
    .line 206
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e
    .line 205
    return-void

    #@1f
    .line 207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, " size="

    #@27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@2e
    move-result-object v3

    #@2f
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@32
    move-result v3

    #@33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    goto :goto_0
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "onQueueTitleChange "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    .line 211
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    #@0
    .prologue
    .line 183
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "onSessionDestroyed. Enter q to quit."

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 182
    return-void
.end method

.method public onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/media/session/ParcelableVolumeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 222
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "onVolumeInfoChanged "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    .line 221
    return-void
.end method

.method printUsageMessage()V
    .locals 4

    #@0
    .prologue
    .line 227
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "V2Monitoring session "

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    iget-object v3, p0, Lcom/android/commands/media/Media$ControllerMonitor;->mController:Landroid/media/session/ISessionController;

    #@10
    invoke-interface {v3}, Landroid/media/session/ISessionController;->getTag()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 228
    const-string/jumbo v3, "...  available commands: play, pause, next, previous"

    #@1b
    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 232
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@28
    const-string/jumbo v2, "(q)uit: finish monitoring"

    #@2b
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e
    .line 225
    return-void

    #@2f
    .line 229
    :catch_0
    move-exception v0

    #@30
    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v2, "Error trying to monitor session!"

    #@35
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    goto :goto_0
.end method

.method run()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/commands/media/Media$ControllerMonitor;->printUsageMessage()V

    #@3
    .line 237
    new-instance v1, Lcom/android/commands/media/Media$ControllerMonitor$1;

    #@5
    const-string/jumbo v7, "MediaCb"

    #@8
    invoke-direct {v1, p0, v7}, Lcom/android/commands/media/Media$ControllerMonitor$1;-><init>(Lcom/android/commands/media/Media$ControllerMonitor;Ljava/lang/String;)V

    #@b
    .line 247
    .local v1, "cbThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    #@e
    .line 250
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    #@10
    sget-object v7, Ljava/lang/System;->in:Ljava/io/InputStream;

    #@12
    invoke-direct {v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@15
    .line 251
    .local v2, "converter":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    #@17
    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@1a
    .line 254
    .local v5, "in":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_2

    #@20
    .line 255
    const/4 v0, 0x1

    #@21
    .line 256
    .local v0, "addNewline":Z
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@24
    move-result v7

    #@25
    if-gtz v7, :cond_1

    #@27
    .line 257
    const/4 v0, 0x0

    #@28
    .line 272
    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 273
    if-eqz v0, :cond_0

    #@2b
    .line 274
    :try_start_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2d
    const-string/jumbo v8, ""

    #@30
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@33
    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/media/Media$ControllerMonitor;->printUsageMessage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@36
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 279
    .end local v0    # "addNewline":Z
    .end local v2    # "converter":Ljava/io/InputStreamReader;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@39
    .line 280
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3c
    .line 282
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v7}, Landroid/os/Looper;->quit()V

    #@43
    .line 284
    :try_start_4
    iget-object v7, p0, Lcom/android/commands/media/Media$ControllerMonitor;->mController:Landroid/media/session/ISessionController;

    #@45
    invoke-interface {v7, p0}, Landroid/media/session/ISessionController;->unregisterCallbackListener(Landroid/media/session/ISessionControllerCallback;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    #@48
    .line 235
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    #@49
    .line 258
    .restart local v0    # "addNewline":Z
    .restart local v2    # "converter":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_1
    :try_start_5
    const-string/jumbo v7, "q"

    #@4c
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v7

    #@50
    if-nez v7, :cond_2

    #@52
    const-string/jumbo v7, "quit"

    #@55
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@58
    move-result v7

    #@59
    if-eqz v7, :cond_3

    #@5b
    .line 282
    .end local v0    # "addNewline":Z
    :cond_2
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v7}, Landroid/os/Looper;->quit()V

    #@62
    .line 284
    :try_start_6
    iget-object v7, p0, Lcom/android/commands/media/Media$ControllerMonitor;->mController:Landroid/media/session/ISessionController;

    #@64
    invoke-interface {v7, p0}, Landroid/media/session/ISessionController;->unregisterCallbackListener(Landroid/media/session/ISessionControllerCallback;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    #@67
    goto :goto_2

    #@68
    .line 285
    :catch_1
    move-exception v4

    #@69
    .local v4, "e":Ljava/lang/Exception;
    goto :goto_2

    #@6a
    .line 260
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "addNewline":Z
    :cond_3
    :try_start_7
    const-string/jumbo v7, "play"

    #@6d
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v7

    #@71
    if-eqz v7, :cond_4

    #@73
    .line 261
    iget-object v7, p0, Lcom/android/commands/media/Media$ControllerMonitor;->mController:Landroid/media/session/ISessionController;

    #@75
    invoke-interface {v7}, Landroid/media/session/ISessionController;->play()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@78
    goto :goto_1

    #@79
    .line 281
    .end local v0    # "addNewline":Z
    .end local v2    # "converter":Ljava/io/InputStreamReader;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@7a
    .line 282
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    #@81
    .line 284
    :try_start_8
    iget-object v8, p0, Lcom/android/commands/media/Media$ControllerMonitor;->mController:Landroid/media/session/ISessionController;

    #@83
    invoke-interface {v8, p0}, Landroid/media/session/ISessionController;->unregisterCallbackListener(Landroid/media/session/ISessionControllerCallback;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    #@86
    .line 281
    :goto_3
    throw v7

    #@87
    .line 262
    .restart local v0    # "addNewline":Z
    .restart local v2    # "converter":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_4
    :try_start_9
    const-string/jumbo v7, "pause"

    #@8a
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8d
    move-result v7

    #@8e
    if-eqz v7, :cond_5

    #@90
    .line 263
    iget-object v7, p0, Lcom/android/commands/media/Media$ControllerMonitor;->mController:Landroid/media/session/ISessionController;

    #@92
    invoke-interface {v7}, Landroid/media/session/ISessionController;->pause()V

    #@95
    goto :goto_1

    #@96
    .line 264
    :cond_5
    const-string/jumbo v7, "next"

    #@99
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v7

    #@9d
    if-eqz v7, :cond_6

    #@9f
    .line 265
    iget-object v7, p0, Lcom/android/commands/media/Media$ControllerMonitor;->mController:Landroid/media/session/ISessionController;

    #@a1
    invoke-interface {v7}, Landroid/media/session/ISessionController;->next()V

    #@a4
    goto :goto_1

    #@a5
    .line 266
    :cond_6
    const-string/jumbo v7, "previous"

    #@a8
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ab
    move-result v7

    #@ac
    if-eqz v7, :cond_7

    #@ae
    .line 267
    iget-object v7, p0, Lcom/android/commands/media/Media$ControllerMonitor;->mController:Landroid/media/session/ISessionController;

    #@b0
    invoke-interface {v7}, Landroid/media/session/ISessionController;->previous()V

    #@b3
    goto/16 :goto_1

    #@b5
    .line 269
    :cond_7
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b7
    new-instance v8, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v9, "Invalid command: "

    #@bf
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v8

    #@c3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v8

    #@c7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v8

    #@cb
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ce
    goto/16 :goto_1

    #@d0
    .line 272
    :catchall_1
    move-exception v7

    #@d1
    monitor-exit p0

    #@d2
    throw v7
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@d3
    .line 285
    .end local v0    # "addNewline":Z
    .end local v2    # "converter":Ljava/io/InputStreamReader;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    :catch_2
    move-exception v4

    #@d4
    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_3

    #@d5
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    #@d6
    .restart local v4    # "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method
