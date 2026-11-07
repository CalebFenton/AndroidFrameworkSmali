.class public Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;
.super Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CloseableTtlsMethodState;
.source "EapTtlsMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HandshakeState"
.end annotation


# static fields
.field private static final blacklist DEFAULT_VENDOR_ID:I


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

    .line 182
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$CloseableTtlsMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)V

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    return-void
.end method

.method private blacklist startHandshake(I)Lcom/android/internal/net/eap/EapResult;
    .registers 6
    .param p1, "eapIdentifier"    # I

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    sget-object v1, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->sTlsSessionFactory:Lcom/android/internal/net/eap/crypto/TlsSessionFactory;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-static {v2}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$fgetmEapTtlsConfig(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    move-result-object v2

    .line 316
    invoke-virtual {v2}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->getServerCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-static {v3}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$fgetmSecureRandom(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Ljava/security/SecureRandom;

    move-result-object v3

    .line 315
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/eap/crypto/TlsSessionFactory;->newInstance(Ljava/security/cert/X509Certificate;Ljava/security/SecureRandom;)Lcom/android/internal/net/eap/crypto/TlsSession;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;
    :try_end_1a
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_1a} :catch_4c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_4c

    .line 321
    nop

    .line 323
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    invoke-virtual {v0}, Lcom/android/internal/net/eap/crypto/TlsSession;->startHandshake()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v0

    .line 324
    .local v0, "tlsResult":Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    iget v1, v0, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 328
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    new-instance v2, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 329
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v2, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsHandshakeException;

    const-string v3, "Failed to start handshake."

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v1

    .line 332
    :cond_41
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->data:[B

    invoke-static {v1, v2, p1, v3}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$mbuildEapMessageResponse(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Ljava/lang/String;I[B)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    .line 317
    .end local v0    # "tlsResult":Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    :catch_4c
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v2, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsHandshakeException;

    const-string v3, "There was an error creating the TLS Session."

    invoke-direct {v2, v3, v0}, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsHandshakeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v1
.end method


# virtual methods
.method blacklist buildEapIdentityResponseAvp(I)[B
    .registers 6
    .param p1, "eapIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/EapSilentException;
        }
    .end annotation

    .line 346
    new-instance v0, Lcom/android/internal/net/eap/message/EapData;

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$fgetmEapTtlsConfig(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->getInnerEapSessionConfig()Landroid/net/eap/EapSessionConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/eap/EapSessionConfig;->getEapIdentity()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/android/internal/net/eap/message/EapData;-><init>(I[B)V

    .line 350
    .local v0, "eapData":Lcom/android/internal/net/eap/message/EapData;
    new-instance v1, Lcom/android/internal/net/eap/message/EapMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, v0}, Lcom/android/internal/net/eap/message/EapMessage;-><init>(IILcom/android/internal/net/eap/message/EapData;)V

    .line 351
    .local v1, "eapMessage":Lcom/android/internal/net/eap/message/EapMessage;
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/android/internal/net/eap/message/EapMessage;->encode()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->getEapMessageAvp(I[B)Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/net/eap/message/ttls/EapTtlsAvp;->encode()[B

    move-result-object v2

    return-object v2
.end method

.method public blacklist handleEapSuccessFailure(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 5
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 369
    iget v0, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    .line 372
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    invoke-virtual {v0}, Lcom/android/internal/net/eap/crypto/TlsSession;->closeConnection()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    .line 373
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v1, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v2, "Received an EAP-Success in the handshake state"

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 376
    :cond_19
    iget v0, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_37

    .line 377
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    invoke-virtual {v0}, Lcom/android/internal/net/eap/crypto/TlsSession;->closeConnection()Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    .line 378
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    new-instance v1, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 379
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapFailure;

    invoke-direct {v0}, Lcom/android/internal/net/eap/EapResult$EapFailure;-><init>()V

    return-object v0

    .line 382
    :cond_37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 15
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 207
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    .line 208
    .local v0, "eapResult":Lcom/android/internal/net/eap/EapResult;
    if-eqz v0, :cond_9

    .line 209
    return-object v0

    .line 212
    :cond_9
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$fgetmTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 213
    invoke-virtual {v1, v2}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder;->decodeEapTtlsRequestPacket([B)Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;

    move-result-object v1

    .line 214
    .local v1, "decodeResult":Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;
    invoke-virtual {v1}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->isSuccessfulDecode()Z

    move-result v2

    if-nez v2, :cond_40

    .line 215
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    iget-object v4, v4, Lcom/android/internal/net/eap/EapResult$EapError;->cause:Ljava/lang/Exception;

    const-string v5, "Error parsing EAP-TTLS packet type data"

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    if-nez v2, :cond_33

    .line 217
    iget-object v2, v1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    return-object v2

    .line 219
    :cond_33
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v5, v1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapError:Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 223
    :cond_40
    iget-object v2, v1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsTypeDataDecoder$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    .line 227
    .local v2, "eapTtlsRequest":Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    .line 228
    invoke-static {v3, v4, v2, v5}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$mhandleInboundFragmentation(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Ljava/lang/String;Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v3

    .line 229
    .local v3, "inboundFragmentAck":Lcom/android/internal/net/eap/EapResult;
    if-eqz v3, :cond_4f

    .line 230
    return-object v3

    .line 233
    :cond_4f
    iget-boolean v4, v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isStart:Z

    if-eqz v4, :cond_77

    .line 234
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    if-eqz v4, :cond_70

    .line 235
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    iget v6, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    new-instance v7, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v8, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v9, "Received a start request when a session is already in progress"

    invoke-direct {v8, v9}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v4

    return-object v4

    .line 244
    :cond_70
    iget v4, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    invoke-direct {p0, v4}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->startHandshake(I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v4

    return-object v4

    .line 247
    :cond_77
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    iget v6, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    .line 248
    invoke-static {v4, v5, v2, v6}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$mgetNextOutboundFragment(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Ljava/lang/String;Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v4

    .line 249
    .local v4, "nextOutboundFragment":Lcom/android/internal/net/eap/EapResult;
    if-eqz v4, :cond_84

    .line 251
    return-object v4

    .line 257
    :cond_84
    :try_start_84
    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v5, v5, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mTlsSession:Lcom/android/internal/net/eap/crypto/TlsSession;

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->mInboundFragmentationHelper:Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;

    .line 259
    invoke-virtual {v6}, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->getAssembledInboundFragment()[B

    move-result-object v6

    iget v7, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    .line 260
    invoke-virtual {p0, v7}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->buildEapIdentityResponseAvp(I)[B

    move-result-object v7

    .line 258
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/net/eap/crypto/TlsSession;->processHandshakeData([B[B)Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;

    move-result-object v5
    :try_end_9a
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_84 .. :try_end_9a} :catch_12a

    .line 265
    .local v5, "tlsResult":Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    nop

    .line 267
    iget v6, v5, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->status:I

    packed-switch v6, :pswitch_data_144

    .line 295
    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    new-instance v9, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received an unknown TLS result with code "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->status:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v6

    return-object v6

    .line 275
    :pswitch_ca
    new-instance v6, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v7, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsHandshakeException;

    const-string v8, "Handshake failed to complete and the connection was closed."

    invoke-direct {v7, v8}, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    .line 283
    .local v6, "eapError":Lcom/android/internal/net/eap/EapResult$EapError;
    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    new-instance v8, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;

    iget-object v9, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {v8, v9, v6}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$ErroredAndAwaitingClosureState;-><init>(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Lcom/android/internal/net/eap/EapResult$EapError;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 284
    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    iget v9, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v10, v5, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->data:[B

    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$mbuildEapMessageResponse(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Ljava/lang/String;I[B)Lcom/android/internal/net/eap/EapResult;

    move-result-object v7

    return-object v7

    .line 289
    .end local v6    # "eapError":Lcom/android/internal/net/eap/EapResult$EapError;
    :pswitch_ef
    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    new-instance v7, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {v7, v8}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v6, v7}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 290
    new-instance v6, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v7, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsHandshakeException;

    const-string v8, "Handshake failed to complete and may not have been closed properly."

    invoke-direct {v7, v8}, Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v6

    .line 269
    :pswitch_108
    sget-object v6, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    const-string v8, "Tunnel established. Generating a response."

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    new-instance v7, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    invoke-direct {v7, v8}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$TunnelState;-><init>(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;)V

    invoke-virtual {v6, v7}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 273
    :pswitch_11d
    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v9, v5, Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;->data:[B

    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->-$$Nest$mbuildEapMessageResponse(Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;Ljava/lang/String;I[B)Lcom/android/internal/net/eap/EapResult;

    move-result-object v6

    return-object v6

    .line 261
    .end local v5    # "tlsResult":Lcom/android/internal/net/eap/crypto/TlsSession$TlsResult;
    :catch_12a
    move-exception v5

    .line 262
    .local v5, "e":Lcom/android/internal/net/eap/exceptions/EapSilentException;
    sget-object v6, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    const-string v8, "Error building an identity response."

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->mTAG:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    new-instance v9, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v9, v5}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;->transitionToErroredAndAwaitingClosureState(Ljava/lang/String;ILcom/android/internal/net/eap/EapResult$EapError;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v6

    return-object v6

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_108
        :pswitch_11d
        :pswitch_ef
        :pswitch_ca
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

    .line 182
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine$HandshakeState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
