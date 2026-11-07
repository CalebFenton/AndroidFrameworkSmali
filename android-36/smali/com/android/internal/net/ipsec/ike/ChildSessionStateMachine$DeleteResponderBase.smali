.class abstract Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DeleteResponderBase"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$uNzyNT1baGR_73e1g1rVn7MlC1s(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->lambda$closeSessionAndNotifyUser$0(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1306
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ExceptionHandler;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    return-void
.end method

.method private synthetic blacklist lambda$closeSessionAndNotifyUser$0(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;)V
    .registers 3
    .param p1, "delRunnable"    # Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;

    .line 1367
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;->run()V

    .line 1368
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmUserCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Landroid/net/ipsec/ike/ChildSessionCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/ipsec/ike/ChildSessionCallback;->onClosed()V

    .line 1369
    return-void
.end method


# virtual methods
.method protected blacklist closeSessionAndNotifyUser(Z)V
    .registers 6
    .param p1, "quitStateMachine"    # Z

    .line 1363
    new-instance v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)V

    .line 1365
    .local v0, "delRunnable":Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    new-instance v2, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$OnIpSecSaPairDeletedRunnable;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->executeUserCallback(Ljava/lang/Runnable;)V

    .line 1370
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->recordMetricsEvent_sessionTerminated(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    .line 1372
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getRemoteSpi()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onChildSaDeleted(I)V

    .line 1373
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->close()V

    .line 1374
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iput-object v2, v1, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    .line 1376
    if-eqz p1, :cond_3e

    .line 1377
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->quitSessionNow()V

    .line 1379
    :cond_3e
    return-void
.end method

.method protected blacklist handleDeleteSessionRequest(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)V"
        }
    .end annotation

    .line 1351
    .local p1, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->hasRemoteChildSpiForDelete(Ljava/util/List;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1352
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Found no remote SPI for mCurrentChildSaRecord in a Delete Child request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->cleanUpAndQuit(Ljava/lang/RuntimeException;)V

    goto :goto_20

    .line 1357
    :cond_15
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->mCurrentChildSaRecord:Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->sendDeleteChild(Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;Z)V

    .line 1358
    invoke-virtual {p0, v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->closeSessionAndNotifyUser(Z)V

    .line 1360
    :goto_20
    return-void
.end method

.method protected blacklist hasRemoteChildSpiForDelete(Ljava/util/List;Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;)Z
    .registers 11
    .param p2, "expectedRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;",
            ")Z"
        }
    .end annotation

    .line 1313
    .local p1, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;

    .line 1314
    const/16 v1, 0x2a

    invoke-static {v1, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadListForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1317
    .local v0, "delPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;

    .line 1318
    .local v2, "delPayload":Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;
    iget-object v4, v2, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->spisToDelete:[I

    array-length v5, v4

    :goto_1c
    if-ge v3, v5, :cond_2b

    aget v6, v4, v3

    .line 1319
    .local v6, "spi":I
    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getRemoteSpi()I

    move-result v7

    if-ne v6, v7, :cond_28

    const/4 v1, 0x1

    return v1

    .line 1318
    .end local v6    # "spi":I
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1321
    .end local v2    # "delPayload":Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;
    :cond_2b
    goto :goto_c

    .line 1322
    :cond_2c
    return v3
.end method

.method protected blacklist sendDeleteChild(Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;Z)V
    .registers 7
    .param p1, "childSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;
    .param p2, "isResp"    # Z

    .line 1330
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1331
    .local v0, "outIkePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;

    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$ChildSaRecord;->getLocalSpi()I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;-><init>([I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;->-$$Nest$fgetmChildSmCallback(Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;

    move-result-object v1

    const/16 v2, 0x25

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$DeleteResponderBase;->this$0:Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;

    invoke-interface {v1, v2, p2, v0, v3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$IChildSessionSmCallback;->onOutboundPayloadsReady(IZLjava/util/List;Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;)V

    .line 1338
    return-void
.end method
