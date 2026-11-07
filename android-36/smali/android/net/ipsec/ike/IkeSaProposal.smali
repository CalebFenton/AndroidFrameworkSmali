.class public final Landroid/net/ipsec/ike/IkeSaProposal;
.super Landroid/net/ipsec/ike/SaProposal;
.source "IkeSaProposal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/IkeSaProposal$Builder;
    }
.end annotation


# static fields
.field private static final blacklist PRF_KEY:Ljava/lang/String; = "mPseudorandomFunctions"


# instance fields
.field private final blacklist mPseudorandomFunctions:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;


# direct methods
.method public constructor blacklist <init>([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;)V
    .registers 6
    .param p1, "encryptionAlgos"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    .param p2, "prfs"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;
    .param p3, "integrityAlgos"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    .param p4, "dhGroups"    # [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p3, p4}, Landroid/net/ipsec/ike/SaProposal;-><init>(I[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;)V

    .line 74
    iput-object p2, p0, Landroid/net/ipsec/ike/IkeSaProposal;->mPseudorandomFunctions:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    .line 75
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSaProposal;
    .registers 10
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 86
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    new-instance v0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;-><init>()V

    .line 90
    .local v0, "builder":Landroid/net/ipsec/ike/IkeSaProposal$Builder;
    const-string v1, "mEncryptionAlgorithms"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 91
    .local v1, "encryptionBundle":Landroid/os/PersistableBundle;
    const-string v2, "Encryption algo bundle is null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    new-instance v2, Landroid/net/ipsec/ike/ChildSaProposal$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/ipsec/ike/ChildSaProposal$$ExternalSyntheticLambda0;-><init>()V

    .line 93
    invoke-static {v1, v2}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    .line 95
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

    .line 96
    .local v4, "t":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    iget v5, v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 97
    .end local v4    # "t":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    goto :goto_22

    .line 99
    :cond_38
    const-string v3, "mIntegrityAlgorithms"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 100
    .local v3, "integrityAlgoIdArray":[I
    const-string v4, "Integrity algo array is null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_46
    if-ge v6, v4, :cond_50

    aget v7, v3, v6

    .line 102
    .local v7, "algo":I
    invoke-virtual {v0, v7}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 101
    .end local v7    # "algo":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 105
    :cond_50
    const-string v4, "mDhGroups"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 106
    .local v4, "dhGroupArray":[I
    const-string v6, "DH Group array is null"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    array-length v6, v4

    move v7, v5

    :goto_5d
    if-ge v7, v6, :cond_67

    aget v8, v4, v7

    .line 108
    .local v8, "dh":I
    invoke-virtual {v0, v8}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 107
    .end local v8    # "dh":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 111
    :cond_67
    const-string v6, "mPseudorandomFunctions"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    .line 112
    .local v6, "prfArray":[I
    const-string v7, "PRF array is null"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    array-length v7, v6

    :goto_73
    if-ge v5, v7, :cond_7d

    aget v8, v6, v5

    .line 114
    .local v8, "prf":I
    invoke-virtual {v0, v8}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 113
    .end local v8    # "prf":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    .line 117
    :cond_7d
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->build()Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v5

    return-object v5
.end method

.method public static whitelist getSupportedEncryptionAlgorithms()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 139
    sget-object v0, Landroid/net/ipsec/ike/IkeSaProposal;->SUPPORTED_ENCRYPTION_ALGO_TO_STR:Landroid/util/SparseArray;

    invoke-static {v0}, Landroid/net/ipsec/ike/IkeSaProposal;->getKeySet(Landroid/util/SparseArray;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getSupportedIntegrityAlgorithms()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 146
    .local v0, "supportedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/net/ipsec/ike/IkeSaProposal;->SUPPORTED_INTEGRITY_ALGO_TO_STR:Landroid/util/SparseArray;

    invoke-static {v1}, Landroid/net/ipsec/ike/IkeSaProposal;->getKeySet(Landroid/util/SparseArray;)Ljava/util/Set;

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

    .line 147
    .local v2, "algo":I
    const/16 v3, 0x8

    if-ne v2, v3, :cond_2a

    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 148
    goto :goto_f

    .line 150
    :cond_2a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v2    # "algo":I
    goto :goto_f

    .line 154
    :cond_32
    return-object v0
.end method

.method public static whitelist getSupportedPseudorandomFunctions()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v0, "supportedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/net/ipsec/ike/IkeSaProposal;->SUPPORTED_PRF_TO_STR:Landroid/util/SparseArray;

    invoke-static {v1}, Landroid/net/ipsec/ike/IkeSaProposal;->getKeySet(Landroid/util/SparseArray;)Ljava/util/Set;

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

    .line 162
    .local v2, "algo":I
    const/16 v3, 0x8

    if-ne v2, v3, :cond_2a

    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 163
    goto :goto_f

    .line 165
    :cond_2a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v2    # "algo":I
    goto :goto_f

    .line 169
    :cond_32
    return-object v0
.end method

.method static synthetic blacklist lambda$toPersistableBundle$0(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 130
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 220
    invoke-super {p0, p1}, Landroid/net/ipsec/ike/SaProposal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    instance-of v0, p1, Landroid/net/ipsec/ike/IkeSaProposal;

    if-nez v0, :cond_b

    goto :goto_17

    .line 224
    :cond_b
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSaProposal;->mPseudorandomFunctions:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/IkeSaProposal;

    iget-object v1, v1, Landroid/net/ipsec/ike/IkeSaProposal;->mPseudorandomFunctions:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 221
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    .registers 3

    .line 198
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSaProposal;->getAllTransformsAsList()Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, "transformList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;>;"
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSaProposal;->mPseudorandomFunctions:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;

    return-object v1
.end method

.method public blacklist getPrfTransforms()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;
    .registers 2

    .line 192
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSaProposal;->mPseudorandomFunctions:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    return-object v0
.end method

.method public whitelist getPseudorandomFunctions()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSaProposal;->mPseudorandomFunctions:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 181
    .local v4, "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    iget v5, v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v4    # "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 183
    :cond_19
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 215
    invoke-super {p0}, Landroid/net/ipsec/ike/SaProposal;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSaProposal;->mPseudorandomFunctions:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

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

    .line 207
    invoke-super {p0, p1}, Landroid/net/ipsec/ike/SaProposal;->isNegotiatedFrom(Landroid/net/ipsec/ike/SaProposal;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSaProposal;->mPseudorandomFunctions:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/IkeSaProposal;

    iget-object v1, v1, Landroid/net/ipsec/ike/IkeSaProposal;->mPseudorandomFunctions:[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    .line 208
    invoke-static {v0, v1}, Landroid/net/ipsec/ike/IkeSaProposal;->isTransformSelectedFrom([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 207
    :goto_16
    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 128
    invoke-super {p0}, Landroid/net/ipsec/ike/SaProposal;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 130
    .local v0, "result":Landroid/os/PersistableBundle;
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSaProposal;->getPseudorandomFunctions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/net/ipsec/ike/IkeSaProposal$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/ipsec/ike/IkeSaProposal$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 131
    .local v1, "prfArray":[I
    const-string v2, "mPseudorandomFunctions"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 133
    return-object v0
.end method
