.class public Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;
.super Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;
.source "EapStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CreatedState"
.end annotation


# instance fields
.field private final blacklist mTAG:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)V

    .line 186
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist process([B)Lcom/android/internal/net/eap/EapResult;
    .registers 7
    .param p1, "packet"    # [B

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;->decode([B)Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;

    move-result-object v0

    .line 190
    .local v0, "decodeResult":Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;
    invoke-virtual {v0}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->isValidEapMessage()Z

    move-result v1

    if-nez v1, :cond_d

    .line 191
    iget-object v1, v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->eapResult:Lcom/android/internal/net/eap/EapResult;

    return-object v1

    .line 193
    :cond_d
    iget-object v1, v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->eapMessage:Lcom/android/internal/net/eap/message/EapMessage;

    .line 195
    .local v1, "message":Lcom/android/internal/net/eap/message/EapMessage;
    iget v2, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_21

    .line 196
    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v3, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v4, "Received non EAP-Request in CreatedState"

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v2

    .line 202
    :cond_21
    iget-object v2, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    packed-switch v2, :pswitch_data_4c

    .line 211
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    new-instance v3, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)V

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->transitionAndProcess(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;[B)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 204
    :pswitch_36
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->handleNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 207
    :pswitch_3d
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    new-instance v3, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)V

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->transitionAndProcess(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;[B)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_36
    .end packed-switch
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

    .line 185
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;->process([B)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
