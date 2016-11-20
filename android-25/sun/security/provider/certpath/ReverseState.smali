.class Lsun/security/provider/certpath/ReverseState;
.super Ljava/lang/Object;
.source "ReverseState.java"

# interfaces
.implements Lsun/security/provider/certpath/State;


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field algorithmChecker:Lsun/security/provider/certpath/AlgorithmChecker;

.field certIndex:I

.field crlSign:Z

.field explicitPolicy:I

.field inhibitAnyPolicy:I

.field private init:Z

.field nc:Lsun/security/x509/NameConstraintsExtension;

.field policyMapping:I

.field pubKey:Ljava/security/PublicKey;

.field remainingCACerts:I

.field revChecker:Lsun/security/provider/certpath/RevocationChecker;

.field rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

.field subjKeyId:Lsun/security/x509/SubjectKeyIdentifierExtension;

.field subjectDN:Ljavax/security/auth/x500/X500Principal;

.field trustAnchor:Ljava/security/cert/TrustAnchor;

.field untrustedChecker:Lsun/security/provider/certpath/UntrustedChecker;

.field userCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 60
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/ReverseState;->debug:Lsun/security/util/Debug;

    #@9
    .line 58
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 95
    iput-boolean v0, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    #@6
    .line 112
    iput-boolean v0, p0, Lsun/security/provider/certpath/ReverseState;->crlSign:Z

    #@8
    .line 58
    return-void
.end method

