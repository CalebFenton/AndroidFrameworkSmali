.class Landroid/telecom/RemoteConnectionService$1;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnectionService;

    #@0
    .prologue
    .line 52
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcel"    # Landroid/telecom/ParcelableConference;

    #@0
    .prologue
    .line 190
    new-instance v1, Landroid/telecom/RemoteConference;

    #@2
    .line 191
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@4
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get6(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    #@7
    move-result-object v4

    #@8
    .line 190
    invoke-direct {v1, p1, v4}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    #@b
    .line 193
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionIds()Ljava/util/List;

    #@e
    move-result-object v4

    #@f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v3

    #@13
    .local v3, "id$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_1

    #@19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/String;

    #@1f
    .line 194
    .local v2, "id":Ljava/lang/String;
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@21
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@24
    move-result-object v4

    #@25
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/telecom/RemoteConnection;

    #@2b
    .line 195
    .local v0, "c":Landroid/telecom/RemoteConnection;
    if-eqz v0, :cond_0

    #@2d
    .line 196
    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    #@30
    goto :goto_0

    #@31
    .line 200
    .end local v0    # "c":Landroid/telecom/RemoteConnection;
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/telecom/RemoteConference;->getConnections()Ljava/util/List;

    #@34
    move-result-object v4

    #@35
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@38
    move-result v4

    #@39
    if-nez v4, :cond_2

    #@3b
    .line 204
    return-void

    #@3c
    .line 207
    :cond_2
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getState()I

    #@3f
    move-result v4

    #@40
    invoke-virtual {v1, v4}, Landroid/telecom/RemoteConference;->setState(I)V

    #@43
    .line 208
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionCapabilities()I

    #@46
    move-result v4

    #@47
    invoke-virtual {v1, v4}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    #@4a
    .line 209
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@4c
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get2(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@4f
    move-result-object v4

    #@50
    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 210
    new-instance v4, Landroid/telecom/RemoteConnectionService$1$1;

    #@55
    invoke-direct {v4, p0, p1}, Landroid/telecom/RemoteConnectionService$1$1;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    #@58
    invoke-virtual {v1, v4}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;)V

    #@5b
    .line 218
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@5d
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get5(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4, v1}, Landroid/telecom/ConnectionService;->addRemoteConference(Landroid/telecom/RemoteConference;)V

    #@64
    .line 189
    return-void
.end method

.method public addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;

    #@0
    .prologue
    .line 317
    new-instance v0, Landroid/telecom/RemoteConnection;

    #@2
    .line 318
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@4
    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-get6(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    #@7
    move-result-object v1

    #@8
    .line 317
    invoke-direct {v0, p1, v1, p2}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;)V

    #@b
    .line 320
    .local v0, "remoteConnction":Landroid/telecom/RemoteConnection;
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@d
    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-get5(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionService;->addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V

    #@14
    .line 315
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "parcel"    # Landroid/telecom/ParcelableConnection;

    #@0
    .prologue
    const/4 v6, 0x6

    #@1
    .line 59
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@3
    const-string/jumbo v5, "handleCreateConnectionSuccessful"

    #@6
    invoke-static {v4, p1, v5}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@9
    move-result-object v3

    #@a
    .line 60
    .local v3, "connection":Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-get1()Landroid/telecom/RemoteConnection;

    #@d
    move-result-object v4

    #@e
    if-eq v3, v4, :cond_7

    #@10
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@12
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get7(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    #@15
    move-result-object v4

    #@16
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_7

    #@1c
    .line 61
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@1e
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get7(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    #@21
    move-result-object v4

    #@22
    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@25
    .line 63
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    #@28
    move-result v4

    #@29
    invoke-virtual {v3, v4}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    #@2c
    .line 64
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    #@2f
    move-result-object v4

    #@30
    if-nez v4, :cond_0

    #@32
    .line 65
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    #@35
    move-result v4

    #@36
    if-eq v4, v6, :cond_1

    #@38
    .line 66
    :cond_0
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    #@3f
    move-result v5

    #@40
    invoke-virtual {v3, v4, v5}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    #@43
    .line 68
    :cond_1
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    if-nez v4, :cond_2

    #@49
    .line 69
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    #@4c
    move-result v4

    #@4d
    if-eq v4, v6, :cond_3

    #@4f
    .line 71
    :cond_2
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    .line 72
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    #@56
    move-result v5

    #@57
    .line 70
    invoke-virtual {v3, v4, v5}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    #@5a
    .line 75
    :cond_3
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    #@5d
    move-result v4

    #@5e
    if-ne v4, v6, :cond_5

    #@60
    .line 76
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v3, v4}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    #@67
    .line 80
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    #@69
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@6c
    .line 81
    .local v2, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConferenceableConnectionIds()Ljava/util/List;

    #@6f
    move-result-object v4

    #@70
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@73
    move-result-object v1

    #@74
    .local v1, "confId$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@77
    move-result v4

    #@78
    if-eqz v4, :cond_6

    #@7a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7d
    move-result-object v0

    #@7e
    check-cast v0, Ljava/lang/String;

    #@80
    .line 82
    .local v0, "confId":Ljava/lang/String;
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@82
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@85
    move-result-object v4

    #@86
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@89
    move-result v4

    #@8a
    if-eqz v4, :cond_4

    #@8c
    .line 83
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@8e
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@91
    move-result-object v4

    #@92
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    move-result-object v4

    #@96
    check-cast v4, Landroid/telecom/RemoteConnection;

    #@98
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9b
    goto :goto_1

    #@9c
    .line 78
    .end local v0    # "confId":Ljava/lang/String;
    .end local v1    # "confId$iterator":Ljava/util/Iterator;
    .end local v2    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    :cond_5
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    #@9f
    move-result v4

    #@a0
    invoke-virtual {v3, v4}, Landroid/telecom/RemoteConnection;->setState(I)V

    #@a3
    goto :goto_0

    #@a4
    .line 86
    .restart local v1    # "confId$iterator":Ljava/util/Iterator;
    .restart local v2    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    :cond_6
    invoke-virtual {v3, v2}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    #@a7
    .line 87
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    #@aa
    move-result v4

    #@ab
    invoke-virtual {v3, v4}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    #@ae
    .line 88
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection;->getState()I

    #@b1
    move-result v4

    #@b2
    if-ne v4, v6, :cond_7

    #@b4
    .line 91
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    #@b7
    .line 57
    .end local v1    # "confId$iterator":Ljava/util/Iterator;
    .end local v2    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    :cond_7
    return-void
.end method

.method public onPostDialChar(Ljava/lang/String;C)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    const-string/jumbo v1, "onPostDialChar"

    #@5
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->onPostDialChar(C)V

    #@c
    .line 239
    return-void
.end method

.method public onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    const-string/jumbo v1, "onPostDialWait"

    #@5
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setPostDialWait(Ljava/lang/String;)V

    #@c
    .line 233
    return-void
.end method

.method public queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;

    #@0
    .prologue
    .line 245
    return-void
.end method

.method public removeCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 224
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@e
    const-string/jumbo v1, "removeCall"

    #@11
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    #@18
    .line 222
    :goto_0
    return-void

    #@19
    .line 227
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@1b
    const-string/jumbo v1, "removeCall"

    #@1e
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Landroid/telecom/RemoteConference;->setDestroyed()V

    #@25
    goto :goto_0
.end method

.method public setActive(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    .line 98
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@3
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@6
    move-result-object v0

    #@7
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 99
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@f
    const-string/jumbo v1, "setActive"

    #@12
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setState(I)V

    #@19
    .line 97
    :goto_0
    return-void

    #@1a
    .line 102
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@1c
    const-string/jumbo v1, "setActive"

    #@1f
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConference;->setState(I)V

    #@26
    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    const-string/jumbo v1, "setAddress"

    #@5
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    #@c
    .line 278
    return-void
.end method

.method public setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    const-string/jumbo v1, "setCallerDisplayName"

    #@5
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    #@c
    .line 285
    return-void
.end method

.method public setConferenceMergeFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 180
    return-void
.end method

.method public final setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 298
    .local p2, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 299
    .local v0, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "id$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/String;

    #@15
    .line 300
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@17
    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@1a
    move-result-object v3

    #@1b
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 301
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@23
    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@26
    move-result-object v3

    #@27
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Landroid/telecom/RemoteConnection;

    #@2d
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 305
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@33
    invoke-static {v3, p1}, Landroid/telecom/RemoteConnectionService;->-wrap2(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_2

    #@39
    .line 306
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@3b
    const-string/jumbo v4, "setConferenceableConnections"

    #@3e
    invoke-static {v3, p1, v4}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3, v0}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    #@45
    .line 297
    :goto_1
    return-void

    #@46
    .line 309
    :cond_2
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@48
    const-string/jumbo v4, "setConferenceableConnections"

    #@4b
    invoke-static {v3, p1, v4}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, v0}, Landroid/telecom/RemoteConference;->setConferenceableConnections(Ljava/util/List;)V

    #@52
    goto :goto_1
.end method

.method public setConnectionCapabilities(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionCapabilities"    # I

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 150
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@e
    const-string/jumbo v1, "setConnectionCapabilities"

    #@11
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    #@18
    .line 148
    :goto_0
    return-void

    #@19
    .line 153
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@1b
    const-string/jumbo v1, "setConnectionCapabilities"

    #@1e
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    #@25
    goto :goto_0
.end method

.method public setDialing(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    const-string/jumbo v1, "setDialing"

    #@5
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@8
    move-result-object v0

    #@9
    .line 116
    const/4 v1, 0x3

    #@a
    .line 115
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    #@d
    .line 114
    return-void
.end method

.method public setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 122
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@e
    const-string/jumbo v1, "setDisconnected"

    #@11
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    #@18
    .line 120
    :goto_0
    return-void

    #@19
    .line 125
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@1b
    const-string/jumbo v1, "setDisconnected"

    #@1e
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    #@25
    goto :goto_0
.end method

.method public setExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 326
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@e
    const-string/jumbo v1, "setExtras"

    #@11
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setExtras(Landroid/os/Bundle;)V

    #@18
    .line 324
    :goto_0
    return-void

    #@19
    .line 329
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@1b
    const-string/jumbo v1, "setExtras"

    #@1e
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setExtras(Landroid/os/Bundle;)V

    #@25
    goto :goto_0
.end method

.method public setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    const-string/jumbo v3, "setIsConferenced"

    #@5
    invoke-static {v2, p1, v3}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@8
    move-result-object v1

    #@9
    .line 163
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-get1()Landroid/telecom/RemoteConnection;

    #@c
    move-result-object v2

    #@d
    if-eq v1, v2, :cond_0

    #@f
    .line 164
    if-nez p2, :cond_1

    #@11
    .line 166
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    #@14
    move-result-object v2

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 167
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, v1}, Landroid/telecom/RemoteConference;->removeConnection(Landroid/telecom/RemoteConnection;)V

    #@1e
    .line 159
    :cond_0
    :goto_0
    return-void

    #@1f
    .line 171
    :cond_1
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@21
    const-string/jumbo v3, "setIsConferenced"

    #@24
    invoke-static {v2, p2, v3}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    #@27
    move-result-object v0

    #@28
    .line 172
    .local v0, "conference":Landroid/telecom/RemoteConference;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-get0()Landroid/telecom/RemoteConference;

    #@2b
    move-result-object v2

    #@2c
    if-eq v0, v2, :cond_0

    #@2e
    .line 173
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    #@31
    goto :goto_0
.end method

.method public setIsVoipAudioMode(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    const-string/jumbo v1, "setIsVoipAudioMode"

    #@5
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setIsVoipAudioMode(Z)V

    #@c
    .line 266
    return-void
.end method

.method public setOnHold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x5

    #@1
    .line 132
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@3
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    #@6
    move-result-object v0

    #@7
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 133
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@f
    const-string/jumbo v1, "setOnHold"

    #@12
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setState(I)V

    #@19
    .line 131
    :goto_0
    return-void

    #@1a
    .line 136
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@1c
    const-string/jumbo v1, "setOnHold"

    #@1f
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConference;->setState(I)V

    #@26
    goto :goto_0
.end method

.method public setRingbackRequested(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ringing"    # Z

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    const-string/jumbo v1, "setRingbackRequested"

    #@5
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setRingbackRequested(Z)V

    #@c
    .line 142
    return-void
.end method

.method public setRinging(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    const-string/jumbo v1, "setRinging"

    #@5
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@8
    move-result-object v0

    #@9
    .line 110
    const/4 v1, 0x2

    #@a
    .line 109
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    #@d
    .line 108
    return-void
.end method

.method public setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    const-string/jumbo v1, "setStatusHints"

    #@5
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    #@c
    .line 272
    return-void
.end method

.method public setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;

    #@0
    .prologue
    .line 251
    const/4 v0, 0x0

    #@1
    .line 252
    .local v0, "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    if-eqz p2, :cond_0

    #@3
    .line 253
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider;

    #@5
    .end local v0    # "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    invoke-direct {v0, p2}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    #@8
    .line 255
    :cond_0
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@a
    const-string/jumbo v2, "setVideoProvider"

    #@d
    invoke-static {v1, p1, v2}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConnection;->setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V

    #@14
    .line 250
    return-void
.end method

.method public setVideoState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    #@2
    const-string/jumbo v1, "setVideoState"

    #@5
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    #@c
    .line 260
    return-void
.end method
