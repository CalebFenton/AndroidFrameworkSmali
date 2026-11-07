.class public Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapMsChapV2MethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChallengeState"
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

    .line 244
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 12
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 249
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    .line 250
    .local v1, "result":Lcom/android/internal/net/eap/EapResult;
    if-eqz v1, :cond_9

    .line 251
    return-object v1

    .line 254
    :cond_9
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$fgetmTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v3, v3, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 255
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;->decodeChallengeRequest(Ljava/lang/String;[B)Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;

    move-result-object v2

    .line 256
    .local v2, "decodeResult":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;, "Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult<Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;>;"
    invoke-virtual {v2}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->isSuccessfulDecode()Z

    move-result v0

    if-nez v0, :cond_22

    .line 257
    iget-object v0, v2, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    return-object v0

    .line 260
    :cond_22
    iget-object v0, v2, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;

    .line 261
    .local v3, "challengeRequest":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received Challenge Request: Challenge="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v7, v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;->challenge:[B

    .line 264
    invoke-virtual {v6, v7}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Server-Name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;->name:[B

    .line 265
    invoke-static {v6}, Lcom/android/internal/net/utils/Log;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/16 v0, 0x10

    new-array v6, v0, [B

    .line 268
    .local v6, "peerChallenge":[B
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$fgetmSecureRandom(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 272
    :try_start_66
    iget-object v0, v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;->challenge:[B

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-static {v4}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$fgetmEapMsChapV2Config(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v4

    .line 276
    invoke-virtual {v4}, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->getUsername()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-static {v5}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$fgetmEapMsChapV2Config(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v5

    .line 277
    invoke-virtual {v5}, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->getPassword()Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-static {v0, v6, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->generateNtResponse([B[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v7
    :try_end_80
    .catch Ljava/security/GeneralSecurityException; {:try_start_66 .. :try_end_80} :catch_10a

    .line 281
    .local v7, "ntResponse":[B
    nop

    .line 283
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Generating Challenge Response: Username="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v9, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-static {v9}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$fgetmEapMsChapV2Config(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v9

    .line 286
    invoke-virtual {v9}, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->getUsername()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " Peer-Challenge="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 287
    invoke-virtual {v8, v6}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " NT-Response="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 288
    invoke-virtual {v8, v7}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :try_start_cb
    new-instance v4, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;

    iget v5, v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;->msChapV2Id:I

    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$fgetmEapMsChapV2Config(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->usernameToBytes(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;-><init>(I[B[BI[B)V

    .line 298
    .local v4, "challengeResponse":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    new-instance v5, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    iget-object v9, v3, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;->challenge:[B

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;[B[B[B)V

    invoke-virtual {v0, v5}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 302
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    invoke-static {v0, v5, v8, v4}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$mbuildEapMessageResponse(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;Ljava/lang/String;ILcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0
    :try_end_f9
    .catch Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException; {:try_start_cb .. :try_end_f9} :catch_fa

    return-object v0

    .line 303
    .end local v4    # "challengeResponse":Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;
    :catch_fa
    move-exception v0

    .line 304
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v8, "Error building response type data"

    invoke-virtual {v4, v5, v8, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    new-instance v4, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v4, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v4

    .line 278
    .end local v0    # "ex":Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;
    .end local v7    # "ntResponse":[B
    :catch_10a
    move-exception v0

    .line 279
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v7, "Error generating EAP MSCHAPv2 Challenge response"

    invoke-virtual {v4, v5, v7, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    new-instance v4, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v4, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v4
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

    .line 244
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
