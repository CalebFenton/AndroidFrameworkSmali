.class abstract Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CloseableTtlsMethodState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapTtlsMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CloseableTtlsMethodState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 809
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CloseableTtlsMethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    return-void
.end method


# virtual methods
.method abstract blacklist handleEapSuccessFailure(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
.end method

.method blacklist handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 815
    invoke-virtual {p0, p2}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CloseableTtlsMethodState;->handleEapSuccessFailure(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    .line 816
    .local v0, "eapResult":Lcom/android/internal/net/eap/EapResult;
    if-eqz v0, :cond_7

    .line 817
    return-object v0

    .line 820
    :cond_7
    iget-object v1, p2, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v1, v1, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    .line 821
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CloseableTtlsMethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->handleEapNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    .line 822
    :cond_15
    iget-object v1, p2, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v1, v1, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_57

    .line 823
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v2, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected EAP Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CloseableTtlsMethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    .line 827
    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->getEapMethod()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v4, v4, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    .line 830
    .local v1, "eapError":Lcom/android/internal/net/eap/EapResult$EapError;
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CloseableTtlsMethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget v3, p2, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 834
    .end local v1    # "eapError":Lcom/android/internal/net/eap/EapResult$EapError;
    :cond_57
    const/4 v1, 0x0

    return-object v1
.end method
