.class public abstract Landroid/net/ipsec/ike/SaProposal$Builder;
.super Ljava/lang/Object;
.source "SaProposal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/SaProposal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Builder"
.end annotation


# static fields
.field protected static final blacklist ERROR_TAG:Ljava/lang/String; = "Invalid SA Proposal: "


# instance fields
.field protected blacklist mHasAead:Z

.field protected final blacklist mProposedDhGroups:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mProposedEncryptAlgos:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mProposedIntegrityAlgos:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mProposedPrfs:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mProposedEncryptAlgos:Ljava/util/LinkedHashSet;

    .line 496
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mProposedPrfs:Ljava/util/LinkedHashSet;

    .line 497
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mProposedIntegrityAlgos:Ljava/util/LinkedHashSet;

    .line 499
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mProposedDhGroups:Ljava/util/LinkedHashSet;

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mHasAead:Z

    return-void
.end method

.method protected static blacklist isAead(I)Z
    .registers 3
    .param p0, "algorithm"    # I

    .line 504
    sparse-switch p0, :sswitch_data_10

    .line 521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported Encryption Algorithm."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :sswitch_b
    const/4 v0, 0x1

    return v0

    .line 510
    :sswitch_d
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x3 -> :sswitch_d
        0xc -> :sswitch_d
        0xd -> :sswitch_d
        0x12 -> :sswitch_b
        0x13 -> :sswitch_b
        0x14 -> :sswitch_b
        0x1c -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method protected blacklist addDh(I)V
    .registers 4
    .param p1, "dhGroup"    # I

    .line 578
    iget-object v0, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mProposedDhGroups:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    invoke-direct {v1, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 579
    return-void
.end method

.method protected blacklist buildEncryptAlgosOrThrow()[Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    .registers 3

    .line 526
    iget-object v0, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mProposedEncryptAlgos:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 531
    iget-object v0, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mProposedEncryptAlgos:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mProposedEncryptAlgos:Ljava/util/LinkedHashSet;

    .line 532
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    .line 531
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    return-object v0

    .line 527
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid SA Proposal: Encryption algorithm must be proposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist validateAndAddEncryptAlgo(IIZ)V
    .registers 8
    .param p1, "algorithm"    # I
    .param p2, "keyLength"    # I
    .param p3, "isChild"    # Z

    .line 539
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;-><init>(II)V

    .line 542
    .local v0, "encryptionTransform":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_35

    if-eqz p3, :cond_35

    .line 544
    invoke-static {}, Landroid/net/ipsec/ike/ChildSaProposal;->getSupportedEncryptionAlgorithms()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_35

    .line 545
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported encryption algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_35
    :goto_35
    invoke-static {p1}, Landroid/net/ipsec/ike/SaProposal$Builder;->isAead(I)Z

    move-result v1

    .line 550
    .local v1, "isCurrentAead":Z
    iget-object v2, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mProposedEncryptAlgos:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mHasAead:Z

    xor-int/2addr v2, v1

    if-nez v2, :cond_47

    goto :goto_4f

    .line 551
    :cond_47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid SA Proposal: Proposal cannot has both normal ciphers and combined-mode ciphers."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 556
    :cond_4f
    :goto_4f
    if-eqz v1, :cond_54

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mHasAead:Z

    .line 558
    :cond_54
    iget-object v2, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mProposedEncryptAlgos:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 559
    return-void
.end method

.method protected blacklist validateAndAddIntegrityAlgo(IZ)V
    .registers 6
    .param p1, "algorithm"    # I
    .param p2, "isChild"    # Z

    .line 564
    invoke-static {}, Lcom/android/internal/net/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_30

    if-eqz p2, :cond_30

    .line 566
    invoke-static {}, Landroid/net/ipsec/ike/ChildSaProposal;->getSupportedIntegrityAlgorithms()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_30

    .line 567
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported integrity algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_30
    :goto_30
    iget-object v0, p0, Landroid/net/ipsec/ike/SaProposal$Builder;->mProposedIntegrityAlgos:Ljava/util/LinkedHashSet;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    invoke-direct {v1, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 573
    return-void
.end method
