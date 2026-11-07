.class public Lsun/security/util/DisabledAlgorithmConstraints;
.super Lsun/security/util/AbstractAlgorithmConstraints;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/DisabledAlgorithmConstraints$Constraints;,
        Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;,
        Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;,
        Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    }
.end annotation


# static fields
.field public static final blacklist PROPERTY_CERTPATH_DISABLED_ALGS:Ljava/lang/String; = "jdk.certpath.disabledAlgorithms"

.field public static final blacklist PROPERTY_JAR_DISABLED_ALGS:Ljava/lang/String; = "jdk.jar.disabledAlgorithms"

.field public static final blacklist PROPERTY_TLS_DISABLED_ALGS:Ljava/lang/String; = "jdk.tls.disabledAlgorithms"

.field private static final greylist-max-o debug:Lsun/security/util/Debug;


# instance fields
.field private final greylist-max-o algorithmConstraints:Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

.field private final greylist-max-o disabledAlgorithms:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetdebug()Lsun/security/util/Debug;
    .registers 1

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 73
    new-instance v0, Lsun/security/util/AlgorithmDecomposer;

    invoke-direct {v0}, Lsun/security/util/AlgorithmDecomposer;-><init>()V

    invoke-direct {p0, p1, v0}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)V

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)V
    .registers 5
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "decomposer"    # Lsun/security/util/AlgorithmDecomposer;

    .line 86
    invoke-direct {p0, p2}, Lsun/security/util/AbstractAlgorithmConstraints;-><init>(Lsun/security/util/AlgorithmDecomposer;)V

    .line 87
    invoke-static {p1}, Lsun/security/util/DisabledAlgorithmConstraints;->getAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    .line 88
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

    iget-object v1, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->algorithmConstraints:Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

    .line 89
    return-void
.end method

.method private greylist-max-o checkConstraints(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V
    .registers 13
    .param p2, "cp"    # Lsun/security/util/CertConstraintParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Lsun/security/util/CertConstraintParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 195
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    invoke-virtual {p2}, Lsun/security/util/CertConstraintParameters;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 196
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "algorithm":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 207
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 215
    iget-object v2, p0, Lsun/security/util/DisabledAlgorithmConstraints;->algorithmConstraints:Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

    invoke-virtual {v2, p2}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->permits(Lsun/security/util/CertConstraintParameters;)V

    .line 217
    return-void

    .line 208
    :cond_23
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Algorithm constraints check failed on disabled public key algorithm: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    sget-object v8, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v3

    .line 200
    :cond_41
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Algorithm constraints check failed on disabled signature algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, -0x1

    sget-object v9, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v4
.end method

.method private greylist-max-o checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .registers 8
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    .line 168
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    if-eqz p3, :cond_25

    .line 173
    const/4 v0, 0x0

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_12

    .line 174
    invoke-virtual {p0, p1, p2, p4}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 175
    return v0

    .line 180
    :cond_12
    invoke-interface {p3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 181
    return v0

    .line 185
    :cond_1e
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->algorithmConstraints:Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

    invoke-virtual {v0, p3}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->permits(Ljava/security/Key;)Z

    move-result v0

    return v0

    .line 169
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist checkProperty(Ljava/lang/String;)Z
    .registers 8
    .param p1, "param"    # Ljava/lang/String;

    .line 154
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_20

    aget-object v4, v0, v3

    .line 156
    .local v4, "block":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1d

    .line 157
    const/4 v0, 0x1

    return v0

    .line 155
    .end local v4    # "block":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 160
    :cond_20
    return v2
.end method

.method public final blacklist permits(Ljava/util/Set;Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 149
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    new-instance v0, Lsun/security/util/CertConstraintParameters;

    invoke-direct {v0, p2}, Lsun/security/util/CertConstraintParameters;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1, v0}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V

    .line 150
    return-void
.end method

.method public final blacklist permits(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V
    .registers 3
    .param p2, "cp"    # Lsun/security/util/CertConstraintParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Lsun/security/util/CertConstraintParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 140
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    invoke-direct {p0, p1, p2}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V

    .line 141
    return-void
.end method

.method public final whitelist test-api permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .registers 6
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    .line 99
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 104
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    iget-object v1, p0, Lsun/security/util/DisabledAlgorithmConstraints;->decomposer:Lsun/security/util/AlgorithmDecomposer;

    invoke-static {v0, p2, v1}, Lsun/security/util/DisabledAlgorithmConstraints;->checkAlgorithm([Ljava/lang/String;Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)Z

    move-result v0

    return v0

    .line 100
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cryptographic primitive specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .registers 7
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    .line 124
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    .line 128
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    return v0

    .line 125
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No algorithm name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api permits(Ljava/util/Set;Ljava/security/Key;)Z
    .registers 5
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    .line 113
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    return v0
.end method
