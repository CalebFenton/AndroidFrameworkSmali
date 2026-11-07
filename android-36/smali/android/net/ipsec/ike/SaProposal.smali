.class public abstract Landroid/net/ipsec/ike/SaProposal;
.super Ljava/lang/Object;
.source "SaProposal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/SaProposal$Builder;,
        Landroid/net/ipsec/ike/SaProposal$DhGroup;,
        Landroid/net/ipsec/ike/SaProposal$IntegrityAlgorithm;,
        Landroid/net/ipsec/ike/SaProposal$PseudorandomFunction;,
        Landroid/net/ipsec/ike/SaProposal$EncryptionAlgorithm;
    }
.end annotation


# static fields
.field public static final whitelist DH_GROUP_1024_BIT_MODP:I = 0x2

.field public static final whitelist DH_GROUP_1536_BIT_MODP:I = 0x5

.field public static final whitelist DH_GROUP_2048_BIT_MODP:I = 0xe

.field public static final whitelist DH_GROUP_3072_BIT_MODP:I = 0xf

.field public static final whitelist DH_GROUP_4096_BIT_MODP:I = 0x10

.field public static final whitelist DH_GROUP_CURVE_25519:I = 0x1f

.field protected static final blacklist DH_GROUP_KEY:Ljava/lang/String; = "mDhGroups"

.field public static final whitelist DH_GROUP_NONE:I = 0x0

.field public static final whitelist ENCRYPTION_ALGORITHM_3DES:I = 0x3

.field public static final whitelist ENCRYPTION_ALGORITHM_AES_CBC:I = 0xc

.field public static final whitelist ENCRYPTION_ALGORITHM_AES_CTR:I = 0xd

.field public static final whitelist ENCRYPTION_ALGORITHM_AES_GCM_12:I = 0x13

.field public static final whitelist ENCRYPTION_ALGORITHM_AES_GCM_16:I = 0x14

.field public static final whitelist ENCRYPTION_ALGORITHM_AES_GCM_8:I = 0x12

.field public static final whitelist ENCRYPTION_ALGORITHM_CHACHA20_POLY1305:I = 0x1c

.field protected static final blacklist ENCRYPT_ALGO_KEY:Ljava/lang/String; = "mEncryptionAlgorithms"

.field public static final whitelist INTEGRITY_ALGORITHM_AES_CMAC_96:I = 0x8

.field public static final whitelist INTEGRITY_ALGORITHM_AES_XCBC_96:I = 0x5

.field public static final whitelist INTEGRITY_ALGORITHM_HMAC_SHA1_96:I = 0x2

.field public static final whitelist INTEGRITY_ALGORITHM_HMAC_SHA2_256_128:I = 0xc

.field public static final whitelist INTEGRITY_ALGORITHM_HMAC_SHA2_384_192:I = 0xd

.field public static final whitelist INTEGRITY_ALGORITHM_HMAC_SHA2_512_256:I = 0xe

.field public static final whitelist INTEGRITY_ALGORITHM_NONE:I = 0x0

.field protected static final blacklist INTEGRITY_ALGO_KEY:Ljava/lang/String; = "mIntegrityAlgorithms"

.field public static final whitelist KEY_LEN_AES_128:I = 0x80

.field public static final whitelist KEY_LEN_AES_192:I = 0xc0

.field public static final whitelist KEY_LEN_AES_256:I = 0x100

.field public static final whitelist KEY_LEN_UNUSED:I = 0x0

.field private static final blacklist PROTOCOL_ID_KEY:Ljava/lang/String; = "mProtocolId"

.field public static final whitelist PSEUDORANDOM_FUNCTION_AES128_CMAC:I = 0x8

.field public static final whitelist PSEUDORANDOM_FUNCTION_AES128_XCBC:I = 0x4

.field public static final whitelist PSEUDORANDOM_FUNCTION_HMAC_SHA1:I = 0x2

.field public static final whitelist PSEUDORANDOM_FUNCTION_SHA2_256:I = 0x5

.field public static final whitelist PSEUDORANDOM_FUNCTION_SHA2_384:I = 0x6

.field public static final whitelist PSEUDORANDOM_FUNCTION_SHA2_512:I = 0x7

.field private static final blacklist SUPPORTED_DH_GROUP_TO_STR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final blacklist SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final blacklist SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final blacklist SUPPORTED_PRF_TO_STR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDhGroups:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

.field private final blacklist mEncryptionAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

.field private final blacklist mIntegrityAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

