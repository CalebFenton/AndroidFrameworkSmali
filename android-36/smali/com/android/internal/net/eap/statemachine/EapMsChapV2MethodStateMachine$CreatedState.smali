.class public Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$CreatedState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapMsChapV2MethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CreatedState"
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

    .line 224
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 7
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 229
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$CreatedState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    .line 230
    .local v0, "result":Lcom/android/internal/net/eap/EapResult;
    if-eqz v0, :cond_9

    .line 231
    return-object v0

    .line 234
    :cond_9
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$fgetmTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v3, v3, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 235
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;->decodeChallengeRequest(Ljava/lang/String;[B)Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;

    move-result-object v1

    .line 236
    .local v1, "decodeResult":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;, "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult<Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;>;"
    invoke-virtual {v1}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->isSuccessfulDecode()Z

    move-result v2

    if-nez v2, :cond_22

    .line 237
    iget-object v2, v1, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    return-object v2

    .line 240
    :cond_22
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    new-instance v3, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)V

    # invokes: Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2, v3, p1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->access$000(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/eap/EapResult;

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

    .line 224
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$CreatedState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
