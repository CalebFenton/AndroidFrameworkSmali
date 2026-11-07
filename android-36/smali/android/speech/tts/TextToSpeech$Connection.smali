.class abstract Landroid/speech/tts/TextToSpeech$Connection;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Connection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;
    }
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

.field private greylist-max-o mEstablished:Z

.field private greylist-max-o mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

.field private greylist-max-o mService:Landroid/speech/tts/ITextToSpeechService;

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechCallback$Stub;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnSetupConnectionAsyncTask(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;
    .registers 1

    iget-object p0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEstablished(Landroid/speech/tts/TextToSpeech$Connection;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mEstablished:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnSetupConnectionAsyncTask(Landroid/speech/tts/TextToSpeech$Connection;Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/speech/tts/TextToSpeech;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2209
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2220
    new-instance p1, Landroid/speech/tts/TextToSpeech$Connection$1;

    invoke-direct {p1, p0}, Landroid/speech/tts/TextToSpeech$Connection$1;-><init>(Landroid/speech/tts/TextToSpeech$Connection;)V

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection;-><init>(Landroid/speech/tts/TextToSpeech;)V

    return-void
.end method


# virtual methods
.method protected greylist-max-o clearServiceConnection()Z
    .registers 6

    .line 2359
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmStartLock(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2360
    const/4 v1, 0x0

    .line 2361
    .local v1, "result":Z
    :try_start_8
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    .line 2362
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->cancel(Z)Z

    move-result v2

    move v1, v2

    .line 2363
    iput-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    .line 2366
    :cond_17
    iput-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    .line 2368
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmServiceConnection(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;

    move-result-object v2

    if-ne v2, p0, :cond_26

    .line 2369
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v2, v3}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fputmServiceConnection(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)V

    .line 2371
    :cond_26
    monitor-exit v0

    return v1

    .line 2372
    .end local v1    # "result":Z
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method abstract blacklist connect(Ljava/lang/String;)Z
.end method

.method abstract greylist-max-o disconnect()V
.end method

.method public greylist-max-o getCallerIdentity()Landroid/os/IBinder;
    .registers 2

    .line 2350
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mCallback:Landroid/speech/tts/ITextToSpeechCallback$Stub;

    return-object v0
.end method

.method public greylist-max-o isEstablished()Z
    .registers 2

    .line 2390
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->mEstablished:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2331
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmStartLock(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2332
    :try_start_7
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fputmConnectingServiceConnection(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)V

    .line 2334
    const-string v1, "TextToSpeech"

    const-string v3, "Connected to TTS engine"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    .line 2337
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    invoke-virtual {v1, v3}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->cancel(Z)Z

    .line 2340
    :cond_1e
    invoke-static {p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechService;

    move-result-object v1

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    .line 2341
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1, p0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fputmServiceConnection(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)V

    .line 2343
    iput-boolean v3, p0, Landroid/speech/tts/TextToSpeech$Connection;->mEstablished:Z

    .line 2344
    new-instance v1, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;-><init>(Landroid/speech/tts/TextToSpeech$Connection;Landroid/speech/tts/TextToSpeech-IA;)V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    .line 2345
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mOnSetupConnectionAsyncTask:Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2346
    monitor-exit v0

    .line 2347
    return-void

    .line 2346
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 2377
    const-string v0, "TextToSpeech"

    const-string v1, "Disconnected from TTS engine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$Connection;->clearServiceConnection()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2385
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->-$$Nest$mdispatchOnInit(Landroid/speech/tts/TextToSpeech;I)V

    .line 2387
    :cond_13
    return-void
.end method

.method public greylist-max-o runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .registers 11
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "reconnect"    # Z
    .param p5, "onlyEstablishedConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            "ZZ)TR;"
        }
    .end annotation

    .line 2395
    .local p1, "action":Landroid/speech/tts/TextToSpeech$Action;, "Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, "errorResult":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmStartLock(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2397
    :try_start_7
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    if-nez v1, :cond_25

    .line 2398
    const-string v1, "TextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: not connected to TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_23} :catch_51
    .catchall {:try_start_7 .. :try_end_23} :catchall_4f

    .line 2399
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_4f

    return-object p2

    .line 2401
    :cond_25
    if-eqz p5, :cond_47

    :try_start_27
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$Connection;->isEstablished()Z

    move-result v1

    if-nez v1, :cond_47

    .line 2402
    const-string v1, "TextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: TTS engine connection not fully set up"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_45} :catch_51
    .catchall {:try_start_27 .. :try_end_45} :catchall_4f

    .line 2403
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_4f

    return-object p2

    .line 2405
    :cond_47
    :try_start_47
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection;->mService:Landroid/speech/tts/ITextToSpeechService;

    invoke-interface {p1, v1}, Landroid/speech/tts/TextToSpeech$Action;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4d} :catch_51
    .catchall {:try_start_47 .. :try_end_4d} :catchall_4f

    :try_start_4d
    monitor-exit v0

    return-object v1

    .line 2414
    :catchall_4f
    move-exception v1

    goto :goto_76

    .line 2406
    :catch_51
    move-exception v1

    .line 2407
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "TextToSpeech"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2408
    if-eqz p4, :cond_74

    .line 2409
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$Connection;->disconnect()V

    .line 2410
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeech;->-$$Nest$minitTts(Landroid/speech/tts/TextToSpeech;)I

    .line 2412
    :cond_74
    monitor-exit v0

    return-object p2

    .line 2414
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_4d .. :try_end_77} :catchall_4f

    throw v1
.end method
