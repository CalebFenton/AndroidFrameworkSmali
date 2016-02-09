.class public Ljava/security/cert/PKIXCertPathValidatorResult;
.super Ljava/lang/Object;
.source "PKIXCertPathValidatorResult.java"

# interfaces
.implements Ljava/security/cert/CertPathValidatorResult;


# instance fields
.field private final policyTree:Ljava/security/cert/PolicyNode;

.field private final subjectPublicKey:Ljava/security/PublicKey;

.field private final trustAnchor:Ljava/security/cert/TrustAnchor;


# direct methods
.method public constructor <init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "trustAnchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "policyTree"    # Ljava/security/cert/PolicyNode;
    .param p3, "subjectPublicKey"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@5
    .line 52
    iput-object p2, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    #@7
    .line 53
    iput-object p3, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    #@9
    .line 54
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "trustAnchor == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 57
    :cond_0
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    #@1c
    const-string/jumbo v1, "subjectPublicKey == null"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 97
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 98
    :catch_0
    move-exception v0

    #@6
    .line 99
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v1
.end method

.method public getPolicyTree()Ljava/security/cert/PolicyNode;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    #@2
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    #@2
    return-object v0
.end method

.method public getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 112
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, ": [\n Trust Anchor: "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 113
    iget-object v1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    #@11
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 114
    const-string/jumbo v1, "\n Policy Tree: "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 115
    iget-object v1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    #@20
    if-nez v1, :cond_0

    #@22
    const-string/jumbo v1, "no valid policy tree\n"

    #@25
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 117
    const-string/jumbo v1, "\n Subject Public Key: "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 118
    iget-object v1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    #@30
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 119
    const-string/jumbo v1, "\n]"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    return-object v1

    #@42
    .line 116
    :cond_0
    iget-object v1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    #@44
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    goto :goto_0
.end method
