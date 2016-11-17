.class Lsun/security/provider/certpath/PolicyChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "PolicyChecker.java"


# static fields
.field static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final anyPolicyInhibited:Z

.field private certIndex:I

.field private final certPathLen:I

.field private final expPolicyRequired:Z

.field private explicitPolicy:I

.field private inhibitAnyPolicy:I

.field private final initPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final polMappingInhibited:Z

.field private policyMapping:I

.field private final rejectPolicyQualifiers:Z

.field private rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

.field private supportedExts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 74
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@9
    .line 58
    return-void
.end method

.method constructor <init>(Ljava/util/Set;IZZZZLsun/security/provider/certpath/PolicyNodeImpl;)V
    .locals 2
    .param p2, "certPathLen"    # I
    .param p3, "expPolicyRequired"    # Z
    .param p4, "polMappingInhibited"    # Z
    .param p5, "anyPolicyInhibited"    # Z
    .param p6, "rejectPolicyQualifiers"    # Z
    .param p7, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZZZZ",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 88
    .local p1, "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    #@3
    .line 93
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 96
    new-instance v0, Ljava/util/HashSet;

    #@b
    const/4 v1, 0x1

    #@c
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    #@f
    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    #@11
    .line 97
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    #@13
    const-string/jumbo v1, "2.5.29.32.0"

    #@16
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@19
    .line 101
    :goto_0
    iput p2, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    #@1b
    .line 102
    iput-boolean p3, p0, Lsun/security/provider/certpath/PolicyChecker;->expPolicyRequired:Z

    #@1d
    .line 103
    iput-boolean p4, p0, Lsun/security/provider/certpath/PolicyChecker;->polMappingInhibited:Z

    #@1f
    .line 104
    iput-boolean p5, p0, Lsun/security/provider/certpath/PolicyChecker;->anyPolicyInhibited:Z

    #@21
    .line 105
    iput-boolean p6, p0, Lsun/security/provider/certpath/PolicyChecker;->rejectPolicyQualifiers:Z

    #@23
    .line 106
    iput-object p7, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@25
    .line 91
    return-void

    #@26
    .line 99
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    #@28
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@2b
    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    #@2d
    goto :goto_0
.end method

