.class public Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;
.super Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;
.source "EapMsChapV2MethodStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$CreatedState;,
        Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapFailureState;,
        Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$AwaitingEapSuccessState;,
        Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ValidateAuthenticatorState;,
        Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$ChallengeState;
    }
.end annotation


# static fields
.field private static final blacklist CHALLENGE_HASH_LEN:I = 0x8

.field private static final blacklist CHALLENGE_MAGIC_1:[B

.field private static final blacklist CHALLENGE_MAGIC_2:[B

.field private static final blacklist DES_ALG:Ljava/lang/String; = "DES/ECB/NoPadding"

.field private static final blacklist DES_KEY_FACTORY:Ljava/lang/String; = "DES"

.field private static final blacklist EMSK_LEN:I = 0x40

.field private static final blacklist FLAGS:I = 0x0

.field private static final blacklist MASTER_KEY_LEN:I = 0x10

.field private static final blacklist MSK_LEN:I = 0x40

.field private static final blacklist MSK_MAGIC_1:[B

.field private static final blacklist MSK_MAGIC_2:[B

.field private static final blacklist MSK_MAGIC_3:[B

.field private static final blacklist PASSWORD_HASH_HASH_LEN:I = 0x10

.field private static final blacklist PASSWORD_HASH_LEN:I = 0x10

.field private static final blacklist PEER_CHALLENGE_SIZE:I = 0x10

.field private static final blacklist RESPONSE_LEN:I = 0x18

.field private static final blacklist RESPONSE_SECTION_LEN:I = 0x8

.field private static final blacklist SESSION_KEY_LEN:I = 0x10

.field private static final blacklist SHA_ALG:Ljava/lang/String; = "SHA-1"

.field private static final blacklist SHS_PAD_1:[B

.field private static final blacklist SHS_PAD_2:[B

.field private static final blacklist SHS_PAD_LEN:I = 0x28

.field private static final blacklist Z_PASSWORD_HASH_LEN:I = 0x15

.field private static final blacklist Z_PASSWORD_SECTION_LEN:I = 0x7


# instance fields
.field private final blacklist mEapMsChapV2Config:Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

.field private final blacklist mSecureRandom:Ljava/security/SecureRandom;

.field private final blacklist mTypeDataDecoder:Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEapMsChapV2Config(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->mEapMsChapV2Config:Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecureRandom(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Ljava/security/SecureRandom;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->mSecureRandom:Ljava/security/SecureRandom;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeDataDecoder(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->mTypeDataDecoder:Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mbuildEapMessageResponse(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;Ljava/lang/String;ILcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;)Lcom/android/internal/net/eap/EapResult;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->buildEapMessageResponse(Ljava/lang/String;ILcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;)Lcom/android/internal/net/eap/EapResult;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 127
    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_40

    sput-object v0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->CHALLENGE_MAGIC_1:[B

    .line 135
    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_58

    sput-object v0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->CHALLENGE_MAGIC_2:[B

    .line 145
    const/16 v0, 0x28

    new-array v0, v0, [B

    sput-object v0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->SHS_PAD_1:[B

    .line 146
    const/16 v0, 0x28

    new-array v0, v0, [B

    sput-object v0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->SHS_PAD_2:[B

    .line 149
    sget-object v0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->SHS_PAD_2:[B

    const/16 v1, -0xe

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 152
    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_72

    sput-object v0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->MSK_MAGIC_1:[B

    .line 159
    const/16 v0, 0x54

    new-array v1, v0, [B

    fill-array-data v1, :array_84

    sput-object v1, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->MSK_MAGIC_2:[B

    .line 175
    new-array v0, v0, [B

    fill-array-data v0, :array_b2

    sput-object v0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->MSK_MAGIC_3:[B

    return-void

    nop

    :array_40
    .array-data 1
        0x4dt
        0x61t
        0x67t
        0x69t
        0x63t
        0x20t
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x20t
        0x74t
        0x6ft
        0x20t
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
        0x20t
        0x73t
        0x69t
        0x67t
        0x6et
        0x69t
        0x6et
        0x67t
        0x20t
        0x63t
        0x6ft
        0x6et
        0x73t
        0x74t
        0x61t
        0x6et
        0x74t
    .end array-data

    :array_58
    .array-data 1
        0x50t
        0x61t
        0x64t
        0x20t
        0x74t
        0x6ft
        0x20t
        0x6dt
        0x61t
        0x6bt
        0x65t
        0x20t
        0x69t
        0x74t
        0x20t
        0x64t
        0x6ft
        0x20t
        0x6dt
        0x6ft
        0x72t
        0x65t
        0x20t
        0x74t
        0x68t
        0x61t
        0x6et
        0x20t
        0x6ft
        0x6et
        0x65t
        0x20t
        0x69t
        0x74t
        0x65t
        0x72t
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
    .end array-data

    nop

    :array_72
    .array-data 1
        0x54t
        0x68t
        0x69t
        0x73t
        0x20t
        0x69t
        0x73t
        0x20t
        0x74t
        0x68t
        0x65t
        0x20t
        0x4dt
        0x50t
        0x50t
        0x45t
        0x20t
        0x4dt
        0x61t
        0x73t
        0x74t
        0x65t
        0x72t
        0x20t
        0x4bt
        0x65t
        0x79t
    .end array-data

    :array_84
    .array-data 1
        0x4ft
        0x6et
        0x20t
        0x74t
        0x68t
        0x65t
        0x20t
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
        0x20t
        0x73t
        0x69t
        0x64t
        0x65t
        0x2ct
        0x20t
        0x74t
        0x68t
        0x69t
        0x73t
        0x20t
        0x69t
        0x73t
        0x20t
        0x74t
        0x68t
        0x65t
        0x20t
        0x73t
        0x65t
        0x6et
        0x64t
        0x20t
        0x6bt
        0x65t
        0x79t
        0x3bt
        0x20t
        0x6ft
        0x6et
        0x20t
        0x74t
        0x68t
        0x65t
        0x20t
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x20t
        0x73t
        0x69t
        0x64t
        0x65t
        0x2ct
        0x20t
        0x69t
        0x74t
        0x20t
        0x69t
        0x73t
        0x20t
        0x74t
        0x68t
        0x65t
        0x20t
        0x72t
        0x65t
        0x63t
        0x65t
        0x69t
        0x76t
        0x65t
        0x20t
        0x6bt
        0x65t
        0x79t
        0x2et
    .end array-data

    :array_b2
    .array-data 1
        0x4ft
        0x6et
        0x20t
        0x74t
        0x68t
        0x65t
        0x20t
        0x63t
        0x6ct
        0x69t
        0x65t
        0x6et
        0x74t
        0x20t
        0x73t
        0x69t
        0x64t
        0x65t
        0x2ct
        0x20t
        0x74t
        0x68t
        0x69t
        0x73t
        0x20t
        0x69t
        0x73t
        0x20t
        0x74t
        0x68t
        0x65t
        0x20t
        0x72t
        0x65t
        0x63t
        0x65t
        0x69t
        0x76t
        0x65t
        0x20t
        0x6bt
        0x65t
        0x79t
        0x3bt
        0x20t
        0x6ft
        0x6et
        0x20t
        0x74t
        0x68t
        0x65t
        0x20t
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x20t
        0x73t
        0x69t
        0x64t
        0x65t
        0x2ct
        0x20t
        0x69t
        0x74t
        0x20t
        0x69t
        0x73t
        0x20t
        0x74t
        0x68t
        0x65t
        0x20t
        0x73t
        0x65t
        0x6et
        0x64t
        0x20t
        0x6bt
        0x65t
        0x79t
        0x2et
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "eapMsChapV2Config"    # Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;

    .line 198
    new-instance v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;

    invoke-direct {v0}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;-><init>(Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;Ljava/security/SecureRandom;Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;)V

    .line 199
    return-void
.end method

.method constructor blacklist <init>(Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;Ljava/security/SecureRandom;Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;)V
    .registers 5
    .param p1, "eapMsChapV2Config"    # Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;
    .param p3, "eapMsChapV2TypeDataDecoder"    # Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;

    .line 205
    invoke-direct {p0}, Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->mEapMsChapV2Config:Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    .line 207
    iput-object p2, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->mSecureRandom:Ljava/security/SecureRandom;

    .line 208
    iput-object p3, p0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->mTypeDataDecoder:Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;

    .line 210
    new-instance v0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$CreatedState;

    invoke-direct {v0, p0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine$CreatedState;-><init>(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->transitionTo(Lcom/android/internal/net/eap/statemachine/EapMethodStateMachine$EapMethodState;)V

    .line 211
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;
    .param p1, "x1"    # Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist buildEapMessageResponse(Ljava/lang/String;ILcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;)Lcom/android/internal/net/eap/EapResult;
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eapIdentifier"    # I
    .param p3, "typeData"    # Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;

    .line 489
    :try_start_0
    new-instance v0, Lcom/android/internal/net/eap/message/EapData;

    invoke-virtual {p0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->getEapMethod()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->encode()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/eap/message/EapData;-><init>(I[B)V

    .line 490
    .local v0, "eapData":Lcom/android/internal/net/eap/message/EapData;
    new-instance v1, Lcom/android/internal/net/eap/message/EapMessage;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2, v0}, Lcom/android/internal/net/eap/message/EapMessage;-><init>(IILcom/android/internal/net/eap/message/EapData;)V

    .line 491
    .local v1, "eapMessage":Lcom/android/internal/net/eap/message/EapMessage;
    invoke-static {v1}, Lcom/android/internal/net/eap/EapResult$EapResponse;->getEapResponse(Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v2
    :try_end_17
    .catch Lcom/android/internal/net/eap/exceptions/EapSilentException; {:try_start_0 .. :try_end_17} :catch_18

    return-object v2

    .line 492
    .end local v0    # "eapData":Lcom/android/internal/net/eap/message/EapData;
    .end local v1    # "eapMessage":Lcom/android/internal/net/eap/message/EapMessage;
    :catch_18
    move-exception v0

    .line 493
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/EapSilentException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-string v2, "Error building response EapMessage"

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 494
    new-instance v1, Lcom/android/internal/net/eap/EapResult$EapError;

    invoke-direct {v1, v0}, Lcom/android/internal/net/eap/EapResult$EapError;-><init>(Ljava/lang/Exception;)V

    return-object v1
.end method

.method static blacklist challengeHash([B[BLjava/lang/String;)[B
    .registers 6
    .param p0, "peerChallenge"    # [B
    .param p1, "authenticatorChallenge"    # [B
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 528
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 529
    .local v0, "sha1":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 530
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 531
    invoke-static {p2}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->usernameToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 532
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1
.end method

.method static blacklist challengeResponse([B[B)[B
    .registers 9
    .param p0, "challenge"    # [B
    .param p1, "passwordHash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 562
    const/16 v0, 0x15

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 564
    .local v0, "zPasswordHash":[B
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 565
    .local v1, "response":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    const/4 v3, 0x3

    if-ge v2, v3, :cond_22

    .line 566
    mul-int/lit8 v3, v2, 0x7

    .line 567
    .local v3, "from":I
    add-int/lit8 v4, v3, 0x7

    .line 568
    .local v4, "to":I
    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 569
    .local v5, "zPasswordSection":[B
    invoke-static {p0, v5}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->desEncrypt([B[B)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 565
    .end local v3    # "from":I
    .end local v4    # "to":I
    .end local v5    # "zPasswordSection":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 571
    .end local v2    # "i":I
    :cond_22
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method static blacklist checkAuthenticatorResponse(Ljava/lang/String;[B[B[BLjava/lang/String;[B)Z
    .registers 8
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "ntResponse"    # [B
    .param p2, "peerChallenge"    # [B
    .param p3, "authenticatorChallenge"    # [B
    .param p4, "userName"    # Ljava/lang/String;
    .param p5, "receivedResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 634
    nop

    .line 635
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->generateAuthenticatorResponse(Ljava/lang/String;[B[B[BLjava/lang/String;)[B

    move-result-object v0

    .line 637
    .local v0, "myResponse":[B
    invoke-static {v0, p5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method static blacklist desEncrypt([B[B)[B
    .registers 6
    .param p0, "clear"    # [B
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 577
    array-length v0, p1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2d

    .line 581
    invoke-static {p1}, Lcom/android/internal/net/eap/crypto/ParityBitUtil;->addParityBits([B)[B

    move-result-object p1

    .line 582
    nop

    .line 583
    const-string v0, "DES"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 585
    .local v0, "secretKey":Ljavax/crypto/SecretKey;
    const-string v1, "DES/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 586
    .local v1, "des":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 587
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 590
    .local v2, "output":[B
    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    return-object v3

    .line 578
    .end local v0    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v1    # "des":Ljavax/crypto/Cipher;
    .end local v2    # "output":[B
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES Key must be 7B before parity-bits are added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist generateAuthenticatorResponse(Ljava/lang/String;[B[B[BLjava/lang/String;)[B
    .registers 11
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "ntResponse"    # [B
    .param p2, "peerChallenge"    # [B
    .param p3, "authenticatorChallenge"    # [B
    .param p4, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 606
    invoke-static {p0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->ntPasswordHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 607
    .local v0, "passwordHash":[B
    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->hashNtPasswordHash([B)[B

    move-result-object v1

    .line 609
    .local v1, "passwordHashHash":[B
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 610
    .local v2, "sha1":Ljava/security/MessageDigest;
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 611
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 612
    sget-object v3, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->CHALLENGE_MAGIC_1:[B

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 613
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 615
    .local v3, "digest":[B
    invoke-static {p2, p3, p4}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->challengeHash([B[BLjava/lang/String;)[B

    move-result-object v4

    .line 617
    .local v4, "challenge":[B
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 618
    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 619
    sget-object v5, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->CHALLENGE_MAGIC_2:[B

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 621
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    return-object v5
.end method

.method static blacklist generateMsk(Ljava/lang/String;[B)[B
    .registers 7
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "ntResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 668
    invoke-static {p0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->ntPasswordHash(Ljava/lang/String;)[B

    move-result-object v0

    .line 669
    .local v0, "passwordHash":[B
    invoke-static {v0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->hashNtPasswordHash([B)[B

    move-result-object v1

    .line 670
    .local v1, "passwordHashHash":[B
    invoke-static {v1, p1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->getMasterKey([B[B)[B

    move-result-object v2

    .line 673
    .local v2, "masterKey":[B
    const/16 v3, 0x40

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 674
    .local v3, "msk":Ljava/nio/ByteBuffer;
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->getAsymmetricStartKey([BZ)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 675
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->getAsymmetricStartKey([BZ)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 677
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method

.method static blacklist generateNtResponse([B[BLjava/lang/String;Ljava/lang/String;)[B
    .registers 7
    .param p0, "authenticatorChallenge"    # [B
    .param p1, "peerChallenge"    # [B
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 518
    invoke-static {p1, p0, p2}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->challengeHash([B[BLjava/lang/String;)[B

    move-result-object v0

    .line 519
    .local v0, "challenge":[B
    invoke-static {p3}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->ntPasswordHash(Ljava/lang/String;)[B

    move-result-object v1

    .line 520
    .local v1, "passwordHash":[B
    invoke-static {v0, v1}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->challengeResponse([B[B)[B

    move-result-object v2

    return-object v2
.end method

.method static blacklist getAsymmetricStartKey([BZ)[B
    .registers 6
    .param p0, "masterKey"    # [B
    .param p1, "isSend"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 656
    if-eqz p1, :cond_5

    sget-object v0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->MSK_MAGIC_2:[B

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->MSK_MAGIC_3:[B

    .line 657
    .local v0, "salt":[B
    :goto_7
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 658
    .local v1, "sha1":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 659
    sget-object v2, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->SHS_PAD_1:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 660
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 661
    sget-object v2, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->SHS_PAD_2:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 662
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2
.end method

.method static blacklist getMasterKey([B[B)[B
    .registers 5
    .param p0, "passwordHashHash"    # [B
    .param p1, "ntResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 644
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 645
    .local v0, "sha1":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 646
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 647
    sget-object v1, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->MSK_MAGIC_1:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 648
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1
.end method

.method static blacklist hashNtPasswordHash([B)[B
    .registers 4
    .param p0, "passwordHash"    # [B

    .line 550
    new-instance v0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/MD4Digest;

    invoke-direct {v0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/MD4Digest;-><init>()V

    .line 551
    .local v0, "md4":Lcom/android/internal/net/org/bouncycastle/crypto/digests/MD4Digest;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/MD4Digest;->update([BII)V

    .line 553
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 554
    .local v1, "passwordHashHash":[B
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/MD4Digest;->doFinal([BI)I

    .line 555
    return-object v1
.end method

.method static blacklist ntPasswordHash(Ljava/lang/String;)[B
    .registers 5
    .param p0, "password"    # Ljava/lang/String;

    .line 538
    new-instance v0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/MD4Digest;

    invoke-direct {v0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/MD4Digest;-><init>()V

    .line 539
    .local v0, "md4":Lcom/android/internal/net/org/bouncycastle/crypto/digests/MD4Digest;
    invoke-static {p0}, Lcom/android/internal/net/eap/statemachine/EapMsChapV2MethodStateMachine;->passwordToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 540
    .local v1, "passwordBytes":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/MD4Digest;->update([BII)V

    .line 542
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 543
    .local v2, "passwordHash":[B
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/MD4Digest;->doFinal([BI)I

    .line 544
    return-object v2
.end method

.method static blacklist passwordToBytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "password"    # Ljava/lang/String;

    .line 510
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method static blacklist usernameToBytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "username"    # Ljava/lang/String;

    .line 501
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method blacklist getEapMethod()I
    .registers 2

    .line 216
    const/16 v0, 0x1a

    return v0
.end method

.method blacklist handleEapNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/android/internal/net/eap/message/EapMessage;

    .line 221
    invoke-static {p1, p2}, Lcom/android/internal/net/eap/statemachine/EapStateMachine;->handleNotification(Ljava/lang/String;Lcom/android/internal/net/eap/message/EapMessage;)Lcom/android/internal/net/eap/EapResult;

    move-result-object v0

    return-object v0
.end method
