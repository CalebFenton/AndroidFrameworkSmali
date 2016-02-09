.class public Ljava/security/cert/PKIXCertPathBuilderResult;
.super Ljava/security/cert/PKIXCertPathValidatorResult;
.source "PKIXCertPathBuilderResult.java"

# interfaces
.implements Ljava/security/cert/CertPathBuilderResult;


# instance fields
.field private final certPath:Ljava/security/cert/CertPath;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "trustAnchor"    # Ljava/security/cert/TrustAnchor;
    .param p3, "policyTree"    # Ljava/security/cert/PolicyNode;
    .param p4, "subjectPublicKey"    # Ljava/security/PublicKey;

    #@0
    .prologue
    .line 51
    invoke-direct {p0, p2, p3, p4}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    #@3
    .line 52
    if-nez p1, :cond_0

    #@5
    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "certPath == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 55
    :cond_0
    iput-object p1, p0, Ljava/security/cert/PKIXCertPathBuilderResult;->certPath:Ljava/security/cert/CertPath;

    #@10
    .line 50
    return-void
.end method


# virtual methods
.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathBuilderResult;->certPath:Ljava/security/cert/CertPath;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-super {p0}, Ljava/security/cert/PKIXCertPathValidatorResult;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 76
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\n Certification Path: "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 77
    iget-object v1, p0, Ljava/security/cert/PKIXCertPathBuilderResult;->certPath:Ljava/security/cert/CertPath;

    #@11
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 78
    const-string/jumbo v1, "\n]"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    return-object v1
.end method
