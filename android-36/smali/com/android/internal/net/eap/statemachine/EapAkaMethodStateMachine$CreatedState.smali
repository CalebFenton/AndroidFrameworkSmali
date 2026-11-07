.class public Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapAkaMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CreatedState"
.end annotation


# instance fields
.field private final blacklist mTAG:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 221
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 13
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 224
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    .line 225
    .local v0, "result":Lcom/android/internal/net/eap/EapResult;
    if-eqz v0, :cond_9

    .line 226
    return-object v0

    .line 229
    :cond_9
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 230
    invoke-virtual {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->decode([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    move-result-object v1

    .line 231
    .local v1, "decodeResult":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;, "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult<+Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;>;"
    invoke-virtual {v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->isSuccessfulDecode()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 232
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v3, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 233
    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v4

    iget-object v5, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->atClientErrorCode:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 232
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 236
    :cond_2a
    iget-object v2, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    move-object v10, v2

    check-cast v10, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    .line 237
    .local v10, "eapAkaTypeData":Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;
    iget v2, v10, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->eapSubtype:I

    sparse-switch v2, :sswitch_data_82

    .line 254
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v3, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 256
    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v4

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 254
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 243
    :sswitch_45
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-virtual {v3}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildReauthState()Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;

    move-result-object v3

    # invokes: Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2, v3, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->access$200(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/eap/EapResult;

    return-object v2

    .line 245
    :sswitch_54
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->handleEapSimAkaNotification(Ljava/lang/String;ZZZIILcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 239
    :sswitch_63
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    new-instance v3, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)V

    # invokes: Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2, v3, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->access$000(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/eap/EapResult;

    return-object v2

    .line 241
    :sswitch_73
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-virtual {v3}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildChallengeState()Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;

    move-result-object v3

    # invokes: Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2, v3, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->access$100(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/eap/EapResult;

    return-object v2

    :sswitch_data_82
    .sparse-switch
        0x1 -> :sswitch_73
        0x5 -> :sswitch_63
        0xc -> :sswitch_54
        0xd -> :sswitch_45
    .end sparse-switch
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

    .line 220
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$CreatedState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
