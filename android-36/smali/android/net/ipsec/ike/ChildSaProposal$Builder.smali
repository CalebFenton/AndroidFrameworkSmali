.class public final Landroid/net/ipsec/ike/ChildSaProposal$Builder;
.super Landroid/net/ipsec/ike/SaProposal$Builder;
.source "ChildSaProposal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/ChildSaProposal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 292
    invoke-direct {p0}, Landroid/net/ipsec/ike/SaProposal$Builder;-><init>()V

    return-void
.end method

.method private blacklist buildIntegAlgosOrThrow()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    .registers 4

    .line 352
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->mProposedIntegrityAlgos:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    .line 353
    .local v1, "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    iget v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;->id:I

    if-eqz v2, :cond_23

    iget-boolean v2, p0, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->mHasAead:Z

    if-nez v2, :cond_1b

    goto :goto_23

    .line 354
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid SA Proposal: Only INTEGRITY_ALGORITHM_NONE can be proposed with combined-mode ciphers in any proposal."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    .end local v1    # "transform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    :cond_23
    :goto_23
    goto :goto_6

    .line 361
    :cond_24
    iget-object v0, p0, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->mProposedIntegrityAlgos:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->mProposedIntegrityAlgos:Ljava/util/LinkedHashSet;

    .line 362
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    .line 361
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    return-object v0
.end method


# virtual methods
.method public whitelist addDhGroup(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;
    .registers 2
    .param p1, "dhGroup"    # I

    .line 344
    invoke-virtual {p0, p1}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addDh(I)V

    .line 345
    return-object p0
.end method

.method public whitelist addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;
    .registers 4
    .param p1, "algorithm"    # I
    .param p2, "keyLength"    # I

    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->validateAndAddEncryptAlgo(IIZ)V

    .line 307
    return-object p0
.end method

.method public whitelist addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;
    .registers 3
    .param p1, "algorithm"    # I

    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->validateAndAddIntegrityAlgo(IZ)V

    .line 322
    return-object p0
.end method

.method public whitelist build()Landroid/net/ipsec/ike/ChildSaProposal;
    .registers 8

    .line 372
    invoke-virtual {p0}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->buildEncryptAlgosOrThrow()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    move-result-object v0

    .line 373
    .local v0, "encryptionTransforms":[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    invoke-direct {p0}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->buildIntegAlgosOrThrow()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    move-result-object v1

    .line 375
    .local v1, "integrityTransforms":[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;
    new-instance v2, Landroid/net/ipsec/ike/ChildSaProposal;

    iget-object v3, p0, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->mProposedDhGroups:Ljava/util/LinkedHashSet;

    iget-object v4, p0, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->mProposedDhGroups:Ljava/util/LinkedHashSet;

    .line 378
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    new-instance v5, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    invoke-direct {v5}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/net/ipsec/ike/ChildSaProposal;-><init>([Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;)V

    .line 375
    return-object v2
.end method
