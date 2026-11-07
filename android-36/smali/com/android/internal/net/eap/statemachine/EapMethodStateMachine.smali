.class public abstract Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;
.super Lcom/android/internal/net/utils/SimpleStateMachine;
.source "EapMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;,
        Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/net/utils/SimpleStateMachine<",
        "Lcom/android/internal/net/eap/message/EapMessage;",
        "Lcom/android/internal/net/eap/EapResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist MIN_EMSK_LEN_BYTES:I = 0x40

.field public static final blacklist MIN_MSK_LEN_BYTES:I = 0x40


# instance fields
.field protected blacklist mIsExpectingEapFailure:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/android/internal/net/utils/SimpleStateMachine;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;->mIsExpectingEapFailure:Z

    return-void
.end method


# virtual methods
.method abstract blacklist getEapMethod()I
.end method

.method protected blacklist getState()Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/net/utils/SimpleStateMachine<",
            "Lcom/android/internal/net/eap/message/EapMessage;",
            "Lcom/android/internal/net/eap/EapResult;",
            ">.SimpleState;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;->mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    return-object v0
.end method

.method abstract blacklist handleEapNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
.end method

.method protected blacklist transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V
    .registers 6
    .param p1, "newState"    # Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;

    .line 66
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transitioning from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;->mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Lcom/android/internal/net/utils/SimpleStateMachine;->transitionTo(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;)V

    .line 71
    return-void
.end method
