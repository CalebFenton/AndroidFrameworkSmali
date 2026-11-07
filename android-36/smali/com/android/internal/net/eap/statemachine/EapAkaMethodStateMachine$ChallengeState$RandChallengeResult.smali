.class Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;
.super Ljava/lang/Object;
.source "EapAkaMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RandChallengeResult"
.end annotation


# instance fields
.field public final blacklist auts:[B

.field public final blacklist ck:[B

.field public final blacklist ik:[B

.field public final blacklist res:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$misSuccessfulResult(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->isSuccessfulResult()Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;[B)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;
    .param p2, "auts"    # [B
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;
        }
    .end annotation

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    array-length v0, p2

    const/16 v1, 0xe

    if-ne v0, v1, :cond_12

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->res:[B

    .line 577
    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ik:[B

    .line 578
    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ck:[B

    .line 579
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->auts:[B

    .line 580
    return-void

    .line 573
    :cond_12
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;

    const-string v1, "Invalid AUTS length"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;[B[B[B)V
    .registers 7
    .param p1, "this$1"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;
    .param p2, "res"    # [B
    .param p3, "ik"    # [B
    .param p4, "ck"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;
        }
    .end annotation

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    array-length v0, p2

    invoke-static {v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;->isValidResLen(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 559
    array-length v0, p3

    const/16 v1, 0x10

    if-ne v0, v1, :cond_24

    .line 561
    array-length v0, p4

    if-ne v0, v1, :cond_1c

    .line 565
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->res:[B

    .line 566
    iput-object p3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ik:[B

    .line 567
    iput-object p4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ck:[B

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->auts:[B

    .line 569
    return-void

    .line 562
    :cond_1c
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;

    const-string v1, "Invalid CK length"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_24
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;

    const-string v1, "Invalid IK length"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_2c
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;

    const-string v1, "Invalid RES length"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist isSuccessfulResult()Z
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->res:[B

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ik:[B

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ck:[B

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
