.class Lsun/security/provider/certpath/PolicyChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "PolicyChecker.java"


# static fields
.field static final blacklist ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private final blacklist anyPolicyInhibited:Z

.field private blacklist certIndex:I

.field private final blacklist certPathLen:I

.field private final blacklist expPolicyRequired:Z

.field private blacklist explicitPolicy:I

.field private blacklist inhibitAnyPolicy:I

.field private final blacklist initPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist polMappingInhibited:Z

.field private blacklist policyMapping:I

.field private final blacklist rejectPolicyQualifiers:Z

.field private blacklist rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

.field private blacklist supportedExts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Set;IZZZZLsun/security/provider/certpath/PolicyNodeImpl;)V
    .registers 10
    .param p2, "certPathLen"    # I
    .param p3, "expPolicyRequired"    # Z
    .param p4, "polMappingInhibited"    # Z
    .param p5, "anyPolicyInhibited"    # Z
    .param p6, "rejectPolicyQualifiers"    # Z
    .param p7, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZZZZ",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ")V"
        }
    .end annotation

    .line 92
    .local p1, "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 93
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 96
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    .line 97
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    const-string v1, "2.5.29.32.0"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 99
    :cond_19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    .line 101
    :goto_20
    iput p2, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    .line 102
    iput-boolean p3, p0, Lsun/security/provider/certpath/PolicyChecker;->expPolicyRequired:Z

    .line 103
    iput-boolean p4, p0, Lsun/security/provider/certpath/PolicyChecker;->polMappingInhibited:Z

    .line 104
    iput-boolean p5, p0, Lsun/security/provider/certpath/PolicyChecker;->anyPolicyInhibited:Z

    .line 105
    iput-boolean p6, p0, Lsun/security/provider/certpath/PolicyChecker;->rejectPolicyQualifiers:Z

    .line 106
    iput-object p7, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 107
    return-void
.end method

