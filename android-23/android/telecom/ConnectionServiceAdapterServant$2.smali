.class Landroid/telecom/ConnectionServiceAdapterServant$2;
.super Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.source "ConnectionServiceAdapterServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionServiceAdapterServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionServiceAdapterServant;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionServiceAdapterServant;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionServiceAdapterServant;

    #@0
    .prologue
    .line 247
    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@2
    invoke-direct {p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcelableConference"    # Landroid/telecom/ParcelableConference;

    #@0
    .prologue
    .line 319
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 320
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 321
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 322
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0xa

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 318
    return-void
.end method

.method public final addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;

    #@0
    .prologue
    .line 409
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 410
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 411
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 412
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x15

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 408
    return-void
.end method

.method public handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;

    #@0
    .prologue
    .line 253
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 254
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 255
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 256
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@a
    .line 257
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@c
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@18
    .line 252
    return-void
.end method

.method public onPostDialChar(Ljava/lang/String;C)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C

    #@0
    .prologue
    .line 340
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 341
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 342
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@8
    .line 343
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x16

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 339
    return-void
.end method

.method public onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "remainingDigits"    # Ljava/lang/String;

    #@0
    .prologue
    .line 332
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 333
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 334
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 335
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0xc

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 331
    return-void
.end method

.method public queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xd

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 347
    return-void
.end method

.method public removeCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xb

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 326
    return-void
.end method

.method public setActive(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 261
    return-void
.end method

.method public final setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    #@0
    .prologue
    .line 380
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 381
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 382
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 383
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@a
    .line 384
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@c
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@f
    move-result-object v1

    #@10
    const/16 v2, 0x12

    #@12
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@19
    .line 379
    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    #@0
    .prologue
    .line 390
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 391
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 392
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 393
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    #@a
    .line 394
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@c
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@f
    move-result-object v1

    #@10
    const/16 v2, 0x13

    #@12
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@19
    .line 389
    return-void
.end method

.method public setConferenceMergeFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 304
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 305
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 306
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@8
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@b
    move-result-object v1

    #@c
    const/16 v2, 0x17

    #@e
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@15
    .line 303
    return-void
.end method

.method public final setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
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
    .line 400
    .local p2, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 401
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 402
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 403
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x14

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 399
    return-void
.end method

.method public setConnectionCapabilities(Ljava/lang/String;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "connectionCapabilities"    # I

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    .line 298
    const/16 v1, 0x8

    #@8
    const/4 v2, 0x0

    #@9
    .line 297
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 296
    return-void
.end method

.method public setDialing(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 271
    return-void
.end method

.method public setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    #@0
    .prologue
    .line 278
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 279
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 280
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 281
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x5

    #@f
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 277
    return-void
.end method

.method public final setExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 417
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 418
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 419
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 420
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x18

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 416
    return-void
.end method

.method public setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 311
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 312
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 313
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 314
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x9

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 310
    return-void
.end method

.method public final setIsVoipAudioMode(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 366
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@3
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@6
    move-result-object v2

    #@7
    if-eqz p2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    const/16 v3, 0x10

    #@c
    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@13
    .line 365
    return-void

    #@14
    :cond_0
    move v0, v1

    #@15
    .line 366
    goto :goto_0
.end method

.method public setOnHold(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x6

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 285
    return-void
.end method

.method public setRingbackRequested(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "ringback"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 291
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@3
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@6
    move-result-object v2

    #@7
    if-eqz p2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    const/4 v3, 0x7

    #@b
    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 290
    return-void

    #@13
    :cond_0
    move v0, v1

    #@14
    .line 291
    goto :goto_0
.end method

.method public setRinging(Ljava/lang/String;)V
    .locals 2
    .param p1, "connectionId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 266
    return-void
.end method

.method public final setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    #@0
    .prologue
    .line 372
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 373
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 374
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 375
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x11

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 371
    return-void
.end method

.method public setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;

    #@0
    .prologue
    .line 358
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 359
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 360
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 361
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@a
    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0xf

    #@10
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 357
    return-void
.end method

.method public setVideoState(Ljava/lang/String;I)V
    .locals 3
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    #@2
    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xe

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@10
    .line 352
    return-void
.end method
