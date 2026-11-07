.class public Lcom/android/internal/net/eap/statemachine/EapStateMachine$FailureState;
.super Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;
.source "EapStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FailureState"
.end annotation


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

    .line 389
    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;-><init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine;)V

    return-void
.end method


# virtual methods
.method public blacklist process([B)Lcom/android/internal/net/eap/EapResult;
    .registers 5
    .param p1, "message"    # [B

    .line 391
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v1, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v2, "Not possible to process messages in Failure State"

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v0
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

    .line 389
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapStateMachine$FailureState;->process([B)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
