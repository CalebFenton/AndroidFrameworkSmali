.class public Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;
.super Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;
.source "EapAkaPrimeMethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChallengeState"
.end annotation


# instance fields
.field private final blacklist mTAG:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;)V

    .line 167
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    .line 171
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;[B)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;
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

    .line 173
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;-><init>(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine;[B)V

    .line 167
    const-class v0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    .line 175
    return-void
.end method


# virtual methods
.method blacklist deriveCkIkPrime(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;)[B
    .registers 15
    .param p1, "randChallengeResult"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;
    .param p2, "atKdfInput"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;
    .param p3, "atAutn"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 310
    const/4 v0, 0x1

    .line 311
    .local v0, "fcLen":I
    const/4 v1, 0x2

    .line 314
    .local v1, "lengthFieldLen":I
    iget-object v2, p3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;->autn:[B

    const/4 v3, 0x6

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 315
    .local v2, "sqnXorAk":[B
    iget-object v4, p2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->networkName:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    .line 320
    .local v4, "sLength":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 321
    .local v5, "dataToSign":Ljava/nio/ByteBuffer;
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 322
    iget-object v6, p2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->networkName:[B

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 323
    iget-object v6, p2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->networkName:[B

    array-length v6, v6

    int-to-short v6, v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 324
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 325
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 327
    iget-object v3, p1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ck:[B

    array-length v3, v3

    iget-object v6, p1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ik:[B

    array-length v6, v6

    add-int/2addr v3, v6

    .line 328
    .local v3, "keyLen":I
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 329
    .local v6, "key":Ljava/nio/ByteBuffer;
    iget-object v7, p1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ck:[B

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 330
    iget-object v7, p1, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;->ik:[B

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 332
    const-string v7, "HmacSHA256"

    invoke-static {v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v8

    .line 333
    .local v8, "mac":Ljavax/crypto/Mac;
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-direct {v9, v10, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 334
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v8, v7}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v7

    return-object v7
.end method

.method protected blacklist generateAndPersistEapAkaKeys(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;ILcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Lcom/android/internal/net/eap/EapResult;
    .registers 16
    .param p1, "result"    # Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;
    .param p2, "eapIdentifier"    # I
    .param p3, "eapAkaTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    .line 255
    const-string v0, "EAP-AKA\'"

    :try_start_2
    iget-object v1, p3, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    .line 256
    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;

    .line 257
    .local v1, "atKdfInput":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;
    iget-object v2, p3, Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;

    .line 260
    .local v2, "atAutn":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->deriveCkIkPrime(Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState$RandChallengeResult;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;)[B

    move-result-object v3

    .line 261
    .local v3, "ckIkPrime":[B
    const/16 v4, 0x20

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 262
    .local v4, "prfKey":Ljava/nio/ByteBuffer;
    const/16 v5, 0x10

    invoke-virtual {v4, v3, v5, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 263
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->mIdentity:[B

    array-length v6, v6

    add-int/2addr v5, v6

    .line 266
    .local v5, "dataToSignLen":I
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 267
    .local v6, "dataToSign":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 268
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->mIdentity:[B

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 273
    invoke-static {}, Lcom/android/internal/net/eap/crypto/HmacSha256ByteSigner;->getInstance()Lcom/android/internal/net/eap/crypto/HmacSha256ByteSigner;

    move-result-object v0

    .line 274
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 275
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 272
    const/16 v9, 0xd0

    invoke-static {v0, v7, v8, v9}, Lcom/android/internal/net/crypto/KeyGenerationUtils;->prfPlus(Lcom/android/internal/net/crypto/KeyGenerationUtils$ByteSigner;[B[BI)[B

    move-result-object v0

    .line 271
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 278
    .local v0, "mk":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mKEncr:[B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 279
    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mKAut:[B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 280
    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mKRe:[B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 281
    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mMsk:[B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 282
    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    iget-object v7, v7, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mEmsk:[B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 285
    sget-object v7, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "K_encr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v11, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    iget-object v11, v11, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mKEncr:[B

    invoke-virtual {v10, v11}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v7, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "K_aut="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v11, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    iget-object v11, v11, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mKAut:[B

    invoke-virtual {v10, v11}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v7, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "K_re="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v11, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    iget-object v11, v11, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mKRe:[B

    invoke-virtual {v10, v11}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v7, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSK="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v11, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    iget-object v11, v11, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mMsk:[B

    invoke-virtual {v10, v11}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v7, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v8, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EMSK="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v11, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    iget-object v11, v11, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->mEmsk:[B

    invoke-virtual {v10, v11}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_137
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_137} :catch_139
    .catch Ljava/nio/BufferOverflowException; {:try_start_2 .. :try_end_137} :catch_139
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_137} :catch_139

    .line 290
    const/4 v7, 0x0

    return-object v7

    .line 291
    .end local v0    # "mk":Ljava/nio/ByteBuffer;
    .end local v1    # "atKdfInput":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;
    .end local v2    # "atAutn":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;
    .end local v3    # "ckIkPrime":[B
    .end local v4    # "prfKey":Ljava/nio/ByteBuffer;
    .end local v5    # "dataToSignLen":I
    .end local v6    # "dataToSign":Ljava/nio/ByteBuffer;
    :catch_139
    move-exception v0

    .line 294
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    const-string v3, "Error while generating keys"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    .line 296
    invoke-virtual {v2}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->getEapMethod()I

    move-result v2

    sget-object v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 295
    invoke-virtual {v1, p2, v2, v3}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist handleChallengeAuthentication(Lcom/android/internal/net/eap/message/EapMessage;Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Lcom/android/internal/net/eap/EapResult;
    .registers 5
    .param p1, "message"    # Lcom/android/internal/net/eap/message/EapMessage;
    .param p2, "eapAkaTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    .line 180
    move-object v0, p2

    check-cast v0, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;

    .line 182
    .local v0, "eapAkaPrimeTypeData":Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;
    invoke-virtual {p0, v0}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->isValidChallengeAttributes(Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 183
    iget v1, p1, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    invoke-virtual {p0, v1}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->buildAuthenticationRejectMessage(I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    .line 185
    :cond_10
    invoke-super {p0, p1, v0}, Lcom/android/internal/net/eap/statemachine/EapAkaMethodStateMachine$ChallengeState;->handleChallengeAuthentication(Lcom/android/internal/net/eap/message/EapMessage;Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1
.end method

.method blacklist hasMatchingNetworkNames(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "peerNetworkName"    # Ljava/lang/String;
    .param p2, "serverNetworkName"    # Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_61

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_61

    .line 232
    :cond_e
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "peerNetworkNameFields":[Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "serverNetworkNameFields":[Ljava/lang/String;
    array-length v3, v2

    array-length v4, v0

    .line 235
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 236
    .local v3, "numFieldsToCompare":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    if-ge v4, v3, :cond_60

    .line 237
    aget-object v5, v2, v4

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 238
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v5, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->mTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EAP-AKA\' network names don\'t match. Peer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 241
    invoke-virtual {v7, p1}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 242
    invoke-virtual {v7, p2}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 238
    invoke-virtual {v1, v5, v6}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x0

    return v1

    .line 236
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 247
    .end local v4    # "i":I
    :cond_60
    return v1

    .line 229
    .end local v0    # "serverNetworkNameFields":[Ljava/lang/String;
    .end local v2    # "peerNetworkNameFields":[Ljava/lang/String;
    .end local v3    # "numFieldsToCompare":I
    :cond_61
    :goto_61
    return v1
.end method

.method blacklist isValidChallengeAttributes(Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;)Z
    .registers 11
    .param p1, "eapAkaPrimeTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;

    .line 190
    iget-object v0, p1, Lcom/android/internal/net/eap/message/simaka/EapAkaPrimeTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    .line 192
    .local v0, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5f

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_5f

    .line 198
    :cond_1c
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdf;

    .line 199
    .local v1, "atKdf":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdf;
    iget v4, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdf;->kdf:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_28

    .line 200
    return v3

    .line 203
    :cond_28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;

    .line 204
    .local v2, "atKdfInput":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;
    iget-object v4, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->networkName:[B

    array-length v4, v4

    if-nez v4, :cond_38

    .line 205
    return v3

    .line 208
    :cond_38
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    invoke-static {v4}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->-$$Nest$fgetmEapAkaPrimeConfig(Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    move-result-object v4

    .line 210
    invoke-virtual {v4}, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->getNetworkName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    iget-object v7, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;->networkName:[B

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 209
    invoke-virtual {p0, v4, v6}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->hasMatchingNetworkNames(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 212
    .local v4, "hasMatchingNetworkNames":Z
    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine$ChallengeState;->this$0:Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;

    invoke-static {v6}, Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;->-$$Nest$fgetmEapAkaPrimeConfig(Lcom/android/internal/net/eap/statemachine/EapAkaPrimeMethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->allowsMismatchedNetworkNames()Z

    move-result v6

    if-nez v6, :cond_5d

    if-eqz v4, :cond_5e

    :cond_5d
    move v3, v5

    :cond_5e
    return v3

    .line 193
    .end local v1    # "atKdf":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdf;
    .end local v2    # "atKdfInput":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;
    .end local v4    # "hasMatchingNetworkNames":Z
    :cond_5f
    :goto_5f
    return v3
.end method