.method private updateState(Ljava/security/PublicKey;Ljavax/security/auth/x500/X500Principal;)V
    .locals 0
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .param p2, "subjectDN"    # Ljavax/security/auth/x500/X500Principal;

    #@0
    .prologue
    .line 273
    iput-object p2, p0, Lsun/security/provider/certpath/ReverseState;->subjectDN:Ljavax/security/auth/x500/X500Principal;

    #@2
    .line 276
    iput-object p1, p0, Lsun/security/provider/certpath/ReverseState;->pubKey:Ljava/security/PublicKey;

    #@4
    .line 270
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 377
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Lsun/security/provider/certpath/ReverseState;

    #@6
    .line 381
    .local v1, "clonedState":Lsun/security/provider/certpath/ReverseState;
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@b
    move-result-object v4

    #@c
    check-cast v4, Ljava/util/ArrayList;

    #@e
    .line 380
    iput-object v4, v1, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    #@10
    .line 383
    iget-object v4, v1, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    #@15
    move-result-object v3

    #@16
    .line 384
    .local v3, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 385
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    #@22
    .line 386
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v4, v0, Ljava/lang/Cloneable;

    #@24
    if-eqz v4, :cond_0

    #@26
    .line 387
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    #@2c
    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    goto :goto_0

    #@30
    .line 402
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v1    # "clonedState":Lsun/security/provider/certpath/ReverseState;
    .end local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :catch_0
    move-exception v2

    #@31
    .line 403
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/InternalError;

    #@33
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-direct {v4, v5, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3a
    throw v4

    #@3b
    .line 392
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v1    # "clonedState":Lsun/security/provider/certpath/ReverseState;
    .restart local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@3d
    if-eqz v4, :cond_2

    #@3f
    .line 393
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@41
    invoke-virtual {v4}, Lsun/security/x509/NameConstraintsExtension;->clone()Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    check-cast v4, Lsun/security/x509/NameConstraintsExtension;

    #@47
    iput-object v4, v1, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@49
    .line 397
    :cond_2
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@4b
    if-eqz v4, :cond_3

    #@4d
    .line 398
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@4f
    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    #@52
    move-result-object v4

    #@53
    iput-object v4, v1, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    #@55
    .line 401
    :cond_3
    return-object v1
.end method

.method public initState(Lsun/security/provider/certpath/PKIX$BuilderParams;)V
    .locals 11
    .param p1, "buildParams"    # Lsun/security/provider/certpath/PKIX$BuilderParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v2, -0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 161
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->maxPathLength()I

    #@7
    move-result v9

    #@8
    .line 162
    .local v9, "maxPathLen":I
    if-ne v9, v2, :cond_0

    #@a
    const v0, 0x7fffffff

    #@d
    :goto_0
    iput v0, p0, Lsun/security/provider/certpath/ReverseState;->remainingCACerts:I

    #@f
    .line 166
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 167
    iput v4, p0, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    #@17
    .line 176
    :goto_1
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_3

    #@1d
    .line 177
    iput v4, p0, Lsun/security/provider/certpath/ReverseState;->policyMapping:I

    #@1f
    .line 183
    :goto_2
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anyPolicyInhibited()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_5

    #@25
    .line 184
    iput v4, p0, Lsun/security/provider/certpath/ReverseState;->inhibitAnyPolicy:I

    #@27
    .line 190
    .end local v9    # "maxPathLen":I
    :goto_3
    iput v10, p0, Lsun/security/provider/certpath/ReverseState;->certIndex:I

    #@29
    .line 193
    new-instance v5, Ljava/util/HashSet;

    #@2b
    invoke-direct {v5, v10}, Ljava/util/HashSet;-><init>(I)V

    #@2e
    .line 194
    .local v5, "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "2.5.29.32.0"

    #@31
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@34
    .line 196
    new-instance v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@36
    const-string/jumbo v2, "2.5.29.32.0"

    #@39
    move-object v3, v1

    #@3a
    move v6, v4

    #@3b
    invoke-direct/range {v0 .. v6}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    #@3e
    iput-object v0, p0, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@40
    .line 203
    new-instance v0, Ljava/util/ArrayList;

    #@42
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    #@45
    move-result-object v1

    #@46
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@49
    iput-object v0, p0, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    #@4b
    .line 205
    iget-object v0, p0, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    #@4d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v8

    #@51
    .local v8, "checker$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_7

    #@57
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v7

    #@5b
    check-cast v7, Ljava/security/cert/PKIXCertPathChecker;

    #@5d
    .line 206
    .local v7, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v7, v4}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    #@60
    goto :goto_4

    #@61
    .end local v5    # "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v8    # "checker$iterator":Ljava/util/Iterator;
    .restart local v9    # "maxPathLen":I
    :cond_0
    move v0, v9

    #@62
    .line 163
    goto :goto_0

    #@63
    .line 172
    :cond_1
    if-ne v9, v2, :cond_2

    #@65
    move v0, v9

    #@66
    :goto_5
    iput v0, p0, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    #@68
    goto :goto_1

    #@69
    :cond_2
    add-int/lit8 v0, v9, 0x2

    #@6b
    goto :goto_5

    #@6c
    .line 179
    :cond_3
    if-ne v9, v2, :cond_4

    #@6e
    move v0, v9

    #@6f
    :goto_6
    iput v0, p0, Lsun/security/provider/certpath/ReverseState;->policyMapping:I

    #@71
    goto :goto_2

    #@72
    :cond_4
    add-int/lit8 v0, v9, 0x2

    #@74
    goto :goto_6

    #@75
    .line 186
    :cond_5
    if-ne v9, v2, :cond_6

    #@77
    .end local v9    # "maxPathLen":I
    :goto_7
    iput v9, p0, Lsun/security/provider/certpath/ReverseState;->inhibitAnyPolicy:I

    #@79
    goto :goto_3

    #@7a
    .restart local v9    # "maxPathLen":I
    :cond_6
    add-int/lit8 v9, v9, 0x2

    #@7c
    goto :goto_7

    #@7d
    .line 210
    .end local v9    # "maxPathLen":I
    .restart local v5    # "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "checker$iterator":Ljava/util/Iterator;
    :cond_7
    iput-boolean v10, p0, Lsun/security/provider/certpath/ReverseState;->crlSign:Z

    #@7f
    .line 212
    iput-boolean v10, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    #@81
    .line 154
    return-void
.end method

.method public isInitial()Z
    .locals 1

    #@0
    .prologue
    .line 122
    iget-boolean v0, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    #@2
    return v0
.end method

.method public keyParamsNeeded()Z
    .locals 1

    #@0
    .prologue
    .line 361
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 131
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "State ["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 132
    const-string/jumbo v1, "\n  subjectDN of last cert: "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->subjectDN:Ljavax/security/auth/x500/X500Principal;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    .line 133
    const-string/jumbo v1, "\n  subjectKeyIdentifier: "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 134
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->subjKeyId:Lsun/security/x509/SubjectKeyIdentifierExtension;

    #@20
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 135
    const-string/jumbo v1, "\n  nameConstraints: "

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@30
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 136
    const-string/jumbo v1, "\n  certIndex: "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->certIndex:I

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    .line 137
    const-string/jumbo v1, "\n  explicitPolicy: "

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    .line 138
    const-string/jumbo v1, "\n  policyMapping:  "

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->policyMapping:I

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    .line 139
    const-string/jumbo v1, "\n  inhibitAnyPolicy:  "

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->inhibitAnyPolicy:I

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@67
    .line 140
    const-string/jumbo v1, "\n  rootNode: "

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    .line 141
    const-string/jumbo v1, "\n  remainingCACerts: "

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->remainingCACerts:I

    #@7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    .line 142
    const-string/jumbo v1, "\n  crlSign: "

    #@82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    iget-boolean v2, p0, Lsun/security/provider/certpath/ReverseState;->crlSign:Z

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@8b
    .line 143
    const-string/jumbo v1, "\n  init: "

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    iget-boolean v2, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@97
    .line 144
    const-string/jumbo v1, "\n]\n"

    #@9a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v1

    #@a1
    return-object v1
