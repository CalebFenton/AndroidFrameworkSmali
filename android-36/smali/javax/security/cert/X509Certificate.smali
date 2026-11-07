.class public abstract Ljavax/security/cert/X509Certificate;
.super Ljavax/security/cert/Certificate;
.source "X509Certificate.java"


# static fields
.field private static final greylist-max-o DEFAULT_X509_CERT_CLASS:Ljava/lang/String;

.field private static greylist-max-o X509Provider:Ljava/lang/String; = null

.field private static final greylist-max-o X509_PROVIDER:Ljava/lang/String; = "cert.provider.x509v1"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 145
    const-class v0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/security/cert/X509Certificate;->DEFAULT_X509_CERT_CLASS:Ljava/lang/String;

    .line 148
    new-instance v0, Ljavax/security/cert/X509Certificate$1;

    invoke-direct {v0}, Ljavax/security/cert/X509Certificate$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Ljavax/security/cert/X509Certificate;->X509Provider:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljavax/security/cert/Certificate;-><init>()V

    return-void
.end method

.method private static final greylist-max-o getInst(Ljava/lang/Object;)Ljavax/security/cert/X509Certificate;
    .registers 7
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    .line 216
    sget-object v0, Ljavax/security/cert/X509Certificate;->X509Provider:Ljava/lang/String;

    .line 217
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 222
    :cond_a
    sget-object v0, Ljavax/security/cert/X509Certificate;->DEFAULT_X509_CERT_CLASS:Ljava/lang/String;

    .line 225
    :cond_c
    const/4 v1, 0x0

    .line 226
    .local v1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_d
    instance-of v2, p0, Ljava/io/InputStream;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1a

    .line 227
    new-array v2, v4, [Ljava/lang/Class;

    const-class v4, Ljava/io/InputStream;

    aput-object v4, v2, v3

    .end local v1    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_26

    .line 228
    .end local v2    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v1    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1a
    instance-of v2, p0, [B

    if-eqz v2, :cond_3a

    .line 229
    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 232
    .end local v1    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v2    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 235
    .local v1, "certClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 238
    .local v3, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 239
    .local v4, "obj":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljavax/security/cert/X509Certificate;

    return-object v5

    .line 231
    .end local v2    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "obj":Ljava/lang/Object;
    .local v1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3a
    new-instance v2, Ljavax/security/cert/CertificateException;

    const-string v3, "Unsupported argument type"

    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "className":Ljava/lang/String;
    .end local p0    # "value":Ljava/lang/Object;
    throw v2
    :try_end_42
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_42} :catch_b2
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_42} :catch_98
    .catch Ljava/lang/InstantiationException; {:try_start_d .. :try_end_42} :catch_7e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_42} :catch_60
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_42} :catch_42

    .line 250
    .end local v1    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v0    # "className":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :catch_42
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljavax/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find class method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 252
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_60
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljavax/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InvocationTargetException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 249
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_7e
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljavax/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problems instantiating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_98
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljavax/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not access class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_b2
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljavax/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final whitelist test-api getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;
    .registers 2
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    .line 181
    invoke-static {p0}, Ljavax/security/cert/X509Certificate;->getInst(Ljava/lang/Object;)Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance([B)Ljavax/security/cert/X509Certificate;
    .registers 2
    .param p0, "certData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    .line 206
    invoke-static {p0}, Ljavax/security/cert/X509Certificate;->getInst(Ljava/lang/Object;)Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api checkValidity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api checkValidity(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getIssuerDN()Ljava/security/Principal;
.end method

.method public abstract whitelist test-api getNotAfter()Ljava/util/Date;
.end method

.method public abstract whitelist test-api getNotBefore()Ljava/util/Date;
.end method

.method public abstract whitelist test-api getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract whitelist test-api getSigAlgName()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getSigAlgOID()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getSigAlgParams()[B
.end method

.method public abstract whitelist test-api getSubjectDN()Ljava/security/Principal;
.end method

.method public abstract whitelist test-api getVersion()I
.end method
