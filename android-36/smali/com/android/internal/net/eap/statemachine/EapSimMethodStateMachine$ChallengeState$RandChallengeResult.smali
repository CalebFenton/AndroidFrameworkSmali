.class Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;
.super Ljava/lang/Object;
.source "EapSimMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RandChallengeResult"
.end annotation


# instance fields
.field public final blacklist kc:[B

.field public final blacklist sres:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;[B[B)V
    .registers 6
    .param p1, "this$1"    # Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;
    .param p2, "sres"    # [B
    .param p3, "kc"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
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

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;->sres:[B

    .line 554
    iput-object p3, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;->kc:[B

    .line 556
    array-length v0, p2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 559
    array-length v0, p3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    .line 562
    return-void

    .line 560
    :cond_11
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;

    const-string v1, "Invalid Kc length"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_19
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;

    const-string v1, "Invalid SRES length"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 566
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 567
    :cond_4
    instance-of v1, p1, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 568
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;

    .line 569
    .local v1, "that":Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;->sres:[B

    iget-object v4, v1, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;->sres:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;->kc:[B

    iget-object v4, v1, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;->kc:[B

    .line 570
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 569
    :goto_23
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 575
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;->sres:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 576
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;->kc:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 577
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
