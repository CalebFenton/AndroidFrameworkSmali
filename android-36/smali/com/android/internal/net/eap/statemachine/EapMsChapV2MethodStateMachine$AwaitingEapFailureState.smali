.class public Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapFailureState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapMsChapV2MethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AwaitingEapFailureState"
.end annotation


# instance fields
.field private final blacklist mTAG:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 466
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapFailureState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 467
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapFailureState;->mTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 11
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 471
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapFailureState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapFailureState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    .line 472
    .local v0, "result":Lcom/android/internal/net/eap/EapResult;
    if-eqz v0, :cond_9

    .line 473
    return-object v0

    .line 475
    :cond_9
    iget-object v1, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v1, v1, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    .line 476
    .local v1, "eapType":I
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapFailureState;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received unexpected EAP message. Type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/net/eap/message/EapData;->EAP_TYPE_STRING:Ljava/util/Map;

    .line 479
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UNKNOWN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 476
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v3, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected EAP Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapFailureState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    .line 482
    invoke-virtual {v5}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->getEapMethod()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    .line 480
    return-object v2
.end method

.method public bridge synthetic blacklist process(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 466
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapFailureState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
