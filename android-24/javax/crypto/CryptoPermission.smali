.class Ljavax/crypto/CryptoPermission;
.super Ljava/security/Permission;
.source "CryptoPermission.java"


# static fields
.field static final ALG_NAME_WILDCARD:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "alg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    #@6
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "maxKeySize"    # I

    #@0
    .prologue
    .line 40
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    #@6
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "maxKeySize"    # I
    .param p3, "exemptionMechanism"    # Ljava/lang/String;

    #@0
    .prologue
    .line 51
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    #@6
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "maxKeySize"    # I
    .param p3, "algParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    #@0
    .prologue
    .line 44
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    #@6
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)V
    .locals 1
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "maxKeySize"    # I
    .param p3, "algParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "exemptionMechanism"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    #@6
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "exemptionMechanism"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    #@6
    return-void
.end method


# virtual methods
.method public getActions()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method final getAlgorithm()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method final getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method final getCheckParam()Z
    .locals 1

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method final getExemptionMechanism()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method final getMaxKeySize()I
    .locals 1

    #@0
    .prologue
    .line 75
    const v0, 0x7fffffff

    #@3
    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 1
    .param p1, "p"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 58
    const/4 v0, 0x1

    #@1
    return v0
.end method