.method private checkPolicy(Ljava/security/cert/X509Certificate;)V
    .locals 11
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    const-string/jumbo v10, "certificate policies"

    #@3
    .line 201
    .local v10, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 202
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "PolicyChecker.checkPolicy() ---checking "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 203
    const-string/jumbo v2, "..."

    #@1c
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@27
    .line 204
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@29
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "PolicyChecker.checkPolicy() certIndex = "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 205
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    #@37
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@42
    .line 206
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@44
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v2, "PolicyChecker.checkPolicy() BEFORE PROCESSING: explicitPolicy = "

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    .line 207
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    #@52
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@5d
    .line 208
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v2, "PolicyChecker.checkPolicy() BEFORE PROCESSING: policyMapping = "

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    .line 209
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    #@6d
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@78
    .line 210
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@7a
    new-instance v1, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v2, "PolicyChecker.checkPolicy() BEFORE PROCESSING: inhibitAnyPolicy = "

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    .line 211
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    #@88
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@93
    .line 212
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@95
    new-instance v1, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v2, "PolicyChecker.checkPolicy() BEFORE PROCESSING: policyTree = "

    #@9d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    .line 213
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@a3
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v1

    #@a7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@ae
    .line 216
    :cond_0
    const/4 v7, 0x0

    #@af
    .line 218
    .local v7, "currCertImpl":Lsun/security/x509/X509CertImpl;
    :try_start_0
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@b2
    move-result-object v7

    #@b3
    .line 223
    .local v7, "currCertImpl":Lsun/security/x509/X509CertImpl;
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    #@b5
    iget v1, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    #@b7
    if-ne v0, v1, :cond_3

    #@b9
    const/4 v8, 0x1

    #@ba
    .line 225
    .local v8, "finalCert":Z
    :goto_0
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    #@bc
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    #@be
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    #@c0
    .line 226
    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    #@c2
    iget v4, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    #@c4
    iget-boolean v5, p0, Lsun/security/provider/certpath/PolicyChecker;->rejectPolicyQualifiers:Z

    #@c6
    iget-object v6, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@c8
    .line 225
    invoke-static/range {v0 .. v8}, Lsun/security/provider/certpath/PolicyChecker;->processPolicies(ILjava/util/Set;IIIZLsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/x509/X509CertImpl;Z)Lsun/security/provider/certpath/PolicyNodeImpl;

    #@cb
    move-result-object v0

    #@cc
    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@ce
    .line 229
    if-nez v8, :cond_1

    #@d0
    .line 230
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    #@d2
    invoke-static {v0, v7, v8}, Lsun/security/provider/certpath/PolicyChecker;->mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I

    #@d5
    move-result v0

    #@d6
    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    #@d8
    .line 232
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    #@da
    invoke-static {v0, v7}, Lsun/security/provider/certpath/PolicyChecker;->mergePolicyMapping(ILsun/security/x509/X509CertImpl;)I

    #@dd
    move-result v0

    #@de
    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    #@e0
    .line 233
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    #@e2
    invoke-static {v0, v7}, Lsun/security/provider/certpath/PolicyChecker;->mergeInhibitAnyPolicy(ILsun/security/x509/X509CertImpl;)I

    #@e5
    move-result v0

    #@e6
    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    #@e8
    .line 237
    :cond_1
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    #@ea
    add-int/lit8 v0, v0, 0x1

    #@ec
    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    #@ee
    .line 239
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@f0
    if-eqz v0, :cond_2

    #@f2
    .line 240
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@f4
    new-instance v1, Ljava/lang/StringBuilder;

    #@f6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f9
    const-string/jumbo v2, "PolicyChecker.checkPolicy() AFTER PROCESSING: explicitPolicy = "

    #@fc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v1

    #@100
    .line 241
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    #@102
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@105
    move-result-object v1

    #@106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v1

    #@10a
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@10d
    .line 242
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@10f
    new-instance v1, Ljava/lang/StringBuilder;

    #@111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@114
    const-string/jumbo v2, "PolicyChecker.checkPolicy() AFTER PROCESSING: policyMapping = "

    #@117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v1

    #@11b
    .line 243
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    #@11d
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@120
    move-result-object v1

    #@121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v1

    #@125
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@128
    .line 244
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@12a
    new-instance v1, Ljava/lang/StringBuilder;

    #@12c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12f
    const-string/jumbo v2, "PolicyChecker.checkPolicy() AFTER PROCESSING: inhibitAnyPolicy = "

    #@132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v1

    #@136
    .line 245
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    #@138
    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v1

    #@13c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v1

    #@140
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@143
    .line 246
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@145
    new-instance v1, Ljava/lang/StringBuilder;

    #@147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14a
    const-string/jumbo v2, "PolicyChecker.checkPolicy() AFTER PROCESSING: policyTree = "

    #@14d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v1

    #@151
    .line 247
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@153
    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v1

    #@157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15a
    move-result-object v1

    #@15b
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@15e
    .line 248
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@160
    new-instance v1, Ljava/lang/StringBuilder;

    #@162
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@165
    const-string/jumbo v2, "PolicyChecker.checkPolicy() "

    #@168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v1

    #@16c
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v1

    #@170
    const-string/jumbo v2, " verified"

    #@173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v1

    #@177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17a
    move-result-object v1

    #@17b
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@17e
    .line 198
    :cond_2
    return-void

    #@17f
    .line 219
    .end local v8    # "finalCert":Z
    .local v7, "currCertImpl":Lsun/security/x509/X509CertImpl;
    :catch_0
    move-exception v9

    #@180
    .line 220
    .local v9, "ce":Ljava/security/cert/CertificateException;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@182
    invoke-direct {v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@185
    throw v0

    #@186
    .line 223
    .end local v9    # "ce":Ljava/security/cert/CertificateException;
    .local v7, "currCertImpl":Lsun/security/x509/X509CertImpl;
    :cond_3
    const/4 v8, 0x0

    #@187
    .restart local v8    # "finalCert":Z
    goto/16 :goto_0
.end method

.method static mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I
    .locals 7
    .param p0, "explicitPolicy"    # I
    .param p1, "currCert"    # Lsun/security/x509/X509CertImpl;
    .param p2, "finalCert"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 270
    if-lez p0, :cond_0

    #@3
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 276
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/X509CertImpl;->getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;

    #@c
    move-result-object v1

    #@d
    .line 277
    .local v1, "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    if-nez v1, :cond_2

    #@f
    .line 278
    return p0

    #@10
    .line 271
    .end local v1    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    :cond_1
    add-int/lit8 p0, p0, -0x1

    #@12
    goto :goto_0

    #@13
    .line 280
    .restart local v1    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    :cond_2
    const-string/jumbo v3, "require"

    #@16
    invoke-virtual {v1, v3}, Lsun/security/x509/PolicyConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1d
    move-result v2

    #@1e
    .line 281
    .local v2, "require":I
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@20
    if-eqz v3, :cond_3

    #@22
    .line 282
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "PolicyChecker.mergeExplicitPolicy() require Index from cert = "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 285
    :cond_3
    if-nez p2, :cond_6

    #@3d
    .line 286
    if-eq v2, v6, :cond_5

    #@3f
    .line 287
    if-eq p0, v6, :cond_4

    #@41
    if-ge v2, p0, :cond_5

    #@43
    .line 288
    :cond_4
    move p0, v2

    #@44
    .line 304
    :cond_5
    :goto_1
    return p0

    #@45
    .line 292
    :cond_6
    if-nez v2, :cond_5

    #@47
    .line 293
    move p0, v2

    #@48
    goto :goto_1

    #@49
    .line 295
    .end local v1    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    .end local v2    # "require":I
    :catch_0
    move-exception v0

    #@4a
    .line 296
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@4c
    if-eqz v3, :cond_7

    #@4e
    .line 297
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@50
    const-string/jumbo v4, "PolicyChecker.mergeExplicitPolicy unexpected exception"

    #@53
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@56
    .line 299
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@59
    .line 301
    :cond_7
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    #@5b
    invoke-direct {v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@5e
    throw v3
.end method

.method static mergeInhibitAnyPolicy(ILsun/security/x509/X509CertImpl;)I
    .locals 6
    .param p0, "inhibitAnyPolicy"    # I
    .param p1, "currCert"    # Lsun/security/x509/X509CertImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 371
    if-lez p0, :cond_0

    #@2
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_1

    #@8
    .line 377
    :cond_0
    :goto_0
    :try_start_0
    sget-object v3, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    #@a
    invoke-virtual {p1, v3}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    #@d
    move-result-object v1

    #@e
    .line 376
    check-cast v1, Lsun/security/x509/InhibitAnyPolicyExtension;

    #@10
    .line 378
    .local v1, "inhAnyPolExt":Lsun/security/x509/InhibitAnyPolicyExtension;
    if-nez v1, :cond_2

    #@12
    .line 379
    return p0

    #@13
    .line 372
    .end local v1    # "inhAnyPolExt":Lsun/security/x509/InhibitAnyPolicyExtension;
    :cond_1
    add-int/lit8 p0, p0, -0x1

    #@15
    goto :goto_0

    #@16
    .line 382
    .restart local v1    # "inhAnyPolExt":Lsun/security/x509/InhibitAnyPolicyExtension;
    :cond_2
    const-string/jumbo v3, "skip_certs"

    #@19
    invoke-virtual {v1, v3}, Lsun/security/x509/InhibitAnyPolicyExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@20
    move-result v2

    #@21
    .line 383
    .local v2, "skipCerts":I
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@23
    if-eqz v3, :cond_3

    #@25
    .line 384
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@27
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "PolicyChecker.mergeInhibitAnyPolicy() skipCerts Index from cert = "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    .line 387
    :cond_3
    const/4 v3, -0x1

    #@3f
    if-eq v2, v3, :cond_4

    #@41
    .line 388
    if-ge v2, p0, :cond_4

    #@43
    .line 389
    move p0, v2

    #@44
    .line 401
    :cond_4
    return p0

    #@45
    .line 392
    .end local v1    # "inhAnyPolExt":Lsun/security/x509/InhibitAnyPolicyExtension;
    .end local v2    # "skipCerts":I
    :catch_0
    move-exception v0

    #@46
    .line 393
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@48
    if-eqz v3, :cond_5

    #@4a
    .line 394
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@4c
    const-string/jumbo v4, "PolicyChecker.mergeInhibitAnyPolicy unexpected exception"

    #@4f
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@52
    .line 396
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@55
    .line 398
    :cond_5
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    #@57
    invoke-direct {v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@5a
    throw v3
.end method

.method static mergePolicyMapping(ILsun/security/x509/X509CertImpl;)I
    .locals 7
    .param p0, "policyMapping"    # I
    .param p1, "currCert"    # Lsun/security/x509/X509CertImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 323
    if-lez p0, :cond_0

    #@3
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 329
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/X509CertImpl;->getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;

    #@c
    move-result-object v2

    #@d
    .line 330
    .local v2, "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    if-nez v2, :cond_2

    #@f
    .line 331
    return p0

    #@10
    .line 324
    .end local v2    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    :cond_1
    add-int/lit8 p0, p0, -0x1

    #@12
    goto :goto_0

    #@13
    .line 334
    .restart local v2    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    :cond_2
    const-string/jumbo v3, "inhibit"

    #@16
    invoke-virtual {v2, v3}, Lsun/security/x509/PolicyConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1d
    move-result v1

    #@1e
    .line 335
    .local v1, "inhibit":I
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@20
    if-eqz v3, :cond_3

    #@22
    .line 336
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@24
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "PolicyChecker.mergePolicyMapping() inhibit Index from cert = "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 339
    :cond_3
    if-eq v1, v6, :cond_5

    #@3d
    .line 340
    if-eq p0, v6, :cond_4

    #@3f
    if-ge v1, p0, :cond_5

    #@41
    .line 341
    :cond_4
    move p0, v1

    #@42
    .line 353
    :cond_5
    return p0

    #@43
    .line 344
    .end local v1    # "inhibit":I
    .end local v2    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    :catch_0
    move-exception v0

    #@44
    .line 345
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@46
    if-eqz v3, :cond_6

    #@48
    .line 346
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@4a
    const-string/jumbo v4, "PolicyChecker.mergePolicyMapping unexpected exception"

    #@4d
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@50
    .line 348
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@53
    .line 350
    :cond_6
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    #@55
    invoke-direct {v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    #@58
    throw v3
.end method

.method private static processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z
    .locals 25
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
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 659
    .local p5, "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    const/16 v22, 0x0

    #@2
    .line 661
    .local v22, "foundMatch":Z
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@4
    if-eqz v6, :cond_0

    #@6
    .line 662
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@8
    new-instance v7, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v9, "PolicyChecker.processParents(): matchAny = "

    #@10
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v7

    #@14
    move/from16 v0, p6

    #@16
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@21
    .line 667
    :cond_0
    add-int/lit8 v6, p0, -0x1

    #@23
    move-object/from16 v0, p3

    #@25
    move-object/from16 v1, p4

    #@27
    move/from16 v2, p6

    #@29
    invoke-virtual {v0, v6, v1, v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesExpected(ILjava/lang/String;Z)Ljava/util/Set;

    #@2c
    move-result-object v24

    #@2d
    .line 671
    .local v24, "parentNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v21

    #@31
    .local v21, "curParent$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_7

    #@37
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@3d
    .line 672
    .local v4, "curParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@3f
    if-eqz v6, :cond_2

    #@41
    .line 673
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@43
    new-instance v7, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v9, "PolicyChecker.processParents() found parent:\n"

    #@4b
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    .line 674
    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->asString()Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    .line 673
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@5e
    .line 676
    :cond_2
    const/16 v22, 0x1

    #@60
    .line 677
    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    #@63
    move-result-object v20

    #@64
    .line 679
    .local v20, "curParPolicy":Ljava/lang/String;
    const/4 v3, 0x0

    #@65
    .line 680
    .local v3, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    const/4 v14, 0x0

    #@66
    .line 682
    .local v14, "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v6, "2.5.29.32.0"

    #@69
    move-object/from16 v0, p4

    #@6b
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v6

    #@6f
    if-eqz v6, :cond_6

    #@71
    .line 684
    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getExpectedPolicies()Ljava/util/Set;

    #@74
    move-result-object v23

    #@75
    .line 686
    .local v23, "parExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@78
    move-result-object v19

    #@79
    .end local v3    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v19, "curParExpPol$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    #@7c
    move-result v6

    #@7d
    if-eqz v6, :cond_1

    #@7f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@82
    move-result-object v5

    #@83
    check-cast v5, Ljava/lang/String;

    #@85
    .line 689
    .local v5, "curParExpPol":Ljava/lang/String;
    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    #@88
    move-result-object v16

    #@89
    .line 690
    .local v16, "childIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@8c
    move-result v6

    #@8d
    if-eqz v6, :cond_5

    #@8f
    .line 691
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@92
    move-result-object v17

    #@93
    check-cast v17, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@95
    .line 692
    .local v17, "childNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual/range {v17 .. v17}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    #@98
    move-result-object v18

    #@99
    .line 693
    .local v18, "childPolicy":Ljava/lang/String;
    move-object/from16 v0, v18

    #@9b
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v6

    #@9f
    if-eqz v6, :cond_4

    #@a1
    .line 694
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@a3
    if-eqz v6, :cond_3

    #@a5
    .line 695
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@a7
    new-instance v7, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    move-object/from16 v0, v18

    #@ae
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v7

    #@b2
    const-string/jumbo v9, " in parent\'s "

    #@b5
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v7

    #@b9
    .line 696
    const-string/jumbo v9, "expected policy set already appears in "

    #@bc
    .line 695
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v7

    #@c0
    .line 697
    const-string/jumbo v9, "child node"

    #@c3
    .line 695
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v7

    #@c7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v7

    #@cb
    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@ce
    goto :goto_1

    #@cf
    .line 702
    .end local v17    # "childNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v18    # "childPolicy":Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/util/HashSet;

    #@d1
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    #@d4
    .line 703
    .local v8, "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d7
    .line 705
    new-instance v3, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@d9
    .line 707
    const/4 v9, 0x0

    #@da
    move-object/from16 v6, p5

    #@dc
    move/from16 v7, p1

    #@de
    .line 705
    invoke-direct/range {v3 .. v9}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    #@e1
    .local v3, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_1

    #@e2
    .line 710
    .end local v5    # "curParExpPol":Ljava/lang/String;
    .end local v8    # "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "childIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    .end local v19    # "curParExpPol$iterator":Ljava/util/Iterator;
    .end local v23    # "parExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_6
    new-instance v14, Ljava/util/HashSet;

    #@e4
    .end local v14    # "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    #@e7
    .line 711
    .local v14, "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p4

    #@e9
    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ec
    .line 713
    new-instance v3, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@ee
    .line 715
    .end local v3    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    const/4 v15, 0x0

    #@ef
    move-object v9, v3

    #@f0
    move-object v10, v4

    #@f1
    move-object/from16 v11, p4

    #@f3
    move-object/from16 v12, p5

    #@f5
    move/from16 v13, p1

    #@f7
    .line 713
    invoke-direct/range {v9 .. v15}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    #@fa
    .local v3, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto/16 :goto_0

    #@fc
    .line 719
    .end local v3    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v4    # "curParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v14    # "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "curParPolicy":Ljava/lang/String;
    :cond_7
    return v22
.end method

.method static processPolicies(ILjava/util/Set;IIIZLsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/x509/X509CertImpl;Z)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 28
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
            "Ljava/util/Set",
            "<",
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

    #@0
    .prologue
    .line 431
    .local p1, "initPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    .line 433
    .local v4, "policiesCritical":Z
    const/4 v6, 0x0

    #@2
    .line 434
    .local v6, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v14, Ljava/util/HashSet;

    #@4
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    #@7
    .line 436
    .local v14, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    if-nez p6, :cond_3

    #@9
    .line 437
    const/4 v6, 0x0

    #@a
    .line 443
    .end local v6    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :goto_0
    invoke-virtual/range {p7 .. p7}, Lsun/security/x509/X509CertImpl;->getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;

    #@d
    move-result-object v23

    #@e
    .line 446
    .local v23, "currCertPolicies":Lsun/security/x509/CertificatePoliciesExtension;
    if-eqz v23, :cond_f

    #@10
    if-eqz v6, :cond_f

    #@12
    .line 447
    invoke-virtual/range {v23 .. v23}, Lsun/security/x509/CertificatePoliciesExtension;->isCritical()Z

    #@15
    move-result v4

    #@16
    .line 448
    .local v4, "policiesCritical":Z
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 449
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@1c
    new-instance v5, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v9, "PolicyChecker.processPolicies() policiesCritical = "

    #@24
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v3, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@33
    .line 453
    :cond_0
    :try_start_0
    const-string/jumbo v3, "policies"

    #@36
    move-object/from16 v0, v23

    #@38
    invoke-virtual {v0, v3}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result-object v27

    #@3c
    .line 459
    .local v27, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@3e
    if-eqz v3, :cond_1

    #@40
    .line 460
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@42
    new-instance v5, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v9, "PolicyChecker.processPolicies() rejectPolicyQualifiers = "

    #@4a
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    move/from16 v0, p5

    #@50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v3, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@5b
    .line 463
    :cond_1
    const/16 v24, 0x0

    #@5d
    .line 466
    .local v24, "foundAnyPolicy":Z
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@60
    move-result-object v22

    #@61
    .local v22, "curPolInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    #@64
    move-result v3

    #@65
    if-eqz v3, :cond_7

    #@67
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6a
    move-result-object v21

    #@6b
    check-cast v21, Lsun/security/x509/PolicyInformation;

    #@6d
    .line 468
    .local v21, "curPolInfo":Lsun/security/x509/PolicyInformation;
    invoke-virtual/range {v21 .. v21}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    .line 470
    .local v7, "curPolicy":Ljava/lang/String;
    const-string/jumbo v3, "2.5.29.32.0"

    #@7c
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v3

    #@80
    if-eqz v3, :cond_4

    #@82
    .line 471
    const/16 v24, 0x1

    #@84
    .line 472
    invoke-virtual/range {v21 .. v21}, Lsun/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    #@87
    move-result-object v14

    #@88
    goto :goto_1

    #@89
    .line 439
    .end local v7    # "curPolicy":Ljava/lang/String;
    .end local v21    # "curPolInfo":Lsun/security/x509/PolicyInformation;
    .end local v22    # "curPolInfo$iterator":Ljava/util/Iterator;
    .end local v23    # "currCertPolicies":Lsun/security/x509/CertificatePoliciesExtension;
    .end local v24    # "foundAnyPolicy":Z
    .end local v27    # "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    .local v4, "policiesCritical":Z
    .restart local v6    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_3
    invoke-virtual/range {p6 .. p6}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    #@8c
    move-result-object v6

    #@8d
    .local v6, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto/16 :goto_0

    #@8f
    .line 454
    .end local v6    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v4, "policiesCritical":Z
    .restart local v23    # "currCertPolicies":Lsun/security/x509/CertificatePoliciesExtension;
    :catch_0
    move-exception v26

    #@90
    .line 455
    .local v26, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    #@92
    const-string/jumbo v5, "Exception while retrieving policyOIDs"

    #@95
    move-object/from16 v0, v26

    #@97
    invoke-direct {v3, v5, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9a
    throw v3

    #@9b
    .line 475
    .end local v26    # "ioe":Ljava/io/IOException;
    .restart local v7    # "curPolicy":Ljava/lang/String;
    .restart local v21    # "curPolInfo":Lsun/security/x509/PolicyInformation;
    .restart local v22    # "curPolInfo$iterator":Ljava/util/Iterator;
    .restart local v24    # "foundAnyPolicy":Z
    .restart local v27    # "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    :cond_4
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@9d
    if-eqz v3, :cond_5

    #@9f
    .line 476
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@a1
    new-instance v5, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v9, "PolicyChecker.processPolicies() processing policy: "

    #@a9
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v5

    #@b1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v5

    #@b5
    invoke-virtual {v3, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@b8
    .line 481
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lsun/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    #@bb
    move-result-object v8

    #@bc
    .line 485
    .local v8, "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    #@bf
    move-result v3

    #@c0
    if-nez v3, :cond_6

    #@c2
    if-eqz p5, :cond_6

    #@c4
    if-eqz v4, :cond_6

    #@c6
    .line 487
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    #@c8
    .line 488
    const-string/jumbo v4, "critical policy qualifiers present in certificate"

    #@cb
    .line 489
    .end local v4    # "policiesCritical":Z
    sget-object v8, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    #@cd
    .end local v8    # "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    const/4 v5, 0x0

    #@ce
    const/4 v6, 0x0

    #@cf
    const/4 v7, -0x1

    #@d0
    .line 487
    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@d3
    .end local v7    # "curPolicy":Ljava/lang/String;
    throw v3

    #@d4
    .line 495
    .restart local v4    # "policiesCritical":Z
    .restart local v7    # "curPolicy":Ljava/lang/String;
    .restart local v8    # "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    :cond_6
    const/4 v9, 0x0

    #@d5
    move/from16 v3, p0

    #@d7
    move/from16 v5, p5

    #@d9
    .line 493
    invoke-static/range {v3 .. v9}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    #@dc
    move-result v25

    #@dd
    .line 497
    .local v25, "foundMatch":Z
    if-nez v25, :cond_2

    #@df
    .line 501
    const/4 v9, 0x1

    #@e0
    move/from16 v3, p0

    #@e2
    move/from16 v5, p5

    #@e4
    .line 499
    invoke-static/range {v3 .. v9}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    #@e7
    goto/16 :goto_1

    #@e9
    .line 507
    .end local v7    # "curPolicy":Ljava/lang/String;
    .end local v8    # "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .end local v21    # "curPolInfo":Lsun/security/x509/PolicyInformation;
    .end local v25    # "foundMatch":Z
    :cond_7
    if-eqz v24, :cond_a

    #@eb
    .line 508
    if-gtz p4, :cond_8

    #@ed
    .line 509
    if-nez p8, :cond_a

    #@ef
    invoke-static/range {p7 .. p7}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    #@f2
    move-result v3

    #@f3
    .line 508
    if-eqz v3, :cond_a

    #@f5
    .line 510
    :cond_8
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@f7
    if-eqz v3, :cond_9

    #@f9
    .line 511
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@fb
    const-string/jumbo v5, "PolicyChecker.processPolicies() processing policy: 2.5.29.32.0"

    #@fe
    invoke-virtual {v3, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@101
    .line 515
    :cond_9
    const-string/jumbo v13, "2.5.29.32.0"

    #@104
    .line 516
    const/4 v15, 0x1

    #@105
    move/from16 v9, p0

    #@107
    move v10, v4

    #@108
    move/from16 v11, p5

    #@10a
    move-object v12, v6

    #@10b
    .line 514
    invoke-static/range {v9 .. v15}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    #@10e
    .line 521
    :cond_a
    move/from16 v0, p0

    #@110
    invoke-virtual {v6, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    #@113
    .line 522
    invoke-virtual {v6}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    #@116
    move-result-object v3

    #@117
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@11a
    move-result v3

    #@11b
    if-nez v3, :cond_b

    #@11d
    .line 523
    const/4 v6, 0x0

    #@11e
    .line 536
    .end local v4    # "policiesCritical":Z
    .end local v22    # "curPolInfo$iterator":Ljava/util/Iterator;
    .end local v24    # "foundAnyPolicy":Z
    .end local v27    # "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    :cond_b
    :goto_2
    if-eqz v6, :cond_c

    #@120
    .line 537
    if-nez p8, :cond_c

    #@122
    move-object/from16 v9, p7

    #@124
    move/from16 v10, p0

    #@126
    move/from16 v11, p3

    #@128
    move-object v12, v6

    #@129
    move v13, v4

    #@12a
    .line 539
    invoke-static/range {v9 .. v14}, Lsun/security/provider/certpath/PolicyChecker;->processPolicyMappings(Lsun/security/x509/X509CertImpl;IILsun/security/provider/certpath/PolicyNodeImpl;ZLjava/util/Set;)Lsun/security/provider/certpath/PolicyNodeImpl;

    #@12d
    move-result-object v6

    #@12e
    .line 548
    :cond_c
    if-eqz v6, :cond_d

    #@130
    const-string/jumbo v3, "2.5.29.32.0"

    #@133
    move-object/from16 v0, p1

    #@135
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@138
    move-result v3

    #@139
    if-eqz v3, :cond_11

    #@13b
    .line 561
    :cond_d
    :goto_3
    if-eqz p8, :cond_e

    #@13d
    .line 563
    move/from16 v0, p2

    #@13f
    move-object/from16 v1, p7

    #@141
    move/from16 v2, p8

    #@143
    invoke-static {v0, v1, v2}, Lsun/security/provider/certpath/PolicyChecker;->mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I

    #@146
    move-result p2

    #@147
    .line 571
    :cond_e
    if-nez p2, :cond_12

    #@149
    if-nez v6, :cond_12

    #@14b
    .line 572
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    #@14d
    .line 573
    const-string/jumbo v16, "non-null policy tree required and policy tree is null"

    #@150
    .line 574
    sget-object v20, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    #@152
    const/16 v17, 0x0

    #@154
    const/16 v18, 0x0

    #@156
    const/16 v19, -0x1

    #@158
    .line 572
    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@15b
    throw v15

    #@15c
    .line 525
    .local v4, "policiesCritical":Z
    :cond_f
    if-nez v23, :cond_b

    #@15e
    .line 526
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@160
    if-eqz v3, :cond_10

    #@162
    .line 527
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@164
    const-string/jumbo v5, "PolicyChecker.processPolicies() no policies present in cert"

    #@167
    invoke-virtual {v3, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@16a
    .line 530
    :cond_10
    const/4 v6, 0x0

    #@16b
    .local v6, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_2

    #@16c
    .line 549
    .end local v4    # "policiesCritical":Z
    .end local v6    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_11
    if-eqz v23, :cond_d

    #@16e
    .line 550
    move/from16 v0, p0

    #@170
    move-object/from16 v1, p1

    #@172
    move-object/from16 v2, v23

    #@174
    invoke-static {v6, v0, v1, v2}, Lsun/security/provider/certpath/PolicyChecker;->removeInvalidNodes(Lsun/security/provider/certpath/PolicyNodeImpl;ILjava/util/Set;Lsun/security/x509/CertificatePoliciesExtension;)Lsun/security/provider/certpath/PolicyNodeImpl;

    #@177
    move-result-object v6

    #@178
    .line 554
    .local v6, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    if-eqz v6, :cond_d

    #@17a
    if-eqz p8, :cond_d

    #@17c
    .line 556
    move/from16 v0, p0

    #@17e
    move-object/from16 v1, p1

    #@180
    invoke-static {v0, v1, v6}, Lsun/security/provider/certpath/PolicyChecker;->rewriteLeafNodes(ILjava/util/Set;Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;

    #@183
    move-result-object v6

    #@184
    goto :goto_3

    #@185
    .line 577
    .end local v6    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_12
    return-object v6
.end method

.method private static processPolicyMappings(Lsun/security/x509/X509CertImpl;IILsun/security/provider/certpath/PolicyNodeImpl;ZLjava/util/Set;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 22
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
            "Ljava/util/Set",
            "<",
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

    #@0
    .prologue
    .line 744
    .local p5, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPolicyMappingsExtension()Lsun/security/x509/PolicyMappingsExtension;

    #@3
    move-result-object v18

    #@4
    .line 746
    .local v18, "polMappingsExt":Lsun/security/x509/PolicyMappingsExtension;
    if-nez v18, :cond_0

    #@6
    .line 747
    return-object p3

    #@7
    .line 749
    :cond_0
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@9
    if-eqz v5, :cond_1

    #@b
    .line 750
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@d
    const-string/jumbo v6, "PolicyChecker.processPolicyMappings() inside policyMapping check"

    #@10
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@13
    .line 753
    :cond_1
    const/4 v14, 0x0

    #@14
    .line 755
    .local v14, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    :try_start_0
    const-string/jumbo v5, "map"

    #@17
    move-object/from16 v0, v18

    #@19
    invoke-virtual {v0, v5}, Lsun/security/x509/PolicyMappingsExtension;->get(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v14

    #@1d
    .line 766
    .local v14, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    const/4 v9, 0x0

    #@1e
    .line 767
    .local v9, "childDeleted":Z
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v17

    #@22
    .local v17, "polMap$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_d

    #@28
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v16

    #@2c
    check-cast v16, Lsun/security/x509/CertificatePolicyMap;

    #@2e
    .line 769
    .local v16, "polMap":Lsun/security/x509/CertificatePolicyMap;
    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/CertificatePolicyMap;->getIssuerIdentifier()Lsun/security/x509/CertificatePolicyId;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    .line 771
    .local v4, "issuerDomain":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/CertificatePolicyMap;->getSubjectIdentifier()Lsun/security/x509/CertificatePolicyId;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@45
    move-result-object v19

    #@46
    .line 772
    .local v19, "subjectDomain":Ljava/lang/String;
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@48
    if-eqz v5, :cond_3

    #@4a
    .line 773
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@4c
    new-instance v6, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v8, "PolicyChecker.processPolicyMappings() issuerDomain = "

    #@54
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@63
    .line 775
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@65
    new-instance v6, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v8, "PolicyChecker.processPolicyMappings() subjectDomain = "

    #@6d
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    move-object/from16 v0, v19

    #@73
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@7e
    .line 779
    :cond_3
    const-string/jumbo v5, "2.5.29.32.0"

    #@81
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v5

    #@85
    if-eqz v5, :cond_5

    #@87
    .line 780
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@89
    .line 781
    const-string/jumbo v3, "encountered an issuerDomainPolicy of ANY_POLICY"

    #@8c
    .line 782
    sget-object v7, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    #@8e
    const/4 v4, 0x0

    #@8f
    const/4 v5, 0x0

    #@90
    const/4 v6, -0x1

    #@91
    .line 780
    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@94
    .end local v4    # "issuerDomain":Ljava/lang/String;
    throw v2

    #@95
    .line 756
    .end local v9    # "childDeleted":Z
    .end local v16    # "polMap":Lsun/security/x509/CertificatePolicyMap;
    .end local v17    # "polMap$iterator":Ljava/util/Iterator;
    .end local v19    # "subjectDomain":Ljava/lang/String;
    .local v14, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    :catch_0
    move-exception v13

    #@96
    .line 757
    .local v13, "e":Ljava/io/IOException;
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@98
    if-eqz v5, :cond_4

    #@9a
    .line 758
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@9c
    const-string/jumbo v6, "PolicyChecker.processPolicyMappings() mapping exception"

    #@9f
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@a2
    .line 760
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    #@a5
    .line 762
    :cond_4
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    #@a7
    const-string/jumbo v6, "Exception while checking mapping"

    #@aa
    invoke-direct {v5, v6, v13}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ad
    throw v5

    #@ae
    .line 785
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v4    # "issuerDomain":Ljava/lang/String;
    .restart local v9    # "childDeleted":Z
    .local v14, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    .restart local v16    # "polMap":Lsun/security/x509/CertificatePolicyMap;
    .restart local v17    # "polMap$iterator":Ljava/util/Iterator;
    .restart local v19    # "subjectDomain":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "2.5.29.32.0"

    #@b1
    move-object/from16 v0, v19

    #@b3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b6
    move-result v5

    #@b7
    if-eqz v5, :cond_6

    #@b9
    .line 786
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    #@bb
    .line 787
    const-string/jumbo v3, "encountered a subjectDomainPolicy of ANY_POLICY"

    #@be
    .line 788
    sget-object v7, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    #@c0
    const/4 v4, 0x0

    #@c1
    const/4 v5, 0x0

    #@c2
    const/4 v6, -0x1

    #@c3
    .line 786
    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@c6
    .end local v4    # "issuerDomain":Ljava/lang/String;
    throw v2

    #@c7
    .line 792
    .restart local v4    # "issuerDomain":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p3

    #@c9
    move/from16 v1, p1

    #@cb
    invoke-virtual {v0, v1, v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    #@ce
    move-result-object v21

    #@cf
    .line 793
    .local v21, "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->isEmpty()Z

    #@d2
    move-result v5

    #@d3
    if-nez v5, :cond_b

    #@d5
    .line 794
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d8
    move-result-object v12

    #@d9
    .local v12, "curNode$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@dc
    move-result v5

    #@dd
    if-eqz v5, :cond_2

    #@df
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e2
    move-result-object v2

    #@e3
    check-cast v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@e5
    .line 795
    .local v2, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    if-gtz p2, :cond_8

    #@e7
    const/4 v5, -0x1

    #@e8
    move/from16 v0, p2

    #@ea
    if-ne v0, v5, :cond_9

    #@ec
    .line 796
    :cond_8
    move-object/from16 v0, v19

    #@ee
    invoke-virtual {v2, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->addExpectedPolicy(Ljava/lang/String;)V

    #@f1
    goto :goto_0

    #@f2
    .line 797
    :cond_9
    if-nez p2, :cond_7

    #@f4
    .line 799
    invoke-virtual {v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    #@f7
    move-result-object v15

    #@f8
    check-cast v15, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@fa
    .line 800
    .local v15, "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@fc
    if-eqz v5, :cond_a

    #@fe
    .line 801
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@100
    new-instance v6, Ljava/lang/StringBuilder;

    #@102
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@105
    const-string/jumbo v8, "PolicyChecker.processPolicyMappings() before deleting: policy tree = "

    #@108
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v6

    #@10c
    move-object/from16 v0, p3

    #@10e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v6

    #@112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v6

    #@116
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@119
    .line 804
    :cond_a
    invoke-virtual {v15, v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    #@11c
    .line 805
    const/4 v9, 0x1

    #@11d
    .line 806
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@11f
    if-eqz v5, :cond_7

    #@121
    .line 807
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@123
    new-instance v6, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v8, "PolicyChecker.processPolicyMappings() after deleting: policy tree = "

    #@12b
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v6

    #@12f
    move-object/from16 v0, p3

    #@131
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v6

    #@135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@138
    move-result-object v6

    #@139
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@13c
    goto :goto_0

    #@13d
    .line 813
    .end local v2    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v12    # "curNode$iterator":Ljava/util/Iterator;
    .end local v15    # "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_b
    if-gtz p2, :cond_c

    #@13f
    const/4 v5, -0x1

    #@140
    move/from16 v0, p2

    #@142
    if-ne v0, v5, :cond_2

    #@144
    .line 815
    :cond_c
    const-string/jumbo v5, "2.5.29.32.0"

    #@147
    move-object/from16 v0, p3

    #@149
    move/from16 v1, p1

    #@14b
    invoke-virtual {v0, v1, v5}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    #@14e
    move-result-object v20

    #@14f
    .line 816
    .local v20, "validAnyNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@152
    move-result-object v11

    #@153
    .local v11, "curAnyNode$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@156
    move-result v5

    #@157
    if-eqz v5, :cond_2

    #@159
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15c
    move-result-object v10

    #@15d
    check-cast v10, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@15f
    .line 818
    .local v10, "curAnyNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v10}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    #@162
    move-result-object v3

    #@163
    check-cast v3, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@165
    .line 820
    .local v3, "curAnyNodeParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v7, Ljava/util/HashSet;

    #@167
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@16a
    .line 821
    .local v7, "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v19

    #@16c
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@16f
    .line 823
    new-instance v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@171
    .line 825
    const/4 v8, 0x1

    #@172
    move-object/from16 v5, p5

    #@174
    move/from16 v6, p4

    #@176
    .line 823
    invoke-direct/range {v2 .. v8}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    #@179
    .restart local v2    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_1

    #@17a
    .line 831
    .end local v2    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v3    # "curAnyNodeParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v4    # "issuerDomain":Ljava/lang/String;
    .end local v7    # "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "curAnyNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v11    # "curAnyNode$iterator":Ljava/util/Iterator;
    .end local v16    # "polMap":Lsun/security/x509/CertificatePolicyMap;
    .end local v19    # "subjectDomain":Ljava/lang/String;
    .end local v20    # "validAnyNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    .end local v21    # "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :cond_d
    if-eqz v9, :cond_f

    #@17c
    .line 832
    move-object/from16 v0, p3

    #@17e
    move/from16 v1, p1

    #@180
    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    #@183
    .line 833
    invoke-virtual/range {p3 .. p3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    #@186
    move-result-object v5

    #@187
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@18a
    move-result v5

    #@18b
    if-nez v5, :cond_f

    #@18d
    .line 834
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@18f
    if-eqz v5, :cond_e

    #@191
    .line 835
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@193
    const-string/jumbo v6, "setting rootNode to null"

    #@196
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@199
    .line 836
    :cond_e
    const/16 p3, 0x0

    #@19b
    .line 840
    .end local p3    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_f
    return-object p3
.end method

.method private static removeInvalidNodes(Lsun/security/provider/certpath/PolicyNodeImpl;ILjava/util/Set;Lsun/security/x509/CertificatePoliciesExtension;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 14
    .param p0, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p1, "certIndex"    # I
    .param p3, "currCertPolicies"    # Lsun/security/x509/CertificatePoliciesExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "I",
            "Ljava/util/Set",
            "<",
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

    #@0
    .prologue
    .line 860
    .local p2, "initPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    #@1
    .line 862
    .local v9, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    :try_start_0
    const-string/jumbo v11, "policies"

    #@4
    move-object/from16 v0, p3

    #@6
    invoke-virtual {v0, v11}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v9

    #@a
    .line 868
    .local v9, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    const/4 v1, 0x0

    #@b
    .line 869
    .local v1, "childDeleted":Z
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v5

    #@f
    .local v5, "curPolInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v11

    #@13
    if-eqz v11, :cond_4

    #@15
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Lsun/security/x509/PolicyInformation;

    #@1b
    .line 871
    .local v4, "curPolInfo":Lsun/security/x509/PolicyInformation;
    invoke-virtual {v4}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    #@1e
    move-result-object v11

    #@1f
    invoke-virtual {v11}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    #@22
    move-result-object v11

    #@23
    invoke-virtual {v11}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    .line 873
    .local v6, "curPolicy":Ljava/lang/String;
    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@29
    if-eqz v11, :cond_1

    #@2b
    .line 874
    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@2d
    new-instance v12, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v13, "PolicyChecker.processPolicies() processing policy second time: "

    #@35
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v12

    #@39
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v12

    #@3d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v12

    #@41
    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@44
    .line 878
    :cond_1
    invoke-virtual {p0, p1, v6}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    #@47
    move-result-object v10

    #@48
    .line 879
    .local v10, "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object v3

    #@4c
    .local v3, "curNode$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v11

    #@50
    if-eqz v11, :cond_0

    #@52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v2

    #@56
    check-cast v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@58
    .line 880
    .local v2, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    #@5b
    move-result-object v8

    #@5c
    check-cast v8, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@5e
    .line 881
    .local v8, "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v8}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    #@61
    move-result-object v11

    #@62
    const-string/jumbo v12, "2.5.29.32.0"

    #@65
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v11

    #@69
    if-eqz v11, :cond_2

    #@6b
    .line 882
    move-object/from16 v0, p2

    #@6d
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@70
    move-result v11

    #@71
    if-nez v11, :cond_2

    #@73
    .line 883
    const-string/jumbo v11, "2.5.29.32.0"

    #@76
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v11

    #@7a
    if-nez v11, :cond_2

    #@7c
    .line 884
    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@7e
    if-eqz v11, :cond_3

    #@80
    .line 885
    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@82
    new-instance v12, Ljava/lang/StringBuilder;

    #@84
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@87
    const-string/jumbo v13, "PolicyChecker.processPolicies() before deleting: policy tree = "

    #@8a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v12

    #@8e
    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v12

    #@92
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v12

    #@96
    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@99
    .line 887
    :cond_3
    invoke-virtual {v8, v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    #@9c
    .line 888
    const/4 v1, 0x1

    #@9d
    .line 889
    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@9f
    if-eqz v11, :cond_2

    #@a1
    .line 890
    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    #@a3
    new-instance v12, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v13, "PolicyChecker.processPolicies() after deleting: policy tree = "

    #@ab
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v12

    #@af
    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v12

    #@b3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v12

    #@b7
    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@ba
    goto :goto_0

    #@bb
    .line 863
    .end local v1    # "childDeleted":Z
    .end local v2    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v3    # "curNode$iterator":Ljava/util/Iterator;
    .end local v4    # "curPolInfo":Lsun/security/x509/PolicyInformation;
    .end local v5    # "curPolInfo$iterator":Ljava/util/Iterator;
    .end local v6    # "curPolicy":Ljava/lang/String;
    .end local v8    # "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v10    # "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    .local v9, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    :catch_0
    move-exception v7

    #@bc
    .line 864
    .local v7, "ioe":Ljava/io/IOException;
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    #@be
    const-string/jumbo v12, "Exception while retrieving policyOIDs"

    #@c1
    invoke-direct {v11, v12, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c4
    throw v11

    #@c5
    .line 897
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v1    # "childDeleted":Z
    .restart local v5    # "curPolInfo$iterator":Ljava/util/Iterator;
    .local v9, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    :cond_4
    if-eqz v1, :cond_5

    #@c7
    .line 898
    invoke-virtual {p0, p1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    #@ca
    .line 899
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    #@cd
    move-result-object v11

    #@ce
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@d1
    move-result v11

    #@d2
    if-nez v11, :cond_5

    #@d4
    .line 900
    const/4 p0, 0x0

    #@d5
    .line 904
    .end local p0    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_5
    return-object p0
.end method

.method private static rewriteLeafNodes(ILjava/util/Set;Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 12
    .param p0, "certIndex"    # I
    .param p2, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ")",
            "Lsun/security/provider/certpath/PolicyNodeImpl;"
        }
    .end annotation

    #@0
    .prologue
    .line 597
    .local p1, "initPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v6, "2.5.29.32.0"

    #@3
    invoke-virtual {p2, p0, v6}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    #@6
    move-result-object v8

    #@7
    .line 598
    .local v8, "anyNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_0

    #@d
    .line 599
    return-object p2

    #@e
    .line 601
    :cond_0
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v6

    #@12
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v7

    #@16
    check-cast v7, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@18
    .line 602
    .local v7, "anyNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@1e
    .line 603
    .local v1, "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v1, v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    #@21
    .line 605
    new-instance v9, Ljava/util/HashSet;

    #@23
    invoke-direct {v9, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@26
    .line 606
    .local v9, "initial":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(I)Ljava/util/Set;

    #@29
    move-result-object v6

    #@2a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v10

    #@2e
    .local v10, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_1

    #@34
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@3a
    .line 607
    .local v0, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    invoke-interface {v9, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@41
    goto :goto_0

    #@42
    .line 609
    .end local v0    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_1
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_3

    #@48
    .line 612
    invoke-virtual {p2, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    #@4b
    .line 613
    invoke-virtual {p2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    #@4e
    move-result-object v6

    #@4f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v6

    #@53
    if-nez v6, :cond_2

    #@55
    .line 614
    const/4 p2, 0x0

    #@56
    .line 626
    .end local p2    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_2
    return-object p2

    #@57
    .line 617
    .restart local p2    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_3
    invoke-virtual {v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->isCritical()Z

    #@5a
    move-result v4

    #@5b
    .line 619
    .local v4, "anyCritical":Z
    invoke-virtual {v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyQualifiers()Ljava/util/Set;

    #@5e
    move-result-object v3

    #@5f
    .line 620
    .local v3, "anyQualifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@62
    move-result-object v11

    #@63
    .local v11, "policy$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@66
    move-result v6

    #@67
    if-eqz v6, :cond_2

    #@69
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6c
    move-result-object v2

    #@6d
    check-cast v2, Ljava/lang/String;

    #@6f
    .line 621
    .local v2, "policy":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    #@72
    move-result-object v5

    #@73
    .line 622
    .local v5, "expectedPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    #@75
    .line 623
    const/4 v6, 0x0

    #@76
    .line 622
    invoke-direct/range {v0 .. v6}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    #@79
    .restart local v0    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_1
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    .local p2, "unresCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    check-cast p1, Ljava/security/cert/X509Certificate;

    #@2
    .end local p1    # "cert":Ljava/security/cert/Certificate;
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/PolicyChecker;->checkPolicy(Ljava/security/cert/X509Certificate;)V

    #@5
    .line 182
    if-eqz p2, :cond_0

    #@7
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 177
    :cond_0
    :goto_0
    return-void

    #@e
    .line 183
    :cond_1
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    #@10
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@17
    .line 184
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    #@19
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@20
    .line 185
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@22
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@29
    .line 186
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    #@2b
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    #@32
    goto :goto_0
.end method

.method getPolicyTree()Ljava/security/cert/PolicyNode;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 916
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 917
    return-object v2

    #@6
    .line 919
    :cond_0
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    #@8
    invoke-virtual {v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    #@b
    move-result-object v0

    #@c
    .line 920
    .local v0, "policyTree":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->setImmutable()V

    #@f
    .line 921
    return-object v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 2
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
    .line 156
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 157
    new-instance v0, Ljava/util/HashSet;

    #@6
    const/4 v1, 0x4

    #@7
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    #@a
    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    #@c
    .line 158
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    #@e
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    #@10
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    #@19
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    #@1b
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22
    .line 160
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    #@24
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@26
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2d
    .line 161
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    #@2f
    sget-object v1, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    #@31
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@38
    .line 162
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    #@3a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    #@40
    .line 164
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    #@42
    return-object v0
.end method

.method public init(Z)V
    .locals 2
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 120
    if-eqz p1, :cond_0

    #@3
    .line 121
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    #@5
    .line 122
    const-string/jumbo v1, "forward checking not supported"

    #@8
    .line 121
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 125
    :cond_0
    const/4 v0, 0x1

    #@d
    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    #@f
    .line 126
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyChecker;->expPolicyRequired:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    move v0, v1

    #@14
    :goto_0
    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    #@16
    .line 127
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyChecker;->polMappingInhibited:Z

    #@18
    if-eqz v0, :cond_2

    #@1a
    move v0, v1

    #@1b
    :goto_1
    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    #@1d
    .line 128
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyChecker;->anyPolicyInhibited:Z

    #@1f
    if-eqz v0, :cond_3

    #@21
    :goto_2
    iput v1, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    #@23
    .line 119
    return-void

    #@24
    .line 126
    :cond_1
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 127
    :cond_2
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    #@2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 128
    :cond_3
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    #@30
    add-int/lit8 v1, v0, 0x1

    #@32
    goto :goto_2
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    #@0
    .prologue
    .line 141
    const/4 v0, 0x0

    #@1
    return v0
.end method
