.class public final Landroid/net/ipsec/ike/ChildSaProposal;
.super Landroid/net/ipsec/ike/SaProposal;
.source "ChildSaProposal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/ChildSaProposal$Builder;
    }
.end annotation


# static fields
.field private static final blacklist ESN_KEY:Ljava/lang/String; = "mEsns"

.field private static final blacklist SUPPORTED_IPSEC_ENCRYPTION_BEFORE_SDK_S:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SUPPORTED_IPSEC_INTEGRITY_BEFORE_SDK_S:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEsns:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 61
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_IPSEC_ENCRYPTION_BEFORE_SDK_S:Ljava/util/Set;

    .line 62
    sget-object v0, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_IPSEC_ENCRYPTION_BEFORE_SDK_S:Ljava/util/Set;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_IPSEC_ENCRYPTION_BEFORE_SDK_S:Ljava/util/Set;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_IPSEC_ENCRYPTION_BEFORE_SDK_S:Ljava/util/Set;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_IPSEC_ENCRYPTION_BEFORE_SDK_S:Ljava/util/Set;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_IPSEC_INTEGRITY_BEFORE_SDK_S:Ljava/util/Set;

    .line 68
    sget-object v0, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_IPSEC_INTEGRITY_BEFORE_SDK_S:Ljava/util/Set;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_IPSEC_INTEGRITY_BEFORE_SDK_S:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_IPSEC_INTEGRITY_BEFORE_SDK_S:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_IPSEC_INTEGRITY_BEFORE_SDK_S:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;)V
    .registers 6
    .param p1, "encryptionAlgos"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    .param p2, "integrityAlgos"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    .param p3, "dhGroups"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
    .param p4, "esns"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    .line 95
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/net/ipsec/ike/SaProposal;-><init>(I[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;)V

    .line 96
    iput-object p4, p0, Landroid/net/ipsec/ike/ChildSaProposal;->mEsns:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    .line 97
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/ChildSaProposal;
    .registers 11
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 109
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    new-instance v0, Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;-><init>()V

    .line 113
    .local v0, "builder":Landroid/net/ipsec/ike/ChildSaProposal$Builder;
    const-string v1, "mEncryptionAlgorithms"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 114
    .local v1, "encryptionBundle":Landroid/os/PersistableBundle;
    const-string v2, "Encryption algo bundle is null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    new-instance v2, Landroid/net/ipsec/ike/ChildSaProposal$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/ipsec/ike/ChildSaProposal$$ExternalSyntheticLambda0;-><init>()V

    .line 116
    invoke-static {v1, v2}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    .line 118
    .local v2, "encryptList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    .line 119
    .local v4, "t":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    iget v5, v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 120
    .end local v4    # "t":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    goto :goto_22

    .line 122
    :cond_38
    const-string v3, "mIntegrityAlgorithms"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 123
    .local v3, "integrityAlgoIdArray":[I
    const-string v4, "Integrity algo array is null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_46
    if-ge v6, v4, :cond_50

    aget v7, v3, v6

    .line 125
    .local v7, "algo":I
    invoke-virtual {v0, v7}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 124
    .end local v7    # "algo":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 128
    :cond_50
    const-string v4, "mDhGroups"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 129
    .local v4, "dhGroupArray":[I
    const-string v6, "DH Group array is null"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    array-length v6, v4

    move v7, v5

    :goto_5d
    if-ge v7, v6, :cond_67

    aget v8, v4, v7

    .line 131
    .local v8, "dh":I
    invoke-virtual {v0, v8}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    .line 130
    .end local v8    # "dh":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 134
    :cond_67
    const-string v6, "mEsns"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    .line 135
    .local v6, "esnPolicies":[I
    const-string v7, "ESN policy array is null"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    array-length v7, v6

    :goto_73
    if-ge v5, v7, :cond_9d

    aget v8, v6, v5

    .line 138
    .local v8, "p":I
    packed-switch v8, :pswitch_data_a2

    .line 143
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Proposing ESN policy: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " is unsupported"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 141
    :pswitch_99
    nop

    .line 137
    .end local v8    # "p":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    .line 148
    :cond_9d
    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v5

    return-object v5

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_99
    .end packed-switch
.end method

.method public static whitelist getSupportedEncryptionAlgorithms()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 174
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 175
    .local v0, "algoIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    sget-object v2, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 176
    sget-object v2, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 177
    .local v2, "ikeAlgoId":I
    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;->getIpSecAlgorithmName(I)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "ipSecAlgoName":Ljava/lang/String;
    invoke-static {}, Landroid/net/IpSecAlgorithm;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 179
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v2    # "ikeAlgoId":I
    .end local v3    # "ipSecAlgoName":Ljava/lang/String;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 182
    .end local v1    # "i":I
    :cond_32
    return-object v0

    .line 184
    .end local v0    # "algoIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_33
    sget-object v0, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_IPSEC_ENCRYPTION_BEFORE_SDK_S:Ljava/util/Set;

    return-object v0
.end method

.method public static whitelist getSupportedIntegrityAlgorithms()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 199
    .local v0, "algoIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    sget-object v2, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 203
    sget-object v2, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 204
    .local v2, "ikeAlgoId":I
    invoke-static {v2}, Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;->getIpSecAlgorithmName(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "ipSecAlgoName":Ljava/lang/String;
    invoke-static {}, Landroid/net/IpSecAlgorithm;->getSupportedAlgorithms()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 206
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v2    # "ikeAlgoId":I
    .end local v3    # "ipSecAlgoName":Ljava/lang/String;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .end local v1    # "i":I
    :cond_3a
    goto :goto_40

    .line 210
    :cond_3b
    sget-object v1, Landroid/net/ipsec/ike/ChildSaProposal;->SUPPORTED_IPSEC_INTEGRITY_BEFORE_SDK_S:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 212
    :goto_40
    return-object v0
.end method

.method static synthetic blacklist lambda$toPersistableBundle$0(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;)I
    .registers 2
    .param p0, "esn"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    .line 160
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;->id:I

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 281
    invoke-super {p0, p1}, Landroid/net/ipsec/ike/SaProposal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    instance-of v0, p1, Landroid/net/ipsec/ike/ChildSaProposal;

    if-nez v0, :cond_b

    goto :goto_17

    .line 285
    :cond_b
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSaProposal;->mEsns:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/ChildSaProposal;

    iget-object v1, v1, Landroid/net/ipsec/ike/ChildSaProposal;->mEsns:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 282
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    .registers 3

    .line 242
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSaProposal;->getAllTransformsAsList()Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, "transformList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;>;"
    iget-object v1, p0, Landroid/net/ipsec/ike/ChildSaProposal;->mEsns:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;

    return-object v1
.end method

.method public blacklist getCopyWithAdditionalDhTransform(I)Landroid/net/ipsec/ike/ChildSaProposal;
    .registers 8
    .param p1, "dhGroup"    # I

    .line 267
    new-instance v0, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 268
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v1

    .line 269
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    new-instance v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    invoke-direct {v4, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;-><init>(I)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 271
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSaProposal;->getEsnTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/ipsec/ike/ChildSaProposal;-><init>([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;)V

    .line 267
    return-object v0
.end method

.method public blacklist getCopyWithoutDhTransform()Landroid/net/ipsec/ike/ChildSaProposal;
    .registers 6

    .line 232
    new-instance v0, Landroid/net/ipsec/ike/ChildSaProposal;

    .line 233
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    .line 236
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSaProposal;->getEsnTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/ipsec/ike/ChildSaProposal;-><init>([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;)V

    .line 232
    return-object v0
.end method

.method public blacklist getEsnTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;
    .registers 2

    .line 221
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSaProposal;->mEsns:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 276
    invoke-super {p0}, Landroid/net/ipsec/ike/SaProposal;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/ChildSaProposal;->mEsns:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isNegotiatedFrom(Landroid/net/ipsec/ike/SaProposal;)Z
    .registers 4
    .param p1, "reqProposal"    # Landroid/net/ipsec/ike/SaProposal;

    .line 251
    invoke-super {p0, p1}, Landroid/net/ipsec/ike/SaProposal;->isNegotiatedFrom(Landroid/net/ipsec/ike/SaProposal;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSaProposal;->mEsns:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/ChildSaProposal;

    iget-object v1, v1, Landroid/net/ipsec/ike/ChildSaProposal;->mEsns:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    .line 252
    invoke-static {v0, v1}, Landroid/net/ipsec/ike/ChildSaProposal;->isTransformSelectedFrom([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 251
    :goto_16
    return v0
.end method

.method public blacklist isNegotiatedFromExceptDhGroup(Landroid/net/ipsec/ike/SaProposal;)Z
    .registers 4
    .param p1, "saProposal"    # Landroid/net/ipsec/ike/SaProposal;

    .line 257
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSaProposal;->getProtocolId()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/ipsec/ike/SaProposal;->getProtocolId()I

    move-result v1

    if-ne v0, v1, :cond_35

    .line 259
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/ipsec/ike/SaProposal;->getEncryptionTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v1

    .line 258
    invoke-static {v0, v1}, Landroid/net/ipsec/ike/ChildSaProposal;->isTransformSelectedFrom([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 261
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSaProposal;->getIntegrityTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/ipsec/ike/SaProposal;->getIntegrityTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    move-result-object v1

    .line 260
    invoke-static {v0, v1}, Landroid/net/ipsec/ike/ChildSaProposal;->isTransformSelectedFrom([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSaProposal;->mEsns:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/ChildSaProposal;

    iget-object v1, v1, Landroid/net/ipsec/ike/ChildSaProposal;->mEsns:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    .line 262
    invoke-static {v0, v1}, Landroid/net/ipsec/ike/ChildSaProposal;->isTransformSelectedFrom([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    .line 257
    :goto_36
    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 159
    invoke-super {p0}, Landroid/net/ipsec/ike/SaProposal;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 160
    .local v0, "result":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroid/net/ipsec/ike/ChildSaProposal;->mEsns:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/net/ipsec/ike/ChildSaProposal$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/ipsec/ike/ChildSaProposal$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 161
    .local v1, "esnPolicies":[I
    const-string v2, "mEsns"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 163
    return-object v0
.end method
