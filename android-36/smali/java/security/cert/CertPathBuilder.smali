.class public Ljava/security/cert/CertPathBuilder;
.super Ljava/lang/Object;
.source "CertPathBuilder.java"


# static fields
.field private static final greylist-max-o CPB_TYPE:Ljava/lang/String; = "certpathbuilder.type"


# instance fields
.field private final greylist-max-o algorithm:Ljava/lang/String;

.field private final greylist-max-o builderSpi:Ljava/security/cert/CertPathBuilderSpi;

.field private final greylist-max-o provider:Ljava/security/Provider;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/security/cert/CertPathBuilderSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .param p1, "builderSpi"    # Ljava/security/cert/CertPathBuilderSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Ljava/security/cert/CertPathBuilder;->builderSpi:Ljava/security/cert/CertPathBuilderSpi;

    .line 128
    iput-object p2, p0, Ljava/security/cert/CertPathBuilder;->provider:Ljava/security/Provider;

    .line 129
    iput-object p3, p0, Ljava/security/cert/CertPathBuilder;->algorithm:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public static final whitelist test-api getDefaultType()Ljava/lang/String;
    .registers 2

    .line 320
    new-instance v0, Ljava/security/cert/CertPathBuilder$1;

    invoke-direct {v0}, Ljava/security/cert/CertPathBuilder$1;-><init>()V

    .line 321
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    .local v0, "cpbtype":Ljava/lang/String;
    if-nez v0, :cond_10

    const-string v1, "PKIX"

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 172
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    const-string v0, "CertPathBuilder"

    const-class v1, Ljava/security/cert/CertPathBuilderSpi;

    invoke-static {v0, v1, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 175
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/cert/CertPathBuilder;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertPathBuilderSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/cert/CertPathBuilder;-><init>(Ljava/security/cert/CertPathBuilderSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 218
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    const-string v0, "CertPathBuilder"

    const-class v1, Ljava/security/cert/CertPathBuilderSpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 221
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/cert/CertPathBuilder;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertPathBuilderSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/cert/CertPathBuilder;-><init>(Ljava/security/cert/CertPathBuilderSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertPathBuilder;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 258
    const-string v0, "null algorithm name"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    const-string v0, "CertPathBuilder"

    const-class v1, Ljava/security/cert/CertPathBuilderSpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 261
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/cert/CertPathBuilder;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertPathBuilderSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/cert/CertPathBuilder;-><init>(Ljava/security/cert/CertPathBuilderSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final whitelist test-api build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .registers 3
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Ljava/security/cert/CertPathBuilder;->builderSpi:Ljava/security/cert/CertPathBuilderSpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertPathBuilderSpi;->engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 280
    iget-object v0, p0, Ljava/security/cert/CertPathBuilder;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 271
    iget-object v0, p0, Ljava/security/cert/CertPathBuilder;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api getRevocationChecker()Ljava/security/cert/CertPathChecker;
    .registers 2

    .line 346
    iget-object v0, p0, Ljava/security/cert/CertPathBuilder;->builderSpi:Ljava/security/cert/CertPathBuilderSpi;

    invoke-virtual {v0}, Ljava/security/cert/CertPathBuilderSpi;->engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v0

    return-object v0
.end method
