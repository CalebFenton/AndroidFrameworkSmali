.class public Ljava/security/cert/CertPathValidator;
.super Ljava/lang/Object;
.source "CertPathValidator.java"


# static fields
.field private static final greylist-max-o CPV_TYPE:Ljava/lang/String; = "certpathvalidator.type"


# instance fields
.field private final greylist-max-o algorithm:Ljava/lang/String;

.field private final greylist-max-o provider:Ljava/security/Provider;

.field private final greylist-max-o validatorSpi:Ljava/security/cert/CertPathValidatorSpi;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .param p1, "validatorSpi"    # Ljava/security/cert/CertPathValidatorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Ljava/security/cert/CertPathValidator;->validatorSpi:Ljava/security/cert/CertPathValidatorSpi;

    .line 129
    iput-object p2, p0, Ljava/security/cert/CertPathValidator;->provider:Ljava/security/Provider;

    .line 130
    iput-object p3, p0, Ljava/security/cert/CertPathValidator;->algorithm:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public static final whitelist test-api getDefaultType()Ljava/lang/String;
    .registers 2

    .line 332
    new-instance v0, Ljava/security/cert/CertPathValidator$1;

    invoke-direct {v0}, Ljava/security/cert/CertPathValidator$1;-><init>()V

    .line 333
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    .local v0, "cpvtype":Ljava/lang/String;
    if-nez v0, :cond_10

    const-string v1, "PKIX"

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 173
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    const-string v0, "CertPathValidator"

    const-class v1, Ljava/security/cert/CertPathValidatorSpi;

    invoke-static {v0, v1, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 176
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/cert/CertPathValidator;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertPathValidatorSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/cert/CertPathValidator;-><init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 220
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    const-string v0, "CertPathValidator"

    const-class v1, Ljava/security/cert/CertPathValidatorSpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 223
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/cert/CertPathValidator;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertPathValidatorSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/cert/CertPathValidator;-><init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertPathValidator;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 260
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    const-string v0, "CertPathValidator"

    const-class v1, Ljava/security/cert/CertPathValidatorSpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 263
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/cert/CertPathValidator;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertPathValidatorSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/cert/CertPathValidator;-><init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 283
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 274
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api getRevocationChecker()Ljava/security/cert/CertPathChecker;
    .registers 2

    .line 358
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->validatorSpi:Ljava/security/cert/CertPathValidatorSpi;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorSpi;->engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .registers 4
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->validatorSpi:Ljava/security/cert/CertPathValidatorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/cert/CertPathValidatorSpi;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v0

    return-object v0
.end method
