.class Ljavax/crypto/CryptoPermission;
.super Ljava/security/Permission;
.source "CryptoPermission.java"


# static fields
.field static final blacklist ALG_NAME_WILDCARD:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Ljavax/crypto/CryptoPermission;->ALG_NAME_WILDCARD:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "alg"    # Ljava/lang/String;

    .line 40
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "maxKeySize"    # I

    .line 42
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "maxKeySize"    # I
    .param p3, "exemptionMechanism"    # Ljava/lang/String;

    .line 53
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "maxKeySize"    # I
    .param p3, "algParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 46
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)V
    .registers 6
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "maxKeySize"    # I
    .param p3, "algParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "exemptionMechanism"    # Ljava/lang/String;

    .line 58
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "exemptionMechanism"    # Ljava/lang/String;

    .line 49
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getActions()Ljava/lang/String;
    .registers 2

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method final blacklist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method final blacklist getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method final blacklist getCheckParam()Z
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method final blacklist getExemptionMechanism()Ljava/lang/String;
    .registers 2

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method final blacklist getMaxKeySize()I
    .registers 2

    .line 77
    const v0, 0x7fffffff

    return v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "p"    # Ljava/security/Permission;

    .line 60
    const/4 v0, 0x1

    return v0
.end method
