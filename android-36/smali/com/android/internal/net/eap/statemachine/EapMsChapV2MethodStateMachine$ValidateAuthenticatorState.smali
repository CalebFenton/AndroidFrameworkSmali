.class public Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapMsChapV2MethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ValidateAuthenticatorState"
.end annotation


# instance fields
.field private final blacklist mAuthenticatorChallenge:[B

.field private final blacklist mNtResponse:[B

.field private final blacklist mPeerChallenge:[B

.field private final blacklist mTAG:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;[B[B[B)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;
    .param p2, "authenticatorChallenge"    # [B
    .param p3, "peerChallenge"    # [B
    .param p4, "ntResponse"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mTAG:Ljava/lang/String;

    .line 320
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mAuthenticatorChallenge:[B

    .line 321
    iput-object p3, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mPeerChallenge:[B

    .line 322
    iput-object p4, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mNtResponse:[B

    .line 323
    return-void
.end method


# virtual methods
.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 14
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 327
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    .line 328
    .local v1, "result":Lcom/android/internal/net/eap/EapResult;
    if-eqz v1, :cond_9

    .line 329
    return-object v1

    .line 334
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$fgetmTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    invoke-virtual {v0, v2}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;->getOpCode([B)I

    move-result v0
    :try_end_17
    .catch Ljava/nio/BufferUnderflowException; {:try_start_9 .. :try_end_17} :catch_19b

    move v2, v0

    .line 338
    .local v2, "opCode":I
    nop

    .line 340
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received Op Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->EAP_OP_CODE_STRING:Ljava/util/Map;

    .line 343
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Unknown"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 340
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    packed-switch v2, :pswitch_data_1ac

    .line 413
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid OpCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v3, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v4, "Unexpected request received in EAP MSCHAPv2"

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 390
    :pswitch_7b
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$fgetmTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mTAG:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v4, v4, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 391
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;->decodeFailureRequest(Ljava/lang/String;[B)Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;

    move-result-object v0

    .line 393
    .local v0, "failureDecodeResult":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;, "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult<Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;>;"
    invoke-virtual {v0}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->isSuccessfulDecode()Z

    move-result v3

    if-nez v3, :cond_94

    .line 394
    iget-object v3, v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    return-object v3

    .line 397
    :cond_94
    iget-object v3, v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;

    check-cast v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;

    .line 398
    .local v3, "failureRequest":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;
    iget v4, v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->errorCode:I

    .line 399
    .local v4, "errorCode":I
    sget-object v5, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mTAG:Ljava/lang/String;

    sget-object v7, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->EAP_ERROR_CODE_STRING:Ljava/util/Map;

    .line 403
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "UNKNOWN"

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 404
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v9, v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->isRetryable:Z

    .line 405
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget v10, v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->passwordChangeProtocol:I

    .line 406
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->message:Ljava/lang/String;

    filled-new-array {v7, v8, v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v7

    .line 401
    const-string v8, "Received MSCHAPv2 Failure-Request: E=%s (%d) R=%b V=%d M=%s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 399
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    new-instance v6, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapFailureState;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-direct {v6, v7}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapFailureState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 409
    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mTAG:Ljava/lang/String;

    iget v7, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    .line 410
    invoke-static {}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureResponse;->getEapMsChapV2FailureResponse()Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureResponse;

    move-result-object v8

    .line 409
    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$mbuildEapMessageResponse(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;Ljava/lang/String;ILcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v5

    return-object v5

    .line 348
    .end local v0    # "failureDecodeResult":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;, "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult<Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;>;"
    .end local v3    # "failureRequest":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;
    .end local v4    # "errorCode":I
    :pswitch_e4
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$fgetmTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mTAG:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v4, v4, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 349
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;->decodeSuccessRequest(Ljava/lang/String;[B)Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;

    move-result-object v3

    .line 351
    .local v3, "successDecodeResult":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;, "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult<Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;>;"
    invoke-virtual {v3}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->isSuccessfulDecode()Z

    move-result v0

    if-nez v0, :cond_fd

    .line 352
    iget-object v0, v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    return-object v0

    .line 355
    :cond_fd
    iget-object v0, v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;

    move-object v4, v0

    check-cast v4, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;

    .line 356
    .local v4, "successRequest":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received SuccessRequest: Auth-String="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v8, v4, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;->authBytes:[B

    .line 359
    invoke-virtual {v7, v8}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;->message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 356
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :try_start_130
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$fgetmEapMsChapV2Config(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->getPassword()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mNtResponse:[B

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mPeerChallenge:[B

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mAuthenticatorChallenge:[B

    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$fgetmEapMsChapV2Config(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->getUsername()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v4, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;->authBytes:[B

    .line 365
    invoke-static/range {v5 .. v10}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->checkAuthenticatorResponse(Ljava/lang/String;[B[B[BLjava/lang/String;[B)Z

    move-result v0
    :try_end_150
    .catch Ljava/security/GeneralSecurityException; {:try_start_130 .. :try_end_150} :catch_18b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_130 .. :try_end_150} :catch_18b

    .line 375
    .local v0, "isSuccessfulAuth":Z
    nop

    .line 377
    if-nez v0, :cond_16e

    .line 378
    sget-object v5, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mTAG:Ljava/lang/String;

    const-string v7, "Authenticator Response does not match expected response value"

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    new-instance v6, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-direct {v6, v7}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 382
    new-instance v5, Lcom/android/internal/net/eap/EapResult$EapFailure;

    invoke-direct {v5}, Lcom/android/internal/net/eap/EapResult$EapFailure;-><init>()V

    return-object v5

    .line 385
    :cond_16e
    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    new-instance v6, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mNtResponse:[B

    invoke-direct {v6, v7, v8}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;[B)V

    invoke-virtual {v5, v6}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 386
    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mTAG:Ljava/lang/String;

    iget v7, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    .line 387
    invoke-static {}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessResponse;->getEapMsChapV2SuccessResponse()Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessResponse;

    move-result-object v8

    .line 386
    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$mbuildEapMessageResponse(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;Ljava/lang/String;ILcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v5

    return-object v5

    .line 372
    .end local v0    # "isSuccessfulAuth":Z
    :catch_18b
    move-exception v0

    .line 373
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v5, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mTAG:Ljava/lang/String;

    const-string v7, "Error validating MSCHAPv2 Authenticator Response"

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    new-instance v5, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v5, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v5

    .line 335
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "opCode":I
    .end local v3    # "successDecodeResult":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;, "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult<Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;>;"
    .end local v4    # "successRequest":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;
    :catch_19b
    move-exception v0

    .line 336
    .local v0, "ex":Ljava/nio/BufferUnderflowException;
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->mTAG:Ljava/lang/String;

    const-string v4, "Empty type data received in ValidateAuthenticatorState"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v2

    nop

    :pswitch_data_1ac
    .packed-switch 0x3
        :pswitch_e4
        :pswitch_7b
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

    .line 310
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
