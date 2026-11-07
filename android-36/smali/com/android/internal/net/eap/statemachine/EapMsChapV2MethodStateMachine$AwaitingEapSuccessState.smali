.class public Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapMsChapV2MethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AwaitingEapSuccessState"
.end annotation


# instance fields
.field private final blacklist mNtResponse:[B

.field private final blacklist mTAG:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;[B)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;
    .param p2, "ntResponse"    # [B
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

    .line 426
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 422
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->mTAG:Ljava/lang/String;

    .line 427
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->mNtResponse:[B

    .line 428
    return-void
.end method


# virtual methods
.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 10
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 432
    iget v0, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    .line 433
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->mTAG:Ljava/lang/String;

    const-string v2, "Received EAP-Failure in PreSuccessState"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    new-instance v1, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 435
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapFailure;

    invoke-direct {v0}, Lcom/android/internal/net/eap/EapResult$EapFailure;-><init>()V

    return-object v0

    .line 436
    :cond_20
    iget v0, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a2

    .line 437
    iget-object v0, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v0, v0, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    .line 438
    .local v0, "eapType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    .line 439
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->mTAG:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->handleEapNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    .line 441
    :cond_35
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unexpected EAP message. Type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/eap/message/EapData;->EAP_TYPE_STRING:Ljava/util/Map;

    .line 445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UNKNOWN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 444
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 441
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v2, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected EAP Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    .line 449
    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->getEapMethod()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    .line 446
    return-object v1

    .line 456
    .end local v0    # "eapType":I
    :cond_a2
    :try_start_a2
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->-$$Nest$fgetmEapMsChapV2Config(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;->getPassword()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->mNtResponse:[B

    invoke-static {v0, v1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->generateMsk(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 457
    .local v0, "msk":[B
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    new-instance v2, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->this$0:Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 458
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapSuccess;

    const/16 v2, 0x40

    new-array v2, v2, [B

    invoke-direct {v1, v0, v2}, Lcom/android/internal/net/eap/EapResult$EapSuccess;-><init>([B[B)V
    :try_end_c7
    .catch Ljava/security/GeneralSecurityException; {:try_start_a2 .. :try_end_c7} :catch_c8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a2 .. :try_end_c7} :catch_c8

    return-object v1

    .line 459
    .end local v0    # "msk":[B
    :catch_c8
    move-exception v0

    .line 460
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->mTAG:Ljava/lang/String;

    const-string v3, "Error generating MSK for EAP MSCHAPv2"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v1, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v1
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

    .line 421
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