.field private final blacklist mProtocolId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;

    .line 102
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "ENCR_3DES"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;

    const-string v1, "ENCR_AES_CBC"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;

    const-string v1, "ENCR_AES_CTR"

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x12

    const-string v4, "ENCR_AES_GCM_8"

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x13

    const-string v4, "ENCR_AES_GCM_12"

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const-string v4, "ENCR_AES_GCM_16"

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x1c

    const-string v4, "ENCR_CHACHA20_POLY1305"

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_PRF_TO_STR:Landroid/util/SparseArray;

    .line 156
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_PRF_TO_STR:Landroid/util/SparseArray;

    const-string v1, "PRF_HMAC_SHA1"

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_PRF_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v5, "PRF_AES128_XCBC"

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_PRF_TO_STR:Landroid/util/SparseArray;

    const-string v1, "PRF_HMAC2_256"

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_PRF_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v6, "PRF_HMAC2_384"

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_PRF_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v6, "PRF_HMAC2_512"

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_PRF_TO_STR:Landroid/util/SparseArray;

    const-string v1, "PRF_AES128_CMAC"

    const/16 v6, 0x8

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;

    .line 197
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;

    const-string v1, "AUTH_NONE"

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;

    const-string v1, "AUTH_HMAC_SHA1_96"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;

    const-string v1, "AUTH_AES_XCBC_96"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;

    const-string v1, "AUTH_AES_CMAC_96"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;

    const-string v1, "AUTH_HMAC_SHA2_256_128"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;

    const-string v1, "AUTH_HMAC_SHA2_384_192"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;

    const-string v1, "AUTH_HMAC_SHA2_512_256"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_DH_GROUP_TO_STR:Landroid/util/SparseArray;

    .line 241
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_DH_GROUP_TO_STR:Landroid/util/SparseArray;

    const-string v1, "DH_NONE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_DH_GROUP_TO_STR:Landroid/util/SparseArray;

    const-string v1, "DH_1024_BIT_MODP"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_DH_GROUP_TO_STR:Landroid/util/SparseArray;

    const-string v1, "DH_1536_BIT_MODP"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_DH_GROUP_TO_STR:Landroid/util/SparseArray;

    const-string v1, "DH_2048_BIT_MODP"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_DH_GROUP_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "DH_3072_BIT_MODP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_DH_GROUP_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x10

    const-string v2, "DH_4096_BIT_MODP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_DH_GROUP_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x1f

    const-string v2, "DH_GROUP_CURVE_25519"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    return-void
.end method

