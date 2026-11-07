.class public abstract Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;
.super Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
.source "EapStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "EapState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/net/utils/SimpleStateMachine<",
        "[B",
        "Lcom/android/internal/net/eap/EapResult;",
        ">.SimpleState;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;-><init>(Lcom/android/internal/net/utils/SimpleStateMachine;)V

    return-void
.end method


# virtual methods
.method protected blacklist decode([B)Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;
    .registers 8
    .param p1, "packet"    # [B

    .line 120
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received packet=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 121
    invoke-virtual {v3, p1}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-nez p1, :cond_40

    .line 124
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;

    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Attempting to decode null packet"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;Lcom/android/internal/net/eap/EapResult;)V

    return-object v0

    .line 129
    :cond_40
    :try_start_40
    invoke-static {p1}, Lcom/android/internal/net/eap/message/EapMessage;->decode([B)Lcom/android/internal/net/eap/message/EapMessage;

    move-result-object v0

    .line 133
    .local v0, "eapMessage":Lcom/android/internal/net/eap/message/EapMessage;
    iget-object v1, v0, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    if-nez v1, :cond_4b

    .line 134
    const-string v1, ""

    goto :goto_8b

    .line 135
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/net/eap/message/EapData;->EAP_TYPE_STRING:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v3, v3, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UNKNOWN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v5, v5, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8b
    nop

    .line 138
    .local v1, "eapDataString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoded message: EAP-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/net/eap/message/EapMessage;->EAP_CODE_STRING:Ljava/util/Map;

    iget v4, v0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    .line 139
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "UNKNOWN"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget v3, v0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d7

    .line 144
    new-instance v3, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v4, "Received an EAP-Response message"

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    .line 146
    .local v3, "cause":Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;
    new-instance v4, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;

    new-instance v5, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v5, v3}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v4, p0, v5}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;Lcom/android/internal/net/eap/EapResult;)V

    return-object v4

    .line 147
    .end local v3    # "cause":Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;
    :cond_d7
    iget v3, v0, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f5

    iget-object v3, v0, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget v3, v3, Lcom/android/internal/net/eap/message/EapData;->eapType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f5

    .line 150
    new-instance v3, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v4, "Received an EAP-Request of type Nak"

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    .line 152
    .restart local v3    # "cause":Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;
    new-instance v4, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;

    new-instance v5, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v5, v3}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v4, p0, v5}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;Lcom/android/internal/net/eap/EapResult;)V

    return-object v4

    .line 155
    .end local v3    # "cause":Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;
    :cond_f5
    new-instance v3, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;Lcom/android/internal/net/eap/message/EapMessage;)V
    :try_end_fa
    .catch Lcom/android/internal/net/eap/exceptions/UnsupportedEapTypeException; {:try_start_40 .. :try_end_fa} :catch_107
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_40 .. :try_end_fa} :catch_fb

    return-object v3

    .line 160
    .end local v0    # "eapMessage":Lcom/android/internal/net/eap/message/EapMessage;
    .end local v1    # "eapDataString":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    :catch_fb
    move-exception v0

    .line 161
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/EapSilentException;
    new-instance v1, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;

    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;Lcom/android/internal/net/eap/EapResult;)V

    return-object v1

    .line 156
    .end local v0    # "ex":Lcom/android/internal/net/eap/exceptions/EapSilentException;
    :catch_107
    move-exception v0

    .line 157
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/UnsupportedEapTypeException;
    new-instance v1, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;

    iget v2, v0, Lcom/android/internal/net/eap/exceptions/UnsupportedEapTypeException;->eapIdentifier:I

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;->this$0:Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-static {v3}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->-$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;

    move-result-object v3

    .line 159
    invoke-virtual {v3}, Landroid/net/eap/EapSessionConfig;->getEapConfigs()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 158
    invoke-static {v2, v3}, Lcom/android/internal/net/eap/message/EapMessage;->getNakResponse(ILjava/util/Collection;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;Lcom/android/internal/net/eap/EapResult;)V

    .line 157
    return-object v1
.end method
