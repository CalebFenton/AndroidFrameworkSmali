.class public Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;
.source "EapAkaMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReauthState"
.end annotation


# instance fields
.field blacklist mHadSuccessfulReauth:Z

.field private blacklist mNextReauthIdentity:[B

.field private blacklist mReauthCounter:I

.field protected final blacklist mReauthIdentity:[B

.field private final blacklist mReauthInfo:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

.field private final blacklist mTAG:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 703
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 695
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mHadSuccessfulReauth:Z

    .line 704
    invoke-static {p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->-$$Nest$mgetReauthIdentity(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthIdentity:[B

    .line 705
    invoke-static {p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->-$$Nest$mgetReauthIdentity(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)[B

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEapIdentity:[B

    invoke-static {p1, v0, v1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->-$$Nest$mgetAvailableReauthInfo(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;[B[B)Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthInfo:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    .line 706
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;[BLcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;
    .param p2, "identity"    # [B
    .param p3, "reauthInfo"    # Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;
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

    .line 708
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    .line 695
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mHadSuccessfulReauth:Z

    .line 709
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthIdentity:[B

    .line 710
    iput-object p3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthInfo:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    .line 711
    return-void
.end method

.method private blacklist isValidReauthAttributes(Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Z
    .registers 4
    .param p1, "eapAkaTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    .line 881
    iget-object v0, p1, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 884
    .local v0, "attrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 885
    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 886
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 884
    :goto_2d
    return v1
.end method

.method private blacklist isValidReauthSecuredAttributes(Ljava/util/LinkedHashMap;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;)Z"
        }
    .end annotation

    .line 891
    .local p1, "secureAttributes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 894
    .local v0, "attrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method


# virtual methods
.method protected blacklist buildAuthenticationRejectMessage(I)Lcom/android/internal/net/eap/EapResult;
    .registers 6
    .param p1, "eapIdentifier"    # I

    .line 898
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mIsExpectingEapFailure:Z

    .line 899
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 900
    invoke-virtual {v1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 899
    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildResponseMessage(IIILjava/util/List;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist generateAndPersistEapAkaKeys(II[B)Lcom/android/internal/net/eap/EapResult;
    .registers 13
    .param p1, "eapIdentifier"    # I
    .param p2, "counter"    # I
    .param p3, "nonceS"    # [B

    .line 910
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    move-object v3, v0

    .line 911
    .local v3, "sha1":Ljava/security/MessageDigest;
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    new-instance v4, Lcom/android/internal/net/eap/crypto/Fips186_2Prf;

    invoke-direct {v4}, Lcom/android/internal/net/eap/crypto/Fips186_2Prf;-><init>()V

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthIdentity:[B

    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthInfo:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    .line 918
    invoke-virtual {v0}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->getMk()[B

    move-result-object v8
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_18} :catch_22
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_18} :catch_22

    .line 911
    move v6, p2

    move-object v7, p3

    .end local p2    # "counter":I
    .end local p3    # "nonceS":[B
    .local v6, "counter":I
    .local v7, "nonceS":[B
    :try_start_1a
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->generateAndPersistReauthKeys(Ljava/lang/String;Ljava/security/MessageDigest;Lcom/android/internal/net/eap/crypto/Fips186_2Prf;[BI[B[B)V
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_1d} :catch_1f
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1a .. :try_end_1d} :catch_1f

    .line 919
    const/4 p2, 0x0

    return-object p2

    .line 920
    .end local v3    # "sha1":Ljava/security/MessageDigest;
    :catch_1f
    move-exception v0

    move-object p2, v0

    goto :goto_26

    .end local v6    # "counter":I
    .end local v7    # "nonceS":[B
    .restart local p2    # "counter":I
    .restart local p3    # "nonceS":[B
    :catch_22
    move-exception v0

    move v6, p2

    move-object v7, p3

    move-object p2, v0

    .line 921
    .end local p3    # "nonceS":[B
    .restart local v6    # "counter":I
    .restart local v7    # "nonceS":[B
    .local p2, "ex":Ljava/lang/Exception;
    :goto_26
    sget-object p3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    const-string v1, "Error while creating keys"

    invoke-virtual {p3, v0, v1, p2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 922
    iget-object p3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    const/16 v0, 0x17

    sget-object v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    invoke-virtual {p3, p1, v0, v1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p3

    return-object p3
.end method

.method protected blacklist handleReauthentication(Lcom/android/internal/net/eap/message/EapMessage;Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Lcom/android/internal/net/eap/EapResult;
    .registers 19
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;
    .param p2, "eapAkaTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    .line 772
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthIdentity:[B

    if-eqz v0, :cond_195

    iget-object v0, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthInfo:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    if-nez v0, :cond_10

    goto/16 :goto_195

    .line 777
    :cond_10
    iget-object v0, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthInfo:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    invoke-virtual {v0}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->getMk()[B

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mMk:[B

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 778
    iget-object v0, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthInfo:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    invoke-virtual {v0}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->getKeyEncr()[B

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mKEncr:[B

    const/16 v5, 0x10

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    iget-object v0, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthInfo:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    invoke-virtual {v0}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->getKeyAut()[B

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mKAut:[B

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    :try_start_3c
    iget-object v0, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    new-array v5, v6, [B

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->isValidMac(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;[B)Z

    move-result v0

    if-nez v0, :cond_59

    .line 783
    iget-object v0, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v4, v2, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v5, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 785
    invoke-virtual {v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v5

    sget-object v6, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 783
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0
    :try_end_58
    .catch Ljava/security/GeneralSecurityException; {:try_start_3c .. :try_end_58} :catch_185
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_3c .. :try_end_58} :catch_185
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_3c .. :try_end_58} :catch_185

    return-object v0

    .line 794
    :cond_59
    nop

    .line 796
    iget-object v0, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    .line 797
    invoke-virtual {v0, v4, v3}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->retrieveSecuredAttributes(Ljava/lang/String;Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 799
    .local v4, "securedAttributes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    invoke-direct {v1, v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->isValidReauthSecuredAttributes(Ljava/util/LinkedHashMap;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 800
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid attributes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v5, v2, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v6, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 802
    invoke-virtual {v6}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v6

    sget-object v7, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 801
    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 805
    :cond_97
    const/16 v0, 0x85

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    .line 806
    .local v5, "atNextReauthId":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    const/4 v0, 0x0

    if-eqz v5, :cond_b5

    .line 807
    move-object v7, v5

    check-cast v7, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;

    iget-object v7, v7, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->reauthId:[B

    .line 808
    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    iput-object v7, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mNextReauthIdentity:[B

    goto :goto_b7

    .line 810
    :cond_b5
    iput-object v0, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mNextReauthIdentity:[B

    .line 813
    :goto_b7
    nop

    .line 814
    const/16 v7, 0x13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounter;

    iget v7, v7, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounter;->counter:I

    .line 815
    .local v7, "counter":I
    nop

    .line 816
    const/16 v8, 0x15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceS;

    iget-object v12, v8, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceS;->nonceS:[B

    .line 818
    .local v12, "nonceS":[B
    iget-object v8, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthInfo:Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;

    invoke-virtual {v8}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->getReauthCount()I

    move-result v8

    const-string v15, "Error build EAP response for reauth"

    const/4 v9, 0x1

    if-gt v7, v8, :cond_114

    .line 819
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v6, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    const-string v8, "COUNTER TOO SMALL"

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :try_start_e9
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;

    iget-object v6, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-direct {v0, v6}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;-><init>(Ljava/security/SecureRandom;)V

    .line 822
    .local v0, "atIv":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    iget-object v6, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v6, v6, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mKEncr:[B

    .line 823
    invoke-static {v7, v9, v6, v0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->buildReauthResponse(IZ[BLcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;)Ljava/util/List;

    move-result-object v13

    .line 825
    .local v13, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    iget-object v9, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v10, v2, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    const/16 v11, 0xd

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildResponseMessageWithMac(II[BLjava/util/List;[I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v6
    :try_end_105
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_e9 .. :try_end_105} :catch_106

    return-object v6

    .line 831
    .end local v0    # "atIv":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    .end local v13    # "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    :catch_106
    move-exception v0

    .line 832
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    sget-object v6, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v8, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    invoke-virtual {v6, v8, v15, v0}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    new-instance v6, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v6, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v6

    .line 836
    .end local v0    # "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    :cond_114
    iput v7, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthCounter:I

    .line 839
    iget v8, v2, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    .line 840
    invoke-virtual {v1, v8, v7, v12}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->generateAndPersistEapAkaKeys(II[B)Lcom/android/internal/net/eap/EapResult;

    move-result-object v8

    .line 841
    .local v8, "eapResult":Lcom/android/internal/net/eap/EapResult;
    if-eqz v8, :cond_11f

    .line 842
    return-object v8

    .line 846
    :cond_11f
    iget-object v10, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-static {v10}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->-$$Nest$fgetmSupportsEapAkaPrime(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)Z

    move-result v10

    if-eqz v10, :cond_14b

    .line 847
    iget-object v10, v3, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    const/16 v11, 0x88

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;

    .line 848
    .local v10, "atBidding":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;
    if-eqz v10, :cond_14b

    iget-boolean v11, v10, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;->doesServerSupportEapAkaPrime:Z

    if-eqz v11, :cond_14b

    .line 849
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v6, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    const-string v9, "Potential bidding down attack. AT_BIDDING attr included and EAP-AKA\' is supported"

    invoke-virtual {v0, v6, v9}, Lcom/android/internal/net/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget v0, v2, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    invoke-virtual {v1, v0}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->buildAuthenticationRejectMessage(I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 859
    .end local v10    # "atBidding":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;
    :cond_14b
    :try_start_14b
    iput-boolean v9, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mHadSuccessfulReauth:Z

    .line 860
    new-instance v9, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;

    iget-object v10, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v10, v10, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-direct {v9, v10}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;-><init>(Ljava/security/SecureRandom;)V

    .line 861
    .local v9, "atIv":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    iget-object v10, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v10, v10, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mKEncr:[B

    .line 862
    invoke-static {v7, v6, v10, v9}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->buildReauthResponse(IZ[BLcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;)Ljava/util/List;

    move-result-object v13

    .line 864
    .restart local v13    # "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    move-object v10, v9

    .end local v9    # "atIv":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    .local v10, "atIv":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    iget-object v9, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    move-object v11, v10

    .end local v10    # "atIv":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    .local v11, "atIv":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    iget v10, v2, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    .line 869
    instance-of v14, v3, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;

    if-eqz v14, :cond_16a

    .line 870
    move-object v14, v0

    goto :goto_16f

    .line 871
    :cond_16a
    filled-new-array {v6}, [I

    move-result-object v0

    move-object v14, v0

    .line 864
    :goto_16f
    move-object v0, v11

    .end local v11    # "atIv":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    .local v0, "atIv":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    const/16 v11, 0xd

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildResponseMessageWithMac(II[BLjava/util/List;[I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v6
    :try_end_176
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_14b .. :try_end_176} :catch_177

    return-object v6

    .line 874
    .end local v0    # "atIv":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    .end local v13    # "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    :catch_177
    move-exception v0

    .line 875
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    sget-object v6, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v9, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    invoke-virtual {v6, v9, v15, v0}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 876
    new-instance v6, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v6, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v6

    .line 788
    .end local v0    # "ex":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    .end local v4    # "securedAttributes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    .end local v5    # "atNextReauthId":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    .end local v7    # "counter":I
    .end local v8    # "eapResult":Lcom/android/internal/net/eap/EapResult;
    .end local v12    # "nonceS":[B
    :catch_185
    move-exception v0

    .line 792
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    const-string v6, "Error computing MAC for EapMessage"

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 793
    new-instance v4, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v4, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v4

    .line 773
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_195
    :goto_195
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v4, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    const-string v5, "No reauth Info for this re-authentication request"

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v0, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v4, v2, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v5, v1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 775
    invoke-virtual {v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v5

    sget-object v6, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 774
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 13
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 714
    iget v0, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_36

    .line 715
    iget-boolean v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mHadSuccessfulReauth:Z

    if-nez v0, :cond_1f

    .line 716
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    const-string v2, "Received unexpected EAP-Success"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v1, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v2, "Received an EAP-Success in the ReauthState"

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 721
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    new-instance v1, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$FinalState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 722
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mNextReauthIdentity:[B

    iget v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthCounter:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->-$$Nest$mprocessEapSuccess(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;[BI)Lcom/android/internal/net/eap/EapResult$EapSuccess;

    move-result-object v0

    return-object v0

    .line 725
    :cond_36
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->handleEapSuccessFailureNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    .line 726
    .local v0, "result":Lcom/android/internal/net/eap/EapResult;
    if-eqz v0, :cond_3f

    .line 727
    return-object v0

    .line 730
    :cond_3f
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v2, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapData:Lcom/android/internal/net/eap/message/EapData;

    iget-object v2, v2, Lcom/android/internal/net/eap/message/EapData;->eapTypeData:[B

    .line 731
    invoke-virtual {v1, v2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->decode([B)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;

    move-result-object v1

    .line 732
    .local v1, "decodeResult":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;, "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult<+Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;>;"
    invoke-virtual {v1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->isSuccessfulDecode()Z

    move-result v2

    if-nez v2, :cond_60

    .line 733
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v3, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 734
    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v4

    iget-object v5, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->atClientErrorCode:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 733
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 737
    :cond_60
    iget-object v2, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData$DecodeResult;->eapTypeData:Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    move-object v10, v2

    check-cast v10, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    .line 738
    .local v10, "eapAkaTypeData":Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;
    iget v2, v10, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->eapSubtype:I

    sparse-switch v2, :sswitch_data_dc

    .line 755
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v3, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 757
    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v4

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 755
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 740
    :sswitch_7b
    nop

    .line 761
    invoke-direct {p0, v10}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->isValidReauthAttributes(Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Z

    move-result v2

    if-nez v2, :cond_b3

    .line 762
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

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

    .line 763
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget v3, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    .line 764
    invoke-virtual {v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->getEapMethod()I

    move-result v4

    sget-object v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 763
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 767
    :cond_b3
    invoke-virtual {p0, p1, v10}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->handleReauthentication(Lcom/android/internal/net/eap/message/EapMessage;Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 746
    :sswitch_b8
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mTAG:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mHadSuccessfulReauth:Z

    iget v8, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    iget v9, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->mReauthCounter:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->handleEapSimAkaNotification(Ljava/lang/String;ZZZIILcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2

    return-object v2

    .line 743
    :sswitch_c9
    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;

    iget-object v4, v4, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->mEapIdentity:[B

    invoke-virtual {v3, v4}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->buildChallengeState([B)Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;

    move-result-object v3

    # invokes: Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v2, v3, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;->access$500(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/eap/EapResult;

    return-object v2

    :sswitch_data_dc
    .sparse-switch
        0x1 -> :sswitch_c9
        0xc -> :sswitch_b8
        0xd -> :sswitch_7b
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

    .line 694
    check-cast p1, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ReauthState;->process(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method
