.class public Ljava/security/cert/PKIXCertPathValidatorResult;
.super Ljava/lang/Object;
.source "PKIXCertPathValidatorResult.java"

# interfaces
.implements Ljava/security/cert/CertPathValidatorResult;


# instance fields
.field private greylist-max-o policyTree:Ljava/security/cert/PolicyNode;

.field private greylist-max-o subjectPublicKey:Ljava/security/PublicKey;

.field private greylist-max-o trustAnchor:Ljava/security/cert/TrustAnchor;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    .registers 6
    .param p1, "trustAnchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "policyTree"    # Ljava/security/cert/PolicyNode;
    .param p3, "subjectPublicKey"    # Ljava/security/PublicKey;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-eqz p3, :cond_16

    .line 81
    if-eqz p1, :cond_e

    .line 83
    iput-object p1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 84
    iput-object p2, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    .line 85
    iput-object p3, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    .line 86
    return-void

    .line 82
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustAnchor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subjectPublicKey must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 136
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 137
    :catch_5
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getPolicyTree()Ljava/security/cert/PolicyNode;
    .registers 2

    .line 116
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 126
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public whitelist test-api getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .registers 2

    .line 95
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PKIXCertPathValidatorResult: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Trust Anchor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Policy Tree: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Subject Public Key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
