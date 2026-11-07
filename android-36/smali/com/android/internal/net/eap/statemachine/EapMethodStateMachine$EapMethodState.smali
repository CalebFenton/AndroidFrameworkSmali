.class public abstract Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.super Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
.source "EapMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "EapMethodState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/net/utils/SimpleStateMachine<",
        "Lcom/android/internal/net/eap/message/EapMessage;",
        "Lcom/android/internal/net/eap/EapResult;",
        ">.SimpleState;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;-><init>(Lcom/android/internal/net/utils/SimpleStateMachine;)V

    return-void
.end method


# virtual methods
.method blacklist handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 88
    iget v0, p2, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 91
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v1, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received an EAP-Success in the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 94
    :cond_23
    iget v0, p2, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3a

    .line 95
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;

    new-instance v1, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 96
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapFailure;

    invoke-direct {v0}, Lcom/android/internal/net/eap/EapResult$EapFailure;-><init>()V

    return-object v0

    .line 97
    :cond_3a
    iget-object v0, p2, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v0, v0, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    .line 98
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;->handleEapNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 99
    :cond_48
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;

    iget-boolean v0, v0, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;->mIsExpectingEapFailure:Z

    if-eqz v0, :cond_77

    .line 102
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v1, "Expecting EAP-Failure. Received non-Failure/Notification message"

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v1, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting EAP-Failure. Received received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v3, v3, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 107
    :cond_77
    iget-object v0, p2, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v0, v0, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;

    invoke-virtual {v1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;->getEapMethod()I

    move-result v1

    if-eq v0, v1, :cond_b5

    .line 108
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v1, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected EAP Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;

    .line 109
    invoke-virtual {v3}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;->getEapMethod()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v3, v3, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    .line 108
    return-object v0

    .line 113
    :cond_b5
    const/4 v0, 0x0

    return-object v0
.end method