.method protected constructor blacklist <init>(I[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;)V
    .registers 5
    .param p1, "protocol"    # I
    .param p2, "encryptionAlgos"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    .param p3, "integrityAlgos"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    .param p4, "dhGroups"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput p1, p0, Landroid/net/ipsec/ike/SaProposal;->mProtocolId:I

    .line 270
    iput-object p2, p0, Landroid/net/ipsec/ike/SaProposal;->mEncryptionAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    .line 271
    iput-object p3, p0, Landroid/net/ipsec/ike/SaProposal;->mIntegrityAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    .line 272
    iput-object p4, p0, Landroid/net/ipsec/ike/SaProposal;->mDhGroups:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    .line 273
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/SaProposal;
    .registers 5
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 282
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    const-string v0, "mProtocolId"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 285
    .local v0, "protocolId":I
    packed-switch v0, :pswitch_data_32

    .line 291
    :pswitch_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid protocol ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :pswitch_27
    invoke-static {p0}, Landroid/net/ipsec/ike/ChildSaProposal;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v1

    return-object v1

    .line 287
    :pswitch_2c
    invoke-static {p0}, Landroid/net/ipsec/ike/IkeSaProposal;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_e
        :pswitch_27
    .end packed-switch
.end method

.method public static blacklist getDhGroupString(I)Ljava/lang/String;
    .registers 3
    .param p0, "dhGroup"    # I

    .line 688
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_DH_GROUP_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 689
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_DH_GROUP_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 691
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DH_Unknown_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getEncryptionAlgorithmString(I)Ljava/lang/String;
    .registers 3
    .param p0, "algorithm"    # I

    .line 652
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 653
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 655
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENC_Unknown_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getIntegrityAlgorithmString(I)Ljava/lang/String;
    .registers 3
    .param p0, "algorithm"    # I

    .line 676
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 677
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 679
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AUTH_Unknown_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist getKeySet(Landroid/util/SparseArray;)Ljava/util/Set;
    .registers 4
    .param p0, "array"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 624
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 625
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 626
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 629
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method

.method public static blacklist getPseudorandomFunctionString(I)Ljava/lang/String;
    .registers 3
    .param p0, "algorithm"    # I

    .line 664
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_PRF_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 665
    sget-object v0, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_PRF_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 667
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRF_Unknown_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getSupportedDhGroups()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 635
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 636
    .local v0, "supportedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/net/ipsec/ike/SaProposal;->SUPPORTED_DH_GROUP_TO_STR:Landroid/util/SparseArray;

    invoke-static {v1}, Landroid/net/ipsec/ike/SaProposal;->getKeySet(Landroid/util/SparseArray;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 637
    .local v2, "dh":I
    const/16 v3, 0x1f

    if-ne v2, v3, :cond_2a

    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 638
    goto :goto_f

    .line 640
    :cond_2a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 642
    .end local v2    # "dh":I
    goto :goto_f

    .line 643
    :cond_32
    return-object v0
.end method

.method private static blacklist isDhGroupTransformSelectedFrom([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;)Z
    .registers 6
    .param p0, "selected"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
    .param p1, "selectFrom"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    .line 390
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 391
    new-array v0, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    invoke-direct {v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;-><init>(I)V

    aput-object v3, v0, v2

    move-object p0, v0

    .line 393
    :cond_f
    array-length v0, p1

    if-nez v0, :cond_1c

    .line 394
    new-array v0, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    invoke-direct {v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;-><init>(I)V

    aput-object v1, v0, v2

    move-object p1, v0

    .line 396
    :cond_1c
    invoke-static {p0, p1}, Landroid/net/ipsec/ike/SaProposal;->isTransformSelectedFrom([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isIntegrityTransformSelectedFrom([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;)Z
    .registers 6
    .param p0, "selected"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    .param p1, "selectFrom"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    .line 371
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 372
    new-array v0, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    new-instance v3, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    invoke-direct {v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;-><init>(I)V

    aput-object v3, v0, v2

    move-object p0, v0

    .line 374
    :cond_f
    array-length v0, p1

    if-nez v0, :cond_1c

    .line 375
    new-array v0, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    invoke-direct {v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;-><init>(I)V

    aput-object v1, v0, v2

    move-object p1, v0

    .line 378
    :cond_1c
    invoke-static {p0, p1}, Landroid/net/ipsec/ike/SaProposal;->isTransformSelectedFrom([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;)Z

    move-result v0

    return v0
.end method

.method static blacklist isTransformSelectedFrom([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;)Z
    .registers 6
    .param p0, "selected"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    .param p1, "selectFrom"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;

    .line 351
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_23

    array-length v0, p0

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    array-length v3, p1

    if-nez v3, :cond_10

    move v3, v2

    goto :goto_11

    :cond_10
    move v3, v1

    :goto_11
    if-eq v0, v3, :cond_14

    goto :goto_23

    .line 355
    :cond_14
    array-length v0, p0

    if-nez v0, :cond_18

    return v2

    .line 357
    :cond_18
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aget-object v1, p0, v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 352
    :cond_23
    :goto_23
    return v1
.end method

.method static synthetic blacklist lambda$toPersistableBundle$0(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 312
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$toPersistableBundle$1(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 315
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 610
    instance-of v0, p1, Landroid/net/ipsec/ike/SaProposal;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 611
    return v1

    .line 614
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/SaProposal;

    .line 616
    .local v0, "other":Landroid/net/ipsec/ike/SaProposal;
    iget v2, p0, Landroid/net/ipsec/ike/SaProposal;->mProtocolId:I

    iget v3, v0, Landroid/net/ipsec/ike/SaProposal;->mProtocolId:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Landroid/net/ipsec/ike/SaProposal;->mEncryptionAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    iget-object v3, v0, Landroid/net/ipsec/ike/SaProposal;->mEncryptionAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    .line 617
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/net/ipsec/ike/SaProposal;->mIntegrityAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    iget-object v3, v0, Landroid/net/ipsec/ike/SaProposal;->mIntegrityAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    .line 618
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/net/ipsec/ike/SaProposal;->mDhGroups:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    iget-object v3, v0, Landroid/net/ipsec/ike/SaProposal;->mDhGroups:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    .line 619
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 616
    :goto_30
    return v1
.end method

.method public abstract blacklist getAllTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
.end method

.method protected blacklist getAllTransformsAsList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;",
            ">;"
        }
    .end annotation

    .line 465
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 467
    .local v0, "transformList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;>;"
    iget-object v1, p0, Landroid/net/ipsec/ike/SaProposal;->mEncryptionAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 468
    iget-object v1, p0, Landroid/net/ipsec/ike/SaProposal;->mIntegrityAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 469
    iget-object v1, p0, Landroid/net/ipsec/ike/SaProposal;->mDhGroups:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 471
    return-object v0
.end method

.method public blacklist getDhGroupTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
    .registers 2

    .line 460
    iget-object v0, p0, Landroid/net/ipsec/ike/SaProposal;->mDhGroups:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    return-object v0
.end method

.method public whitelist getDhGroups()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/net/ipsec/ike/SaProposal;->mDhGroups:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 443
    .local v4, "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    iget v5, v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    .end local v4    # "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 445
    :cond_19
    return-object v0
.end method

.method public whitelist getEncryptionAlgorithms()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Landroid/net/ipsec/ike/SaProposal;->mEncryptionAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 415
    .local v4, "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    new-instance v5, Landroid/util/Pair;

    iget v6, v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v4    # "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 417
    :cond_26
    return-object v0
.end method

.method public blacklist getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    .registers 2

    .line 450
    iget-object v0, p0, Landroid/net/ipsec/ike/SaProposal;->mEncryptionAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    return-object v0
.end method

.method public whitelist getIntegrityAlgorithms()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/net/ipsec/ike/SaProposal;->mIntegrityAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 429
    .local v4, "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    iget v5, v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    .end local v4    # "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 431
    :cond_19
    return-object v0
.end method

.method public blacklist getIntegrityTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    .registers 2

    .line 455
    iget-object v0, p0, Landroid/net/ipsec/ike/SaProposal;->mIntegrityAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    return-object v0
.end method

.method public blacklist getProtocolId()I
    .registers 2

    .line 402
    iget v0, p0, Landroid/net/ipsec/ike/SaProposal;->mProtocolId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 601
    iget v0, p0, Landroid/net/ipsec/ike/SaProposal;->mProtocolId:I

    .line 602
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/SaProposal;->mEncryptionAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    .line 603
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ipsec/ike/SaProposal;->mIntegrityAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    .line 604
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ipsec/ike/SaProposal;->mDhGroups:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    .line 605
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 601
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isNegotiatedFrom(Landroid/net/ipsec/ike/SaProposal;)Z
    .registers 4
    .param p1, "reqProposal"    # Landroid/net/ipsec/ike/SaProposal;

    .line 336
    iget v0, p0, Landroid/net/ipsec/ike/SaProposal;->mProtocolId:I

    iget v1, p1, Landroid/net/ipsec/ike/SaProposal;->mProtocolId:I

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Landroid/net/ipsec/ike/SaProposal;->mEncryptionAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    iget-object v1, p1, Landroid/net/ipsec/ike/SaProposal;->mEncryptionAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    .line 337
    invoke-static {v0, v1}, Landroid/net/ipsec/ike/SaProposal;->isTransformSelectedFrom([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/net/ipsec/ike/SaProposal;->mIntegrityAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    iget-object v1, p1, Landroid/net/ipsec/ike/SaProposal;->mIntegrityAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    .line 338
    invoke-static {v0, v1}, Landroid/net/ipsec/ike/SaProposal;->isIntegrityTransformSelectedFrom([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/net/ipsec/ike/SaProposal;->mDhGroups:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    iget-object v1, p1, Landroid/net/ipsec/ike/SaProposal;->mDhGroups:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    .line 340
    invoke-static {v0, v1}, Landroid/net/ipsec/ike/SaProposal;->isDhGroupTransformSelectedFrom([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 336
    :goto_27
    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 6

    .line 302
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 304
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "mProtocolId"

    iget v2, p0, Landroid/net/ipsec/ike/SaProposal;->mProtocolId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 306
    iget-object v1, p0, Landroid/net/ipsec/ike/SaProposal;->mEncryptionAlgorithms:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    .line 308
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/net/ipsec/ike/SaProposal$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/ipsec/ike/SaProposal$$ExternalSyntheticLambda0;-><init>()V

    .line 307
    invoke-static {v1, v2}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 310
    .local v1, "encryptionBundle":Landroid/os/PersistableBundle;
    const-string v2, "mEncryptionAlgorithms"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 312
    invoke-virtual {p0}, Landroid/net/ipsec/ike/SaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/net/ipsec/ike/SaProposal$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/net/ipsec/ike/SaProposal$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    .line 313
    .local v2, "integrityAlgoIdArray":[I
    const-string v3, "mIntegrityAlgorithms"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 315
    invoke-virtual {p0}, Landroid/net/ipsec/ike/SaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/net/ipsec/ike/SaProposal$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/net/ipsec/ike/SaProposal$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    .line 316
    .local v3, "dhGroupArray":[I
    const-string v4, "mDhGroups"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 318
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/net/ipsec/ike/SaProposal;->mProtocolId:I

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getProtocolTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {p0}, Landroid/net/ipsec/ike/SaProposal;->getAllTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;

    move-result-object v1

    array-length v1, v1

    .line 591
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v1, :cond_35

    .line 592
    invoke-virtual {p0}, Landroid/net/ipsec/ike/SaProposal;->getAllTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_32

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 596
    .end local v2    # "i":I
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
