.class public final Landroid/net/connectivity/android/net/vcn/persistablebundleutils/IkeSaProposalUtils;
.super Landroid/net/connectivity/android/net/vcn/persistablebundleutils/SaProposalUtilsBase;
.source "IkeSaProposalUtils.java"


# static fields
.field private static final blacklist PRF_KEY:Ljava/lang/String; = "PRF_KEY"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/SaProposalUtilsBase;-><init>()V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSaProposal;
    .registers 10
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 55
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    new-instance v0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;-><init>()V

    .line 59
    .local v0, "builder":Landroid/net/ipsec/ike/IkeSaProposal$Builder;
    const-string v1, "ENCRYPT_ALGO_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 60
    .local v1, "encryptionBundle":Landroid/os/PersistableBundle;
    const-string v2, "Encryption algo bundle was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    new-instance v2, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/ChildSaProposalUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/ChildSaProposalUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 62
    invoke-static {v1, v2}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, "encryptList":Ljava/util/List;, "Ljava/util/List<Landroid/net/connectivity/android/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;

    .line 64
    .local v4, "t":Landroid/net/connectivity/android/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;
    iget v5, v4, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->encryptionAlgo:I

    iget v6, v4, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->keyLen:I

    invoke-virtual {v0, v5, v6}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 65
    .end local v4    # "t":Landroid/net/connectivity/android/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;
    goto :goto_22

    .line 67
    :cond_36
    const-string v3, "INTEGRITY_ALGO_KEY"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 68
    .local v3, "integrityAlgoIdArray":[I
    const-string v4, "Integrity algo array was null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_44
    if-ge v6, v4, :cond_4e

    aget v7, v3, v6

    .line 70
    .local v7, "algo":I
    invoke-virtual {v0, v7}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 69
    .end local v7    # "algo":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    .line 73
    :cond_4e
    const-string v4, "DH_GROUP_KEY"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 74
    .local v4, "dhGroupArray":[I
    const-string v6, "DH Group array was null"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    array-length v6, v4

    move v7, v5

    :goto_5b
    if-ge v7, v6, :cond_65

    aget v8, v4, v7

    .line 76
    .local v8, "dh":I
    invoke-virtual {v0, v8}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 75
    .end local v8    # "dh":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_5b

    .line 79
    :cond_65
    const-string v6, "PRF_KEY"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    .line 80
    .local v6, "prfArray":[I
    const-string v7, "PRF array was null"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    array-length v7, v6

    :goto_71
    if-ge v5, v7, :cond_7b

    aget v8, v6, v5

    .line 82
    .local v8, "prf":I
    invoke-virtual {v0, v8}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;

    .line 81
    .end local v8    # "prf":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_71

    .line 85
    :cond_7b
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->build()Landroid/net/ipsec/ike/IkeSaProposal;

    move-result-object v5

    return-object v5
.end method

.method static synthetic blacklist lambda$toPersistableBundle$0(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeSaProposal;)Landroid/os/PersistableBundle;
    .registers 4
    .param p0, "proposal"    # Landroid/net/ipsec/ike/IkeSaProposal;

    .line 43
    invoke-static {p0}, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/SaProposalUtilsBase;->toPersistableBundle(Landroid/net/ipsec/ike/SaProposal;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 45
    .local v0, "result":Landroid/os/PersistableBundle;
    nop

    .line 46
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSaProposal;->getPseudorandomFunctions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/IkeSaProposalUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/IkeSaProposalUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 47
    .local v1, "prfArray":[I
    const-string v2, "PRF_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 49
    return-object v0
.end method
