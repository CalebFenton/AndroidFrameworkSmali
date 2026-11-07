.class public Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;
.super Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CloseableTtlsMethodState;
.source "EapTtlsMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TunnelState"
.end annotation


# instance fields
.field blacklist mEapTtlsAvpDecoder:Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder;

.field blacklist mInnerEapStateMachine:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

.field private final blacklist mTAG:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 398
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CloseableTtlsMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)V

    .line 393
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    .line 396
    new-instance v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder;

    invoke-direct {v0}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mEapTtlsAvpDecoder:Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder;

    .line 399
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {p1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$fgetmContext(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$fgetmEapTtlsConfig(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    move-result-object v2

    .line 401
    invoke-virtual {v2}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->getInnerEapSessionConfig()Landroid/net/eap/EapSessionConfig;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$fgetmSecureRandom(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;-><init>(Landroid/content/Context;Landroid/net/eap/EapSessionConfig;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mInnerEapStateMachine:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    .line 402
    return-void
.end method


# virtual methods
.method blacklist handleEapSuccessFailure(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 7
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 563
    iget v0, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    iget v0, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    goto :goto_d

    .line 582
    :cond_b
    const/4 v0, 0x0

    return-object v0

    .line 564
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mInnerEapStateMachine:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-virtual {p1}, Lcom/android/internal/net/eap/message/EapMessage;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/eap/EapResult;

    .line 565
    .local v0, "innerResult":Lcom/android/internal/net/eap/EapResult;
    instance-of v1, v0, Lcom/android/internal/net/eap/EapResult$EapSuccess;

    if-eqz v1, :cond_4b

    .line 566
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    invoke-virtual {v1}, Lcom/android/internal/net/eap/crypto/TlsSession;->generateKeyingMaterial()Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;

    move-result-object v1

    .line 567
    .local v1, "keyingMaterial":Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    invoke-virtual {v2}, Lcom/android/internal/net/eap/crypto/TlsSession;->closeConnection()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    .line 568
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    new-instance v3, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 570
    invoke-virtual {v1}, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_41

    .line 571
    iget-object v2, v1, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    return-object v2

    .line 574
    :cond_41
    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapSuccess;

    iget-object v3, v1, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;->msk:[B

    iget-object v4, v1, Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;->emsk:[B

    invoke-direct {v2, v3, v4}, Lcom/android/internal/net/eap/EapResult$EapSuccess;-><init>([B[B)V

    return-object v2

    .line 577
    .end local v1    # "keyingMaterial":Lcom/android/internal/net/eap/crypto/TlsSession$EapTtlsKeyingMaterial;
    :cond_4b
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    new-instance v2, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 578
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    invoke-virtual {v1}, Lcom/android/internal/net/eap/crypto/TlsSession;->closeConnection()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    .line 579
    return-object v0
.end method

.method blacklist handleTunnelTlsResult(Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;I)Lcom/android/internal/net/eap/EapResult;
    .registers 8
    .param p1, "result"    # Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    .param p2, "eapIdentifier"    # I

    .line 519
    iget v0, p1, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->status:I

    packed-switch v0, :pswitch_data_6c

    .line 539
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an unexpected TLS result with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "illegalStateException":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v3, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    .line 523
    .end local v0    # "illegalStateException":Ljava/lang/Exception;
    :pswitch_2d
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "TLS Session failed to encrypt or decrypt data and was closed."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 530
    .local v0, "closeException":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    new-instance v2, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    new-instance v4, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v4, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v2, v3, v4}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;-><init>(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Lcom/android/internal/net/eap/EapResult$EapError;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 531
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->data:[B

    invoke-static {v1, v2, p2, v3}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$mbuildEapMessageResponse(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Ljava/lang/String;I[B)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    .line 533
    .end local v0    # "closeException":Ljava/lang/Exception;
    :pswitch_50
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    new-instance v1, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 534
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "Failed to encrypt or decrypt message. Tunnel could not be closed properly"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 521
    :pswitch_69
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_69
        :pswitch_50
        :pswitch_2d
    .end packed-switch
.end method

.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 20
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    .line 423
    .local v2, "eapResult":Lcom/android/internal/net/eap/EapResult;
    if-eqz v2, :cond_d

    .line 424
    return-object v2

    .line 427
    :cond_d
    iget-object v3, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-static {v3}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$fgetmTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v4, v4, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 428
    invoke-virtual {v3, v4}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;->decodeEapTtlsRequestPacket([B)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;

    move-result-object v3

    .line 429
    .local v3, "decodeResult":Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;
    invoke-virtual {v3}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->isSuccessfulDecode()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 430
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    iget-object v6, v6, Lcom/android/internal/net/eap/EapResult$EapError;->cause:Ljava/lang/Exception;

    const-string v7, "Error parsing EAP-TTLS packet type data"

    invoke-virtual {v4, v5, v7, v6}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 431
    iget-object v4, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v5, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v7, v3, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v4

    return-object v4

    .line 435
    :cond_3b
    iget-object v4, v3, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    .line 437
    .local v4, "eapTtlsRequest":Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;
    iget-object v5, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v6, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    iget v7, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    .line 438
    invoke-static {v5, v6, v4, v7}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$mgetNextOutboundFragment(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Ljava/lang/String;Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v5

    .line 439
    .local v5, "nextOutboundFragment":Lcom/android/internal/net/eap/EapResult;
    if-eqz v5, :cond_4a

    .line 440
    return-object v5

    .line 443
    :cond_4a
    iget-object v6, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v7, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    iget v8, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    .line 444
    invoke-static {v6, v7, v4, v8}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$mhandleInboundFragmentation(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Ljava/lang/String;Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v6

    .line 445
    .local v6, "inboundFragmentAck":Lcom/android/internal/net/eap/EapResult;
    if-eqz v6, :cond_57

    .line 446
    return-object v6

    .line 449
    :cond_57
    iget-object v7, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    iget-object v8, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mInboundFragmentationHelper:Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;

    .line 451
    invoke-virtual {v8}, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->getAssembledInboundFragment()[B

    move-result-object v8

    .line 450
    invoke-virtual {v7, v8}, Lcom/android/internal/net/eap/crypto/TlsSession;->processIncomingData([B)Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v7

    .line 453
    .local v7, "decryptResult":Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    iget v8, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->handleTunnelTlsResult(Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v8

    .line 454
    .local v8, "errorResult":Lcom/android/internal/net/eap/EapResult;
    if-eqz v8, :cond_70

    .line 455
    return-object v8

    .line 458
    :cond_70
    iget-object v9, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mEapTtlsAvpDecoder:Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder;

    iget-object v10, v7, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->data:[B

    invoke-virtual {v9, v10}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder;->decode([B)Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;

    move-result-object v9

    .line 459
    .local v9, "avpDecodeResult":Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;
    invoke-virtual {v9}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;->isSuccessfulDecode()Z

    move-result v10

    if-nez v10, :cond_98

    .line 460
    sget-object v10, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v11, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    iget-object v12, v12, Lcom/android/internal/net/eap/EapResult$EapError;->cause:Ljava/lang/Exception;

    const-string v13, "Error parsing EAP-TTLS AVP"

    invoke-virtual {v10, v11, v13, v12}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    iget-object v10, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v11, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    iget v12, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v13, v9, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v10

    return-object v10

    .line 465
    :cond_98
    iget-object v10, v9, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp$EapTtlsAvpDecoder$AvpDecodeResult;->eapTtlsAvp:Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;

    .line 466
    .local v10, "avp":Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;
    sget-object v11, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v12, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    const-string v13, "Incoming AVP has been decrypted and processed. AVP data will be passed to the inner state machine."

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v11, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mInnerEapStateMachine:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    iget-object v12, v10, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->data:[B

    invoke-virtual {v11, v12}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/net/eap/EapResult;

    .line 473
    .local v11, "innerResult":Lcom/android/internal/net/eap/EapResult;
    instance-of v12, v11, Lcom/android/internal/net/eap/EapResult$EapError;

    if-eqz v12, :cond_bf

    .line 474
    iget-object v12, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v13, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    iget v14, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    move-object v15, v11

    check-cast v15, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v12

    return-object v12

    .line 476
    :cond_bf
    instance-of v12, v11, Lcom/android/internal/net/eap/EapResult$EapFailure;

    if-eqz v12, :cond_e0

    .line 477
    sget-object v12, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v13, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    const-string v14, "Tunneled authentication failed"

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v12, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v12, v12, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    invoke-virtual {v12}, Lcom/android/internal/net/eap/crypto/TlsSession;->closeConnection()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    .line 479
    iget-object v12, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    new-instance v13, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v14, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {v13, v14}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v12, v13}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 480
    return-object v11

    .line 481
    :cond_e0
    instance-of v12, v11, Lcom/android/internal/net/eap/EapResult$EapSuccess;

    if-eqz v12, :cond_fc

    .line 482
    new-instance v12, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v13, "Received an unexpected EapSuccess from the inner state machine."

    invoke-direct {v12, v13}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    .line 485
    .local v12, "invalidSuccess":Ljava/lang/Exception;
    iget-object v13, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v14, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    iget v15, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    move-object/from16 v16, v2

    .end local v2    # "eapResult":Lcom/android/internal/net/eap/EapResult;
    .local v16, "eapResult":Lcom/android/internal/net/eap/EapResult;
    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v2, v12}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v13, v14, v15, v2}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    goto :goto_fe

    .line 481
    .end local v12    # "invalidSuccess":Ljava/lang/Exception;
    .end local v16    # "eapResult":Lcom/android/internal/net/eap/EapResult;
    .restart local v2    # "eapResult":Lcom/android/internal/net/eap/EapResult;
    :cond_fc
    move-object/from16 v16, v2

    .line 489
    .end local v2    # "eapResult":Lcom/android/internal/net/eap/EapResult;
    .restart local v16    # "eapResult":Lcom/android/internal/net/eap/EapResult;
    :goto_fe
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v12, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    const-string v13, "Received EapResponse from innerStateMachine"

    invoke-virtual {v2, v12, v13}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    move-object v2, v11

    check-cast v2, Lcom/android/internal/net/eap/EapResult$EapResponse;

    .line 493
    .local v2, "innerResponse":Lcom/android/internal/net/eap/EapResult$EapResponse;
    iget-object v12, v2, Lcom/android/internal/net/eap/EapResult$EapResponse;->packet:[B

    .line 494
    const/4 v13, 0x0

    invoke-static {v13, v12}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->getEapMessageAvp(I[B)Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;

    move-result-object v12

    .line 495
    .local v12, "outgoingAvp":Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;
    iget-object v13, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v13, v13, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    invoke-virtual {v12}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->encode()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/internal/net/eap/crypto/TlsSession;->processOutgoingData([B)Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v13

    .line 497
    .local v13, "encryptResult":Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    iget v14, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    invoke-virtual {v0, v13, v14}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->handleTunnelTlsResult(Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v8

    .line 498
    if-eqz v8, :cond_126

    .line 499
    return-object v8

    .line 502
    :cond_126
    sget-object v14, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v15, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    move-object/from16 v17, v2

    .end local v2    # "innerResponse":Lcom/android/internal/net/eap/EapResult$EapResponse;
    .local v17, "innerResponse":Lcom/android/internal/net/eap/EapResult$EapResponse;
    const-string v2, "Outbound AVP has been assembled and encrypted. Building EAP Response."

    invoke-virtual {v14, v15, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v2, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v14, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->mTAG:Ljava/lang/String;

    iget v15, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v0, v13, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->data:[B

    invoke-static {v2, v14, v15, v0}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$mbuildEapMessageResponse(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Ljava/lang/String;I[B)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0
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

    .line 392
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
