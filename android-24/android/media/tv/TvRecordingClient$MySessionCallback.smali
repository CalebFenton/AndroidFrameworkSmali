.class Landroid/media/tv/TvRecordingClient$MySessionCallback;
.super Landroid/media/tv/TvInputManager$SessionCallback;
.source "TvRecordingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvRecordingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySessionCallback"
.end annotation


# instance fields
.field mChannelUri:Landroid/net/Uri;

.field mConnectionParams:Landroid/os/Bundle;

.field final mInputId:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/tv/TvRecordingClient;


# direct methods
.method constructor <init>(Landroid/media/tv/TvRecordingClient;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvRecordingClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "connectionParams"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 298
    iput-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@2
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    #@5
    .line 299
    iput-object p2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    #@7
    .line 300
    iput-object p3, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    #@9
    .line 301
    iput-object p4, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mConnectionParams:Landroid/os/Bundle;

    #@b
    .line 298
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "error"    # I

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-get3(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 383
    const-string/jumbo v0, "TvRecordingClient"

    #@b
    const-string/jumbo v1, "onError - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 384
    return-void

    #@12
    .line 386
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-get0(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p2}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onError(I)V

    #@1b
    .line 378
    return-void
.end method

.method public onRecordingStopped(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "recordedProgramUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-get3(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 370
    const-string/jumbo v0, "TvRecordingClient"

    #@b
    const-string/jumbo v1, "onRecordingStopped - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 371
    return-void

    #@12
    .line 373
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-set0(Landroid/media/tv/TvRecordingClient;Z)Z

    #@18
    .line 374
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@1a
    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-get0(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p2}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onRecordingStopped(Landroid/net/Uri;)V

    #@21
    .line 365
    return-void
.end method

.method public onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 5
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 309
    iget-object v2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@3
    invoke-static {v2}, Landroid/media/tv/TvRecordingClient;->-get3(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@6
    move-result-object v2

    #@7
    if-eq p0, v2, :cond_1

    #@9
    .line 310
    const-string/jumbo v2, "TvRecordingClient"

    #@c
    const-string/jumbo v3, "onSessionCreated - session already created"

    #@f
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 312
    if-eqz p1, :cond_0

    #@14
    .line 313
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->release()V

    #@17
    .line 315
    :cond_0
    return-void

    #@18
    .line 317
    :cond_1
    iget-object v2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@1a
    invoke-static {v2, p1}, Landroid/media/tv/TvRecordingClient;->-set2(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    #@1d
    .line 318
    if-eqz p1, :cond_4

    #@1f
    .line 320
    iget-object v2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@21
    invoke-static {v2}, Landroid/media/tv/TvRecordingClient;->-get1(Landroid/media/tv/TvRecordingClient;)Ljava/util/Queue;

    #@24
    move-result-object v2

    #@25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v1

    #@29
    .local v1, "command$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_2

    #@2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/util/Pair;

    #@35
    .line 321
    .local v0, "command":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@37
    invoke-static {v2}, Landroid/media/tv/TvRecordingClient;->-get2(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvInputManager$Session;

    #@3a
    move-result-object v4

    #@3b
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3d
    check-cast v2, Ljava/lang/String;

    #@3f
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@41
    check-cast v3, Landroid/os/Bundle;

    #@43
    invoke-virtual {v4, v2, v3}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@46
    goto :goto_0

    #@47
    .line 323
    .end local v0    # "command":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    :cond_2
    iget-object v2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@49
    invoke-static {v2}, Landroid/media/tv/TvRecordingClient;->-get1(Landroid/media/tv/TvRecordingClient;)Ljava/util/Queue;

    #@4c
    move-result-object v2

    #@4d
    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    #@50
    .line 324
    iget-object v2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@52
    invoke-static {v2}, Landroid/media/tv/TvRecordingClient;->-get2(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvInputManager$Session;

    #@55
    move-result-object v2

    #@56
    iget-object v3, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    #@58
    iget-object v4, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mConnectionParams:Landroid/os/Bundle;

    #@5a
    invoke-virtual {v2, v3, v4}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@5d
    .line 305
    .end local v1    # "command$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    return-void

    #@5e
    .line 326
    :cond_4
    iget-object v2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@60
    invoke-static {v2, v3}, Landroid/media/tv/TvRecordingClient;->-set3(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvRecordingClient$MySessionCallback;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@63
    .line 327
    iget-object v2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@65
    invoke-static {v2}, Landroid/media/tv/TvRecordingClient;->-get0(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    #@68
    move-result-object v2

    #@69
    if-eqz v2, :cond_3

    #@6b
    .line 328
    iget-object v2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@6d
    invoke-static {v2}, Landroid/media/tv/TvRecordingClient;->-get0(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    #@70
    move-result-object v2

    #@71
    iget-object v3, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    #@73
    invoke-virtual {v2, v3}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onConnectionFailed(Ljava/lang/String;)V

    #@76
    goto :goto_1
.end method

.method public onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-get3(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 397
    const-string/jumbo v0, "TvRecordingClient"

    #@b
    const-string/jumbo v1, "onSessionEvent - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 398
    return-void

    #@12
    .line 400
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-get0(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 401
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@1c
    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-get0(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@25
    .line 391
    :cond_1
    return-void
.end method

.method public onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V
    .locals 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 351
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@4
    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-get3(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@7
    move-result-object v0

    #@8
    if-eq p0, v0, :cond_0

    #@a
    .line 352
    const-string/jumbo v0, "TvRecordingClient"

    #@d
    const-string/jumbo v1, "onSessionReleased - session not created"

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 353
    return-void

    #@14
    .line 355
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@16
    invoke-static {v0, v2}, Landroid/media/tv/TvRecordingClient;->-set1(Landroid/media/tv/TvRecordingClient;Z)Z

    #@19
    .line 356
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@1b
    invoke-static {v0, v2}, Landroid/media/tv/TvRecordingClient;->-set0(Landroid/media/tv/TvRecordingClient;Z)Z

    #@1e
    .line 357
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@20
    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-set3(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvRecordingClient$MySessionCallback;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@23
    .line 358
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@25
    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-set2(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    #@28
    .line 359
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@2a
    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-get0(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    #@2d
    move-result-object v0

    #@2e
    if-eqz v0, :cond_1

    #@30
    .line 360
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@32
    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-get0(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    #@35
    move-result-object v0

    #@36
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    #@38
    invoke-virtual {v0, v1}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onDisconnected(Ljava/lang/String;)V

    #@3b
    .line 347
    :cond_1
    return-void
.end method

.method onTuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "channelUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-get3(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 339
    const-string/jumbo v0, "TvRecordingClient"

    #@b
    const-string/jumbo v1, "onTuned - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 340
    return-void

    #@12
    .line 342
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@14
    const/4 v1, 0x1

    #@15
    invoke-static {v0, v1}, Landroid/media/tv/TvRecordingClient;->-set1(Landroid/media/tv/TvRecordingClient;Z)Z

    #@18
    .line 343
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    #@1a
    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-get0(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0, p2}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onTuned(Landroid/net/Uri;)V

    #@21
    .line 334
    return-void
.end method