.method private blacklist checkPolicy(Ljava/security/cert/X509Certificate;)V
    .registers 15
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 200
    const-string v1, "certificate policies"

    .line 201
    .local v1, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_a6

    .line 202
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() ---checking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() certIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 206
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() BEFORE PROCESSING: explicitPolicy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 208
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() BEFORE PROCESSING: policyMapping = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 210
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() BEFORE PROCESSING: inhibitAnyPolicy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 212
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() BEFORE PROCESSING: policyTree = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 216
    :cond_a6
    const/4 v2, 0x0

    .line 218
    .local v2, "currCertImpl":Lsun/security/x509/X509CertImpl;
    :try_start_a7
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0
    :try_end_ab
    .catch Ljava/security/cert/CertificateException; {:try_start_a7 .. :try_end_ab} :catch_176

    move-object v10, v0

    .line 221
    .end local v2    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    .local v10, "currCertImpl":Lsun/security/x509/X509CertImpl;
    nop

    .line 223
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    const/4 v12, 0x1

    if-ne v0, v2, :cond_b6

    move v11, v12

    goto :goto_b8

    :cond_b6
    const/4 v0, 0x0

    move v11, v0

    .line 225
    .local v11, "finalCert":Z
    :goto_b8
    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    iget-object v4, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    iget v5, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    iget v6, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    iget v7, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    iget-boolean v8, p0, Lsun/security/provider/certpath/PolicyChecker;->rejectPolicyQualifiers:Z

    iget-object v9, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-static/range {v3 .. v11}, Lsun/security/provider/certpath/PolicyChecker;->processPolicies(ILjava/util/Set;IIIZLsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/x509/X509CertImpl;Z)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 229
    if-nez v11, :cond_e6

    .line 230
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    invoke-static {v0, v10, v11}, Lsun/security/provider/certpath/PolicyChecker;->mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I

    move-result v0

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    .line 232
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    invoke-static {v0, v10}, Lsun/security/provider/certpath/PolicyChecker;->mergePolicyMapping(ILsun/security/x509/X509CertImpl;)I

    move-result v0

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    .line 233
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    invoke-static {v0, v10}, Lsun/security/provider/certpath/PolicyChecker;->mergeInhibitAnyPolicy(ILsun/security/x509/X509CertImpl;)I

    move-result v0

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    .line 237
    :cond_e6
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    add-int/2addr v0, v12

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    .line 239
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_175

    .line 240
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() AFTER PROCESSING: explicitPolicy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 242
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() AFTER PROCESSING: policyMapping = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 244
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() AFTER PROCESSING: inhibitAnyPolicy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 246
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() AFTER PROCESSING: policyTree = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 248
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " verified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 250
    :cond_175
    return-void

    .line 219
    .end local v10    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    .end local v11    # "finalCert":Z
    .restart local v2    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    :catch_176
    move-exception v0

    .line 220
    .local v0, "ce":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static blacklist mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I
    .registers 8
    .param p0, "explicitPolicy"    # I
    .param p1, "currCert"    # Lsun/security/x509/X509CertImpl;
    .param p2, "finalCert"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 270
    if-lez p0, :cond_a

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 271
    add-int/lit8 p0, p0, -0x1

    .line 275
    :cond_a
    nop

    .line 276
    :try_start_b
    invoke-virtual {p1}, Lsun/security/x509/X509CertImpl;->getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;

    move-result-object v0

    .line 277
    .local v0, "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    if-nez v0, :cond_12

    .line 278
    return p0

    .line 279
    :cond_12
    const-string v1, "require"

    .line 280
    invoke-virtual {v0, v1}, Lsun/security/x509/PolicyConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 281
    .local v1, "require":I
    sget-object v2, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_38

    .line 282
    sget-object v2, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PolicyChecker.mergeExplicitPolicy() require Index from cert = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_38} :catch_48

    .line 285
    :cond_38
    if-nez p2, :cond_43

    .line 286
    const/4 v2, -0x1

    if-eq v1, v2, :cond_46

    .line 287
    if-eq p0, v2, :cond_41

    if-ge v1, p0, :cond_46

    .line 288
    :cond_41
    move p0, v1

    goto :goto_46

    .line 292
    :cond_43
    if-nez v1, :cond_46

    .line 293
    move p0, v1

    .line 302
    .end local v0    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    .end local v1    # "require":I
    :cond_46
    :goto_46
    nop

    .line 304
    return p0

    .line 295
    :catch_48
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_57

    .line 297
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string v2, "PolicyChecker.mergeExplicitPolicy unexpected exception"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 301
    :cond_57
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist mergeInhibitAnyPolicy(ILsun/security/x509/X509CertImpl;)I
    .registers 7
    .param p0, "inhibitAnyPolicy"    # I
    .param p1, "currCert"    # Lsun/security/x509/X509CertImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 371
    if-lez p0, :cond_a

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 372
    add-int/lit8 p0, p0, -0x1

    .line 376
    :cond_a
    :try_start_a
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    .line 377
    invoke-virtual {p1, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/InhibitAnyPolicyExtension;

    .line 378
    .local v0, "inhAnyPolExt":Lsun/security/x509/InhibitAnyPolicyExtension;
    if-nez v0, :cond_15

    .line 379
    return p0

    .line 381
    :cond_15
    const-string v1, "skip_certs"

    .line 382
    invoke-virtual {v0, v1}, Lsun/security/x509/InhibitAnyPolicyExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 383
    .local v1, "skipCerts":I
    sget-object v2, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_3b

    .line 384
    sget-object v2, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PolicyChecker.mergeInhibitAnyPolicy() skipCerts Index from cert = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3b} :catch_43

    .line 387
    :cond_3b
    const/4 v2, -0x1

    if-eq v1, v2, :cond_41

    .line 388
    if-ge v1, p0, :cond_41

    .line 389
    move p0, v1

    .line 399
    .end local v0    # "inhAnyPolExt":Lsun/security/x509/InhibitAnyPolicyExtension;
    .end local v1    # "skipCerts":I
    :cond_41
    nop

    .line 401
    return p0

    .line 392
    :catch_43
    move-exception v0

    .line 393
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_52

    .line 394
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string v2, "PolicyChecker.mergeInhibitAnyPolicy unexpected exception"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 398
    :cond_52
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist mergePolicyMapping(ILsun/security/x509/X509CertImpl;)I
    .registers 7
    .param p0, "policyMapping"    # I
    .param p1, "currCert"    # Lsun/security/x509/X509CertImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 323
    if-lez p0, :cond_a

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 324
    add-int/lit8 p0, p0, -0x1

    .line 328
    :cond_a
    nop

    .line 329
    :try_start_b
    invoke-virtual {p1}, Lsun/security/x509/X509CertImpl;->getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;

    move-result-object v0

    .line 330
    .local v0, "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    if-nez v0, :cond_12

    .line 331
    return p0

    .line 333
    :cond_12
    const-string v1, "inhibit"

    .line 334
    invoke-virtual {v0, v1}, Lsun/security/x509/PolicyConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 335
    .local v1, "inhibit":I
    sget-object v2, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_38

    .line 336
    sget-object v2, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PolicyChecker.mergePolicyMapping() inhibit Index from cert = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_38} :catch_42

    .line 339
    :cond_38
    const/4 v2, -0x1

    if-eq v1, v2, :cond_40

    .line 340
    if-eq p0, v2, :cond_3f

    if-ge v1, p0, :cond_40

    .line 341
    :cond_3f
    move p0, v1

    .line 351
    .end local v0    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    .end local v1    # "inhibit":I
    :cond_40
    nop

    .line 353
    return p0

    .line 344
    :catch_42
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_51

    .line 346
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string v2, "PolicyChecker.mergePolicyMapping unexpected exception"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 350
    :cond_51
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z
    .registers 28
    .param p0, "certIndex"    # I
    .param p1, "policiesCritical"    # Z
    .param p2, "rejectPolicyQualifiers"    # Z
    .param p3, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p4, "curPolicy"    # Ljava/lang/String;
    .param p6, "matchAny"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 659
    .local p5, "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    move-object/from16 v2, p4

    move/from16 v7, p6

    const/4 v0, 0x0

    .line 661
    .local v0, "foundMatch":Z
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_21

    .line 662
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PolicyChecker.processParents(): matchAny = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 666
    :cond_21
    add-int/lit8 v1, p0, -0x1

    .line 667
    move-object/from16 v8, p3

    invoke-virtual {v8, v1, v2, v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesExpected(ILjava/lang/String;Z)Ljava/util/Set;

    move-result-object v9

    .line 671
    .local v9, "parentNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 672
    .local v12, "curParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_5a

    .line 673
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PolicyChecker.processParents() found parent:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 674
    invoke-virtual {v12}, Lsun/security/provider/certpath/PolicyNodeImpl;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 673
    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 676
    :cond_5a
    const/16 v18, 0x1

    .line 677
    .end local v0    # "foundMatch":Z
    .local v18, "foundMatch":Z
    invoke-virtual {v12}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    .line 679
    .local v19, "curParPolicy":Ljava/lang/String;
    const/4 v0, 0x0

    .line 680
    .local v0, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    const/4 v1, 0x0

    .line 682
    .local v1, "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "2.5.29.32.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 684
    invoke-virtual {v12}, Lsun/security/provider/certpath/PolicyNodeImpl;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v3

    .line 686
    .local v3, "parExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_72
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_da

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Ljava/lang/String;

    .line 688
    .local v13, "curParExpPol":Ljava/lang/String;
    nop

    .line 689
    invoke-virtual {v12}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v5

    .line 690
    .local v5, "childIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :goto_84
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 691
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 692
    .local v6, "childNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v6}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v11

    .line 693
    .local v11, "childPolicy":Ljava/lang/String;
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_be

    .line 694
    sget-object v14, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v14, :cond_b9

    .line 695
    sget-object v14, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v20, v0

    .end local v0    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v20, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    const-string v0, " in parent\'s expected policy set already appears in child node"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_bb

    .line 694
    .end local v20    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .restart local v0    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_b9
    move-object/from16 v20, v0

    .line 686
    .end local v0    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v5    # "childIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    .end local v6    # "childNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v11    # "childPolicy":Ljava/lang/String;
    .end local v13    # "curParExpPol":Ljava/lang/String;
    .restart local v20    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :goto_bb
    move-object/from16 v0, v20

    goto :goto_72

    .line 693
    .end local v20    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .restart local v0    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .restart local v5    # "childIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    .restart local v6    # "childNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .restart local v11    # "childPolicy":Ljava/lang/String;
    .restart local v13    # "curParExpPol":Ljava/lang/String;
    :cond_be
    move-object/from16 v20, v0

    .line 700
    .end local v0    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v6    # "childNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v11    # "childPolicy":Ljava/lang/String;
    .restart local v20    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_84

    .line 702
    .end local v20    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .restart local v0    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_c1
    move-object/from16 v20, v0

    .end local v0    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .restart local v20    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v16

    .line 703
    .local v0, "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 705
    new-instance v11, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/16 v17, 0x0

    move/from16 v15, p1

    move-object/from16 v14, p5

    .end local v0    # "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v16, "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {v11 .. v17}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    move-object v0, v11

    .line 708
    .end local v5    # "childIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    .end local v13    # "curParExpPol":Ljava/lang/String;
    .end local v16    # "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v0, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_72

    .line 686
    :cond_da
    move-object/from16 v20, v0

    .line 709
    .end local v0    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v3    # "parExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_f0

    .line 710
    .end local v20    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_dd
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 711
    .end local v1    # "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v5, "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/4 v6, 0x0

    move/from16 v4, p1

    move-object/from16 v3, p5

    move-object v1, v12

    .end local v12    # "curParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v1, "curParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-direct/range {v0 .. v6}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .line 717
    .end local v1    # "curParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v5    # "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "curParPolicy":Ljava/lang/String;
    :goto_f0
    move-object/from16 v2, p4

    move/from16 v0, v18

    goto/16 :goto_2d

    .line 719
    .end local v18    # "foundMatch":Z
    .local v0, "foundMatch":Z
    :cond_f6
    return v0
.end method

.method static blacklist processPolicies(ILjava/util/Set;IIIZLsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/x509/X509CertImpl;Z)Lsun/security/provider/certpath/PolicyNodeImpl;
    .registers 31
    .param p0, "certIndex"    # I
    .param p2, "explicitPolicy"    # I
    .param p3, "policyMapping"    # I
    .param p4, "inhibitAnyPolicy"    # I
    .param p5, "rejectPolicyQualifiers"    # Z
    .param p6, "origRootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p7, "currCert"    # Lsun/security/x509/X509CertImpl;
    .param p8, "finalCert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "Lsun/security/x509/X509CertImpl;",
            "Z)",
            "Lsun/security/provider/certpath/PolicyNodeImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 431
    .local p1, "initPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v8, p1

    move/from16 v3, p5

    move/from16 v9, p8

    const/4 v0, 0x0

    .line 433
    .local v0, "policiesCritical":Z
    const/4 v1, 0x0

    .line 434
    .local v1, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 436
    .local v2, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    if-nez p6, :cond_12

    .line 437
    const/4 v1, 0x0

    move-object v4, v1

    goto :goto_17

    .line 439
    :cond_12
    invoke-virtual/range {p6 .. p6}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v1

    move-object v4, v1

    .line 442
    .end local v1    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v4, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :goto_17
    nop

    .line 443
    invoke-virtual/range {p7 .. p7}, Lsun/security/x509/X509CertImpl;->getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;

    move-result-object v10

    .line 446
    .local v10, "currCertPolicies":Lsun/security/x509/CertificatePoliciesExtension;
    const-string v11, "2.5.29.32.0"

    if-eqz v10, :cond_131

    if-eqz v4, :cond_131

    .line 447
    move-object v1, v2

    .end local v2    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .local v1, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-virtual {v10}, Lsun/security/x509/CertificatePoliciesExtension;->isCritical()Z

    move-result v2

    .line 448
    .end local v0    # "policiesCritical":Z
    .local v2, "policiesCritical":Z
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_43

    .line 449
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PolicyChecker.processPolicies() policiesCritical = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 453
    :cond_43
    :try_start_43
    const-string v0, "policies"

    invoke-virtual {v10, v0}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_49} :catch_126

    .line 457
    .local v0, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    nop

    .line 459
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_66

    .line 460
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PolicyChecker.processPolicies() rejectPolicyQualifiers = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 463
    :cond_66
    const/4 v5, 0x0

    .line 466
    .local v5, "foundAnyPolicy":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v1

    move v14, v5

    .end local v1    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .end local v5    # "foundAnyPolicy":Z
    .local v13, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .local v14, "foundAnyPolicy":Z
    :goto_6d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lsun/security/x509/PolicyInformation;

    .line 467
    .local v15, "curPolInfo":Lsun/security/x509/PolicyInformation;
    nop

    .line 468
    invoke-virtual {v15}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, "curPolicy":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 471
    const/4 v1, 0x1

    .line 472
    .end local v14    # "foundAnyPolicy":Z
    .local v1, "foundAnyPolicy":Z
    invoke-virtual {v15}, Lsun/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v6

    move v14, v1

    move-object v13, v6

    .end local v13    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .local v6, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    goto :goto_e2

    .line 475
    .end local v1    # "foundAnyPolicy":Z
    .end local v6    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .restart local v13    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .restart local v14    # "foundAnyPolicy":Z
    :cond_95
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_b1

    .line 476
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PolicyChecker.processPolicies() processing policy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 480
    :cond_b1
    nop

    .line 481
    invoke-virtual {v15}, Lsun/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v6

    .line 485
    .local v6, "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d1

    if-eqz v3, :cond_d1

    if-nez v2, :cond_c1

    goto :goto_d1

    .line 487
    :cond_c1
    new-instance v16, Ljava/security/cert/CertPathValidatorException;

    const/16 v20, -0x1

    sget-object v21, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const-string v17, "critical policy qualifiers present in certificate"

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v21}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v16

    .line 493
    :cond_d1
    :goto_d1
    const/4 v7, 0x0

    move/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    move-result v16

    .line 497
    .local v16, "foundMatch":Z
    if-nez v16, :cond_e2

    .line 499
    const/4 v7, 0x1

    move/from16 v1, p0

    move/from16 v3, p5

    invoke-static/range {v1 .. v7}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    .line 504
    .end local v5    # "curPolicy":Ljava/lang/String;
    .end local v6    # "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .end local v15    # "curPolInfo":Lsun/security/x509/PolicyInformation;
    .end local v16    # "foundMatch":Z
    :cond_e2
    :goto_e2
    move/from16 v3, p5

    goto :goto_6d

    .line 507
    :cond_e5
    if-eqz v14, :cond_112

    .line 508
    if-gtz p4, :cond_fa

    if-nez v9, :cond_f6

    .line 509
    invoke-static/range {p7 .. p7}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_f2

    goto :goto_fa

    :cond_f2
    move/from16 v3, p0

    move-object v6, v13

    goto :goto_115

    .line 508
    :cond_f6
    move/from16 v3, p0

    move-object v6, v13

    goto :goto_115

    .line 510
    :cond_fa
    :goto_fa
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_105

    .line 511
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string v3, "PolicyChecker.processPolicies() processing policy: 2.5.29.32.0"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 514
    :cond_105
    const-string v5, "2.5.29.32.0"

    const/4 v7, 0x1

    move/from16 v1, p0

    move/from16 v3, p5

    move-object v6, v13

    .end local v13    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .local v6, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-static/range {v1 .. v7}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    move v3, v1

    goto :goto_115

    .line 507
    .end local v6    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .restart local v13    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    :cond_112
    move/from16 v3, p0

    move-object v6, v13

    .line 521
    .end local v13    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .restart local v6    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    :goto_115
    invoke-virtual {v4, v3}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 522
    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_124

    .line 523
    const/4 v1, 0x0

    move-object v4, v1

    .line 525
    .end local v14    # "foundAnyPolicy":Z
    :cond_124
    move v5, v2

    goto :goto_147

    .line 454
    .end local v0    # "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    .end local v6    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .local v1, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    :catch_126
    move-exception v0

    move/from16 v3, p0

    .line 455
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    const-string v6, "Exception while retrieving policyOIDs"

    invoke-direct {v5, v6, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 446
    .end local v1    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .local v0, "policiesCritical":Z
    .local v2, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    :cond_131
    move/from16 v3, p0

    move-object v1, v2

    .line 525
    .end local v2    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .restart local v1    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    if-nez v10, :cond_145

    .line 526
    sget-object v2, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_141

    .line 527
    sget-object v2, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string v5, "PolicyChecker.processPolicies() no policies present in cert"

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 530
    :cond_141
    const/4 v4, 0x0

    move v5, v0

    move-object v6, v1

    goto :goto_147

    .line 525
    :cond_145
    move v5, v0

    move-object v6, v1

    .line 536
    .end local v0    # "policiesCritical":Z
    .end local v1    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .local v5, "policiesCritical":Z
    .restart local v6    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    :goto_147
    if-eqz v4, :cond_158

    .line 537
    if-nez v9, :cond_156

    .line 539
    move-object/from16 v1, p7

    move v2, v3

    move/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lsun/security/provider/certpath/PolicyChecker;->processPolicyMappings(Lsun/security/x509/X509CertImpl;IILsun/security/provider/certpath/PolicyNodeImpl;ZLjava/util/Set;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v4

    move v1, v2

    goto :goto_159

    .line 537
    :cond_156
    move v1, v3

    goto :goto_159

    .line 536
    :cond_158
    move v1, v3

    .line 548
    :goto_159
    if-eqz v4, :cond_16f

    invoke-interface {v8, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16f

    if-eqz v10, :cond_16f

    .line 550
    invoke-static {v4, v1, v8, v10}, Lsun/security/provider/certpath/PolicyChecker;->removeInvalidNodes(Lsun/security/provider/certpath/PolicyNodeImpl;ILjava/util/Set;Lsun/security/x509/CertificatePoliciesExtension;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v4

    .line 554
    if-eqz v4, :cond_16f

    if-eqz v9, :cond_16f

    .line 556
    invoke-static {v1, v8, v4}, Lsun/security/provider/certpath/PolicyChecker;->rewriteLeafNodes(ILjava/util/Set;Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v4

    .line 561
    :cond_16f
    if-eqz v9, :cond_17a

    .line 563
    move/from16 v2, p2

    move-object/from16 v3, p7

    invoke-static {v2, v3, v9}, Lsun/security/provider/certpath/PolicyChecker;->mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I

    move-result v0

    .end local p2    # "explicitPolicy":I
    .local v0, "explicitPolicy":I
    goto :goto_17f

    .line 561
    .end local v0    # "explicitPolicy":I
    .restart local p2    # "explicitPolicy":I
    :cond_17a
    move/from16 v2, p2

    move-object/from16 v3, p7

    move v0, v2

    .line 571
    .end local p2    # "explicitPolicy":I
    .restart local v0    # "explicitPolicy":I
    :goto_17f
    if-nez v0, :cond_191

    if-eqz v4, :cond_184

    goto :goto_191

    .line 572
    :cond_184
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    const/4 v15, -0x1

    sget-object v16, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const-string v12, "non-null policy tree required and policy tree is null"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v16}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v11

    .line 577
    :cond_191
    :goto_191
    return-object v4
.end method

.method private static blacklist processPolicyMappings(Lsun/security/x509/X509CertImpl;IILsun/security/provider/certpath/PolicyNodeImpl;ZLjava/util/Set;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .registers 26
    .param p0, "currCert"    # Lsun/security/x509/X509CertImpl;
    .param p1, "certIndex"    # I
    .param p2, "policyMapping"    # I
    .param p3, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p4, "policiesCritical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/X509CertImpl;",
            "II",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;)",
            "Lsun/security/provider/certpath/PolicyNodeImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 743
    .local p5, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 744
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPolicyMappingsExtension()Lsun/security/x509/PolicyMappingsExtension;

    move-result-object v4

    .line 746
    .local v4, "polMappingsExt":Lsun/security/x509/PolicyMappingsExtension;
    if-nez v4, :cond_d

    .line 747
    return-object v3

    .line 749
    :cond_d
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_18

    .line 750
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string v5, "PolicyChecker.processPolicyMappings() inside policyMapping check"

    invoke-virtual {v0, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 753
    :cond_18
    const/4 v5, 0x0

    .line 755
    .local v5, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    :try_start_19
    const-string v0, "map"

    invoke-virtual {v4, v0}, Lsun/security/x509/PolicyMappingsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_16c

    .line 764
    .end local v5    # "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    .local v0, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    nop

    .line 766
    const/4 v5, 0x0

    .line 767
    .local v5, "childDeleted":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_150

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/x509/CertificatePolicyMap;

    .line 768
    .local v7, "polMap":Lsun/security/x509/CertificatePolicyMap;
    nop

    .line 769
    invoke-virtual {v7}, Lsun/security/x509/CertificatePolicyMap;->getIssuerIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v11

    .line 770
    .local v11, "issuerDomain":Ljava/lang/String;
    nop

    .line 771
    invoke-virtual {v7}, Lsun/security/x509/CertificatePolicyMap;->getSubjectIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v8

    .line 772
    .local v8, "subjectDomain":Ljava/lang/String;
    sget-object v9, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_7f

    .line 773
    sget-object v9, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PolicyChecker.processPolicyMappings() issuerDomain = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 775
    sget-object v9, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PolicyChecker.processPolicyMappings() subjectDomain = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 779
    :cond_7f
    const-string v9, "2.5.29.32.0"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_141

    .line 785
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_133

    .line 791
    nop

    .line 792
    invoke-virtual {v3, v1, v11}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v16

    .line 793
    .local v16, "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    const/4 v12, -0x1

    if-nez v10, :cond_fa

    .line 794
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 795
    .local v10, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    if-gtz v2, :cond_f4

    if-ne v2, v12, :cond_ae

    goto :goto_f4

    .line 797
    :cond_ae
    if-nez v2, :cond_f7

    .line 798
    nop

    .line 799
    invoke-virtual {v10}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v13

    check-cast v13, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 800
    .local v13, "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    sget-object v14, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v14, :cond_d3

    .line 801
    sget-object v14, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PolicyChecker.processPolicyMappings() before deleting: policy tree = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 804
    :cond_d3
    invoke-virtual {v13, v10}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    .line 805
    const/4 v5, 0x1

    .line 806
    sget-object v12, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_f7

    .line 807
    sget-object v12, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "PolicyChecker.processPolicyMappings() after deleting: policy tree = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_f7

    .line 796
    .end local v13    # "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_f4
    :goto_f4
    invoke-virtual {v10, v8}, Lsun/security/provider/certpath/PolicyNodeImpl;->addExpectedPolicy(Ljava/lang/String;)V

    .line 811
    .end local v10    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_f7
    :goto_f7
    const/4 v12, -0x1

    goto :goto_9d

    :cond_f9
    goto :goto_131

    .line 813
    :cond_fa
    if-gtz v2, :cond_ff

    const/4 v10, -0x1

    if-ne v2, v10, :cond_131

    .line 814
    :cond_ff
    nop

    .line 815
    invoke-virtual {v3, v1, v9}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v17

    .line 816
    .local v17, "validAnyNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_108
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_131

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 817
    .local v19, "curAnyNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    nop

    .line 818
    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 820
    .local v10, "curAnyNodeParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 821
    .local v14, "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 823
    new-instance v9, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/4 v15, 0x1

    move/from16 v13, p4

    move-object/from16 v12, p5

    invoke-direct/range {v9 .. v15}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .line 826
    .end local v10    # "curAnyNodeParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v14    # "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "curAnyNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_108

    .line 829
    .end local v7    # "polMap":Lsun/security/x509/CertificatePolicyMap;
    .end local v8    # "subjectDomain":Ljava/lang/String;
    .end local v11    # "issuerDomain":Ljava/lang/String;
    .end local v16    # "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    .end local v17    # "validAnyNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :cond_131
    :goto_131
    goto/16 :goto_25

    .line 786
    .restart local v7    # "polMap":Lsun/security/x509/CertificatePolicyMap;
    .restart local v8    # "subjectDomain":Ljava/lang/String;
    .restart local v11    # "issuerDomain":Ljava/lang/String;
    :cond_133
    new-instance v12, Ljava/security/cert/CertPathValidatorException;

    const/16 v16, -0x1

    sget-object v17, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const-string v13, "encountered a subjectDomainPolicy of ANY_POLICY"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v12

    .line 780
    :cond_141
    new-instance v13, Ljava/security/cert/CertPathValidatorException;

    const/16 v17, -0x1

    sget-object v18, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const-string v14, "encountered an issuerDomainPolicy of ANY_POLICY"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v18}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v13

    .line 831
    .end local v7    # "polMap":Lsun/security/x509/CertificatePolicyMap;
    .end local v8    # "subjectDomain":Ljava/lang/String;
    .end local v11    # "issuerDomain":Ljava/lang/String;
    :cond_150
    if-eqz v5, :cond_16b

    .line 832
    invoke-virtual {v3, v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 833
    invoke-virtual {v3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_16b

    .line 834
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_16a

    .line 835
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string v7, "setting rootNode to null"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 836
    :cond_16a
    const/4 v3, 0x0

    .line 840
    .end local p3    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v3, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_16b
    return-object v3

    .line 756
    .end local v0    # "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    .end local v3    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v5, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    .restart local p3    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :catch_16c
    move-exception v0

    .line 757
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_17b

    .line 758
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string v7, "PolicyChecker.processPolicyMappings() mapping exception"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 762
    :cond_17b
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Exception while checking mapping"

    invoke-direct {v6, v7, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static blacklist removeInvalidNodes(Lsun/security/provider/certpath/PolicyNodeImpl;ILjava/util/Set;Lsun/security/x509/CertificatePoliciesExtension;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .registers 16
    .param p0, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p1, "certIndex"    # I
    .param p3, "currCertPolicies"    # Lsun/security/x509/CertificatePoliciesExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lsun/security/x509/CertificatePoliciesExtension;",
            ")",
            "Lsun/security/provider/certpath/PolicyNodeImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 860
    .local p2, "initPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 862
    .local v0, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    :try_start_1
    const-string v1, "policies"

    invoke-virtual {p3, v1}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_c5

    .line 866
    .end local v0    # "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    .local v1, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    nop

    .line 868
    const/4 v0, 0x0

    .line 869
    .local v0, "childDeleted":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/PolicyInformation;

    .line 870
    .local v3, "curPolInfo":Lsun/security/x509/PolicyInformation;
    nop

    .line 871
    invoke-virtual {v3}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v4

    invoke-virtual {v4}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    .line 873
    .local v4, "curPolicy":Ljava/lang/String;
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_42

    .line 874
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PolicyChecker.processPolicies() processing policy second time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 877
    :cond_42
    nop

    .line 878
    invoke-virtual {p0, p1, v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 879
    .local v5, "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 880
    .local v7, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v8

    check-cast v8, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 881
    .local v8, "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v8}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    const-string v10, "2.5.29.32.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b1

    .line 882
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b1

    .line 883
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b1

    .line 884
    sget-object v9, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_91

    .line 885
    sget-object v9, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PolicyChecker.processPolicies() before deleting: policy tree = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 887
    :cond_91
    invoke-virtual {v8, v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    .line 888
    const/4 v0, 0x1

    .line 889
    sget-object v9, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_b1

    .line 890
    sget-object v9, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PolicyChecker.processPolicies() after deleting: policy tree = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 894
    .end local v7    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v8    # "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_b1
    goto :goto_4b

    .line 895
    .end local v3    # "curPolInfo":Lsun/security/x509/PolicyInformation;
    .end local v4    # "curPolicy":Ljava/lang/String;
    .end local v5    # "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :cond_b2
    goto/16 :goto_d

    .line 897
    :cond_b4
    if-eqz v0, :cond_c4

    .line 898
    invoke-virtual {p0, p1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 899
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c4

    .line 900
    const/4 p0, 0x0

    .line 904
    :cond_c4
    return-object p0

    .line 863
    .end local v1    # "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    .local v0, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    :catch_c5
    move-exception v1

    .line 864
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Exception while retrieving policyOIDs"

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist rewriteLeafNodes(ILjava/util/Set;Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .registers 14
    .param p0, "certIndex"    # I
    .param p2, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ")",
            "Lsun/security/provider/certpath/PolicyNodeImpl;"
        }
    .end annotation

    .line 596
    .local p1, "initPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 597
    const-string v0, "2.5.29.32.0"

    invoke-virtual {p2, p0, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 598
    .local v0, "anyNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 599
    return-object p2

    .line 601
    :cond_e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 602
    .local v1, "anyNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 603
    .local v4, "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v4, v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    .line 605
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 606
    .local v2, "initial":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 607
    .local v5, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v5}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 608
    .end local v5    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_2f

    .line 609
    :cond_43
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 612
    invoke-virtual {p2, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 613
    invoke-virtual {p2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7d

    .line 614
    const/4 p2, 0x0

    goto :goto_7d

    .line 617
    :cond_58
    invoke-virtual {v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->isCritical()Z

    move-result v7

    .line 618
    .local v7, "anyCritical":Z
    nop

    .line 619
    invoke-virtual {v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v6

    .line 620
    .local v6, "anyQualifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_65
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 621
    .local v5, "policy":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    .line 622
    .local v8, "expectedPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .line 624
    .end local v5    # "policy":Ljava/lang/String;
    .end local v8    # "expectedPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_65

    .line 626
    .end local v6    # "anyQualifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .end local v7    # "anyCritical":Z
    :cond_7d
    :goto_7d
    return-object p2
.end method


# virtual methods
.method public whitelist test-api check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 180
    .local p2, "unresCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v0}, Lsun/security/provider/certpath/PolicyChecker;->checkPolicy(Ljava/security/cert/X509Certificate;)V

    .line 182
    if-eqz p2, :cond_32

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 183
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 188
    :cond_32
    return-void
.end method

.method blacklist getPolicyTree()Ljava/security/cert/PolicyNode;
    .registers 2

    .line 916
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    if-nez v0, :cond_6

    .line 917
    const/4 v0, 0x0

    return-object v0

    .line 919
    :cond_6
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v0

    .line 920
    .local v0, "policyTree":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->setImmutable()V

    .line 921
    return-object v0
.end method

.method public whitelist test-api getSupportedExtensions()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    if-nez v0, :cond_40

    .line 157
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    .line 158
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    .line 164
    :cond_40
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api init(Z)V
    .registers 5
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 120
    if-nez p1, :cond_28

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    .line 126
    iget-boolean v1, p0, Lsun/security/provider/certpath/PolicyChecker;->expPolicyRequired:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_f

    :cond_c
    iget v1, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    add-int/2addr v1, v0

    :goto_f
    iput v1, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    .line 127
    iget-boolean v1, p0, Lsun/security/provider/certpath/PolicyChecker;->polMappingInhibited:Z

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_1a

    :cond_17
    iget v1, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    add-int/2addr v1, v0

    :goto_1a
    iput v1, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    .line 128
    iget-boolean v1, p0, Lsun/security/provider/certpath/PolicyChecker;->anyPolicyInhibited:Z

    if-eqz v1, :cond_21

    goto :goto_25

    :cond_21
    iget v1, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    add-int/lit8 v2, v1, 0x1

    :goto_25
    iput v2, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    .line 129
    return-void

    .line 121
    :cond_28
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isForwardCheckingSupported()Z
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method
