.class public Lcom/android/internal/net/eap/statemachine/EapStateMachine;
.super Lcom/android/internal/net/utils/SimpleStateMachine;
.source "EapStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;,
        Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;,
        Lcom/android/internal/net/eap/statemachine/EapStateMachine$FailureState;,
        Lcom/android/internal/net/eap/statemachine/EapStateMachine$SuccessState;,
        Lcom/android/internal/net/eap/statemachine/EapStateMachine$MethodState;,
        Lcom/android/internal/net/eap/statemachine/EapStateMachine$IdentityState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/net/utils/SimpleStateMachine<",
        "[B",
        "Lcom/android/internal/net/eap/EapResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEapSessionConfig:Landroid/net/eap/EapSessionConfig;

.field private final blacklist mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEapSessionConfig(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Landroid/net/eap/EapSessionConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->mEapSessionConfig:Landroid/net/eap/EapSessionConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecureRandom(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)Ljava/security/SecureRandom;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->mSecureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/eap/EapSessionConfig;Ljava/security/SecureRandom;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eapSessionConfig"    # Landroid/net/eap/EapSessionConfig;
    .param p3, "secureRandom"    # Ljava/security/SecureRandom;

    .line 85
    invoke-direct {p0}, Lcom/android/internal/net/utils/SimpleStateMachine;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->mEapSessionConfig:Landroid/net/eap/EapSessionConfig;

    .line 88
    iput-object p3, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->mSecureRandom:Ljava/security/SecureRandom;

    .line 90
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v1, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting EapStateMachine with EAP-Identity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 93
    invoke-virtual {p2}, Landroid/net/eap/EapSessionConfig;->getEapIdentity()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and configs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 94
    invoke-virtual {p2}, Landroid/net/eap/EapSessionConfig;->getEapConfigs()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;

    invoke-direct {v0, p0}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$CreatedState;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;)V

    .line 97
    return-void
.end method

.method protected static blacklist handleNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 398
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v1, v1, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 399
    .local v0, "content":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received EAP-Request/Notification: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget v1, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    invoke-static {v1}, Lcom/android/internal/net/eap/message/EapMessage;->getNotificationResponse(I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected blacklist getState()Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    return-object v0
.end method

.method protected blacklist transitionAndProcess(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;[B)Lcom/android/internal/net/eap/EapResult;
    .registers 4
    .param p1, "newState"    # Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;
    .param p2, "packet"    # [B

    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/internal/net/utils/SimpleStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/eap/EapResult;

    return-object v0
.end method

.method protected blacklist transitionTo(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;)V
    .registers 6
    .param p1, "newState"    # Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;

    .line 106
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v1, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transitioning from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    .line 108
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1}, Lcom/android/internal/net/utils/SimpleStateMachine;->transitionTo(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;)V

    .line 111
    return-void
.end method
