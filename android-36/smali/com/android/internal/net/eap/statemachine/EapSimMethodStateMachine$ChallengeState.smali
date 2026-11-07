.class public Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapSimMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChallengeState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;
    }
.end annotation


# instance fields
.field private final blacklist mBytesPerShort:I

.field blacklist mHadSuccessfulChallenge:Z

.field final blacklist mIdentity:[B

.field private final blacklist mKcLenBytes:I

.field private final blacklist mNonce:[B

.field private final blacklist mSresLenBytes:I

.field private final blacklist mTAG:Ljava/lang/String;

.field private final blacklist mVersionLenBytes:I

.field private final blacklist mVersions:Ljava/util/List;
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
.method protected constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;Ljava/util/List;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;[B)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;
    .param p3, "atNonceMt"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;
    .param p4, "identity"    # [B
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;",
            "[B)V"
        }
    .end annotation

    .line 367
    .local p2, "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 352
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    .line 353
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mBytesPerShort:I

    .line 354
    iput v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mVersionLenBytes:I

    .line 359
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mSresLenBytes:I

    .line 360
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mKcLenBytes:I

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mHadSuccessfulChallenge:Z

    .line 368
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mVersions:Ljava/util/List;

    .line 369
    iget-object v0, p3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;->nonceMt:[B

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mNonce:[B

    .line 370
    iput-object p4, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mIdentity:[B

    .line 371
    return-void
.end method

.method private blacklist getMkInputData(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;",
            ">;)[B"
        }
    .end annotation

    .line 582
    .local p1, "randChallengeResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;>;"
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mIdentity:[B

    array-length v0, v0

    .line 584
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mNonce:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mVersions:Ljava/util/List;

    .line 586
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 589
    .local v0, "numInputBytes":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 590
    .local v1, "mkInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mIdentity:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 591
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;

    .line 592
    .local v3, "randChallengeResult":Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;
    iget-object v4, v3, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;->kc:[B

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 593
    .end local v3    # "randChallengeResult":Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;
    goto :goto_26

    .line 594
    :cond_38
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mNonce:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 595
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mVersions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 596
    .local v3, "i":I
    int-to-short v4, v3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 597
    .end local v3    # "i":I
    goto :goto_43

    .line 598
    :cond_58
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 599
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method blacklist getRandChallengeResultFromResponse([B)Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;
    .registers 8
    .param p1, "challengeResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;
        }
    .end annotation

    .line 529
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 530
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    .line 531
    .local v1, "lenSres":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_33

    .line 534
    new-array v2, v2, [B

    .line 535
    .local v2, "sres":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 537
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    .line 538
    .local v3, "lenKc":I
    const/16 v4, 0x8

    if-ne v3, v4, :cond_2b

    .line 541
    new-array v4, v4, [B

    .line 542
    .local v4, "kc":[B
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 544
    new-instance v5, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;

    invoke-direct {v5, p0, v2, v4}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;-><init>(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;[B[B)V

    return-object v5

    .line 539
    .end local v4    # "kc":[B
    :cond_2b
    new-instance v4, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;

    const-string v5, "Invalid Kc length specified"

    invoke-direct {v4, v5}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 532
    .end local v2    # "sres":[B
    .end local v3    # "lenKc":I
    :cond_33
    new-instance v2, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;

    const-string v3, "Invalid SRES length specified"

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method blacklist getRandChallengeResults(Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;)Ljava/util/List;
    .registers 16
    .param p1, "eapSimTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;,
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaAuthenticationFailureException;
        }
    .end annotation

    .line 492
    iget-object v0, p1, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;

    .line 493
    .local v0, "atRand":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;
    iget-object v2, v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;->rands:Ljava/util/List;

    .line 494
    .local v2, "randList":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v3, "challengeResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ae

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 498
    .local v5, "rand":[B
    array-length v6, v5

    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 499
    .local v6, "formattedRand":Ljava/nio/ByteBuffer;
    array-length v7, v5

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 500
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 502
    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    .line 506
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    .line 503
    const/16 v10, 0x80

    invoke-virtual {v7, v8, v10, v9}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->processUiccAuthentication(Ljava/lang/String;I[B)[B

    move-result-object v7

    .line 508
    .local v7, "challengeResponseBytes":[B
    nop

    .line 509
    invoke-virtual {p0, v7}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->getRandChallengeResultFromResponse([B)Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;

    move-result-object v8

    .line 510
    .local v8, "randChallengeResult":Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v9, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v10, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RAND="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v12, v5}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    sget-object v9, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v10, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SRES="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v13, v8, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;->sres:[B

    invoke-virtual {v12, v13}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    sget-object v9, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v10, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Kc="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v13, v8, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;->kc:[B

    invoke-virtual {v12, v13}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .end local v5    # "rand":[B
    .end local v6    # "formattedRand":Ljava/nio/ByteBuffer;
    .end local v7    # "challengeResponseBytes":[B
    .end local v8    # "randChallengeResult":Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;
    goto/16 :goto_18

    .line 518
    :cond_ae
    return-object v3
.end method

.method blacklist isValidChallengeAttributes(Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;)Z
    .registers 5
    .param p1, "eapSimTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;

    .line 485
    iget-object v0, p1, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 486
    .local v0, "attrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 14
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 374
    iget v0, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_39

    .line 375
    iget-boolean v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mHadSuccessfulChallenge:Z

    if-nez v0, :cond_1f

    .line 376
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v2, "Received unexpected EAP-Success"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v1, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v2, "Received an EAP-Success in the ChallengeState"

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 381
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    new-instance v1, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 382
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapSuccess;

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->mMsk:[B

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->mEmsk:[B

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/eap/EapResult$EapSuccess;-><init>([B[B)V

    return-object v0

    .line 385
    :cond_39
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    .line 386
    .local v1, "eapResult":Lcom/android/internal/net/eap/EapResult;
    if-eqz v1, :cond_42

    .line 387
    return-object v1

    .line 390
    :cond_42
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->-$$Nest$fgetmEapSimTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;)Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 391
    invoke-virtual {v0, v2}, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData$EapSimTypeDataDecoder;->decode([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    move-result-object v2

    .line 392
    .local v2, "decodeResult":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;, "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult<Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;>;"
    invoke-virtual {v2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->isSuccessfulDecode()Z

    move-result v0

    const/16 v3, 0x12

    if-nez v0, :cond_63

    .line 393
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget v4, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v5, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->atClientErrorCode:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 399
    :cond_63
    iget-object v0, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;

    .line 400
    .local v11, "eapSimTypeData":Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;
    iget v0, v11, Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;->eapSubtype:I

    packed-switch v0, :pswitch_data_164

    .line 413
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget v4, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 402
    :pswitch_78
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mHadSuccessfulChallenge:Z

    iget v9, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->handleEapSimAkaNotification(Ljava/lang/String;ZZZIILcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 411
    :pswitch_88
    nop

    .line 419
    invoke-virtual {p0, v11}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->isValidChallengeAttributes(Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;)Z

    move-result v0

    if-nez v0, :cond_ba

    .line 420
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

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

    .line 421
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget v4, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 429
    :cond_ba
    :try_start_ba
    invoke-virtual {p0, v11}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->getRandChallengeResults(Lcom/android/internal/net/eap/message/simaka/EapSimTypeData;)Ljava/util/List;

    move-result-object v0
    :try_end_be
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException; {:try_start_ba .. :try_end_be} :catch_14e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_ba .. :try_end_be} :catch_14e
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaAuthenticationFailureException; {:try_start_ba .. :try_end_be} :catch_147

    move-object v4, v0

    .line 438
    .local v4, "randChallengeResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;>;"
    nop

    .line 441
    :try_start_c0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 442
    .local v0, "sha1":Ljava/security/MessageDigest;
    invoke-direct {p0, v4}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->getMkInputData(Ljava/util/List;)[B

    move-result-object v5

    .line 443
    .local v5, "mkInputData":[B
    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v8, Lcom/android/internal/net/eap/crypto/Fips186_2Prf;

    invoke-direct {v8}, Lcom/android/internal/net/eap/crypto/Fips186_2Prf;-><init>()V

    invoke-virtual {v6, v7, v0, v8, v5}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->generateAndPersistKeys(Ljava/lang/String;Ljava/security/MessageDigest;Lcom/android/internal/net/eap/crypto/Fips186_2Prf;[B)V
    :try_end_d6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c0 .. :try_end_d6} :catch_132
    .catch Ljava/nio/BufferUnderflowException; {:try_start_c0 .. :try_end_d6} :catch_132

    .line 450
    .end local v0    # "sha1":Ljava/security/MessageDigest;
    .end local v5    # "mkInputData":[B
    nop

    .line 453
    :try_start_d7
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mNonce:[B

    invoke-virtual {v0, v5, p1, v11, v6}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->isValidMac(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;[B)Z

    move-result v0

    if-nez v0, :cond_ee

    .line 454
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget v5, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    sget-object v6, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v0, v5, v3, v6}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0
    :try_end_ed
    .catch Ljava/security/GeneralSecurityException; {:try_start_d7 .. :try_end_ed} :catch_122
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_d7 .. :try_end_ed} :catch_122
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_d7 .. :try_end_ed} :catch_122

    return-object v0

    .line 464
    :cond_ee
    nop

    .line 466
    nop

    .line 467
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 468
    .local v0, "sresValues":Ljava/nio/ByteBuffer;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_fe
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_110

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;

    .line 469
    .local v5, "result":Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;
    iget-object v6, v5, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;->sres:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 470
    .end local v5    # "result":Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;
    goto :goto_fe

    .line 473
    :cond_110
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mHadSuccessfulChallenge:Z

    .line 474
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget v5, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    .line 477
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 474
    const/16 v7, 0xb

    invoke-virtual {v3, v5, v7, v6}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildResponseMessageWithMac(II[B)Lcom/android/internal/net/eap/EapResult;

    move-result-object v3

    return-object v3

    .line 459
    .end local v0    # "sresValues":Ljava/nio/ByteBuffer;
    :catch_122
    move-exception v0

    .line 462
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v6, "Error computing MAC for EapMessage"

    invoke-virtual {v3, v5, v6, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 463
    new-instance v3, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v3, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v3

    .line 444
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_132
    move-exception v0

    .line 445
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-object v5, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v7, "Error while creating keys"

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget v6, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    sget-object v7, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v3

    return-object v3

    .line 436
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v4    # "randChallengeResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState$RandChallengeResult;>;"
    :catch_147
    move-exception v0

    .line 437
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaAuthenticationFailureException;
    new-instance v3, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v3, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v3

    .line 430
    .end local v0    # "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaAuthenticationFailureException;
    :catch_14e
    move-exception v0

    .line 431
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v6, "Invalid SRES/Kc tuple returned from SIM"

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;

    iget v5, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    sget-object v6, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_164
    .packed-switch 0xb
        :pswitch_88
        :pswitch_78
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

    .line 351
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapSimMethodStateMachine$ChallengeState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
