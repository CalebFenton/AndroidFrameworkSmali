.class final Lsun/security/provider/certpath/PolicyNodeImpl;
.super Ljava/lang/Object;
.source "PolicyNodeImpl.java"

# interfaces
.implements Ljava/security/cert/PolicyNode;


# static fields
.field private static final blacklist ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"


# instance fields
.field private blacklist isImmutable:Z

.field private blacklist mChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCriticalityIndicator:Z

.field private blacklist mDepth:I

.field private blacklist mExpectedPolicySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOriginalExpectedPolicySet:Z

.field private blacklist mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

.field private blacklist mQualifierSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mValidPolicy:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V
    .registers 9
    .param p1, "parent"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p2, "validPolicy"    # Ljava/lang/String;
    .param p4, "criticalityIndicator"    # Z
    .param p6, "generatedByPolicyMapping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 92
    .local p3, "qualifierSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .local p5, "expectedPolicySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    .line 93
    iput-object p1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 94
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    .line 96
    if-eqz p2, :cond_14

    .line 97
    iput-object p2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    goto :goto_18

    .line 99
    :cond_14
    const-string v1, ""

    iput-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    .line 101
    :goto_18
    if-eqz p3, :cond_22

    .line 102
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    goto :goto_29

    .line 104
    :cond_22
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    .line 106
    :goto_29
    iput-boolean p4, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mCriticalityIndicator:Z

    .line 108
    if-eqz p5, :cond_35

    .line 109
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    goto :goto_3c

    .line 111
    :cond_35
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    .line 113
    :goto_3c
    xor-int/lit8 v1, p6, 0x1

    iput-boolean v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mOriginalExpectedPolicySet:Z

    .line 116
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    if-eqz v1, :cond_54

    .line 117
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    .line 118
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-direct {v0, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->addChild(Lsun/security/provider/certpath/PolicyNodeImpl;)V

    goto :goto_56

    .line 120
    :cond_54
    iput v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    .line 122
    :goto_56
    return-void
.end method

.method constructor blacklist <init>(Lsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/provider/certpath/PolicyNodeImpl;)V
    .registers 10
    .param p1, "parent"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p2, "node"    # Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 133
    iget-object v2, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    iget-object v3, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    iget-boolean v4, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mCriticalityIndicator:Z

    iget-object v5, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "parent":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v1, "parent":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-direct/range {v0 .. v6}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .line 135
    return-void
.end method

.method private blacklist addChild(Lsun/security/provider/certpath/PolicyNodeImpl;)V
    .registers 4
    .param p1, "child"    # Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 215
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-nez v0, :cond_a

    .line 218
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 219
    return-void

    .line 216
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolicyNode is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist copyTree(Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .registers 5
    .param p1, "parent"    # Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 287
    new-instance v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-direct {v0, p1, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/provider/certpath/PolicyNodeImpl;)V

    .line 289
    .local v0, "newNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 290
    .local v2, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-direct {v2, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree(Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 291
    .end local v2    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_b

    .line 293
    :cond_1b
    return-object v0
.end method

.method private blacklist getPolicyNodes(ILjava/util/Set;)V
    .registers 5
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;)V"
        }
    .end annotation

    .line 314
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    iget v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    if-ne v0, p1, :cond_8

    .line 315
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 317
    :cond_8
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 318
    .local v1, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-direct {v1, p1, p2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(ILjava/util/Set;)V

    .line 319
    .end local v1    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_e

    .line 321
    :cond_1e
    :goto_1e
    return-void
.end method

.method private blacklist getPolicyNodesExpectedHelper(ILjava/lang/String;Z)Ljava/util/Set;
    .registers 8
    .param p1, "depth"    # I
    .param p2, "expectedOID"    # Ljava/lang/String;
    .param p3, "matchAny"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 349
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    iget v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    if-ge v1, p1, :cond_24

    .line 350
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 351
    .local v2, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-direct {v2, p1, p2, p3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesExpectedHelper(ILjava/lang/String;Z)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 354
    .end local v2    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_f

    :cond_23
    goto :goto_3f

    .line 356
    :cond_24
    if-eqz p3, :cond_34

    .line 357
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    const-string v2, "2.5.29.32.0"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 358
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 360
    :cond_34
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 361
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_3f
    :goto_3f
    return-object v0
.end method

.method private static blacklist policyToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Ljava/lang/String;

    .line 392
    const-string v0, "2.5.29.32.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 393
    const-string v0, "anyPolicy"

    return-object v0

    .line 395
    :cond_b
    return-object p0
.end method


# virtual methods
.method blacklist addExpectedPolicy(Ljava/lang/String;)V
    .registers 4
    .param p1, "expectedPolicy"    # Ljava/lang/String;

    .line 230
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-nez v0, :cond_16

    .line 233
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mOriginalExpectedPolicySet:Z

    if-eqz v0, :cond_10

    .line 234
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mOriginalExpectedPolicySet:Z

    .line 237
    :cond_10
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 238
    return-void

    .line 231
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolicyNode is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist asString()Ljava/lang/String;
    .registers 5

    .line 403
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    if-nez v0, :cond_7

    .line 404
    const-string v0, "anyPolicy  ROOT\n"

    return-object v0

    .line 406
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getDepth()I

    move-result v2

    .local v2, "n":I
    :goto_11
    if-ge v1, v2, :cond_1b

    .line 408
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 410
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1b
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->policyToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string v1, "  CRIT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->isCritical()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 413
    const-string v1, "  EP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 415
    .local v2, "policy":Ljava/lang/String;
    invoke-static {v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->policyToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .end local v2    # "policy":Ljava/lang/String;
    goto :goto_3f

    .line 418
    :cond_58
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getDepth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;
    .registers 2

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree(Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v0

    return-object v0
.end method

.method blacklist deleteChild(Ljava/security/cert/PolicyNode;)V
    .registers 4
    .param p1, "childNode"    # Ljava/security/cert/PolicyNode;

    .line 270
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-nez v0, :cond_a

    .line 273
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 274
    return-void

    .line 271
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolicyNode is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getChildren()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDepth()I
    .registers 2

    .line 149
    iget v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    return v0
.end method

.method public whitelist test-api getExpectedPolicies()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getParent()Ljava/security/cert/PolicyNode;
    .registers 2

    .line 139
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    return-object v0
.end method

.method blacklist getPolicyNodes(I)Ljava/util/Set;
    .registers 3
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 304
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-direct {p0, p1, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(ILjava/util/Set;)V

    .line 305
    return-object v0
.end method

.method blacklist getPolicyNodesExpected(ILjava/lang/String;Z)Ljava/util/Set;
    .registers 5
    .param p1, "depth"    # I
    .param p2, "expectedOID"    # Ljava/lang/String;
    .param p3, "matchAny"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    .line 337
    const-string v0, "2.5.29.32.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 338
    invoke-virtual {p0, p1}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(I)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 340
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesExpectedHelper(ILjava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method blacklist getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;
    .registers 7
    .param p1, "depth"    # I
    .param p2, "validOID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 379
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    iget v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    if-ge v1, p1, :cond_24

    .line 380
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 381
    .local v2, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v2, p1, p2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 382
    .end local v2    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_f

    :cond_23
    goto :goto_2f

    .line 384
    :cond_24
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 385
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_2f
    :goto_2f
    return-object v0
.end method

.method public whitelist test-api getPolicyQualifiers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValidPolicy()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api isCritical()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mCriticalityIndicator:Z

    return v0
.end method

.method blacklist isImmutable()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    return v0
.end method

.method blacklist prune(I)V
    .registers 5
    .param p1, "depth"    # I

    .line 246
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-nez v0, :cond_35

    .line 250
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 251
    return-void

    .line 253
    :cond_d
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 254
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 256
    .local v1, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v1, p1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 259
    iget-object v2, v1, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_33

    iget v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    add-int/lit8 v2, v2, 0x1

    if-le p1, v2, :cond_33

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 261
    .end local v1    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_33
    goto :goto_13

    .line 262
    :cond_34
    return-void

    .line 247
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolicyNode is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setImmutable()V
    .registers 3

    .line 200
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-eqz v0, :cond_5

    .line 201
    return-void

    .line 202
    :cond_5
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 203
    .local v1, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->setImmutable()V

    .line 204
    .end local v1    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_b

    .line 205
    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    .line 206
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 184
    .local v2, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .end local v2    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_f

    .line 186
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
