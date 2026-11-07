.class public final Landroid/net/ipsec/ike/IkeSaProposal$Builder;
.super Landroid/net/ipsec/ike/SaProposal$Builder;
.source "IkeSaProposal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/IkeSaProposal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mProposedPrfs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 231
    invoke-direct {p0}, Landroid/net/ipsec/ike/SaProposal$Builder;-><init>()V

    .line 235
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mProposedPrfs:Ljava/util/Set;

    return-void
.end method

.method private blacklist buildDhGroupsOrThrow()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
    .registers 4

    .line 323
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mProposedDhGroups:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 328
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mProposedDhGroups:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    .line 329
    .local v1, "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
    iget v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;->id:I

    if-eqz v2, :cond_1f

    .line 333
    .end local v1    # "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
    goto :goto_e

    .line 330
    .restart local v1    # "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid SA Proposal: None-value DH group invalid in IKE SA proposal"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    .end local v1    # "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
    :cond_27
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mProposedDhGroups:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mProposedDhGroups:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    return-object v0

    .line 324
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SA Proposal: DH group must be proposed in IKE SA proposal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist buildIntegAlgosOrThrow()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    .registers 5

    .line 302
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mProposedIntegrityAlgos:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mHasAead:Z

    if-eqz v0, :cond_d

    goto :goto_15

    .line 303
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SA Proposal: Integrity algorithm must be proposed with normal ciphers in IKE proposal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_15
    :goto_15
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mProposedIntegrityAlgos:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    .line 310
    .local v1, "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    iget v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;->id:I

    if-nez v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    iget-boolean v3, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mHasAead:Z

    if-ne v2, v3, :cond_33

    .line 316
    .end local v1    # "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    goto :goto_1b

    .line 311
    .restart local v1    # "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid SA Proposal: Invalid integrity algorithm configuration for this SA Proposal"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    .end local v1    # "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    :cond_3b
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mProposedIntegrityAlgos:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mProposedIntegrityAlgos:Ljava/util/LinkedHashSet;

    .line 319
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    .line 318
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    return-object v0
.end method

.method private blacklist buildPrfsOrThrow()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;
    .registers 3

    .line 339
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mProposedPrfs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 343
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mProposedPrfs:Ljava/util/Set;

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mProposedPrfs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    return-object v0

    .line 340
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SA Proposal: PRF must be proposed in IKE SA proposal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addDhGroup(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;
    .registers 2
    .param p1, "dhGroup"    # I

    .line 280
    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->addDh(I)V

    .line 281
    return-object p0
.end method

.method public whitelist addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/IkeSaProposal$Builder;
    .registers 4
    .param p1, "algorithm"    # I
    .param p2, "keyLength"    # I

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->validateAndAddEncryptAlgo(IIZ)V

    .line 251
    return-object p0
.end method

.method public whitelist addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;
    .registers 3
    .param p1, "algorithm"    # I

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->validateAndAddIntegrityAlgo(IZ)V

    .line 266
    return-object p0
.end method

.method public whitelist addPseudorandomFunction(I)Landroid/net/ipsec/ike/IkeSaProposal$Builder;
    .registers 4
    .param p1, "algorithm"    # I

    .line 293
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->mProposedPrfs:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    invoke-direct {v1, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    return-object p0
.end method

.method public whitelist build()Landroid/net/ipsec/ike/IkeSaProposal;
    .registers 6

    .line 353
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->buildEncryptAlgosOrThrow()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v0

    .line 354
    .local v0, "encryptionTransforms":[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    invoke-direct {p0}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->buildPrfsOrThrow()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    move-result-object v1

    .line 355
    .local v1, "prfTransforms":[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;
    invoke-direct {p0}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->buildIntegAlgosOrThrow()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    move-result-object v2

    .line 356
    .local v2, "integrityTransforms":[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    invoke-direct {p0}, Landroid/net/ipsec/ike/IkeSaProposal$Builder;->buildDhGroupsOrThrow()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    move-result-object v3

    .line 358
    .local v3, "dhGroupTransforms":[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;
    new-instance v4, Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/net/ipsec/ike/IkeSaProposal;-><init>([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;)V

    return-object v4
.end method
