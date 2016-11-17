.class final Lsun/security/provider/certpath/PolicyNodeImpl;
.super Ljava/lang/Object;
.source "PolicyNodeImpl.java"

# interfaces
.implements Ljava/security/cert/PolicyNode;


# static fields
.field private static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"


# instance fields
.field private isImmutable:Z

.field private mChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCriticalityIndicator:Z

.field private mDepth:I

.field private mExpectedPolicySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalExpectedPolicySet:Z

.field private mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

.field private mQualifierSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mValidPolicy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V
    .locals 2
    .param p1, "parent"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p2, "validPolicy"    # Ljava/lang/String;
    .param p4, "criticalityIndicator"    # Z
    .param p6, "generatedByPolicyMapping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "qualifierSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .local p5, "expectedPolicySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@1
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 69
    iput-boolean v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    #@6
    .line 93
    iput-object p1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@8
    .line 94
    new-instance v0, Ljava/util/HashSet;

    #@a
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@d
    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    #@f
    .line 96
    if-eqz p2, :cond_0

    #@11
    .line 97
    iput-object p2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    #@13
    .line 101
    :goto_0
    if-eqz p3, :cond_1

    #@15
    .line 102
    new-instance v0, Ljava/util/HashSet;

    #@17
    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@1a
    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    #@1c
    .line 106
    :goto_1
    iput-boolean p4, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mCriticalityIndicator:Z

    #@1e
    .line 108
    if-eqz p5, :cond_2

    #@20
    .line 109
    new-instance v0, Ljava/util/HashSet;

    #@22
    invoke-direct {v0, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@25
    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    #@27
    .line 113
    :goto_2
    if-eqz p6, :cond_3

    #@29
    move v0, v1

    #@2a
    :goto_3
    iput-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mOriginalExpectedPolicySet:Z

    #@2c
    .line 116
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@2e
    if-eqz v0, :cond_4

    #@30
    .line 117
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@32
    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getDepth()I

    #@35
    move-result v0

    #@36
    add-int/lit8 v0, v0, 0x1

    #@38
    iput v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    #@3a
    .line 118
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@3c
    invoke-direct {v0, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->addChild(Lsun/security/provider/certpath/PolicyNodeImpl;)V

    #@3f
    .line 92
    :goto_4
    return-void

    #@40
    .line 99
    :cond_0
    const-string/jumbo v0, ""

    #@43
    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    #@45
    goto :goto_0

    #@46
    .line 104
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    #@48
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@4b
    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    #@4d
    goto :goto_1

    #@4e
    .line 111
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    #@50
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@53
    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    #@55
    goto :goto_2

    #@56
    .line 113
    :cond_3
    const/4 v0, 0x1

    #@57
    goto :goto_3

    #@58
    .line 120
    :cond_4
    iput v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    #@5a
    goto :goto_4
.end method

.method constructor <init>(Lsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/provider/certpath/PolicyNodeImpl;)V
    .locals 7
    .param p1, "parent"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p2, "node"    # Lsun/security/provider/certpath/PolicyNodeImpl;

    #@0
    .prologue
    .line 133
    iget-object v2, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    #@2
    iget-object v3, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    #@4
    .line 134
    iget-boolean v4, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mCriticalityIndicator:Z

    #@6
    iget-object v5, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    #@8
    const/4 v6, 0x0

    #@9
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    .line 133
    invoke-direct/range {v0 .. v6}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    #@e
    .line 132
    return-void
.end method

.method private addChild(Lsun/security/provider/certpath/PolicyNodeImpl;)V
    .locals 2
    .param p1, "child"    # Lsun/security/provider/certpath/PolicyNodeImpl;

    #@0
    .prologue
    .line 215
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "PolicyNode is immutable"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 218
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@12
    .line 214
    return-void
.end method

.method private copyTree(Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 4
    .param p1, "parent"    # Lsun/security/provider/certpath/PolicyNodeImpl;

    #@0
    .prologue
    .line 287
    new-instance v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@2
    invoke-direct {v0, p1, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/provider/certpath/PolicyNodeImpl;)V

    #@5
    .line 289
    .local v0, "newNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@17
    .line 290
    .local v1, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-direct {v1, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree(Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;

    #@1a
    goto :goto_0

    #@1b
    .line 293
    .end local v1    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_0
    return-object v0
.end method

.method private getPolicyNodes(ILjava/util/Set;)V
    .locals 3
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 314
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    iget v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    #@2
    if-ne v2, p1, :cond_1

    #@4
    .line 315
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@7
    .line 312
    :cond_0
    return-void

    #@8
    .line 317
    :cond_1
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@1a
    .line 318
    .local v0, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-direct {v0, p1, p2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(ILjava/util/Set;)V

    #@1d
    goto :goto_0
.end method

.method private getPolicyNodesExpectedHelper(ILjava/lang/String;Z)Ljava/util/Set;
    .locals 5
    .param p1, "depth"    # I
    .param p2, "expectedOID"    # Ljava/lang/String;
    .param p3, "matchAny"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 347
    new-instance v2, Ljava/util/HashSet;

    #@2
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 349
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    iget v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    #@7
    if-ge v3, p1, :cond_0

    #@9
    .line 350
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@1b
    .line 351
    .local v0, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-direct {v0, p1, p2, p3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesExpectedHelper(ILjava/lang/String;Z)Ljava/util/Set;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@22
    goto :goto_0

    #@23
    .line 356
    .end local v0    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v1    # "node$iterator":Ljava/util/Iterator;
    :cond_0
    if-eqz p3, :cond_2

    #@25
    .line 357
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    #@27
    const-string/jumbo v4, "2.5.29.32.0"

    #@2a
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_1

    #@30
    .line 358
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@33
    .line 365
    :cond_1
    :goto_1
    return-object v2

    #@34
    .line 360
    :cond_2
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    #@36
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_1

    #@3c
    .line 361
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3f
    goto :goto_1
.end method

.method private static policyToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 392
    const-string/jumbo v0, "2.5.29.32.0"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 393
    const-string/jumbo v0, "anyPolicy"

    #@c
    return-object v0

    #@d
    .line 395
    :cond_0
    return-object p0
.end method


# virtual methods
.method addExpectedPolicy(Ljava/lang/String;)V
    .locals 2
    .param p1, "expectedPolicy"    # Ljava/lang/String;

    #@0
    .prologue
    .line 230
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "PolicyNode is immutable"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 233
    :cond_0
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mOriginalExpectedPolicySet:Z

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 234
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    #@13
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    #@16
    .line 235
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mOriginalExpectedPolicySet:Z

    #@19
    .line 237
    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    #@1b
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1e
    .line 229
    return-void
.end method

.method asString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 403
    iget-object v5, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@2
    if-nez v5, :cond_0

    #@4
    .line 404
    const-string/jumbo v5, "anyPolicy  ROOT\n"

    #@7
    return-object v5

    #@8
    .line 406
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    .line 407
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getDepth()I

    #@11
    move-result v1

    #@12
    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@14
    .line 408
    const-string/jumbo v5, "  "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 407
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 410
    :cond_1
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-static {v5}, Lsun/security/provider/certpath/PolicyNodeImpl;->policyToString(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 411
    const-string/jumbo v5, "  CRIT: "

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 412
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->isCritical()Z

    #@31
    move-result v5

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@35
    .line 413
    const-string/jumbo v5, "  EP: "

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 414
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getExpectedPolicies()Ljava/util/Set;

    #@3e
    move-result-object v5

    #@3f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v3

    #@43
    .local v3, "policy$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v5

    #@47
    if-eqz v5, :cond_2

    #@49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v2

    #@4d
    check-cast v2, Ljava/lang/String;

    #@4f
    .line 415
    .local v2, "policy":Ljava/lang/String;
    invoke-static {v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->policyToString(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 416
    const-string/jumbo v5, " "

    #@59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    goto :goto_1

    #@5d
    .line 418
    .end local v2    # "policy":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, " ("

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 419
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getDepth()I

    #@66
    move-result v5

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    .line 420
    const-string/jumbo v5, ")\n"

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 421
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v5

    #@74
    return-object v5
.end method

.method copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 1

    #@0
    .prologue
    .line 283
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree(Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method deleteChild(Ljava/security/cert/PolicyNode;)V
    .locals 2
    .param p1, "childNode"    # Ljava/security/cert/PolicyNode;

    #@0
    .prologue
    .line 270
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "PolicyNode is immutable"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 273
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    #@f
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@12
    .line 269
    return-void
.end method

.method public getChildren()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDepth()I
    .locals 1

    #@0
    .prologue
    .line 149
    iget v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    #@2
    return v0
.end method

.method public getExpectedPolicies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getParent()Ljava/security/cert/PolicyNode;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@2
    return-object v0
.end method

.method getPolicyNodes(I)Ljava/util/Set;
    .locals 1
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 303
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 304
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-direct {p0, p1, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(ILjava/util/Set;)V

    #@8
    .line 305
    return-object v0
.end method

.method getPolicyNodesExpected(ILjava/lang/String;Z)Ljava/util/Set;
    .locals 1
    .param p1, "depth"    # I
    .param p2, "expectedOID"    # Ljava/lang/String;
    .param p3, "matchAny"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 337
    const-string/jumbo v0, "2.5.29.32.0"

    #@3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 338
    invoke-virtual {p0, p1}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(I)Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 340
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesExpectedHelper(ILjava/lang/String;Z)Ljava/util/Set;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p1, "depth"    # I
    .param p2, "validOID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 377
    new-instance v2, Ljava/util/HashSet;

    #@2
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 379
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    iget v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    #@7
    if-ge v3, p1, :cond_0

    #@9
    .line 380
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@1b
    .line 381
    .local v0, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v0, p1, p2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@22
    goto :goto_0

    #@23
    .line 384
    .end local v0    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v1    # "node$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    #@25
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 385
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2e
    .line 388
    :cond_1
    return-object v2
.end method

.method public getPolicyQualifiers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValidPolicy()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isCritical()Z
    .locals 1

    #@0
    .prologue
    .line 169
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mCriticalityIndicator:Z

    #@2
    return v0
.end method

.method isImmutable()Z
    .locals 1

    #@0
    .prologue
    .line 192
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    #@2
    return v0
.end method

.method prune(I)V
    .locals 4
    .param p1, "depth"    # I

    #@0
    .prologue
    .line 246
    iget-boolean v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 247
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v3, "PolicyNode is immutable"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 250
    :cond_0
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    #@f
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 251
    return-void

    #@16
    .line 253
    :cond_1
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    #@18
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v0

    #@1c
    .line 254
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_3

    #@22
    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@28
    .line 256
    .local v1, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v1, p1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    #@2b
    .line 259
    iget-object v2, v1, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    #@2d
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    #@30
    move-result v2

    #@31
    if-nez v2, :cond_2

    #@33
    iget v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    #@35
    add-int/lit8 v2, v2, 0x1

    #@37
    if-le p1, v2, :cond_2

    #@39
    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@3c
    goto :goto_0

    #@3d
    .line 245
    .end local v1    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_3
    return-void
.end method

.method setImmutable()V
    .locals 3

    #@0
    .prologue
    .line 200
    iget-boolean v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 201
    return-void

    #@5
    .line 202
    :cond_0
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@17
    .line 203
    .local v0, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->setImmutable()V

    #@1a
    goto :goto_0

    #@1b
    .line 205
    .end local v0    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_1
    const/4 v2, 0x1

    #@1c
    iput-boolean v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    #@1e
    .line 199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->asString()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 183
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .local v2, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@1b
    .line 184
    .local v1, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    goto :goto_0

    #@1f
    .line 186
    .end local v1    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    return-object v3
.end method
