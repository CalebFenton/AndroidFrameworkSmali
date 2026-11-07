.class public Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CreatedState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapTtlsMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CreatedState"
.end annotation


# instance fields
.field private final blacklist mTAG:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 8
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 152
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CreatedState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    .line 153
    .local v0, "result":Lcom/android/internal/net/eap/EapResult;
    if-eqz v0, :cond_9

    .line 154
    return-object v0

    .line 157
    :cond_9
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$fgetmTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 158
    invoke-virtual {v1, v2}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;->decodeEapTtlsRequestPacket([B)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;

    move-result-object v1

    .line 159
    .local v1, "decodeResult":Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;
    invoke-virtual {v1}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->isSuccessfulDecode()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 160
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    iget-object v4, v4, Lcom/android/internal/net/eap/EapResult$EapError;->cause:Ljava/lang/Exception;

    const-string v5, "Error parsing EAP-TTLS packet type data"

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    iget-object v2, v1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    return-object v2

    .line 162
    :cond_2d
    iget-object v2, v1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    iget-boolean v2, v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isStart:Z

    if-nez v2, :cond_40

    .line 163
    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v3, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v4, "Unexpected request received in EAP-TTLS: Received first request without start bit set."

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v2

    .line 169
    :cond_40
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    new-instance v3, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;-><init>(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)V

    # invokes: Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2, v3, p1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->access$000(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 146
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CreatedState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
