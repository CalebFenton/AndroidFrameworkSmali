.class public final Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;
.super Ljava/lang/Object;
.source "EapStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DecodeResult"
.end annotation


# instance fields
.field public final blacklist eapMessage:Lcom/android/internal/net/eap/message/EapMessage;

.field public final blacklist eapResult:Lcom/android/internal/net/eap/EapResult;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;Lcom/android/internal/net/eap/EapResult;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;
    .param p2, "eapResult"    # Lcom/android/internal/net/eap/EapResult;
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

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->eapMessage:Lcom/android/internal/net/eap/message/EapMessage;

    .line 176
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->eapResult:Lcom/android/internal/net/eap/EapResult;

    .line 177
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;Lcom/android/internal/net/eap/message/EapMessage;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState;
    .param p2, "eapMessage"    # Lcom/android/internal/net/eap/message/EapMessage;
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

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->eapMessage:Lcom/android/internal/net/eap/message/EapMessage;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->eapResult:Lcom/android/internal/net/eap/EapResult;

    .line 172
    return-void
.end method


# virtual methods
.method public blacklist isValidEapMessage()Z
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapStateMachine$EapState$DecodeResult;->eapMessage:Lcom/android/internal/net/eap/message/EapMessage;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
