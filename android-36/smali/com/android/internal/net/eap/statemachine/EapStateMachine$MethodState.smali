.class public Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;
.super Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;
.source "EapStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MethodState"
.end annotation


# instance fields
.field blacklist mEapMethodStateMachine:Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;

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

    .line 284
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)V

    .line 285
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->mTAG:Ljava/lang/String;

    return-void
.end method

.method private blacklist buildEapMethodStateMachine(I)Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;
    .registers 12
    .param p1, "eapType"    # I

    .line 335
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig;->getEapConfigs()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/eap/EapSessionConfig$EapMethodConfig;

    .line 336
    .local v0, "eapMethodConfig":Landroid/net/eap/EapSessionConfig$EapMethodConfig;
    if-nez v0, :cond_57

    .line 337
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No configs provided for method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/eap/message/EapData;->EAP_TYPE_STRING:Ljava/util/Map;

    .line 341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 340
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v1, 0x0

    return-object v1

    .line 345
    :cond_57
    sparse-switch p1, :sswitch_data_10c

    .line 375
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unsupported EAP Type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Received unsupported EAP Type in MethodState constructor"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :sswitch_7c
    move-object v1, v0

    check-cast v1, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    .line 365
    .local v1, "eapAkaPrimeConfig":Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;
    new-instance v2, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v3}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmContext(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v4}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;

    move-result-object v4

    .line 366
    invoke-virtual {v4}, Landroid/net/eap/EapSessionConfig;->getEapIdentity()[B

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;-><init>(Landroid/content/Context;[BLandroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;)V

    .line 365
    return-object v2

    .line 368
    .end local v1    # "eapAkaPrimeConfig":Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;
    :sswitch_95
    move-object v1, v0

    check-cast v1, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    .line 369
    .local v1, "eapMsChapV2Config":Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;
    new-instance v2, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v3}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmSecureRandom(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;-><init>(Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;Ljava/security/SecureRandom;)V

    return-object v2

    .line 354
    .end local v1    # "eapMsChapV2Config":Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;
    :sswitch_a4
    move-object v7, v0

    check-cast v7, Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    .line 355
    .local v7, "eapAkaConfig":Landroid/net/eap/EapSessionConfig$EapAkaConfig;
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Landroid/net/eap/EapSessionConfig;->getEapConfigs()Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 357
    .local v8, "supportsEapAkaPrime":Z
    new-instance v4, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmContext(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/content/Context;

    move-result-object v5

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Landroid/net/eap/EapSessionConfig;->getEapIdentity()[B

    move-result-object v6

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmSecureRandom(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Ljava/security/SecureRandom;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;-><init>(Landroid/content/Context;[BLandroid/net/eap/EapSessionConfig$EapAkaConfig;ZLjava/security/SecureRandom;)V

    .line 357
    return-object v4

    .line 371
    .end local v7    # "eapAkaConfig":Landroid/net/eap/EapSessionConfig$EapAkaConfig;
    .end local v8    # "supportsEapAkaPrime":Z
    :sswitch_d7
    move-object v1, v0

    check-cast v1, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    .line 372
    .local v1, "eapTtlsConfig":Landroid/net/eap/EapSessionConfig$EapTtlsConfig;
    new-instance v2, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v3}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmContext(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v4}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmSecureRandom(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Ljava/security/SecureRandom;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/android/internal/net/eap/statemachine/EapTtlsMethodStateMachine;-><init>(Landroid/content/Context;Landroid/net/eap/EapSessionConfig$EapTtlsConfig;Ljava/security/SecureRandom;)V

    return-object v2

    .line 347
    .end local v1    # "eapTtlsConfig":Landroid/net/eap/EapSessionConfig$EapTtlsConfig;
    :sswitch_ec
    move-object v1, v0

    check-cast v1, Landroid/net/eap/EapSessionConfig$EapSimConfig;

    .line 348
    .local v1, "eapSimConfig":Landroid/net/eap/EapSessionConfig$EapSimConfig;
    new-instance v2, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v3}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmContext(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v4}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;

    move-result-object v4

    .line 350
    invoke-virtual {v4}, Landroid/net/eap/EapSessionConfig;->getEapIdentity()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v5}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmSecureRandom(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Ljava/security/SecureRandom;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;-><init>(Landroid/content/Context;[BLandroid/net/eap/EapSessionConfig$EapSimConfig;Ljava/security/SecureRandom;)V

    .line 348
    return-object v2

    nop

    :sswitch_data_10c
    .sparse-switch
        0x12 -> :sswitch_ec
        0x15 -> :sswitch_d7
        0x17 -> :sswitch_a4
        0x1a -> :sswitch_95
        0x32 -> :sswitch_7c
    .end sparse-switch
.end method


# virtual methods
.method public blacklist process([B)Lcom/android/internal/net/eap/EapResult;
    .registers 8
    .param p1, "packet"    # [B

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->decode([B)Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;

    move-result-object v0

    .line 294
    .local v0, "decodeResult":Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;
    invoke-virtual {v0}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->isValidEapMessage()Z

    move-result v1

    if-nez v1, :cond_d

    .line 295
    iget-object v1, v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->eapResult:Lcom/android/internal/net/eap/EapResult;

    return-object v1

    .line 297
    :cond_d
    iget-object v1, v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->eapMessage:Lcom/android/internal/net/eap/message/EapMessage;

    .line 299
    .local v1, "eapMessage":Lcom/android/internal/net/eap/message/EapMessage;
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->mEapMethodStateMachine:Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;

    if-nez v2, :cond_6d

    .line 300
    iget v2, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_25

    .line 303
    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v3, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v4, "Received an EAP-Success in the MethodState"

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v2

    .line 306
    :cond_25
    iget v2, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3c

    .line 307
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    new-instance v3, Lcom/android/internal/net/eap/statemachine/EapStateMachine$FailureState;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$FailureState;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;)V

    .line 308
    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapFailure;

    invoke-direct {v2}, Lcom/android/internal/net/eap/EapResult$EapFailure;-><init>()V

    return-object v2

    .line 309
    :cond_3c
    iget-object v2, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4a

    .line 312
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->mTAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->handleNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 315
    :cond_4a
    iget-object v2, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    .line 316
    .local v2, "eapType":I
    invoke-direct {p0, v2}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->buildEapMethodStateMachine(I)Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->mEapMethodStateMachine:Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;

    .line 318
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->mEapMethodStateMachine:Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;

    if-nez v3, :cond_6d

    .line 319
    iget v3, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v4}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;

    move-result-object v4

    .line 320
    invoke-virtual {v4}, Landroid/net/eap/EapSessionConfig;->getEapConfigs()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 319
    invoke-static {v3, v4}, Lcom/android/internal/net/eap/message/EapMessage;->getNakResponse(ILjava/util/Collection;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v3

    return-object v3

    .line 324
    .end local v2    # "eapType":I
    :cond_6d
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->mEapMethodStateMachine:Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;

    iget-object v3, v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->eapMessage:Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {v2, v3}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/eap/EapResult;

    .line 325
    .local v2, "result":Lcom/android/internal/net/eap/EapResult;
    instance-of v3, v2, Lcom/android/internal/net/eap/EapResult$EapSuccess;

    if-eqz v3, :cond_88

    .line 326
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    new-instance v4, Lcom/android/internal/net/eap/statemachine/EapStateMachine$SuccessState;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-direct {v4, v5}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$SuccessState;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;)V

    goto :goto_98

    .line 327
    :cond_88
    instance-of v3, v2, Lcom/android/internal/net/eap/EapResult$EapFailure;

    if-eqz v3, :cond_98

    .line 328
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    new-instance v4, Lcom/android/internal/net/eap/statemachine/EapStateMachine$FailureState;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-direct {v4, v5}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$FailureState;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;)V

    .line 330
    :cond_98
    :goto_98
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

    .line 284
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;->process([B)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
