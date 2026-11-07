.class public Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;
.super Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;
.source "IkeAuthDigitalSignPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload$SignatureAlgo;
    }
.end annotation


# static fields
.field public static final blacklist ALL_SIGNATURE_ALGO_TYPES:[S

.field public static final blacklist HASH_ALGORITHM_RSA_SHA1:S = 0x1s

.field public static final blacklist HASH_ALGORITHM_RSA_SHA2_256:S = 0x2s

.field public static final blacklist HASH_ALGORITHM_RSA_SHA2_384:S = 0x3s

.field public static final blacklist HASH_ALGORITHM_RSA_SHA2_512:S = 0x4s

.field private static final blacklist KEY_ALGO_NAME:Ljava/lang/String; = "RSA"

.field private static final blacklist PKI_ALGO_ID_DER_BYTES_RSA_SHA1:[B

.field private static final blacklist PKI_ALGO_ID_DER_BYTES_RSA_SHA2_256:[B

.field private static final blacklist PKI_ALGO_ID_DER_BYTES_RSA_SHA2_384:[B

.field private static final blacklist PKI_ALGO_ID_DER_BYTES_RSA_SHA2_512:[B

.field private static final blacklist SIGNATURE_ALGO_ASN1_BYTES_LEN:B = 0xft

.field private static final blacklist SIGNATURE_ALGO_ASN1_BYTES_LEN_LEN:B = 0x1t

.field private static final blacklist SIGNATURE_ALGO_ASN1_LEN_LEN:I = 0x1

.field public static final blacklist SIGNATURE_ALGO_RSA_SHA1:Ljava/lang/String; = "SHA1withRSA"

.field public static final blacklist SIGNATURE_ALGO_RSA_SHA2_256:Ljava/lang/String; = "SHA256withRSA"

.field public static final blacklist SIGNATURE_ALGO_RSA_SHA2_384:Ljava/lang/String; = "SHA384withRSA"

.field public static final blacklist SIGNATURE_ALGO_RSA_SHA2_512:Ljava/lang/String; = "SHA512withRSA"

.field private static final blacklist SIGNATURE_ALGO_TYPE_TO_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field public final blacklist signature:[B

.field public final blacklist signatureAndHashAlgos:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 64
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->TAG:Ljava/lang/String;

    .line 74
    const/16 v0, 0xf

    new-array v1, v0, [B

    fill-array-data v1, :array_66

    sput-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->PKI_ALGO_ID_DER_BYTES_RSA_SHA1:[B

    .line 80
    new-array v1, v0, [B

    fill-array-data v1, :array_72

    sput-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->PKI_ALGO_ID_DER_BYTES_RSA_SHA2_256:[B

    .line 86
    new-array v1, v0, [B

    fill-array-data v1, :array_7e

    sput-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->PKI_ALGO_ID_DER_BYTES_RSA_SHA2_384:[B

    .line 92
    new-array v0, v0, [B

    fill-array-data v0, :array_8a

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->PKI_ALGO_ID_DER_BYTES_RSA_SHA2_512:[B

    .line 123
    const/4 v0, 0x4

    new-array v1, v0, [S

    fill-array-data v1, :array_96

    sput-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->ALL_SIGNATURE_ALGO_TYPES:[S

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->SIGNATURE_ALGO_TYPE_TO_NAME:Ljava/util/Map;

    .line 133
    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->SIGNATURE_ALGO_TYPE_TO_NAME:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "SHA1withRSA"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->SIGNATURE_ALGO_TYPE_TO_NAME:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "SHA256withRSA"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->SIGNATURE_ALGO_TYPE_TO_NAME:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "SHA384withRSA"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->SIGNATURE_ALGO_TYPE_TO_NAME:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const-string v2, "SHA512withRSA"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void

    nop

    :array_66
    .array-data 1
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
    .end array-data

    :array_72
    .array-data 1
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0xbt
        0x5t
        0x0t
    .end array-data

    :array_7e
    .array-data 1
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0xct
        0x5t
        0x0t
    .end array-data

    :array_8a
    .array-data 1
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0xdt
        0x5t
        0x0t
    .end array-data

    :array_96
    .array-data 2
        0x1s
        0x2s
        0x3s
        0x4s
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/util/Set;Ljava/security/PrivateKey;[B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)V
    .registers 14
    .param p2, "privateKey"    # Ljava/security/PrivateKey;
    .param p3, "ikeInitBytes"    # [B
    .param p4, "nonce"    # [B
    .param p5, "idPayloadBodyBytes"    # [B
    .param p6, "ikePrf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p7, "prfKeyBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/security/PrivateKey;",
            "[B[B[B",
            "Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;",
            "[B)V"
        }
    .end annotation

    .line 197
    .local p1, "genericSignAuthAlgos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Short;>;"
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->getAuthMethod(Ljava/util/Set;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;-><init>(ZI)V

    .line 199
    nop

    .line 200
    invoke-static {p3, p4, p5, p6, p7}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->getSignedOctets([B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)[B

    move-result-object v0

    .line 202
    .local v0, "dataToSignBytes":[B
    const/4 v1, 0x0

    .line 203
    .local v1, "signatureAlgoName":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->authMethod:I

    sparse-switch v2, :sswitch_data_6e

    .line 211
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid auth method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->authMethod:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :sswitch_2e
    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->selectGenericSignAuthAlgo(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 209
    goto :goto_36

    .line 205
    :sswitch_33
    const-string v1, "SHA1withRSA"

    .line 206
    nop

    .line 215
    :goto_36
    :try_start_36
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 216
    .local v2, "signGen":Ljava/security/Signature;
    invoke-virtual {v2, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 217
    invoke-virtual {v2, v0}, Ljava/security/Signature;->update([B)V

    .line 219
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signature:[B

    .line 220
    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signatureAndHashAlgos:Ljava/lang/String;
    :try_end_48
    .catch Ljava/security/SignatureException; {:try_start_36 .. :try_end_48} :catch_64
    .catch Ljava/security/InvalidKeyException; {:try_start_36 .. :try_end_48} :catch_64
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_36 .. :try_end_48} :catch_4a

    .line 229
    .end local v2    # "signGen":Ljava/security/Signature;
    nop

    .line 230
    return-void

    .line 223
    :catch_4a
    move-exception v2

    .line 224
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Security Provider does not support RSA or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_64
    move-exception v2

    .line 222
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Signature generation failed"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_33
        0xe -> :sswitch_2e
    .end sparse-switch
.end method

.method protected constructor blacklist <init>(ZI[B)V
    .registers 8
    .param p1, "critical"    # Z
    .param p2, "authMethod"    # I
    .param p3, "authData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthPayload;-><init>(ZI)V

    .line 146
    sparse-switch p2, :sswitch_data_3c

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized authentication method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :sswitch_e
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 155
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    .line 156
    .local v1, "signAlgoLen":I
    new-array v2, v1, [B

    .line 157
    .local v2, "signAlgoBytes":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 158
    invoke-direct {p0, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->bytesToJavaStandardSignAlgoName([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signatureAndHashAlgos:Ljava/lang/String;

    .line 161
    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signature:[B

    .line 162
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signature:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 163
    goto :goto_3a

    .line 148
    .end local v0    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "signAlgoLen":I
    .end local v2    # "signAlgoBytes":[B
    :sswitch_33
    const-string v0, "SHA1withRSA"

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signatureAndHashAlgos:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signature:[B

    .line 150
    nop

    .line 167
    :goto_3a
    return-void

    nop

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_33
        0xe -> :sswitch_e
    .end sparse-switch
.end method

.method private blacklist bytesToJavaStandardSignAlgoName([B)Ljava/lang/String;
    .registers 4
    .param p1, "signAlgoBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->PKI_ALGO_ID_DER_BYTES_RSA_SHA1:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 269
    const-string v0, "SHA1withRSA"

    return-object v0

    .line 270
    :cond_b
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->PKI_ALGO_ID_DER_BYTES_RSA_SHA2_256:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 271
    const-string v0, "SHA256withRSA"

    return-object v0

    .line 272
    :cond_16
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->PKI_ALGO_ID_DER_BYTES_RSA_SHA2_384:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 273
    const-string v0, "SHA384withRSA"

    return-object v0

    .line 274
    :cond_21
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->PKI_ALGO_ID_DER_BYTES_RSA_SHA2_512:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 275
    const-string v0, "SHA512withRSA"

    return-object v0

    .line 277
    :cond_2c
    new-instance v0, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v1, "Unrecognized ASN.1 objects for Signature algorithm and Hash"

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getAuthMethod(Ljava/util/Set;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;)I"
        }
    .end annotation

    .line 233
    .local p0, "genericSignAuthAlgos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Short;>;"
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 234
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_8
    const/16 v0, 0xe

    return v0
.end method

.method public static blacklist getSignatureHashAlgorithmsFromIkeNotifyPayload(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Ljava/util/Set;
    .registers 9
    .param p0, "notifyPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 368
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v1, 0x402f

    if-ne v0, v1, :cond_5e

    .line 374
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    array-length v0, v0

    .line 375
    .local v0, "dataLen":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_56

    .line 380
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 381
    .local v1, "hashAlgos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Short;>;"
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyData:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 382
    .local v2, "serializedHashAlgos":Ljava/nio/ByteBuffer;
    :goto_18
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 383
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 384
    .local v3, "hashAlgo":S
    sget-object v4, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->SIGNATURE_ALGO_TYPE_TO_NAME:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 385
    :cond_38
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v4

    sget-object v5, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected or repeated Signature Hash Algorithm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/net/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .end local v3    # "hashAlgo":S
    :cond_54
    goto :goto_18

    .line 389
    :cond_55
    return-object v1

    .line 376
    .end local v1    # "hashAlgos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Short;>;"
    .end local v2    # "serializedHashAlgos":Ljava/nio/ByteBuffer;
    :cond_56
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Received notify(SIGNATURE_HASH_ALGORITHMS) with invalid notify data"

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    .end local v0    # "dataLen":I
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Notify payload type must be SIGNATURE_HASH_ALGORITHMS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist javaStandardSignAlgoNameToAsn1Bytes(Ljava/lang/String;)[B
    .registers 4
    .param p1, "javaSignatureAndHashAlgo"    # Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_48

    :cond_7
    goto :goto_30

    :sswitch_8
    const-string v0, "SHA256withRSA"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_31

    :sswitch_12
    const-string v0, "SHA512withRSA"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_31

    :sswitch_1c
    const-string v0, "SHA1withRSA"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_31

    :sswitch_26
    const-string v0, "SHA384withRSA"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_31

    :goto_30
    const/4 v0, -0x1

    :goto_31
    packed-switch v0, :pswitch_data_5a

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Impossible! We used an unsupported algo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :pswitch_3c
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->PKI_ALGO_ID_DER_BYTES_RSA_SHA2_512:[B

    return-object v0

    .line 258
    :pswitch_3f
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->PKI_ALGO_ID_DER_BYTES_RSA_SHA2_384:[B

    return-object v0

    .line 256
    :pswitch_42
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->PKI_ALGO_ID_DER_BYTES_RSA_SHA2_256:[B

    return-object v0

    .line 254
    :pswitch_45
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->PKI_ALGO_ID_DER_BYTES_RSA_SHA1:[B

    return-object v0

    :sswitch_data_48
    .sparse-switch
        -0x2f608029 -> :sswitch_26
        -0x2cf2e52b -> :sswitch_1c
        -0x246f00b0 -> :sswitch_12
        -0x10b4e48d -> :sswitch_8
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
    .end packed-switch
.end method

.method static blacklist selectGenericSignAuthAlgo(Ljava/util/Set;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 241
    .local p0, "genericSignAuthAlgos":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Short;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 242
    .local v0, "algoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 248
    .local v1, "strongestAlgo":S
    sget-object v2, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->SIGNATURE_ALGO_TYPE_TO_NAME:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method protected blacklist encodeAuthDataToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 327
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->authMethod:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_14

    .line 328
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 329
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signatureAndHashAlgos:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->javaStandardSignAlgoNameToAsn1Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 331
    :cond_14
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signature:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 332
    return-void
.end method

.method protected blacklist getAuthDataLength()I
    .registers 3

    .line 336
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->authMethod:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    .line 337
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signature:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    return v0

    .line 341
    :cond_c
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signature:[B

    array-length v0, v0

    return v0
.end method

.method public blacklist getTypeString()Ljava/lang/String;
    .registers 3

    .line 346
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->authMethod:I

    sparse-switch v0, :sswitch_data_14

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized authentication method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :sswitch_d
    const-string v0, "Auth(Generic Digital Sign)"

    return-object v0

    .line 348
    :sswitch_10
    const-string v0, "Auth(RSA Digital Sign)"

    return-object v0

    nop

    :sswitch_data_14
    .sparse-switch
        0x1 -> :sswitch_10
        0xe -> :sswitch_d
    .end sparse-switch
.end method

.method public blacklist verifyInboundSignature(Ljava/security/cert/X509Certificate;[B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)V
    .registers 12
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p2, "ikeInitBytes"    # [B
    .param p3, "nonce"    # [B
    .param p4, "idPayloadBodyBytes"    # [B
    .param p5, "ikePrf"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .param p6, "prfKeyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation

    .line 306
    nop

    .line 307
    invoke-static {p2, p3, p4, p5, p6}, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->getSignedOctets([B[B[BLcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;[B)[B

    move-result-object v0

    .line 310
    .local v0, "dataToSignBytes":[B
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signatureAndHashAlgos:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 311
    .local v1, "signValidator":Ljava/security/Signature;
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 312
    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 314
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signature:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 322
    .end local v1    # "signValidator":Ljava/security/Signature;
    nop

    .line 323
    return-void

    .line 315
    .restart local v1    # "signValidator":Ljava/security/Signature;
    :cond_1b
    new-instance v2, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v3, "Signature verification failed."

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dataToSignBytes":[B
    .end local p0    # "this":Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;
    .end local p1    # "certificate":Ljava/security/cert/X509Certificate;
    .end local p2    # "ikeInitBytes":[B
    .end local p3    # "nonce":[B
    .end local p4    # "idPayloadBodyBytes":[B
    .end local p5    # "ikePrf":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .end local p6    # "prfKeyBytes":[B
    throw v2
    :try_end_23
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_23} :catch_3f
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_23} :catch_3f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_23} :catch_23

    .line 319
    .end local v1    # "signValidator":Ljava/security/Signature;
    .restart local v0    # "dataToSignBytes":[B
    .restart local p0    # "this":Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;
    .restart local p1    # "certificate":Ljava/security/cert/X509Certificate;
    .restart local p2    # "ikeInitBytes":[B
    .restart local p3    # "nonce":[B
    .restart local p4    # "idPayloadBodyBytes":[B
    .restart local p5    # "ikePrf":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacPrf;
    .restart local p6    # "prfKeyBytes":[B
    :catch_23
    move-exception v1

    .line 320
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security Provider does not support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/message/IkeAuthDigitalSignPayload;->signatureAndHashAlgos:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3f
    move-exception v1

    .line 318
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    invoke-direct {v2, v1}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
