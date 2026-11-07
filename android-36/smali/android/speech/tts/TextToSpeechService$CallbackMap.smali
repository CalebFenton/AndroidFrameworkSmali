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
        "Landroid/os/RemoteCallbackList<",
        "Landroid/speech/tts/ITextToSpeechCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mCallerToCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/speech/tts/ITextToSpeechCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method private constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1516
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 1517
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;Landroid/speech/tts/TextToSpeechService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;-><init>(Landroid/speech/tts/TextToSpeechService;)V

    return-void
.end method

.method private greylist-max-o getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;
    .registers 5
    .param p1, "caller"    # Ljava/lang/Object;

    .line 1626
    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    .line 1627
    .local v0, "asBinder":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v1

    .line 1628
    :try_start_6
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/ITextToSpeechCallback;

    .line 1629
    .local v2, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    monitor-exit v1

    .line 1631
    return-object v2

    .line 1629
    .end local v2    # "cb":Landroid/speech/tts/ITextToSpeechCallback;
    :catchall_10
    move-exception v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v2
.end method


# virtual methods
.method public greylist-max-o dispatchOnAudioAvailable(Ljava/lang/Object;Ljava/lang/String;[B)V
    .registers 8
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "buffer"    # [B

    .line 1587
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1588
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    return-void

    .line 1590
    :cond_7
    :try_start_7
    invoke-interface {v0, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onAudioAvailable(Ljava/lang/String;[B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1593
    goto :goto_24

    .line 1591
    :catch_b
    move-exception v1

    .line 1592
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback dispatchOnAudioAvailable(String, byte[]) failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextToSpeechService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public greylist-max-o dispatchOnBeginSynthesis(Ljava/lang/Object;Ljava/lang/String;III)V
    .registers 10
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "sampleRateInHz"    # I
    .param p4, "audioFormat"    # I
    .param p5, "channelCount"    # I

    .line 1577
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1578
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    return-void

    .line 1580
    :cond_7
    :try_start_7
    invoke-interface {v0, p2, p3, p4, p5}, Landroid/speech/tts/ITextToSpeechCallback;->onBeginSynthesis(Ljava/lang/String;III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1583
    goto :goto_24

    .line 1581
    :catch_b
    move-exception v1

    .line 1582
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback dispatchOnBeginSynthesis(String, int, int, int) failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextToSpeechService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public greylist-max-o dispatchOnError(Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 8
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .line 1567
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1568
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    return-void

    .line 1570
    :cond_7
    :try_start_7
    invoke-interface {v0, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onError(Ljava/lang/String;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1573
    goto :goto_24

    .line 1571
    :catch_b
    move-exception v1

    .line 1572
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback onError failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextToSpeechService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public greylist-max-o dispatchOnRangeStart(Ljava/lang/Object;Ljava/lang/String;III)V
    .registers 10
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "frame"    # I

    .line 1598
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1599
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    return-void

    .line 1601
    :cond_7
    :try_start_7
    invoke-interface {v0, p2, p3, p4, p5}, Landroid/speech/tts/ITextToSpeechCallback;->onRangeStart(Ljava/lang/String;III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1604
    goto :goto_24

    .line 1602
    :catch_b
    move-exception v1

    .line 1603
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback dispatchOnRangeStart(String, int, int, int) failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextToSpeechService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public greylist-max-o dispatchOnStart(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .line 1556
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1557
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    return-void

    .line 1559
    :cond_7
    :try_start_7
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onStart(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1562
    goto :goto_24

    .line 1560
    :catch_b
    move-exception v1

    .line 1561
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback onStart failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextToSpeechService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public greylist-max-o dispatchOnStop(Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "started"    # Z

    .line 1536
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1537
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    return-void

    .line 1539
    :cond_7
    :try_start_7
    invoke-interface {v0, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onStop(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1542
    goto :goto_24

    .line 1540
    :catch_b
    move-exception v1

    .line 1541
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback onStop failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextToSpeechService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public greylist-max-o dispatchOnSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .line 1546
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1547
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    return-void

    .line 1549
    :cond_7
    :try_start_7
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1552
    goto :goto_24

    .line 1550
    :catch_b
    move-exception v1

    .line 1551
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback onDone failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextToSpeechService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_24
    return-void
.end method

.method public whitelist kill()V
    .registers 3

    .line 1618
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v0

    .line 1619
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1620
    invoke-super {p0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1621
    monitor-exit v0

    .line 1622
    return-void

    .line 1621
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public bridge synthetic whitelist onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1516
    check-cast p1, Landroid/speech/tts/ITextToSpeechCallback;

    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public greylist-max-o onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V
    .registers 6
    .param p1, "callback"    # Landroid/speech/tts/ITextToSpeechCallback;
    .param p2, "cookie"    # Ljava/lang/Object;

    .line 1609
    move-object v0, p2

    check-cast v0, Landroid/os/IBinder;

    .line 1610
    .local v0, "caller":Landroid/os/IBinder;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v1

    .line 1611
    :try_start_6
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_16

    .line 1613
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmSynthHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    .line 1614
    return-void

    .line 1612
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public greylist-max-o setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V
    .registers 5
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "cb"    # Landroid/speech/tts/ITextToSpeechCallback;

    .line 1521
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v0

    .line 1523
    if-eqz p2, :cond_11

    .line 1524
    :try_start_5
    invoke-virtual {p0, p2, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1525
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/ITextToSpeechCallback;

    .local v1, "old":Landroid/speech/tts/ITextToSpeechCallback;
    goto :goto_19

    .line 1527
    .end local v1    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    :cond_11
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$CallbackMap;->mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/ITextToSpeechCallback;

    .line 1529
    .restart local v1    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    :goto_19
    if-eqz v1, :cond_20

    if-eq v1, p2, :cond_20

    .line 1530
    invoke-virtual {p0, v1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->unregister(Landroid/os/IInterface;)Z

    .line 1532
    .end local v1    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    :cond_20
    monitor-exit v0

    .line 1533
    return-void

    .line 1532
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v1
.end method
