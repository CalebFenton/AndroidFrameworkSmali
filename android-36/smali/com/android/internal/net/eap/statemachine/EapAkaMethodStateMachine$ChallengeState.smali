.class public Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapAkaMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChallengeState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;
    }
.end annotation


# static fields
.field private static final blacklist CK_LEN_BYTES:I = 0x10

.field private static final blacklist IK_LEN_BYTES:I = 0x10

.field private static final blacklist RAND_SUCCESS:B = -0x25t

.field private static final blacklist RAND_SYNCHRONIZATION:B = -0x24t


# instance fields
.field blacklist mHadSuccessfulChallenge:Z

.field protected final blacklist mIdentity:[B

.field private blacklist mNextReauthIdentity:[B

.field private final blacklist mTAG:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 402
    iget-object v0, p1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEapIdentity:[B

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;[B)V

    .line 403
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;[B)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
    .param p2, "identity"    # [B
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

    .line 405
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 385
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mHadSuccessfulChallenge:Z

    .line 406
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mIdentity:[B

    .line 407
    return-void
.end method

.method private blacklist getMkInputData(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;)[B
    .registers 5
    .param p1, "result"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;

    .line 685
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mIdentity:[B

    array-length v0, v0

    iget-object v1, p1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ik:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ck:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 686
    .local v0, "numInputBytes":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 687
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mIdentity:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 688
    iget-object v2, p1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ik:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 689
    iget-object v2, p1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ck:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 690
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private blacklist getRandChallengeResult(Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;
    .registers 19
    .param p1, "eapAkaTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaAuthenticationFailureException;,
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException;
        }
    .end annotation

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandAka;

    .line 599
    .local v2, "atRandAka":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandAka;
    iget-object v4, v1, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;

    .line 602
    .local v4, "atAutn":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;
    iget-object v5, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandAka;->rand:[B

    array-length v5, v5

    .line 603
    .local v5, "randLen":I
    iget-object v6, v4, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;->autn:[B

    array-length v6, v6

    .line 604
    .local v6, "autnLen":I
    add-int/lit8 v7, v5, 0x1

    add-int/2addr v7, v3

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 605
    .local v3, "formattedChallenge":Ljava/nio/ByteBuffer;
    int-to-byte v7, v5

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 606
    iget-object v7, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandAka;->rand:[B

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 607
    int-to-byte v7, v6

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 608
    iget-object v7, v4, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;->autn:[B

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 610
    iget-object v7, v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v8, v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    .line 614
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    .line 611
    const/16 v10, 0x81

    invoke-virtual {v7, v8, v10, v9}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->processUiccAuthentication(Ljava/lang/String;I[B)[B

    move-result-object v7

    .line 615
    .local v7, "challengeResponse":[B
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 616
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 618
    .local v9, "tag":B
    const-string v10, "RAND="

    packed-switch v9, :pswitch_data_1b2

    .line 638
    move-object/from16 v16, v3

    .end local v3    # "formattedChallenge":Ljava/nio/ByteBuffer;
    .local v16, "formattedChallenge":Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/android/internal/net/eap/exceptions/simaka/EapAkaInvalidAuthenticationResponse;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid tag for UICC response: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 639
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "%02X"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/net/eap/exceptions/simaka/EapAkaInvalidAuthenticationResponse;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    .end local v16    # "formattedChallenge":Ljava/nio/ByteBuffer;
    .restart local v3    # "formattedChallenge":Ljava/nio/ByteBuffer;
    :pswitch_82
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    invoke-static {v11}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v11

    new-array v11, v11, [B

    .line 627
    .local v11, "auts":[B
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 629
    sget-object v12, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v13, v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v14, "Synchronization Failure"

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    sget-object v12, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v13, v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v14, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v15, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandAka;->rand:[B

    .line 632
    invoke-virtual {v14, v15}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " AUTN="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v14, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v15, v4, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;->autn:[B

    .line 633
    invoke-virtual {v14, v15}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " AUTS="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v14, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 634
    invoke-virtual {v14, v11}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 630
    invoke-virtual {v12, v13, v10}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    new-instance v10, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;

    invoke-direct {v10, v0, v11}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;[B)V

    return-object v10

    .line 622
    .end local v11    # "auts":[B
    :pswitch_e0
    nop

    .line 642
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    invoke-static {v11}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v11

    new-array v11, v11, [B

    .line 643
    .local v11, "res":[B
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 645
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    invoke-static {v12}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v12

    new-array v12, v12, [B

    .line 646
    .local v12, "ck":[B
    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 648
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    invoke-static {v13}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v13

    new-array v13, v13, [B

    .line 649
    .local v13, "ik":[B
    invoke-virtual {v8, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 651
    sget-object v14, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v15, v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v10, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    move-object/from16 v16, v3

    .end local v3    # "formattedChallenge":Ljava/nio/ByteBuffer;
    .restart local v16    # "formattedChallenge":Ljava/nio/ByteBuffer;
    iget-object v3, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandAka;->rand:[B

    invoke-virtual {v10, v3}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v15, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AUTN="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v14, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v15, v4, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;->autn:[B

    invoke-virtual {v14, v15}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RES="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v14, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v14, v11}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IK="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v14, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v14, v13}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CK="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v14, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v14, v12}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    new-instance v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;

    invoke-direct {v1, v0, v11, v13, v12}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;[B[B[B)V

    return-object v1

    :pswitch_data_1b2
    .packed-switch -0x25
        :pswitch_e0
        :pswitch_82
    .end packed-switch
.end method

.method private blacklist isValidChallengeAttributes(Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Z
    .registers 5
    .param p1, "eapAkaTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    .line 588
    iget-object v0, p1, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 591
    .local v0, "attrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 592
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 593
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 591
    :goto_2a
    return v1
.end method


# virtual methods
.method protected blacklist buildAuthenticationRejectMessage(I)Lcom/android/internal/net/eap/EapResult;
    .registers 6
    .param p1, "eapIdentifier"    # I

    .line 661
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mIsExpectingEapFailure:Z

    .line 662
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 663
    invoke-virtual {v1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 662
    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildResponseMessage(IIILjava/util/List;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist generateAndPersistEapAkaKeys(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;ILcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Lcom/android/internal/net/eap/EapResult;
    .registers 9
    .param p1, "result"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;
    .param p2, "eapIdentifier"    # I
    .param p3, "eapAkaTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    .line 673
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 674
    .local v0, "sha1":Ljava/security/MessageDigest;
    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->getMkInputData(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;)[B

    move-result-object v1

    .line 675
    .local v1, "mkInputData":[B
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v4, Lcom/android/internal/net/eap/crypto/Fips186_2Prf;

    invoke-direct {v4}, Lcom/android/internal/net/eap/crypto/Fips186_2Prf;-><init>()V

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->generateAndPersistKeys(Ljava/lang/String;Ljava/security/MessageDigest;Lcom/android/internal/net/eap/crypto/Fips186_2Prf;[B)V
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_16} :catch_18
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_16} :catch_18

    .line 676
    const/4 v2, 0x0

    return-object v2

    .line 677
    .end local v0    # "sha1":Ljava/security/MessageDigest;
    .end local v1    # "mkInputData":[B
    :catch_18
    move-exception v0

    .line 678
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v3, "Error while creating keys"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    const/16 v2, 0x17

    sget-object v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {v1, p2, v2, v3}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist handleChallengeAuthentication(Lcom/android/internal/net/eap/message/EapMessage;Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Lcom/android/internal/net/eap/EapResult;
    .registers 14
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;
    .param p2, "eapAkaTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    .line 467
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->getRandChallengeResult(Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;

    move-result-object v0
    :try_end_4
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapAkaInvalidAuthenticationResponse; {:try_start_0 .. :try_end_4} :catch_105
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidLengthException; {:try_start_0 .. :try_end_4} :catch_ea
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_4} :catch_ea
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaAuthenticationFailureException; {:try_start_0 .. :try_end_4} :catch_e2

    move-object v1, v0

    .line 478
    .local v1, "result":Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;
    nop

    .line 480
    invoke-static {v1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->-$$Nest$misSuccessfulResult(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3d

    .line 482
    :try_start_e
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 483
    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v4

    iget v5, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    new-array v2, v2, [Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    new-instance v6, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAuts;

    iget-object v7, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->auts:[B

    invoke-direct {v6, v7}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAuts;-><init>([B)V

    aput-object v6, v2, v3

    .line 486
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 482
    const/4 v3, 0x4

    invoke-virtual {v0, v4, v3, v5, v2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildResponseMessage(IIILjava/util/List;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0
    :try_end_2c
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_e .. :try_end_2c} :catch_2d

    return-object v0

    .line 487
    :catch_2d
    move-exception v0

    .line 488
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v4, "Error creating an AtAuts attr"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v2

    .line 493
    .end local v0    # "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    :cond_3d
    iget v0, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    .line 494
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->generateAndPersistEapAkaKeys(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;ILcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v4

    .line 495
    .local v4, "eapResult":Lcom/android/internal/net/eap/EapResult;
    if-eqz v4, :cond_46

    .line 496
    return-object v4

    .line 500
    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-array v6, v3, [B

    invoke-virtual {v0, v5, p1, p2, v6}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->isValidMac(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;[B)Z

    move-result v0

    if-nez v0, :cond_63

    .line 501
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 503
    invoke-virtual {v3}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v3

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 501
    invoke-virtual {v0, v2, v3, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0
    :try_end_62
    .catch Ljava/security/GeneralSecurityException; {:try_start_46 .. :try_end_62} :catch_d2
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_46 .. :try_end_62} :catch_d2
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_46 .. :try_end_62} :catch_d2

    return-object v0

    .line 512
    :cond_63
    nop

    .line 515
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->-$$Nest$fgetmSupportsEapAkaPrime(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 516
    iget-object v0, p2, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    const/16 v5, 0x88

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;

    .line 517
    .local v0, "atBidding":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;
    if-eqz v0, :cond_90

    iget-boolean v5, v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;->doesServerSupportEapAkaPrime:Z

    if-eqz v5, :cond_90

    .line 518
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v5, "Potential bidding down attack. AT_BIDDING attr included and EAP-AKA\' is supported"

    invoke-virtual {v2, v3, v5}, Lcom/android/internal/net/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    invoke-virtual {p0, v2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->buildAuthenticationRejectMessage(I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 527
    .end local v0    # "atBidding":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;
    :cond_90
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    invoke-virtual {v0, v5, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->retrieveNextReauthId(Ljava/lang/String;Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mNextReauthIdentity:[B

    .line 531
    :try_start_9a
    iput-boolean v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mHadSuccessfulChallenge:Z

    .line 532
    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v6, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    new-array v8, v3, [B

    new-array v0, v2, [Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    iget-object v2, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->res:[B

    .line 536
    invoke-static {v2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;->getAtRes([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 537
    instance-of v0, p2, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;

    if-eqz v0, :cond_b7

    .line 538
    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_bc

    .line 539
    :cond_b7
    filled-new-array {v3}, [I

    move-result-object v0

    move-object v10, v0

    .line 532
    :goto_bc
    const/4 v7, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildResponseMessageWithMac(II[BLjava/util/List;[I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0
    :try_end_c1
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_9a .. :try_end_c1} :catch_c2

    return-object v0

    .line 542
    :catch_c2
    move-exception v0

    .line 543
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v5, "Error creating AtRes value"

    invoke-virtual {v2, v3, v5, v0}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 544
    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v2

    .line 506
    .end local v0    # "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    :catch_d2
    move-exception v0

    .line 510
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v5, "Error computing MAC for EapMessage"

    invoke-virtual {v2, v3, v5, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 511
    new-instance v2, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v2, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v2

    .line 474
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "result":Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;
    .end local v4    # "eapResult":Lcom/android/internal/net/eap/EapResult;
    :catch_e2
    move-exception v0

    .line 477
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaAuthenticationFailureException;
    iget v1, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    invoke-virtual {p0, v1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->buildAuthenticationRejectMessage(I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    .line 470
    .end local v0    # "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaAuthenticationFailureException;
    :catch_ea
    move-exception v0

    .line 471
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v3, "Invalid response returned from SIM"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 473
    invoke-virtual {v3}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v3

    sget-object v4, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 472
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    .line 468
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_105
    move-exception v0

    .line 469
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapAkaInvalidAuthenticationResponse;
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v1, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 13
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 410
    iget v0, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 411
    iget-boolean v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mHadSuccessfulChallenge:Z

    if-nez v0, :cond_1f

    .line 412
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v2, "Received unexpected EAP-Success"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v1, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v2, "Received an EAP-Success in the ChallengeState"

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 418
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    new-instance v1, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mNextReauthIdentity:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->-$$Nest$mprocessEapSuccess(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;[BI)Lcom/android/internal/net/eap/EapResult$EapSuccess;

    move-result-object v0

    return-object v0

    .line 422
    :cond_35
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    .line 423
    .local v0, "result":Lcom/android/internal/net/eap/EapResult;
    if-eqz v0, :cond_3e

    .line 424
    return-object v0

    .line 427
    :cond_3e
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 428
    invoke-virtual {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->decode([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    move-result-object v1

    .line 429
    .local v1, "decodeResult":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;, "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult<+Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;>;"
    invoke-virtual {v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->isSuccessfulDecode()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 430
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v3, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 431
    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v4

    iget-object v5, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->atClientErrorCode:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 430
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 434
    :cond_5f
    iget-object v2, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    move-object v10, v2

    check-cast v10, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    .line 435
    .local v10, "eapAkaTypeData":Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;
    iget v2, v10, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->eapSubtype:I

    sparse-switch v2, :sswitch_data_c8

    .line 448
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v3, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 450
    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v4

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 448
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 439
    :sswitch_7a
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mHadSuccessfulChallenge:Z

    iget v8, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->handleEapSimAkaNotification(Ljava/lang/String;ZZZIILcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 437
    :sswitch_8a
    nop

    .line 454
    invoke-direct {p0, v10}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->isValidChallengeAttributes(Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Z

    move-result v2

    if-nez v2, :cond_c2

    .line 455
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid attributes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v3, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 457
    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v4

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 456
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 460
    :cond_c2
    invoke-virtual {p0, p1, v10}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->handleChallengeAuthentication(Lcom/android/internal/net/eap/message/EapMessage;Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_c8
    .sparse-switch
        0x1 -> :sswitch_8a
        0xc -> :sswitch_7a
    .end sparse-switch
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

    .line 384
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
