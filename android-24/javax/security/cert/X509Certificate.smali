.class public abstract Ljavax/security/cert/X509Certificate;
.super Ljavax/security/cert/Certificate;
.source "X509Certificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/cert/X509Certificate$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_X509_CERT_CLASS:Ljava/lang/String;

.field private static X509Provider:Ljava/lang/String; = null

.field private static final X509_PROVIDER:Ljava/lang/String; = "cert.provider.x509v1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 148
    const-class v0, Lcom/sun/security/cert/internal/x509/X509V1CertImpl;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Ljavax/security/cert/X509Certificate;->DEFAULT_X509_CERT_CLASS:Ljava/lang/String;

    #@8
    .line 152
    new-instance v0, Ljavax/security/cert/X509Certificate$1;

    #@a
    invoke-direct {v0}, Ljavax/security/cert/X509Certificate$1;-><init>()V

    #@d
    .line 151
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/lang/String;

    #@13
    sput-object v0, Ljavax/security/cert/X509Certificate;->X509Provider:Ljava/lang/String;

    #@15
    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 134
    invoke-direct {p0}, Ljavax/security/cert/Certificate;-><init>()V

    #@3
    return-void
.end method

.method private static final getInst(Ljava/lang/Object;)Ljavax/security/cert/X509Certificate;
    .locals 14
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    sget-object v1, Ljavax/security/cert/X509Certificate;->X509Provider:Ljava/lang/String;

    #@2
    .line 222
    .local v1, "className":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v11

    #@8
    if-nez v11, :cond_1

    #@a
    .line 227
    :cond_0
    sget-object v1, Ljavax/security/cert/X509Certificate;->DEFAULT_X509_CERT_CLASS:Ljava/lang/String;

    #@c
    .line 230
    :cond_1
    const/4 v9, 0x0

    #@d
    .line 231
    .local v9, "params":[Ljava/lang/Class;
    :try_start_0
    instance-of v11, p0, Ljava/io/InputStream;

    #@f
    if-eqz v11, :cond_2

    #@11
    .line 232
    const/4 v11, 0x1

    #@12
    new-array v10, v11, [Ljava/lang/Class;

    #@14
    const-class v11, Ljava/io/InputStream;

    #@16
    const/4 v12, 0x0

    #@17
    aput-object v11, v10, v12

    #@19
    .local v10, "params":[Ljava/lang/Class;
    move-object v9, v10

    #@1a
    .line 237
    .end local v10    # "params":[Ljava/lang/Class;
    .local v9, "params":[Ljava/lang/Class;
    :goto_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@1d
    move-result-object v0

    #@1e
    .line 240
    .local v0, "certClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@21
    move-result-object v2

    #@22
    .line 243
    .local v2, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v11, 0x1

    #@23
    new-array v11, v11, [Ljava/lang/Object;

    #@25
    const/4 v12, 0x0

    #@26
    aput-object p0, v11, v12

    #@28
    invoke-virtual {v2, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v8

    #@2c
    .line 244
    .local v8, "obj":Ljava/lang/Object;
    check-cast v8, Ljavax/security/cert/X509Certificate;

    #@2e
    .end local v8    # "obj":Ljava/lang/Object;
    return-object v8

    #@2f
    .line 233
    .end local v0    # "certClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v9, "params":[Ljava/lang/Class;
    :cond_2
    instance-of v11, p0, [B

    #@31
    if-eqz v11, :cond_3

    #@33
    .line 234
    const/4 v11, 0x1

    #@34
    new-array v10, v11, [Ljava/lang/Class;

    #@36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@39
    move-result-object v11

    #@3a
    const/4 v12, 0x0

    #@3b
    aput-object v11, v10, v12

    #@3d
    .restart local v10    # "params":[Ljava/lang/Class;
    move-object v9, v10

    #@3e
    .end local v10    # "params":[Ljava/lang/Class;
    .local v9, "params":[Ljava/lang/Class;
    goto :goto_0

    #@3f
    .line 236
    .local v9, "params":[Ljava/lang/Class;
    :cond_3
    new-instance v11, Ljavax/security/cert/CertificateException;

    #@41
    const-string/jumbo v12, "Unsupported argument type"

    #@44
    invoke-direct {v11, v12}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@47
    throw v11
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    #@48
    .line 246
    .end local v9    # "params":[Ljava/lang/Class;
    :catch_0
    move-exception v3

    #@49
    .line 247
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v11, Ljavax/security/cert/CertificateException;

    #@4b
    new-instance v12, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v13, "Could not find class: "

    #@53
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v12

    #@57
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v12

    #@5b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v12

    #@5f
    invoke-direct {v11, v12}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@62
    throw v11

    #@63
    .line 255
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v6

    #@64
    .line 256
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    new-instance v11, Ljavax/security/cert/CertificateException;

    #@66
    new-instance v12, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v13, "Could not find class method: "

    #@6e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v12

    #@72
    .line 257
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    #@75
    move-result-object v13

    #@76
    .line 256
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v12

    #@7a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v12

    #@7e
    invoke-direct {v11, v12}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@81
    throw v11

    #@82
    .line 252
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v7

    #@83
    .line 253
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v11, Ljavax/security/cert/CertificateException;

    #@85
    new-instance v12, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v13, "InvocationTargetException: "

    #@8d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v12

    #@91
    .line 254
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@94
    move-result-object v13

    #@95
    .line 253
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v12

    #@99
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v12

    #@9d
    invoke-direct {v11, v12}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v11

    #@a1
    .line 250
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v5

    #@a2
    .line 251
    .local v5, "e":Ljava/lang/InstantiationException;
    new-instance v11, Ljavax/security/cert/CertificateException;

    #@a4
    new-instance v12, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v13, "Problems instantiating: "

    #@ac
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v12

    #@b0
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v12

    #@b4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v12

    #@b8
    invoke-direct {v11, v12}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@bb
    throw v11

    #@bc
    .line 248
    .end local v5    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v4

    #@bd
    .line 249
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v11, Ljavax/security/cert/CertificateException;

    #@bf
    new-instance v12, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v13, "Could not access class: "

    #@c7
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v12

    #@cb
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v12

    #@cf
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v12

    #@d3
    invoke-direct {v11, v12}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    #@d6
    throw v11
.end method

.method public static final getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;
    .locals 1
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 185
    invoke-static {p0}, Ljavax/security/cert/X509Certificate;->getInst(Ljava/lang/Object;)Ljavax/security/cert/X509Certificate;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static final getInstance([B)Ljavax/security/cert/X509Certificate;
    .locals 1
    .param p0, "certData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    invoke-static {p0}, Ljavax/security/cert/X509Certificate;->getInst(Ljava/lang/Object;)Ljavax/security/cert/X509Certificate;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public abstract checkValidity()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract checkValidity(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation
.end method

.method public abstract getIssuerDN()Ljava/security/Principal;
.end method

.method public abstract getNotAfter()Ljava/util/Date;
.end method

.method public abstract getNotBefore()Ljava/util/Date;
.end method

.method public abstract getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract getSigAlgName()Ljava/lang/String;
.end method

.method public abstract getSigAlgOID()Ljava/lang/String;
.end method

.method public abstract getSigAlgParams()[B
.end method

.method public abstract getSubjectDN()Ljava/security/Principal;
.end method

.method public abstract getVersion()I
.end method
