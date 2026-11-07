.class public Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapSimMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CreatedState"
.end annotation


# instance fields
.field private final blacklist mTAG:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 136
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 14
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 139
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    .line 140
    .local v1, "result":Lcom/android/internal/net/eap/EapResult;
    if-eqz v1, :cond_9

    .line 141
    return-object v1

    .line 144
    :cond_9
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->-$$Nest$fgetmEapSimTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;)Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 145
    invoke-virtual {v0, v2}, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;->decode([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    move-result-object v2

    .line 146
    .local v2, "decodeResult":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;, "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult<Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;>;"
    invoke-virtual {v2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->isSuccessfulDecode()Z

    move-result v0

    const/16 v3, 0x12

    if-nez v0, :cond_2a

    .line 147
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget v4, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v5, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->atClientErrorCode:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 153
    :cond_2a
    iget-object v0, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;

    .line 154
    .local v11, "eapSimTypeData":Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;
    iget v0, v11, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->eapSubtype:I

    packed-switch v0, :pswitch_data_80

    .line 167
    :pswitch_34
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget v4, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 158
    :pswitch_3f
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    iget v9, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->handleEapSimAkaNotification(Ljava/lang/String;ZZZIILcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 156
    :pswitch_4e
    nop

    .line 173
    const/16 v0, 0x10

    new-array v3, v0, [B

    .line 174
    .local v3, "nonce":[B
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 177
    :try_start_5a
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;

    invoke-direct {v0, v3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;-><init>([B)V
    :try_end_5f
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_5a .. :try_end_5f} :catch_70

    .line 181
    .local v0, "atNonceMt":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;
    nop

    .line 182
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    new-instance v5, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    invoke-direct {v5, v6, v0}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$StartState;-><init>(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;)V

    # invokes: Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v4, v5, p1}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->access$000(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/eap/EapResult;

    return-object v4

    .line 178
    .end local v0    # "atNonceMt":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;
    :catch_70
    move-exception v0

    .line 179
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->mTAG:Ljava/lang/String;

    const-string v6, "Exception thrown while creating AtNonceMt"

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    new-instance v4, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v4, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v4

    :pswitch_data_80
    .packed-switch 0xa
        :pswitch_4e
        :pswitch_34
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

    .line 135
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$CreatedState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
