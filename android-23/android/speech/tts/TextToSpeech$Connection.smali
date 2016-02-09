.class Landroid/speech/tts/TextToSpeech$Connection;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;,
        Landroid/speech/tts/TextToSpeech$Connection$1;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

.field private mEstablished:Z

.field private mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

.field private mService:Landroid/speech/tts/ITextToSpeechService;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static synthetic -get0(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechCallback$Stub;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/speech/tts/TextToSpeech$Connection;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mEstablished:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/speech/tts/TextToSpeech$Connection;Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;)Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    #@2
    return-object p1
.end method

.method private constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .locals 1
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;

    #@0
    .prologue
    .line 2089
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2096
    new-instance v0, Landroid/speech/tts/TextToSpeech$Connection$1;

    #@7
    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$Connection$1;-><init>(Landroid/speech/tts/TextToSpeech$Connection;)V

    #@a
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

    #@c
    .line 2089
    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection;-><init>(Landroid/speech/tts/TextToSpeech;)V

    #@3
    return-void
.end method

.method private clearServiceConnection()Z
    .locals 4

    #@0
    .prologue
    .line 2209
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->-get4(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2210
    const/4 v0, 0x0

    #@8
    .line 2211
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 2212
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    #@e
    const/4 v3, 0x0

    #@f
    invoke-virtual {v1, v3}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->cancel(Z)Z

    #@12
    move-result v0

    #@13
    .line 2213
    .local v0, "result":Z
    const/4 v1, 0x0

    #@14
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    #@16
    .line 2216
    .end local v0    # "result":Z
    :cond_0
    const/4 v1, 0x0

    #@17
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    #@19
    .line 2218
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@1b
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->-get3(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;

    #@1e
    move-result-object v1

    #@1f
    if-ne v1, p0, :cond_1

    #@21
    .line 2219
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@23
    const/4 v3, 0x0

    #@24
    invoke-static {v1, v3}, Landroid/speech/tts/TextToSpeech;->-set2(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    :cond_1
    monitor-exit v2

    #@28
    .line 2221
    return v0

    #@29
    .line 2209
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    #@0
    .prologue
    .line 2240
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-get0(Landroid/speech/tts/TextToSpeech;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@9
    .line 2241
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech$Connection;->clearServiceConnection()Z

    #@c
    .line 2239
    return-void
.end method

.method public getCallerIdentity()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 2200
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

    #@2
    return-object v0
.end method

.method public isEstablished()Z
    .locals 1

    #@0
    .prologue
    .line 2245
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mEstablished:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 2181
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-get4(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 2182
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, v2}, Landroid/speech/tts/TextToSpeech;->-set0(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;

    #@d
    .line 2184
    const-string/jumbo v0, "TextToSpeech"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Connected to "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 2186
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 2187
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    #@2d
    const/4 v2, 0x0

    #@2e
    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->cancel(Z)Z

    #@31
    .line 2190
    :cond_0
    invoke-static {p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechService;

    #@34
    move-result-object v0

    #@35
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    #@37
    .line 2191
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@39
    invoke-static {v0, p0}, Landroid/speech/tts/TextToSpeech;->-set2(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;

    #@3c
    .line 2193
    const/4 v0, 0x0

    #@3d
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mEstablished:Z

    #@3f
    .line 2194
    new-instance v0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    #@41
    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;-><init>(Landroid/speech/tts/TextToSpeech$Connection;Landroid/content/ComponentName;)V

    #@44
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    #@46
    .line 2195
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    #@48
    const/4 v2, 0x0

    #@49
    new-array v2, v2, [Ljava/lang/Void;

    #@4b
    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    monitor-exit v1

    #@4f
    .line 2180
    return-void

    #@50
    .line 2181
    :catchall_0
    move-exception v0

    #@51
    monitor-exit v1

    #@52
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 2227
    const-string/jumbo v0, "TextToSpeech"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Asked to disconnect from "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 2228
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech$Connection;->clearServiceConnection()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 2235
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@22
    const/4 v1, -0x1

    #@23
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->-wrap4(Landroid/speech/tts/TextToSpeech;I)V

    #@26
    .line 2226
    :cond_0
    return-void
.end method

.method public runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 5
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "reconnect"    # Z
    .param p5, "onlyEstablishedConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action",
            "<TR;>;TR;",
            "Ljava/lang/String;",
            "ZZ)TR;"
        }
    .end annotation

    #@0
    .prologue
    .line 2250
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->-get4(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 2252
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 2253
    const-string/jumbo v1, "TextToSpeech"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    const-string/jumbo v4, " failed: not connected to TTS engine"

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v2

    #@26
    .line 2254
    return-object p2

    #@27
    .line 2256
    :cond_0
    if-eqz p5, :cond_1

    #@29
    :try_start_1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$Connection;->isEstablished()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_2

    #@2f
    .line 2260
    :cond_1
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    #@31
    invoke-interface {p1, v1}, Landroid/speech/tts/TextToSpeech$Action;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@34
    move-result-object v1

    #@35
    monitor-exit v2

    #@36
    return-object v1

    #@37
    .line 2257
    :cond_2
    :try_start_2
    const-string/jumbo v1, "TextToSpeech"

    #@3a
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    const-string/jumbo v4, " failed: TTS engine connection not fully set up"

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    monitor-exit v2

    #@52
    .line 2258
    return-object p2

    #@53
    .line 2261
    :catch_0
    move-exception v0

    #@54
    .line 2262
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "TextToSpeech"

    #@57
    new-instance v3, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    const-string/jumbo v4, " failed"

    #@63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6e
    .line 2263
    if-eqz p4, :cond_3

    #@70
    .line 2264
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$Connection;->disconnect()V

    #@73
    .line 2265
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    #@75
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->-wrap3(Landroid/speech/tts/TextToSpeech;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@78
    :cond_3
    monitor-exit v2

    #@79
    .line 2267
    return-object p2

    #@7a
    .line 2250
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@7b
    monitor-exit v2

    #@7c
    throw v1
.end method
