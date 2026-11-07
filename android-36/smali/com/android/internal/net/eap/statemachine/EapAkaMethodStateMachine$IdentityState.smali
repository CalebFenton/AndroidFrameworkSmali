.class public Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapAkaMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IdentityState"
.end annotation


# instance fields
.field private blacklist mIdentity:[B

.field private blacklist mReauthIdentity:[B

.field private blacklist mReauthInfo:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

.field private final blacklist mTAG:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 263
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mTAG:Ljava/lang/String;

    .line 270
    invoke-static {p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->-$$Nest$mgetReauthIdentity(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mReauthIdentity:[B

    .line 271
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mReauthIdentity:[B

    iget-object v1, p1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEapIdentity:[B

    invoke-static {p1, v0, v1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->-$$Nest$mgetAvailableReauthInfo(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;[B[B)Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mReauthInfo:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    .line 272
    return-void
.end method

.method private blacklist isValidIdentityAttributes(Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Z
    .registers 7
    .param p1, "eapAkaTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    .line 362
    iget-object v0, p1, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 365
    .local v0, "attrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 366
    .local v1, "idRequests":I
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    add-int/2addr v1, v2

    .line 367
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    add-int/2addr v1, v2

    .line 368
    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    add-int/2addr v1, v2

    .line 370
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2d

    .line 371
    return v2

    .line 375
    :cond_2d
    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 376
    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 377
    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    goto :goto_53

    .line 380
    :cond_52
    return v3

    .line 378
    :cond_53
    :goto_53
    return v2
.end method


# virtual methods
.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 13
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 275
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    .line 276
    .local v1, "result":Lcom/android/internal/net/eap/EapResult;
    if-eqz v1, :cond_9

    .line 277
    return-object v1

    .line 280
    :cond_9
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 281
    invoke-virtual {v0, v2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->decode([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    move-result-object v2

    .line 282
    .local v2, "decodeResult":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;, "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult<+Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;>;"
    invoke-virtual {v2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->isSuccessfulDecode()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 283
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v3, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 284
    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v4

    iget-object v5, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->atClientErrorCode:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 283
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 287
    :cond_2a
    iget-object v0, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    move-object v10, v0

    check-cast v10, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    .line 288
    .local v10, "eapAkaTypeData":Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;
    iget v0, v10, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->eapSubtype:I

    sparse-switch v0, :sswitch_data_1b0

    .line 306
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v3, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 308
    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v4

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 306
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 294
    :sswitch_45
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mReauthIdentity:[B

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mReauthInfo:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    .line 295
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildReauthState([BLcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;)Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;

    move-result-object v3

    .line 294
    # invokes: Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v3, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->access$400(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/eap/EapResult;

    return-object v0

    .line 297
    :sswitch_58
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mTAG:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->handleEapSimAkaNotification(Ljava/lang/String;ZZZIILcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 290
    :sswitch_67
    nop

    .line 312
    invoke-direct {p0, v10}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->isValidIdentityAttributes(Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 313
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid attributes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v3, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    const/16 v4, 0x17

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 321
    :cond_9b
    iget-object v0, v10, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mReauthIdentity:[B

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mReauthInfo:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    if-eqz v0, :cond_df

    .line 325
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mReauthIdentity:[B

    .line 326
    .local v0, "identityToResponse":[B
    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send EAP-AKA/Identity response with Reauth ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mIdentity:[B

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 329
    invoke-virtual {v6, v7}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 326
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    goto/16 :goto_170

    .line 331
    .end local v0    # "identityToResponse":[B
    :cond_df
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_12f

    .line 333
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v3, v3, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEapUiccConfig:Landroid/net/eap/EapSessionConfig$EapUiccConfig;

    invoke-virtual {v3}, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->getSubId()I

    move-result v3

    .line 334
    .local v3, "subId":I
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get IMSI for subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v4, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v5, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaIdentityUnavailableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMSI for subId ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") not available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaIdentityUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v4

    .line 339
    .end local v3    # "subId":I
    :cond_12f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getIdentityPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "identityString":Ljava/lang/String;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mIdentity:[B

    .line 341
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mIdentity:[B

    .line 342
    .local v4, "identityToResponse":[B
    sget-object v5, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send EAP-AKA/Identity response with permanent ID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 343
    invoke-virtual {v8, v3}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 342
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v3    # "identityString":Ljava/lang/String;
    :goto_170
    :try_start_170
    invoke-static {v4}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;->getAtIdentity([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;

    move-result-object v0
    :try_end_174
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_170 .. :try_end_174} :catch_18f

    .line 352
    .local v0, "atIdentity":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;
    nop

    .line 354
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 355
    invoke-virtual {v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v5

    iget v6, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    .line 358
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 354
    const/4 v8, 0x5

    invoke-virtual {v3, v5, v8, v6, v7}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildResponseMessage(IIILjava/util/List;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v3

    return-object v3

    .line 349
    .end local v0    # "atIdentity":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;
    :catch_18f
    move-exception v0

    .line 350
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mTAG:Ljava/lang/String;

    const-string v6, "Exception thrown while making AtIdentity attribute"

    invoke-virtual {v3, v5, v6, v0}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    new-instance v3, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v3, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v3

    .line 292
    .end local v0    # "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    .end local v4    # "identityToResponse":[B
    :sswitch_19f
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->mIdentity:[B

    invoke-virtual {v3, v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildChallengeState([B)Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;

    move-result-object v3

    # invokes: Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v3, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->access$300(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/eap/EapResult;

    return-object v0

    :sswitch_data_1b0
    .sparse-switch
        0x1 -> :sswitch_19f
        0x5 -> :sswitch_67
        0xc -> :sswitch_58
        0xd -> :sswitch_45
    .end sparse-switch
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

    .line 262
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$IdentityState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
