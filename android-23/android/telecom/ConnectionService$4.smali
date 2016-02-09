.class Landroid/telecom/ConnectionService$4;
.super Landroid/telecom/Connection$Listener;
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
    .line 444
    iput-object p1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    #@0
    .prologue
    .line 487
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 488
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@e
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V

    #@15
    .line 486
    return-void
.end method

.method public onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "isVoip"    # Z

    #@0
    .prologue
    .line 542
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 543
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@e
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    #@15
    .line 541
    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    #@0
    .prologue
    .line 494
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 495
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@e
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V

    #@15
    .line 493
    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;
    .param p2, "conference"    # Landroid/telecom/Conference;

    #@0
    .prologue
    .line 562
    iget-object v2, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v2}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/lang/String;

    #@c
    .line 563
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@e
    .line 564
    const/4 v0, 0x0

    #@f
    .line 565
    .local v0, "conferenceId":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@11
    .line 566
    iget-object v2, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@13
    invoke-static {v2}, Landroid/telecom/ConnectionService;->-get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .end local v0    # "conferenceId":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    #@1d
    .line 568
    :cond_0
    iget-object v2, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@1f
    invoke-static {v2}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 561
    :cond_1
    return-void
.end method

.method public onConferenceMergeFailed(Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 574
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 575
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    .line 576
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@10
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->onConferenceMergeFailed(Ljava/lang/String;)V

    #@17
    .line 573
    :cond_0
    return-void
.end method

.method public onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 555
    .local p2, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@5
    move-result-object v1

    #@6
    .line 556
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@8
    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    .line 557
    iget-object v2, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@14
    invoke-static {v2, p2}, Landroid/telecom/ConnectionService;->-wrap1(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;

    #@17
    move-result-object v2

    #@18
    .line 555
    invoke-virtual {v1, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    #@1b
    .line 554
    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "capabilities"    # I

    #@0
    .prologue
    .line 526
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 527
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "capabilities: parcelableconnection: %s"

    #@f
    const/4 v2, 0x1

    #@10
    new-array v2, v2, [Ljava/lang/Object;

    #@12
    .line 528
    invoke-static {p2}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    const/4 v4, 0x0

    #@17
    aput-object v3, v2, v4

    #@19
    .line 527
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1c
    .line 529
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@1e
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;I)V

    #@25
    .line 525
    return-void
.end method

.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "c"    # Landroid/telecom/Connection;

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->removeConnection(Landroid/telecom/Connection;)V

    #@5
    .line 499
    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    .line 473
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 474
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "Adapter set disconnected %s"

    #@f
    const/4 v2, 0x1

    #@10
    new-array v2, v2, [Ljava/lang/Object;

    #@12
    const/4 v3, 0x0

    #@13
    aput-object p2, v2, v3

    #@15
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@18
    .line 475
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@1a
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    #@21
    .line 472
    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 582
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 583
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    .line 584
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@10
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    #@17
    .line 581
    :cond_0
    return-void
.end method

.method public onPostDialChar(Landroid/telecom/Connection;C)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "nextChar"    # C

    #@0
    .prologue
    .line 512
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 513
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "Adapter onPostDialChar %s, %s"

    #@f
    const/4 v2, 0x2

    #@10
    new-array v2, v2, [Ljava/lang/Object;

    #@12
    const/4 v3, 0x0

    #@13
    aput-object p1, v2, v3

    #@15
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@18
    move-result-object v3

    #@19
    const/4 v4, 0x1

    #@1a
    aput-object v3, v2, v4

    #@1c
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1f
    .line 514
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@21
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;C)V

    #@28
    .line 511
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "remaining"    # Ljava/lang/String;

    #@0
    .prologue
    .line 505
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 506
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "Adapter onPostDialWait %s, %s"

    #@f
    const/4 v2, 0x2

    #@10
    new-array v2, v2, [Ljava/lang/Object;

    #@12
    const/4 v3, 0x0

    #@13
    aput-object p1, v2, v3

    #@15
    const/4 v3, 0x1

    #@16
    aput-object p2, v2, v3

    #@18
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1b
    .line 507
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@1d
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 504
    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/Connection;Z)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "ringback"    # Z

    #@0
    .prologue
    .line 519
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 520
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "Adapter onRingback %b"

    #@f
    const/4 v2, 0x1

    #@10
    new-array v2, v2, [Ljava/lang/Object;

    #@12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@15
    move-result-object v3

    #@16
    const/4 v4, 0x0

    #@17
    aput-object v3, v2, v4

    #@19
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1c
    .line 521
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@1e
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;Z)V

    #@25
    .line 518
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "state"    # I

    #@0
    .prologue
    .line 447
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 448
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "Adapter set state %s %s"

    #@f
    const/4 v2, 0x2

    #@10
    new-array v2, v2, [Ljava/lang/Object;

    #@12
    const/4 v3, 0x0

    #@13
    aput-object v0, v2, v3

    #@15
    invoke-static {p2}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    const/4 v4, 0x1

    #@1a
    aput-object v3, v2, v4

    #@1c
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1f
    .line 449
    packed-switch p2, :pswitch_data_0

    #@22
    .line 446
    :goto_0
    :pswitch_0
    return-void

    #@23
    .line 451
    :pswitch_1
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@25
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setActive(Ljava/lang/String;)V

    #@2c
    goto :goto_0

    #@2d
    .line 454
    :pswitch_2
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2f
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setDialing(Ljava/lang/String;)V

    #@36
    goto :goto_0

    #@37
    .line 460
    :pswitch_3
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@39
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V

    #@40
    goto :goto_0

    #@41
    .line 466
    :pswitch_4
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@43
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setRinging(Ljava/lang/String;)V

    #@4a
    goto :goto_0

    #@4b
    .line 449
    nop

    #@4c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    #@0
    .prologue
    .line 548
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 549
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@e
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V

    #@15
    .line 547
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    #@0
    .prologue
    .line 534
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 535
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
    .line 536
    const/4 v3, 0x1

    #@16
    aput-object p2, v2, v3

    #@18
    .line 535
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@1b
    .line 537
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@1d
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    #@24
    .line 533
    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Connection;I)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    #@0
    .prologue
    .line 480
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@2
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/String;

    #@c
    .line 481
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "Adapter set video state %d"

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
    .line 482
    iget-object v1, p0, Landroid/telecom/ConnectionService$4;->this$0:Landroid/telecom/ConnectionService;

    #@1e
    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    #@25
    .line 479
    return-void
.end method