.end method

.method public updateState(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$BuilderParams;)V
    .locals 7
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "buildParams"    # Lsun/security/provider/certpath/PKIX$BuilderParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 224
    iput-object p1, p0, Lsun/security/provider/certpath/ReverseState;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@3
    .line 225
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    #@6
    move-result-object v4

    #@7
    .line 226
    .local v4, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_1

    #@9
    .line 227
    invoke-virtual {p0, v4}, Lsun/security/provider/certpath/ReverseState;->updateState(Ljava/security/cert/X509Certificate;)V

    #@c
    .line 235
    :goto_0
    const/4 v3, 0x0

    #@d
    .line 236
    .local v3, "revCheckerAdded":Z
    iget-object v5, p0, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    #@f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v2

    #@13
    .local v2, "checker$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_5

    #@19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    #@1f
    .line 237
    .local v1, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v5, v1, Lsun/security/provider/certpath/AlgorithmChecker;

    #@21
    if-eqz v5, :cond_2

    #@23
    .line 238
    nop

    #@24
    nop

    #@25
    .end local v1    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v1, p1}, Lsun/security/provider/certpath/AlgorithmChecker;->trySetTrustAnchor(Ljava/security/cert/TrustAnchor;)V

    #@28
    goto :goto_1

    #@29
    .line 229
    .end local v2    # "checker$iterator":Ljava/util/Iterator;
    .end local v3    # "revCheckerAdded":Z
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    #@2c
    move-result-object v0

    #@2d
    .line 230
    .local v0, "caName":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    #@30
    move-result-object v5

    #@31
    invoke-direct {p0, v5, v0}, Lsun/security/provider/certpath/ReverseState;->updateState(Ljava/security/PublicKey;Ljavax/security/auth/x500/X500Principal;)V

    #@34
    goto :goto_0

    #@35
    .line 239
    .end local v0    # "caName":Ljavax/security/auth/x500/X500Principal;
    .restart local v1    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v2    # "checker$iterator":Ljava/util/Iterator;
    .restart local v3    # "revCheckerAdded":Z
    :cond_2
    instance-of v5, v1, Ljava/security/cert/PKIXRevocationChecker;

    #@37
    if-eqz v5, :cond_0

    #@39
    .line 240
    if-eqz v3, :cond_3

    #@3b
    .line 241
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    #@3d
    .line 242
    const-string/jumbo v6, "Only one PKIXRevocationChecker can be specified"

    #@40
    .line 241
    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@43
    throw v5

    #@44
    .line 245
    :cond_3
    instance-of v5, v1, Lsun/security/provider/certpath/RevocationChecker;

    #@46
    if-eqz v5, :cond_4

    #@48
    move-object v5, v1

    #@49
    .line 246
    nop

    #@4a
    nop

    #@4b
    invoke-virtual {v5, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    #@4e
    .line 248
    :cond_4
    nop

    #@4f
    nop

    #@50
    .end local v1    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v1, v6}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    #@53
    .line 249
    const/4 v3, 0x1

    #@54
    goto :goto_1

    #@55
    .line 255
    :cond_5
    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->revocationEnabled()Z

    #@58
    move-result v5

    #@59
    if-eqz v5, :cond_6

    #@5b
    if-eqz v3, :cond_7

    #@5d
    .line 260
    :cond_6
    :goto_2
    iput-boolean v6, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    #@5f
    .line 222
    return-void

    #@60
    .line 256
    :cond_7
    new-instance v5, Lsun/security/provider/certpath/RevocationChecker;

    #@62
    invoke-direct {v5, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;-><init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    #@65
    iput-object v5, p0, Lsun/security/provider/certpath/ReverseState;->revChecker:Lsun/security/provider/certpath/RevocationChecker;

    #@67
    .line 257
    iget-object v5, p0, Lsun/security/provider/certpath/ReverseState;->revChecker:Lsun/security/provider/certpath/RevocationChecker;

    #@69
    invoke-virtual {v5, v6}, Lsun/security/provider/certpath/RevocationChecker;->init(Z)V

    #@6c
    goto :goto_2
.end method

.method public updateState(Ljava/security/cert/X509Certificate;)V
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 287
    if-nez p1, :cond_0

    #@3
    .line 288
    return-void

    #@4
    .line 292
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@7
    move-result-object v2

    #@8
    iput-object v2, p0, Lsun/security/provider/certpath/ReverseState;->subjectDN:Ljavax/security/auth/x500/X500Principal;

    #@a
    .line 295
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@d
    move-result-object v0

    #@e
    .line 296
    .local v0, "icert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@11
    move-result-object v1

    #@12
    .line 297
    .local v1, "newKey":Ljava/security/PublicKey;
    invoke-static {v1}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 298
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->pubKey:Ljava/security/PublicKey;

    #@1a
    invoke-static {v1, v2}, Lsun/security/provider/certpath/BasicChecker;->makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;

    #@1d
    move-result-object v1

    #@1e
    .line 302
    :cond_1
    iput-object v1, p0, Lsun/security/provider/certpath/ReverseState;->pubKey:Ljava/security/PublicKey;

    #@20
    .line 308
    iget-boolean v2, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 309
    iput-boolean v4, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    #@26
    .line 310
    return-void

    #@27
    .line 314
    :cond_2
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;

    #@2a
    move-result-object v2

    #@2b
    iput-object v2, p0, Lsun/security/provider/certpath/ReverseState;->subjKeyId:Lsun/security/x509/SubjectKeyIdentifierExtension;

    #@2d
    .line 317
    invoke-static {p1}, Lsun/security/provider/certpath/RevocationChecker;->certCanSignCrl(Ljava/security/cert/X509Certificate;)Z

    #@30
    move-result v2

    #@31
    iput-boolean v2, p0, Lsun/security/provider/certpath/ReverseState;->crlSign:Z

    #@33
    .line 320
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@35
    if-eqz v2, :cond_4

    #@37
    .line 321
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@39
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v2, v3}, Lsun/security/x509/NameConstraintsExtension;->merge(Lsun/security/x509/NameConstraintsExtension;)V

    #@40
    .line 334
    :cond_3
    :goto_0
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    #@42
    invoke-static {v2, v0, v4}, Lsun/security/provider/certpath/PolicyChecker;->mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I

    #@45
    move-result v2

    #@46
    .line 333
    iput v2, p0, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    #@48
    .line 336
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->policyMapping:I

    #@4a
    invoke-static {v2, v0}, Lsun/security/provider/certpath/PolicyChecker;->mergePolicyMapping(ILsun/security/x509/X509CertImpl;)I

    #@4d
    move-result v2

    #@4e
    .line 335
    iput v2, p0, Lsun/security/provider/certpath/ReverseState;->policyMapping:I

    #@50
    .line 338
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->inhibitAnyPolicy:I

    #@52
    invoke-static {v2, v0}, Lsun/security/provider/certpath/PolicyChecker;->mergeInhibitAnyPolicy(ILsun/security/x509/X509CertImpl;)I

    #@55
    move-result v2

    #@56
    .line 337
    iput v2, p0, Lsun/security/provider/certpath/ReverseState;->inhibitAnyPolicy:I

    #@58
    .line 339
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->certIndex:I

    #@5a
    add-int/lit8 v2, v2, 0x1

    #@5c
    iput v2, p0, Lsun/security/provider/certpath/ReverseState;->certIndex:I

    #@5e
    .line 345
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->remainingCACerts:I

    #@60
    invoke-static {p1, v2}, Lsun/security/provider/certpath/ConstraintsChecker;->mergeBasicConstraints(Ljava/security/cert/X509Certificate;I)I

    #@63
    move-result v2

    #@64
    .line 344
    iput v2, p0, Lsun/security/provider/certpath/ReverseState;->remainingCACerts:I

    #@66
    .line 347
    iput-boolean v4, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    #@68
    .line 285
    return-void

    #@69
    .line 323
    :cond_4
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    #@6c
    move-result-object v2

    #@6d
    iput-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@6f
    .line 324
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@71
    if-eqz v2, :cond_3

    #@73
    .line 328
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@75
    invoke-virtual {v2}, Lsun/security/x509/NameConstraintsExtension;->clone()Ljava/lang/Object;

    #@78
    move-result-object v2

    #@79
    check-cast v2, Lsun/security/x509/NameConstraintsExtension;

    #@7b
    iput-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    #@7d
    goto :goto_0
.end method
