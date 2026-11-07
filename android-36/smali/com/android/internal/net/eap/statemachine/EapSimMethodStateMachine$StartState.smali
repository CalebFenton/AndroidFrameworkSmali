.class public Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapSimMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StartState"
.end annotation


# instance fields
.field private final blacklist mAtNonceMt:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;

.field blacklist mIdentity:[B

.field private final blacklist mTAG:Ljava/lang/String;

.field private blacklist mVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;
    .param p2, "atNonceMt"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;
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

    .line 195
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 187
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mTAG:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->mEapIdentity:[B

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mIdentity:[B

    .line 196
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mAtNonceMt:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;

    .line 197
    return-void
.end method


# virtual methods
.method blacklist getIdentityResponse(Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;
    .registers 9
    .param p1, "eapSimTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;,
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaIdentityUnavailableException;
        }
    .end annotation

    .line 327
    iget-object v0, p1, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 330
    .local v0, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 331
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 332
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_2d

    .line 347
    :cond_2b
    const/4 v1, 0x0

    return-object v1

    .line 333
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_79

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "identity":Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mIdentity:[B

    .line 342
    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EAP-SIM/Identity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v6, v2}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mIdentity:[B

    invoke-static {v3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;->getAtIdentity([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;

    move-result-object v3

    return-object v3

    .line 335
    .end local v2    # "identity":Ljava/lang/String;
    :cond_79
    new-instance v2, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaIdentityUnavailableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI for subId ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->mEapUiccConfig:Landroid/net/eap/EapSessionConfig$EapUiccConfig;

    .line 336
    invoke-virtual {v4}, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaIdentityUnavailableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method blacklist isValidStartAttributes(Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;)Z
    .registers 7
    .param p1, "eapSimTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;

    .line 294
    iget-object v0, p1, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 295
    .local v0, "attrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 296
    return v2

    .line 300
    :cond_14
    const/4 v1, 0x0

    .line 301
    .local v1, "idRequests":I
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 302
    add-int/lit8 v1, v1, 0x1

    .line 304
    :cond_23
    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 305
    add-int/lit8 v1, v1, 0x1

    .line 307
    :cond_31
    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 308
    add-int/lit8 v1, v1, 0x1

    .line 310
    :cond_3f
    const/4 v3, 0x1

    if-le v1, v3, :cond_43

    .line 311
    return v2

    .line 315
    :cond_43
    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 316
    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 317
    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    goto :goto_69

    .line 320
    :cond_68
    return v3

    .line 318
    :cond_69
    :goto_69
    return v2
.end method

.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 14
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 200
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    .line 201
    .local v1, "result":Lcom/android/internal/net/eap/EapResult;
    if-eqz v1, :cond_9

    .line 202
    return-object v1

    .line 205
    :cond_9
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->-$$Nest$fgetmEapSimTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;)Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 206
    invoke-virtual {v0, v2}, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;->decode([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    move-result-object v2

    .line 207
    .local v2, "decodeResult":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;, "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult<Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;>;"
    invoke-virtual {v2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->isSuccessfulDecode()Z

    move-result v0

    const/16 v3, 0x12

    if-nez v0, :cond_2a

    .line 208
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget v4, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v5, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->atClientErrorCode:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 214
    :cond_2a
    iget-object v0, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;

    .line 215
    .local v11, "eapSimTypeData":Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;
    iget v0, v11, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->eapSubtype:I

    packed-switch v0, :pswitch_data_122

    .line 235
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget v4, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 219
    :pswitch_3f
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mTAG:Ljava/lang/String;

    iget v9, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->handleEapSimAkaNotification(Ljava/lang/String;ZZZIILcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 232
    :pswitch_4e
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    new-instance v3, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mVersions:Ljava/util/List;

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mAtNonceMt:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mIdentity:[B

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;-><init>(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;Ljava/util/List;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;[B)V

    # invokes: Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v3, p1}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->access$100(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/eap/EapResult;

    return-object v0

    .line 217
    :pswitch_64
    nop

    .line 241
    invoke-virtual {p0, v11}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->isValidStartAttributes(Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;)Z

    move-result v0

    if-nez v0, :cond_96

    .line 242
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid attributes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget v4, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 249
    :cond_96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 250
    .local v4, "responseAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mAtNonceMt:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, v11, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    .line 254
    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;

    .line 255
    .local v5, "atVersionList":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;
    iget-object v0, v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;->versions:Ljava/util/List;

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mVersions:Ljava/util/List;

    .line 256
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mVersions:Ljava/util/List;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 257
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget v6, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    sget-object v7, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNSUPPORTED_VERSION:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v0, v6, v3, v7}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 262
    :cond_cc
    invoke-static {}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;->getSelectedVersion()Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :try_start_d3
    invoke-virtual {p0, v11}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->getIdentityResponse(Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;

    move-result-object v0

    .line 266
    .local v0, "atIdentity":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;
    if-eqz v0, :cond_dc

    .line 267
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_dc
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_d3 .. :try_end_dc} :catch_111
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaIdentityUnavailableException; {:try_start_d3 .. :try_end_dc} :catch_e8

    .line 275
    .end local v0    # "atIdentity":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;
    :cond_dc
    nop

    .line 277
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    const/16 v6, 0xa

    iget v7, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    invoke-virtual {v0, v3, v6, v7, v4}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildResponseMessage(IIILjava/util/List;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 272
    :catch_e8
    move-exception v0

    .line 273
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaIdentityUnavailableException;
    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to get IMSI for subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v8, v8, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->mEapUiccConfig:Landroid/net/eap/EapSessionConfig$EapUiccConfig;

    invoke-virtual {v8}, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->getSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v3, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v3, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v3

    .line 269
    .end local v0    # "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaIdentityUnavailableException;
    :catch_111
    move-exception v0

    .line 270
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->mTAG:Ljava/lang/String;

    const-string v7, "Exception thrown while making AtIdentity attribute"

    invoke-virtual {v3, v6, v7, v0}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    new-instance v3, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v3, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v3

    nop

    :pswitch_data_122
    .packed-switch 0xa
        :pswitch_64
        :pswitch_4e
        :pswitch_3f
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

    .line 186
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
