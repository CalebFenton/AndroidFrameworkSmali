.class Landroid/speech/tts/TextToSpeechService$CallbackMap;
.super Landroid/os/RemoteCallbackList;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Landroid/speech/tts/ITextToSpeechCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallerToCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/speech/tts/ITextToSpeechCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method private constructor <init>(Landroid/speech/tts/TextToSpeechService;)V
    .locals 1
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;

    #@0
    .prologue
    .line 1387
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@5
    .line 1389
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 1388
    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    #@c
    .line 1387
    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/tts/TextToSpeechService;Landroid/speech/tts/TextToSpeechService$CallbackMap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    #@3
    return-void
.end method

.method private getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;
    .locals 4
    .param p1, "caller"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 1467
    check-cast v0, Landroid/os/IBinder;

    #@3
    .line 1468
    .local v0, "asBinder":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    #@5
    monitor-enter v3

    #@6
    .line 1469
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    #@8
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/speech/tts/ITextToSpeechCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .local v1, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    monitor-exit v3

    #@f
    .line 1472
    return-object v1

    #@10
    .line 1468
    .end local v1    # "cb":Landroid/speech/tts/ITextToSpeechCallback;
    :catchall_0
    move-exception v2

    #@11
    monitor-exit v3

    #@12
    throw v2
.end method


# virtual methods
.method public dispatchOnError(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    #@0
    .prologue
    .line 1439
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    #@3
    move-result-object v0

    #@4
    .line 1440
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 1442
    :cond_0
    :try_start_0
    invoke-interface {v0, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onError(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1438
    :goto_0
    return-void

    #@b
    .line 1443
    :catch_0
    move-exception v1

    #@c
    .line 1444
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TextToSpeechService"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Callback onError failed: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0
.end method

.method public dispatchOnStart(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1427
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    #@3
    move-result-object v0

    #@4
    .line 1428
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 1430
    :cond_0
    :try_start_0
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onStart(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1426
    :goto_0
    return-void

    #@b
    .line 1431
    :catch_0
    move-exception v1

    #@c
    .line 1432
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TextToSpeechService"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Callback onStart failed: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0
.end method

.method public dispatchOnStop(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "started"    # Z

    #@0
    .prologue
    .line 1407
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    #@3
    move-result-object v0

    #@4
    .line 1408
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 1410
    :cond_0
    :try_start_0
    invoke-interface {v0, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onStop(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1406
    :goto_0
    return-void

    #@b
    .line 1411
    :catch_0
    move-exception v1

    #@c
    .line 1412
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TextToSpeechService"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Callback onStop failed: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0
.end method

.method public dispatchOnSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1417
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    #@3
    move-result-object v0

    #@4
    .line 1418
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_0

    #@6
    return-void

    #@7
    .line 1420
    :cond_0
    :try_start_0
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1416
    :goto_0
    return-void

    #@b
    .line 1421
    :catch_0
    move-exception v1

    #@c
    .line 1422
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TextToSpeechService"

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Callback onDone failed: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    goto :goto_0
.end method

.method public kill()V
    .locals 2

    #@0
    .prologue
    .line 1459
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    .line 1460
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@8
    .line 1461
    invoke-super {p0}, Landroid/os/RemoteCallbackList;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 1458
    return-void

    #@d
    .line 1459
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/IInterface;
    .param p2, "cookie"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1449
    check-cast p1, Landroid/speech/tts/ITextToSpeechCallback;

    #@2
    .end local p1    # "callback":Landroid/os/IInterface;
    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V

    #@5
    return-void
.end method

.method public onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V
    .locals 3
    .param p1, "callback"    # Landroid/speech/tts/ITextToSpeechCallback;
    .param p2, "cookie"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v0, p2

    #@1
    .line 1450
    check-cast v0, Landroid/os/IBinder;

    #@3
    .line 1451
    .local v0, "caller":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    #@5
    monitor-enter v2

    #@6
    .line 1452
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    #@8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v2

    #@c
    .line 1449
    return-void

    #@d
    .line 1451
    :catchall_0
    move-exception v1

    #@e
    monitor-exit v2

    #@f
    throw v1
.end method

.method public setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V
    .locals 3
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "cb"    # Landroid/speech/tts/ITextToSpeechCallback;

    #@0
    .prologue
    .line 1392
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 1394
    if-eqz p2, :cond_1

    #@5
    .line 1395
    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    #@8
    .line 1396
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    #@a
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/speech/tts/ITextToSpeechCallback;

    #@10
    .line 1400
    .local v0, "old":Landroid/speech/tts/ITextToSpeechCallback;
    :goto_0
    if-eqz v0, :cond_0

    #@12
    if-eq v0, p2, :cond_0

    #@14
    .line 1401
    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit v2

    #@18
    .line 1391
    return-void

    #@19
    .line 1398
    .end local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/speech/tts/ITextToSpeechCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .restart local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    goto :goto_0

    #@22
    .line 1392
    .end local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method
