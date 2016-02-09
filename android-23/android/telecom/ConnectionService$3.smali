.class Landroid/telecom/ConnectionService$3;
.super Landroid/telecom/Conference$Listener;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;

    #@0
    .prologue
    .line 362
    iput-object p1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-direct {p0}, Landroid/telecom/Conference$Listener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V
    .locals 3
    .param p1, "conference"    # Landroid/telecom/Conference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 396
    .local p2, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@5
    move-result-object v1

    #@6
    .line 397
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@8
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    .line 398
    iget-object v2, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@14
    invoke-static {v2, p2}, Landroid/telecom/ConnectionService;->-wrap0(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;

    #@17
    move-result-object v2

    #@18
    .line 396
    invoke-virtual {v1, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    #@1b
    .line 395
    return-void
.end method

.method public onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 386
    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V
    .locals 5
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connectionCapabilities"    # I

    #@0
    .prologue
    .line 410
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 411
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "call capabilities: conference: %s"

    #@f
    const/4 v2, 0x1

    #@10
    new-array v2, v2, [Ljava/lang/Object;

    #@12
    .line 412
    invoke-static {p2}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    const/4 v4, 0x0

    #@17
    aput-object v3, v2, v4

    #@19
    .line 411
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1c
    .line 413
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@1e
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;I)V

    #@25
    .line 409
    return-void
.end method

.method public onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 390
    return-void
.end method

.method public onDestroyed(Landroid/telecom/Conference;)V
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0, p1}, Landroid/telecom/ConnectionService;->-wrap16(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V

    #@5
    .line 402
    return-void
.end method

.method public onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    .line 381
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 382
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@e
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    #@15
    .line 380
    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 439
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 440
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@e
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    #@15
    .line 438
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Conference;II)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    #@0
    .prologue
    .line 365
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 366
    .local v0, "id":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    #@f
    .line 364
    :goto_0
    :pswitch_0
    return-void

    #@10
    .line 368
    :pswitch_1
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@12
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setActive(Ljava/lang/String;)V

    #@19
    goto :goto_0

    #@1a
    .line 371
    :pswitch_2
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@1c
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V

    #@23
    goto :goto_0

    #@24
    .line 366
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    #@0
    .prologue
    .line 433
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 434
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@e
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V

    #@15
    .line 432
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    #@0
    .prologue
    .line 425
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 426
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "onVideoProviderChanged: Connection: %s, VideoProvider: %s"

    #@f
    const/4 v2, 0x2

    #@10
    new-array v2, v2, [Ljava/lang/Object;

    #@12
    const/4 v3, 0x0

    #@13
    aput-object p1, v2, v3

    #@15
    .line 427
    const/4 v3, 0x1

    #@16
    aput-object p2, v2, v3

    #@18
    .line 426
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1b
    .line 428
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@1d
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    #@24
    .line 424
    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Conference;I)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "videoState"    # I

    #@0
    .prologue
    .line 418
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 419
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "onVideoStateChanged set video state %d"

    #@f
    const/4 v2, 0x1

    #@10
    new-array v2, v2, [Ljava/lang/Object;

    #@12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v3

    #@16
    const/4 v4, 0x0

    #@17
    aput-object v3, v2, v4

    #@19
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1c
    .line 420
    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    #@1e
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    #@25
    .line 417
    return-void
.end method
