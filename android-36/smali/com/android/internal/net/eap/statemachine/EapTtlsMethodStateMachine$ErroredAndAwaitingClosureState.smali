.class public Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapTtlsMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ErroredAndAwaitingClosureState"
.end annotation


# instance fields
.field private final blacklist mEapError:Lcom/android/internal/net/eap/EapResult$EapError;

.field private final blacklist mTAG:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Lcom/android/internal/net/eap/EapResult$EapError;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;
    .param p2, "eapError"    # Lcom/android/internal/net/eap/EapResult$EapError;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 607
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 593
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;->mTAG:Ljava/lang/String;

    .line 608
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;->mEapError:Lcom/android/internal/net/eap/EapResult$EapError;

    .line 609
    return-void
.end method


# virtual methods
.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 8
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 613
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    .line 614
    .local v0, "result":Lcom/android/internal/net/eap/EapResult;
    if-eqz v0, :cond_9

    .line 615
    return-object v0

    .line 618
    :cond_9
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$fgetmTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 619
    invoke-virtual {v1, v2}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;->decodeEapTtlsRequestPacket([B)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;

    move-result-object v1

    .line 620
    .local v1, "decodeResult":Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;
    invoke-virtual {v1}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->isSuccessfulDecode()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 621
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;->mTAG:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    iget-object v4, v4, Lcom/android/internal/net/eap/EapResult$EapError;->cause:Ljava/lang/Exception;

    const-string v5, "Error parsing EAP-TTLS packet type data"

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 622
    iget-object v2, v1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    return-object v2

    .line 628
    :cond_2d
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    iget-object v3, v1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    iget-object v3, v3, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->data:[B

    invoke-virtual {v2, v3}, Lcom/android/internal/net/eap/crypto/TlsSession;->processIncomingData([B)Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    .line 630
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;->mEapError:Lcom/android/internal/net/eap/EapResult$EapError;

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

    .line 592
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
