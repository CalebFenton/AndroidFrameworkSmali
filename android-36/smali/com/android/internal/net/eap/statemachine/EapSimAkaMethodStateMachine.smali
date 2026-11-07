.class public abstract Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;
.source "EapSimAkaMethodStateMachine.java"


# static fields
.field private static final blacklist COUNTER_SIZE:I = 0x2

.field public static final blacklist KEY_LEN:I = 0x10

.field public static final blacklist MAC_ALGORITHM_STRING:Ljava/lang/String; = "HmacSHA1"

.field public static final blacklist MASTER_KEY_GENERATION_ALG:Ljava/lang/String; = "SHA-1"

.field public static final blacklist MASTER_KEY_LENGTH:I = 0x14

.field public static final blacklist SESSION_KEY_LENGTH:I = 0x40


# instance fields
.field final blacklist mEapIdentity:[B

.field final blacklist mEapUiccConfig:Landroid/net/eap/EapSessionConfig$EapUiccConfig;

.field public final blacklist mEmsk:[B

.field blacklist mHasReceivedSimAkaNotification:Z

.field public final blacklist mKAut:[B

.field public final blacklist mKEncr:[B

.field blacklist mMacAlgorithm:Ljavax/crypto/Mac;

.field public final blacklist mMk:[B

.field public final blacklist mMsk:[B

.field blacklist mSecureRandom:Ljava/security/SecureRandom;

.field final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;[BLandroid/net/eap/EapSessionConfig$EapUiccConfig;)V
    .registers 8
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "eapIdentity"    # [B
    .param p3, "eapUiccConfig"    # Landroid/net/eap/EapSessionConfig$EapUiccConfig;

    .line 111
    invoke-direct {p0}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getMkLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mMk:[B

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getKEncrLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mKEncr:[B

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getKAutLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mKAut:[B

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getMskLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mMsk:[B

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getEmskLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mEmsk:[B

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mHasReceivedSimAkaNotification:Z

    .line 112
    if-eqz p1, :cond_8f

    .line 114
    if-eqz p2, :cond_87

    .line 116
    if-eqz p3, :cond_7f

    .line 119
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 120
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mEapIdentity:[B

    .line 121
    iput-object p3, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mEapUiccConfig:Landroid/net/eap/EapSessionConfig$EapUiccConfig;

    .line 123
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mEapUiccConfig:Landroid/net/eap/EapSessionConfig$EapUiccConfig;

    .line 125
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mEapUiccConfig:Landroid/net/eap/EapSessionConfig$EapUiccConfig;

    .line 126
    invoke-virtual {v3}, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apptype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mEapUiccConfig:Landroid/net/eap/EapSessionConfig$EapUiccConfig;

    .line 127
    invoke-virtual {v3}, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->getAppType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 117
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EapUiccConfig must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EapIdentity must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TelephonyManager must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist buildReauthResponse(IZ[BLcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;)Ljava/util/List;
    .registers 11
    .param p0, "counter"    # I
    .param p1, "isCounterSmall"    # Z
    .param p2, "kEncr"    # [B
    .param p3, "atIv"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[B",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v0, "attrList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    new-instance v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounter;

    invoke-direct {v1, p0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounter;-><init>(I)V

    .line 389
    .local v1, "atCounter":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    const/16 v2, 0x10

    if-eqz p1, :cond_35

    .line 390
    new-instance v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounterTooSmall;

    invoke-direct {v3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounterTooSmall;-><init>()V

    .line 391
    .local v3, "atCounterSmall":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    iget v4, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->lengthInBytes:I

    iget v5, v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->lengthInBytes:I

    add-int/2addr v4, v5

    .line 392
    invoke-static {v2, v4}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getPaddingSize(II)I

    move-result v2

    .line 395
    .local v2, "paddingSize":I
    new-instance v4, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtPadding;

    invoke-direct {v4, v2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtPadding;-><init>(I)V

    .line 396
    .local v4, "atPadding":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    iget v5, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->lengthInBytes:I

    iget v6, v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->lengthInBytes:I

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    .line 397
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 399
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v5}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->encode(Ljava/nio/ByteBuffer;)V

    .line 400
    invoke-virtual {v1, v5}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->encode(Ljava/nio/ByteBuffer;)V

    .line 401
    invoke-virtual {v4, v5}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->encode(Ljava/nio/ByteBuffer;)V

    .line 402
    .end local v2    # "paddingSize":I
    .end local v3    # "atCounterSmall":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    .end local v4    # "atPadding":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    goto :goto_4d

    .line 403
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    :cond_35
    iget v3, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->lengthInBytes:I

    invoke-static {v2, v3}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getPaddingSize(II)I

    move-result v2

    .line 404
    .restart local v2    # "paddingSize":I
    new-instance v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtPadding;

    invoke-direct {v3, v2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtPadding;-><init>(I)V

    .line 405
    .local v3, "atPadding":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    iget v4, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->lengthInBytes:I

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 406
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v5}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->encode(Ljava/nio/ByteBuffer;)V

    .line 407
    invoke-virtual {v3, v5}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->encode(Ljava/nio/ByteBuffer;)V

    .line 409
    .end local v2    # "paddingSize":I
    .end local v3    # "atPadding":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    :goto_4d
    new-instance v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;

    .line 410
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget-object v4, p3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;->iv:[B

    invoke-direct {v2, v3, p2, v4}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;-><init>([B[B[B)V

    .line 411
    .local v2, "atEncrData":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    return-object v0
.end method

.method static blacklist getPaddingSize(II)I
    .registers 4
    .param p0, "blockSize"    # I
    .param p1, "dataLength"    # I

    .line 418
    rem-int v0, p1, p0

    .line 419
    .local v0, "remain":I
    if-nez v0, :cond_6

    const/4 v1, 0x0

    return v1

    .line 420
    :cond_6
    sub-int v1, p0, v0

    return v1
.end method

.method static blacklist getSecureAttributes(Ljava/lang/String;[B)Ljava/util/LinkedHashMap;
    .registers 9
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "decryptedData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 357
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 358
    .local v0, "secureDataByteBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 359
    .local v1, "attributeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    invoke-static {}, Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;->getInstance()Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;

    move-result-object v2

    .line 360
    .local v2, "attributeFactory":Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;
    :goto_d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 363
    :try_start_13
    invoke-virtual {v2, v0}, Lcom/android/internal/net/eap/message/simaka/EapAkaAttributeFactory;->getAttribute(Ljava/nio/ByteBuffer;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    move-result-object v3
    :try_end_17
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaUnsupportedAttributeException; {:try_start_13 .. :try_end_17} :catch_5b

    .line 367
    .local v3, "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    nop

    .line 368
    iget v4, v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->attributeType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 374
    instance-of v4, v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaUnsupportedAttribute;

    if-eqz v4, :cond_42

    .line 375
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported EAP attribute during decoding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->attributeType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_42
    iget v4, v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->attributeType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .end local v3    # "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    goto :goto_d

    .line 370
    .restart local v3    # "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    :cond_4c
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v5, "Duplicate attribute in parsed EAP-Message"

    invoke-virtual {v4, p0, v5}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v4, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v5, "Duplicated attributes"

    invoke-direct {v4, v5}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 364
    .end local v3    # "attribute":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
    :catch_5b
    move-exception v3

    .line 365
    .local v3, "e":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaUnsupportedAttributeException;
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v5, "Unrecognized, non-skippable attribute encountered"

    invoke-virtual {v4, p0, v5, v3}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    new-instance v4, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v5, "Decode fail"

    invoke-direct {v4, v5}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 379
    .end local v3    # "e":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaUnsupportedAttributeException;
    :cond_6b
    return-object v1
.end method

.method private blacklist validateReauthAkaNotifyAndGetCounter(Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)I
    .registers 8
    .param p1, "eapSimAkaTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    .line 490
    iget-object v0, p1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 491
    .local v0, "attrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 492
    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 493
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 494
    nop

    .line 495
    const-string v1, "Notification"

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->retrieveSecuredAttributes(Ljava/lang/String;Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 496
    .local v1, "securedAttributes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 498
    .local v2, "securedAttrKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 499
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5a

    .line 500
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_67

    .line 501
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 502
    :cond_5a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounter;

    iget v3, v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounter;->counter:I

    return v3

    .line 506
    .end local v1    # "securedAttributes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    .end local v2    # "securedAttrKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_67
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method blacklist buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;
    .registers 9
    .param p1, "eapIdentifier"    # I
    .param p2, "eapMethodType"    # I
    .param p3, "clientErrorCode"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mIsExpectingEapFailure:Z

    .line 165
    invoke-virtual {p0, p3}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getEapSimAkaTypeData(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    move-result-object v0

    .line 166
    .local v0, "eapSimAkaTypeData":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
    invoke-virtual {v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->encode()[B

    move-result-object v1

    .line 168
    .local v1, "encodedTypeData":[B
    new-instance v2, Lcom/android/internal/net/eap/message/EapData;

    invoke-direct {v2, p2, v1}, Lcom/android/internal/net/eap/message/EapData;-><init>(I[B)V

    .line 170
    .local v2, "eapData":Lcom/android/internal/net/eap/message/EapData;
    :try_start_10
    new-instance v3, Lcom/android/internal/net/eap/message/EapMessage;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p1, v2}, Lcom/android/internal/net/eap/message/EapMessage;-><init>(IILcom/android/internal/net/eap/message/EapData;)V

    .line 171
    .local v3, "response":Lcom/android/internal/net/eap/message/EapMessage;
    invoke-static {v3}, Lcom/android/internal/net/eap/EapResult$EapResponse;->getEapResponse(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v4
    :try_end_1a
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_10 .. :try_end_1a} :catch_1b

    return-object v4

    .line 172
    .end local v3    # "response":Lcom/android/internal/net/eap/message/EapMessage;
    :catch_1b
    move-exception v3

    .line 173
    .local v3, "ex":Lcom/android/internal/net/eap/exceptions/EapSilentException;
    new-instance v4, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v4, v3}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v4
.end method

.method blacklist buildResponseMessage(IIILjava/util/List;)Lcom/android/internal/net/eap/EapResult;
    .registers 9
    .param p1, "eapType"    # I
    .param p2, "eapSubtype"    # I
    .param p3, "identifier"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;)",
            "Lcom/android/internal/net/eap/EapResult;"
        }
    .end annotation

    .line 183
    .local p4, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    invoke-virtual {p0, p2, p4}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getEapSimAkaTypeData(ILjava/util/List;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    move-result-object v0

    .line 184
    .local v0, "eapSimTypeData":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
    new-instance v1, Lcom/android/internal/net/eap/message/EapData;

    invoke-virtual {v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->encode()[B

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/internal/net/eap/message/EapData;-><init>(I[B)V

    .line 187
    .local v1, "eapData":Lcom/android/internal/net/eap/message/EapData;
    :try_start_d
    new-instance v2, Lcom/android/internal/net/eap/message/EapMessage;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p3, v1}, Lcom/android/internal/net/eap/message/EapMessage;-><init>(IILcom/android/internal/net/eap/message/EapData;)V

    .line 188
    .local v2, "eapMessage":Lcom/android/internal/net/eap/message/EapMessage;
    invoke-static {v2}, Lcom/android/internal/net/eap/EapResult$EapResponse;->getEapResponse(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v3
    :try_end_17
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_d .. :try_end_17} :catch_18

    return-object v3

    .line 189
    .end local v2    # "eapMessage":Lcom/android/internal/net/eap/message/EapMessage;
    :catch_18
    move-exception v2

    .line 190
    .local v2, "ex":Lcom/android/internal/net/eap/exceptions/EapSilentException;
    new-instance v3, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v3, v2}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v3
.end method

.method blacklist buildResponseMessageWithMac(II[B)Lcom/android/internal/net/eap/EapResult;
    .registers 10
    .param p1, "identifier"    # I
    .param p2, "eapSubtype"    # I
    .param p3, "extraData"    # [B

    .line 456
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "identifier":I
    .end local p2    # "eapSubtype":I
    .end local p3    # "extraData":[B
    .local v1, "identifier":I
    .local v2, "eapSubtype":I
    .local v3, "extraData":[B
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->buildResponseMessageWithMac(II[BLjava/util/List;[I)Lcom/android/internal/net/eap/EapResult;

    move-result-object p1

    return-object p1
.end method

.method blacklist buildResponseMessageWithMac(II[BLjava/util/List;[I)Lcom/android/internal/net/eap/EapResult;
    .registers 12
    .param p1, "identifier"    # I
    .param p2, "eapSubtype"    # I
    .param p3, "extraData"    # [B
    .param p5, "flagsToAdd"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Ljava/util/List<",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;[I)",
            "Lcom/android/internal/net/eap/EapResult;"
        }
    .end annotation

    .line 472
    .local p4, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p4, v0

    .line 473
    new-instance v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;

    invoke-direct {v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;-><init>()V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-virtual {p0, p2, p4}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getEapSimAkaTypeData(ILjava/util/List;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    move-result-object v0

    .line 476
    .local v0, "eapSimAkaTypeData":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, v0, p3}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getMac(IILcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;[B)[B

    move-result-object v2

    .line 478
    .local v2, "mac":[B
    iget-object v3, v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;

    invoke-direct {v5, v2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;-><init>([B)V

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    new-instance v3, Lcom/android/internal/net/eap/message/EapData;

    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getEapMethod()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->encode()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/internal/net/eap/message/EapData;-><init>(I[B)V

    .line 480
    .local v3, "eapData":Lcom/android/internal/net/eap/message/EapData;
    new-instance v4, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-direct {v4, v1, p1, v3}, Lcom/android/internal/net/eap/message/EapMessage;-><init>(IILcom/android/internal/net/eap/message/EapData;)V

    .line 481
    .local v4, "eapMessage":Lcom/android/internal/net/eap/message/EapMessage;
    invoke-static {v4, p5}, Lcom/android/internal/net/eap/EapResult$EapResponse;->getEapResponse(Lcom/android/internal/net/eap/message/EapMessage;[I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1
    :try_end_3d
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_0 .. :try_end_3d} :catch_3e
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_0 .. :try_end_3d} :catch_3e

    return-object v1

    .line 482
    .end local v0    # "eapSimAkaTypeData":Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
    .end local v2    # "mac":[B
    .end local v3    # "eapData":Lcom/android/internal/net/eap/message/EapData;
    .end local v4    # "eapMessage":Lcom/android/internal/net/eap/message/EapMessage;
    :catch_3e
    move-exception v0

    .line 484
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v1, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v1
.end method

.method protected blacklist generateAndPersistKeys(Ljava/lang/String;Ljava/security/MessageDigest;Lcom/android/internal/net/eap/crypto/Fips186_2Prf;[B)V
    .registers 13
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "sha1"    # Ljava/security/MessageDigest;
    .param p3, "prf"    # Lcom/android/internal/net/eap/crypto/Fips186_2Prf;
    .param p4, "mkInput"    # [B

    .line 197
    invoke-virtual {p2, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 198
    .local v0, "mk":[B
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mMk:[B

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mKEncr:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mKAut:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mMsk:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mEmsk:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 202
    .local v1, "outputBytes":I
    invoke-virtual {p3, v0, v1}, Lcom/android/internal/net/eap/crypto/Fips186_2Prf;->getRandom([BI)[B

    move-result-object v2

    .line 204
    .local v2, "prfResult":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 205
    .local v3, "prfResultBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mKEncr:[B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 206
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mKAut:[B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 207
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mMsk:[B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 208
    iget-object v4, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mEmsk:[B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 211
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MK input="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v6, p4}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MK="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v6, v0}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "K_encr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mKEncr:[B

    invoke-virtual {v6, v7}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "K_aut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mKAut:[B

    invoke-virtual {v6, v7}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSK="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mMsk:[B

    invoke-virtual {v6, v7}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EMSK="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v7, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mEmsk:[B

    invoke-virtual {v6, v7}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method protected blacklist generateAndPersistReauthKeys(Ljava/lang/String;Ljava/security/MessageDigest;Lcom/android/internal/net/eap/crypto/Fips186_2Prf;[BI[B[B)V
    .registers 24
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "sha1"    # Ljava/security/MessageDigest;
    .param p3, "prf"    # Lcom/android/internal/net/eap/crypto/Fips186_2Prf;
    .param p4, "reauthId"    # [B
    .param p5, "count"    # I
    .param p6, "nonceS"    # [B
    .param p7, "mk"    # [B

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    array-length v5, v2

    add-int/lit8 v5, v5, 0x2

    array-length v6, v3

    add-int/2addr v5, v6

    array-length v6, v4

    add-int/2addr v5, v6

    .line 232
    .local v5, "numInputBytes":I
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 233
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 234
    move/from16 v7, p5

    int-to-short v8, v7

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 235
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 236
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 237
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 238
    .local v8, "xKeyPrimeInput":[B
    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 241
    .local v10, "xKeyPrime":[B
    iget-object v11, v0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mMsk:[B

    array-length v11, v11

    iget-object v12, v0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mEmsk:[B

    array-length v12, v12

    add-int/2addr v11, v12

    .line 242
    .local v11, "outputBytes":I
    move-object/from16 v12, p3

    invoke-virtual {v12, v10, v11}, Lcom/android/internal/net/eap/crypto/Fips186_2Prf;->getRandom([BI)[B

    move-result-object v13

    .line 244
    .local v13, "prfResult":[B
    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 245
    .local v14, "prfResultBuffer":Ljava/nio/ByteBuffer;
    iget-object v15, v0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mMsk:[B

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 246
    iget-object v15, v0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mEmsk:[B

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 249
    sget-object v15, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MK="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v3, v4}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XKEY\' INPUT="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v15, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v15, v8}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "XKEY\' ="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v15, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v15, v10}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "K_encr="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v15, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v4, v0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mKEncr:[B

    invoke-virtual {v15, v4}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "K_aut="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v15, v0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mKAut:[B

    invoke-virtual {v4, v15}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSK="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v15, v0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mMsk:[B

    invoke-virtual {v4, v15}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EMSK="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    iget-object v15, v0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mEmsk:[B

    invoke-virtual {v4, v15}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method abstract blacklist getEapSimAkaTypeData(ILjava/util/List;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;)",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;"
        }
    .end annotation
.end method

.method abstract blacklist getEapSimAkaTypeData(Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
.end method

.method protected blacklist getEmskLength()I
    .registers 2

    .line 147
    const/16 v0, 0x40

    return v0
.end method

.method protected blacklist getKAutLength()I
    .registers 2

    .line 139
    const/16 v0, 0x10

    return v0
.end method

.method protected blacklist getKEncrLength()I
    .registers 2

    .line 135
    const/16 v0, 0x10

    return v0
.end method

.method blacklist getMac(IILcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;[B)[B
    .registers 15
    .param p1, "eapCode"    # I
    .param p2, "eapIdentifier"    # I
    .param p3, "typeData"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
    .param p4, "extraData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;,
            Lcom/android/internal/net/eap/exceptions/EapSilentException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mMacAlgorithm:Ljavax/crypto/Mac;

    if-eqz v0, :cond_88

    .line 432
    iget-object v0, p3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;

    .line 433
    .local v0, "originalMac":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;
    iget-object v2, p3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;->getAtMacWithMacCleared()Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-virtual {p3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->encode()[B

    move-result-object v2

    .line 436
    .local v2, "typeDataWithEmptyMac":[B
    new-instance v3, Lcom/android/internal/net/eap/message/EapData;

    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getEapMethod()I

    move-result v4

    invoke-direct {v3, v4, v2}, Lcom/android/internal/net/eap/message/EapData;-><init>(I[B)V

    .line 437
    .local v3, "eapData":Lcom/android/internal/net/eap/message/EapData;
    new-instance v4, Lcom/android/internal/net/eap/message/EapMessage;

    invoke-direct {v4, p1, p2, v3}, Lcom/android/internal/net/eap/message/EapMessage;-><init>(IILcom/android/internal/net/eap/message/EapData;)V

    .line 439
    .local v4, "messageForMac":Lcom/android/internal/net/eap/message/EapMessage;
    sget-object v5, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Computing MAC (mac cleared): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 440
    invoke-virtual {v4}, Lcom/android/internal/net/eap/message/EapMessage;->encode()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 439
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget v5, v4, Lcom/android/internal/net/eap/message/EapMessage;->eapLength:I

    array-length v6, p4

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 443
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Lcom/android/internal/net/eap/message/EapMessage;->encode()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 444
    invoke-virtual {v5, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 445
    iget-object v6, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mMacAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v6

    .line 447
    .local v6, "mac":[B
    iget-object v7, p3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const/4 v1, 0x0

    const/16 v7, 0x10

    invoke-static {v6, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 427
    .end local v0    # "originalMac":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;
    .end local v2    # "typeDataWithEmptyMac":[B
    .end local v3    # "eapData":Lcom/android/internal/net/eap/message/EapData;
    .end local v4    # "messageForMac":Lcom/android/internal/net/eap/message/EapMessage;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "mac":[B
    :cond_88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t calculate MAC before mMacAlgorithm is set in ChallengeState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getMacAlgorithm()Ljava/lang/String;
    .registers 2

    .line 156
    const-string v0, "HmacSHA1"

    return-object v0
.end method

.method protected blacklist getMkLength()I
    .registers 2

    .line 131
    const/16 v0, 0x14

    return v0
.end method

.method protected blacklist getMskLength()I
    .registers 2

    .line 143
    const/16 v0, 0x40

    return v0
.end method

.method blacklist handleEapNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 152
    invoke-static {p1, p2}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->handleNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0
.end method

.method blacklist handleEapSimAkaNotification(Ljava/lang/String;ZZZIILcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)Lcom/android/internal/net/eap/EapResult;
    .registers 21
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "isPreChallengeState"    # Z
    .param p3, "isReauthState"    # Z
    .param p4, "hadSuccessfulAuthLocal"    # Z
    .param p5, "identifier"    # I
    .param p6, "counterForReauth"    # I
    .param p7, "eapSimAkaTypeData"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;

    .line 520
    move/from16 v2, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    iget-boolean v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mHasReceivedSimAkaNotification:Z

    if-eqz v0, :cond_17

    .line 521
    new-instance v0, Lcom/android/internal/net/eap/EapResult$EapError;

    new-instance v1, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;

    const-string v3, "Received multiple EAP-SIM notifications"

    invoke-direct {v1, v3}, Lcom/android/internal/net/eap/exceptions/EapInvalidRequestException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v0

    .line 525
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mHasReceivedSimAkaNotification:Z

    .line 526
    iget-object v1, v8, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    .line 527
    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;

    .line 529
    .local v9, "atNotification":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received AtNotification: S="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 532
    iget-boolean v4, v9, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->isSuccessCode:Z

    const-string v5, "1"

    const-string v6, "0"

    if-eqz v4, :cond_40

    move-object v4, v5

    goto :goto_41

    :cond_40
    move-object v4, v6

    :goto_41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " P="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 533
    iget-boolean v4, v9, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->isPreSuccessfulChallenge:Z

    if-eqz v4, :cond_50

    goto :goto_51

    :cond_50
    move-object v5, v6

    :goto_51
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->notificationCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 529
    invoke-virtual {v1, p1, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-boolean v1, v9, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;->isPreSuccessfulChallenge:Z

    const/16 v3, 0xb

    const/4 v4, 0x0

    if-eqz v1, :cond_99

    .line 543
    iget-object v0, v8, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 544
    nop

    .line 545
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getEapMethod()I

    move-result v0

    sget-object v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 544
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 548
    :cond_87
    nop

    .line 549
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getEapMethod()I

    move-result v0

    iget v1, v8, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->eapSubtype:I

    new-array v3, v4, [Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 548
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->buildResponseMessage(IIILjava/util/List;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 553
    :cond_99
    if-eqz p2, :cond_a7

    .line 554
    nop

    .line 555
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getEapMethod()I

    move-result v0

    sget-object v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 554
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0

    .line 558
    :cond_a7
    iget-object v1, v8, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13e

    if-nez p4, :cond_b7

    goto/16 :goto_13e

    .line 566
    :cond_b7
    :try_start_b7
    new-array v1, v4, [B

    invoke-virtual {p0, v0, v2, v8, v1}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getMac(IILcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;[B)[B

    move-result-object v0

    .line 567
    .local v0, "mac":[B
    iget-object v1, v8, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;

    move-object v10, v1

    .line 568
    .local v10, "atMac":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;
    iget-object v1, v10, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;->mac:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_de

    .line 570
    nop

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getEapMethod()I

    move-result v1

    sget-object v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 570
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    .line 574
    :cond_de
    if-nez p3, :cond_e9

    .line 576
    iget v1, v8, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->eapSubtype:I

    new-array v3, v4, [B

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->buildResponseMessageWithMac(II[B)Lcom/android/internal/net/eap/EapResult;

    move-result-object v1

    return-object v1

    .line 581
    :cond_e9
    invoke-direct {p0, v8}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->validateReauthAkaNotifyAndGetCounter(Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)I

    move-result v1

    move v11, v1

    .line 582
    .local v11, "receivedCounter":I
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Counter in Notification: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",  Expecting counter for reauth"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    if-ne v7, v11, :cond_12b

    .line 589
    new-instance v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;

    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-direct {v1, v3}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;-><init>(Ljava/security/SecureRandom;)V

    move-object v12, v1

    .line 590
    .local v12, "atIv":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mKEncr:[B

    .line 591
    invoke-static {v7, v4, v1, v12}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->buildReauthResponse(IZ[BLcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;)Ljava/util/List;

    move-result-object v5

    .line 592
    .local v5, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    iget v3, v8, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->eapSubtype:I

    new-array v4, v4, [B

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->buildResponseMessageWithMac(II[BLjava/util/List;[I)Lcom/android/internal/net/eap/EapResult;

    move-result-object v3

    return-object v3

    .line 599
    .end local v5    # "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    .end local v12    # "atIv":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    :cond_12b
    nop

    .line 600
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getEapMethod()I

    move-result v3

    sget-object v4, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 599
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v3
    :try_end_136
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_b7 .. :try_end_136} :catch_137
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_b7 .. :try_end_136} :catch_137

    return-object v3

    .line 603
    .end local v0    # "mac":[B
    .end local v10    # "atMac":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;
    .end local v11    # "receivedCounter":I
    :catch_137
    move-exception v0

    .line 605
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v3, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v3

    .line 561
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_13e
    :goto_13e
    nop

    .line 562
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getEapMethod()I

    move-result v0

    sget-object v3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;->UNABLE_TO_PROCESS:Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;

    .line 561
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->buildClientErrorResponse(IILcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0
.end method

.method blacklist isValidMac(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;[B)Z
    .registers 11
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/android/internal/net/eap/message/EapMessage;
    .param p3, "typeData"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
    .param p4, "extraData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;,
            Lcom/android/internal/net/eap/exceptions/EapSilentException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getMacAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mMacAlgorithm:Ljavax/crypto/Mac;

    .line 280
    iget-object v0, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mMacAlgorithm:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mKAut:[B

    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getMacAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 282
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Computing MAC (raw msg): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {p2}, Lcom/android/internal/net/eap/message/EapMessage;->encode()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget v0, p2, Lcom/android/internal/net/eap/message/EapMessage;->eapCode:I

    iget v1, p2, Lcom/android/internal/net/eap/message/EapMessage;->eapIdentifier:I

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getMac(IILcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;[B)[B

    move-result-object v0

    .line 287
    .local v0, "mac":[B
    iget-object v1, p3, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;

    .line 289
    .local v1, "atMac":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;
    iget-object v2, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;->mac:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 290
    .local v2, "isValidMac":Z
    if-nez v2, :cond_86

    .line 292
    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message with invalid Mac. received="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;->mac:[B

    .line 295
    invoke-static {v5}, Lcom/android/internal/net/utils/Log;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", computed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 296
    invoke-static {v0}, Lcom/android/internal/net/utils/Log;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_86
    return v2
.end method

.method blacklist processUiccAuthentication(Ljava/lang/String;I[B)[B
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "authType"    # I
    .param p3, "formattedChallenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaAuthenticationFailureException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x2

    invoke-static {p3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "base64Challenge":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mEapUiccConfig:Landroid/net/eap/EapSessionConfig$EapUiccConfig;

    .line 264
    invoke-virtual {v2}, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->getAppType()I

    move-result v2

    .line 263
    invoke-virtual {v1, v2, p2, v0}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "base64Response":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 272
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    return-object v2

    .line 267
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UICC authentication failed. Input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v3, p3}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    invoke-virtual {v3, p1, v2}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v3, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaAuthenticationFailureException;

    invoke-direct {v3, v2}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaAuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method blacklist retrieveNextReauthId(Ljava/lang/String;Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;)[B
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "typeData"    # Lcom/android/internal/net/eap/message/simaka/EapAkaTypeData;

    .line 338
    nop

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->retrieveSecuredAttributes(Ljava/lang/String;Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 340
    .local v0, "securedAttributes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 341
    return-object v1

    .line 343
    :cond_9
    nop

    .line 344
    const/16 v2, 0x85

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;

    .line 345
    .local v2, "atNextReauthId":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;
    if-eqz v2, :cond_25

    iget-object v3, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->reauthId:[B

    if-eqz v3, :cond_25

    .line 346
    iget-object v1, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;->reauthId:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 348
    :cond_25
    return-object v1
.end method

.method blacklist retrieveSecuredAttributes(Ljava/lang/String;Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;)Ljava/util/LinkedHashMap;
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "typeData"    # Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;

    .line 307
    .local v0, "atEncrData":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;
    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 308
    sget-object v2, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v3, "AT_ENCR_DATA is not included."

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-object v1

    .line 311
    :cond_19
    iget-object v2, p2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaTypeData;->attributeMap:Ljava/util/LinkedHashMap;

    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;

    .line 312
    .local v2, "atIv":Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;
    if-nez v2, :cond_31

    .line 313
    sget-object v3, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v4, "AT_IV is not included. can\'t decrypt ENCR DATA"

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-object v1

    .line 319
    :cond_31
    :try_start_31
    iget-object v3, p0, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->mKEncr:[B

    iget-object v4, v2, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;->iv:[B

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;->getDecryptedData([B[B)[B

    move-result-object v3
    :try_end_39
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_31 .. :try_end_39} :catch_49

    .line 323
    .local v3, "decryptedData":[B
    nop

    .line 327
    :try_start_3a
    invoke-static {p1, v3}, Lcom/android/internal/net/eap/statemachine/EapSimAkaMethodStateMachine;->getSecureAttributes(Ljava/lang/String;[B)Ljava/util/LinkedHashMap;

    move-result-object v1
    :try_end_3e
    .catch Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException; {:try_start_3a .. :try_end_3e} :catch_40

    .line 331
    .local v1, "securedAttributes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    nop

    .line 332
    return-object v1

    .line 328
    .end local v1    # "securedAttributes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;>;"
    :catch_40
    move-exception v4

    .line 329
    .local v4, "e":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    sget-object v5, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v6, "Decode Fail, can\'t decode decrypted ENCR DATA."

    invoke-virtual {v5, p1, v6}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-object v1

    .line 320
    .end local v3    # "decryptedData":[B
    .end local v4    # "e":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    :catch_49
    move-exception v3

    .line 321
    .local v3, "e":Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
    sget-object v4, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v5, "Decrypt Fail, can\'t decrypt ENCR DATA"

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-object v1
.end method
