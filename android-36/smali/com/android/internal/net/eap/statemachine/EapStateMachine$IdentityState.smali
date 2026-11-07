.class public Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;
.super Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;
.source "EapStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IdentityState"
.end annotation


# instance fields
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

    .line 216
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)V

    .line 217
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->mTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method blacklist getEapIdentity()[B
    .registers 6

    .line 264
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig;->getEapAkaConfig()Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    move-result-object v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig;->getEapAkaConfig()Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->getEapAkaOption()Landroid/net/eap/EapSessionConfig$EapAkaOption;

    move-result-object v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig;->getEapAkaConfig()Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->getEapAkaOption()Landroid/net/eap/EapSessionConfig$EapAkaOption;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$EapAkaOption;->getReauthId()[B

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 268
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig;->getEapAkaConfig()Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->getEapAkaOption()Landroid/net/eap/EapSessionConfig$EapAkaOption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$EapAkaOption;->getReauthId()[B

    move-result-object v0

    .line 270
    .local v0, "reauthIdBytes":[B
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 271
    .local v1, "reauthId":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v3}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;

    move-result-object v3

    .line 272
    invoke-virtual {v3}, Landroid/net/eap/EapSessionConfig;->getEapIdentity()[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 274
    .local v2, "permanentId":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->getInstance()Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->getReauthInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    move-result-object v3

    .line 276
    .local v3, "reauthInfo":Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;
    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->isValid()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 277
    return-object v0

    .line 280
    .end local v0    # "reauthIdBytes":[B
    .end local v1    # "reauthId":Ljava/lang/String;
    .end local v2    # "permanentId":Ljava/lang/String;
    .end local v3    # "reauthInfo":Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;
    :cond_6b
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig;->getEapIdentity()[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getIdentityResponse(I)Lcom/android/internal/net/eap/EapResult;
    .registers 8
    .param p1, "eapIdentifier"    # I

    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->getEapIdentity()[B

    move-result-object v0

    .line 250
    .local v0, "eapIdentity":[B
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning EAP-Identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v4, v0}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v1, Lcom/android/internal/net/eap/message/EapData;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/internal/net/eap/message/EapData;-><init>(I[B)V

    .line 252
    .local v1, "identityData":Lcom/android/internal/net/eap/message/EapData;
    new-instance v2, Lcom/android/internal/net/eap/message/EapMessage;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1, v1}, Lcom/android/internal/net/eap/message/EapMessage;-><init>(IILcom/android/internal/net/eap/message/EapData;)V

    invoke-static {v2}, Lcom/android/internal/net/eap/EapResult$EapResponse;->getEapResponse(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2
    :try_end_34
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_0 .. :try_end_34} :catch_35

    return-object v2

    .line 254
    .end local v0    # "eapIdentity":[B
    .end local v1    # "identityData":Lcom/android/internal/net/eap/message/EapData;
    :catch_35
    move-exception v0

    .line 256
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/EapSilentException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create Identity response for message with identifier="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v1, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public blacklist process([B)Lcom/android/internal/net/eap/EapResult;
    .registers 7
    .param p1, "packet"    # [B

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->decode([B)Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;

    move-result-object v0

    .line 221
    .local v0, "decodeResult":Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;
    invoke-virtual {v0}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->isValidEapMessage()Z

    move-result v1

    if-nez v1, :cond_d

    .line 222
    iget-object v1, v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->eapResult:Lcom/android/internal/net/eap/EapResult;

    return-object v1

    .line 224
    :cond_d
    iget-object v1, v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->eapMessage:Lcom/android/internal/net/eap/message/EapMessage;

    .line 226
    .local v1, "message":Lcom/android/internal/net/eap/message/EapMessage;
    iget v2, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_21

    .line 227
    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v3, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v4, "Received non EAP-Request in IdentityState"

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v2

    .line 233
    :cond_21
    iget-object v2, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    packed-switch v2, :pswitch_data_44

    .line 242
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    new-instance v3, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)V

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->transitionAndProcess(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;[B)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 235
    :pswitch_36
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->mTAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->handleNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 238
    :pswitch_3d
    iget v2, v1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    invoke-virtual {p0, v2}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->getIdentityResponse(I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_36
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

    .line 216
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;->process([B)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
