.class public abstract Lsun/security/ssl/SunJSSE;
.super Ljava/security/Provider;
.source "SunJSSE.java"


# static fields
.field static cryptoProvider:Ljava/security/Provider; = null

.field private static fips:Ljava/lang/Boolean; = null

.field private static fipsInfo:Ljava/lang/String; = null

.field private static info:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x2cd9c06322ee4a2dL


# direct methods
.method static synthetic -wrap0(Lsun/security/ssl/SunJSSE;Z)V
    .locals 0
    .param p1, "isfips"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lsun/security/ssl/SunJSSE;->doRegister(Z)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 62
    const-string/jumbo v0, "Sun JSSE provider(PKCS12, SunX509 key/trust factories, SSLv3, TLSv1)"

    #@3
    sput-object v0, Lsun/security/ssl/SunJSSE;->info:Ljava/lang/String;

    #@5
    .line 66
    const-string/jumbo v0, "Sun JSSE provider (FIPS mode, crypto provider "

    #@8
    .line 65
    sput-object v0, Lsun/security/ssl/SunJSSE;->fipsInfo:Ljava/lang/String;

    #@a
    .line 58
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 106
    const-string/jumbo v0, "SunJSSE"

    #@3
    sget-object v1, Lsun/security/ssl/SunJSSE;->info:Ljava/lang/String;

    #@5
    const-wide v2, 0x3ffb333333333333L    # 1.7

    #@a
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@d
    .line 107
    invoke-direct {p0}, Lsun/security/ssl/SunJSSE;->subclassCheck()V

    #@10
    .line 108
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@12
    sget-object v1, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 109
    new-instance v0, Ljava/security/ProviderException;

    #@1c
    .line 110
    const-string/jumbo v1, "SunJSSE is already initialized in FIPS mode"

    #@1f
    .line 109
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 112
    :cond_0
    const/4 v0, 0x0

    #@24
    invoke-direct {p0, v0}, Lsun/security/ssl/SunJSSE;->registerAlgorithms(Z)V

    #@27
    .line 105
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "cryptoProvider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 122
    invoke-static {p1}, Lsun/security/ssl/SunJSSE;->checkNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/String;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {p0, v1, v0}, Lsun/security/ssl/SunJSSE;-><init>(Ljava/security/Provider;Ljava/lang/String;)V

    #@a
    .line 121
    return-void
.end method

.method protected constructor <init>(Ljava/security/Provider;)V
    .locals 2
    .param p1, "cryptoProvider"    # Ljava/security/Provider;

    #@0
    .prologue
    .line 117
    invoke-static {p1}, Lsun/security/ssl/SunJSSE;->checkNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/security/Provider;

    #@6
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Lsun/security/ssl/SunJSSE;-><init>(Ljava/security/Provider;Ljava/lang/String;)V

    #@d
    .line 116
    return-void
.end method

.method private constructor <init>(Ljava/security/Provider;Ljava/lang/String;)V
    .locals 4
    .param p1, "cryptoProvider"    # Ljava/security/Provider;
    .param p2, "providerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    const-string/jumbo v0, "SunJSSE"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    sget-object v2, Lsun/security/ssl/SunJSSE;->fipsInfo:Ljava/lang/String;

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, ")"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    const-wide v2, 0x3ff999999999999aL    # 1.6

    #@22
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@25
    .line 135
    invoke-direct {p0}, Lsun/security/ssl/SunJSSE;->subclassCheck()V

    #@28
    .line 136
    if-nez p1, :cond_0

    #@2a
    .line 139
    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    #@2d
    move-result-object p1

    #@2e
    .line 140
    if-nez p1, :cond_0

    #@30
    .line 141
    new-instance v0, Ljava/security/ProviderException;

    #@32
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "Crypto provider not installed: "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 141
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    .line 145
    :cond_0
    invoke-static {p1}, Lsun/security/ssl/SunJSSE;->ensureFIPS(Ljava/security/Provider;)V

    #@4d
    .line 146
    const/4 v0, 0x1

    #@4e
    invoke-direct {p0, v0}, Lsun/security/ssl/SunJSSE;->registerAlgorithms(Z)V

    #@51
    .line 133
    return-void
.end method

.method private static checkNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 126
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    #@2
    .line 127
    new-instance v0, Ljava/security/ProviderException;

    #@4
    const-string/jumbo v1, "cryptoProvider must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 129
    :cond_0
    return-object p0
.end method

.method private doRegister(Z)V
    .locals 2
    .param p1, "isfips"    # Z

    #@0
    .prologue
    .line 159
    if-nez p1, :cond_0

    #@2
    .line 160
    const-string/jumbo v0, "KeyFactory.RSA"

    #@5
    .line 161
    const-string/jumbo v1, "sun.security.rsa.RSAKeyFactory"

    #@8
    .line 160
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    .line 162
    const-string/jumbo v0, "Alg.Alias.KeyFactory.1.2.840.113549.1.1"

    #@e
    const-string/jumbo v1, "RSA"

    #@11
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 163
    const-string/jumbo v0, "Alg.Alias.KeyFactory.OID.1.2.840.113549.1.1"

    #@17
    const-string/jumbo v1, "RSA"

    #@1a
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 165
    const-string/jumbo v0, "KeyPairGenerator.RSA"

    #@20
    .line 166
    const-string/jumbo v1, "sun.security.rsa.RSAKeyPairGenerator"

    #@23
    .line 165
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 167
    const-string/jumbo v0, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1"

    #@29
    const-string/jumbo v1, "RSA"

    #@2c
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 168
    const-string/jumbo v0, "Alg.Alias.KeyPairGenerator.OID.1.2.840.113549.1.1"

    #@32
    const-string/jumbo v1, "RSA"

    #@35
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 170
    const-string/jumbo v0, "Signature.MD2withRSA"

    #@3b
    .line 171
    const-string/jumbo v1, "sun.security.rsa.RSASignature$MD2withRSA"

    #@3e
    .line 170
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 172
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.2"

    #@44
    const-string/jumbo v1, "MD2withRSA"

    #@47
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 173
    const-string/jumbo v0, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.2"

    #@4d
    .line 174
    const-string/jumbo v1, "MD2withRSA"

    #@50
    .line 173
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 176
    const-string/jumbo v0, "Signature.MD5withRSA"

    #@56
    .line 177
    const-string/jumbo v1, "sun.security.rsa.RSASignature$MD5withRSA"

    #@59
    .line 176
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    .line 178
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    #@5f
    const-string/jumbo v1, "MD5withRSA"

    #@62
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    .line 179
    const-string/jumbo v0, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.4"

    #@68
    .line 180
    const-string/jumbo v1, "MD5withRSA"

    #@6b
    .line 179
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    .line 182
    const-string/jumbo v0, "Signature.SHA1withRSA"

    #@71
    .line 183
    const-string/jumbo v1, "sun.security.rsa.RSASignature$SHA1withRSA"

    #@74
    .line 182
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    .line 184
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    #@7a
    const-string/jumbo v1, "SHA1withRSA"

    #@7d
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    .line 185
    const-string/jumbo v0, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.5"

    #@83
    .line 186
    const-string/jumbo v1, "SHA1withRSA"

    #@86
    .line 185
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    .line 187
    const-string/jumbo v0, "Alg.Alias.Signature.1.3.14.3.2.29"

    #@8c
    const-string/jumbo v1, "SHA1withRSA"

    #@8f
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    .line 188
    const-string/jumbo v0, "Alg.Alias.Signature.OID.1.3.14.3.2.29"

    #@95
    const-string/jumbo v1, "SHA1withRSA"

    #@98
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    .line 191
    :cond_0
    const-string/jumbo v0, "Signature.MD5andSHA1withRSA"

    #@9e
    .line 192
    const-string/jumbo v1, "sun.security.ssl.RSASignature"

    #@a1
    .line 191
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    .line 194
    const-string/jumbo v0, "KeyManagerFactory.SunX509"

    #@a7
    .line 195
    const-string/jumbo v1, "sun.security.ssl.KeyManagerFactoryImpl$SunX509"

    #@aa
    .line 194
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    .line 196
    const-string/jumbo v0, "KeyManagerFactory.NewSunX509"

    #@b0
    .line 197
    const-string/jumbo v1, "sun.security.ssl.KeyManagerFactoryImpl$X509"

    #@b3
    .line 196
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 198
    const-string/jumbo v0, "Alg.Alias.KeyManagerFactory.PKIX"

    #@b9
    const-string/jumbo v1, "NewSunX509"

    #@bc
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bf
    .line 200
    const-string/jumbo v0, "TrustManagerFactory.SunX509"

    #@c2
    .line 201
    const-string/jumbo v1, "sun.security.ssl.TrustManagerFactoryImpl$SimpleFactory"

    #@c5
    .line 200
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c8
    .line 202
    const-string/jumbo v0, "TrustManagerFactory.PKIX"

    #@cb
    .line 203
    const-string/jumbo v1, "sun.security.ssl.TrustManagerFactoryImpl$PKIXFactory"

    #@ce
    .line 202
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d1
    .line 204
    const-string/jumbo v0, "Alg.Alias.TrustManagerFactory.SunPKIX"

    #@d4
    const-string/jumbo v1, "PKIX"

    #@d7
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@da
    .line 205
    const-string/jumbo v0, "Alg.Alias.TrustManagerFactory.X509"

    #@dd
    const-string/jumbo v1, "PKIX"

    #@e0
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e3
    .line 206
    const-string/jumbo v0, "Alg.Alias.TrustManagerFactory.X.509"

    #@e6
    const-string/jumbo v1, "PKIX"

    #@e9
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ec
    .line 208
    const-string/jumbo v0, "SSLContext.TLSv1"

    #@ef
    .line 209
    const-string/jumbo v1, "sun.security.ssl.SSLContextImpl$TLS10Context"

    #@f2
    .line 208
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    .line 210
    const-string/jumbo v0, "Alg.Alias.SSLContext.TLS"

    #@f8
    const-string/jumbo v1, "TLSv1"

    #@fb
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fe
    .line 211
    if-nez p1, :cond_1

    #@100
    .line 212
    const-string/jumbo v0, "Alg.Alias.SSLContext.SSL"

    #@103
    const-string/jumbo v1, "TLSv1"

    #@106
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@109
    .line 213
    const-string/jumbo v0, "Alg.Alias.SSLContext.SSLv3"

    #@10c
    const-string/jumbo v1, "TLSv1"

    #@10f
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@112
    .line 216
    :cond_1
    const-string/jumbo v0, "SSLContext.TLSv1.1"

    #@115
    .line 217
    const-string/jumbo v1, "sun.security.ssl.SSLContextImpl$TLS11Context"

    #@118
    .line 216
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11b
    .line 218
    const-string/jumbo v0, "SSLContext.TLSv1.2"

    #@11e
    .line 219
    const-string/jumbo v1, "sun.security.ssl.SSLContextImpl$TLS12Context"

    #@121
    .line 218
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@124
    .line 220
    const-string/jumbo v0, "SSLContext.Default"

    #@127
    .line 221
    const-string/jumbo v1, "sun.security.ssl.SSLContextImpl$DefaultSSLContext"

    #@12a
    .line 220
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12d
    .line 226
    const-string/jumbo v0, "KeyStore.PKCS12"

    #@130
    .line 227
    const-string/jumbo v1, "sun.security.pkcs12.PKCS12KeyStore"

    #@133
    .line 226
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@136
    .line 158
    return-void
.end method

.method private static declared-synchronized ensureFIPS(Ljava/security/Provider;)V
    .locals 4
    .param p0, "p"    # Ljava/security/Provider;

    #@0
    .prologue
    const-class v1, Lsun/security/ssl/SunJSSE;

    #@2
    monitor-enter v1

    #@3
    .line 88
    :try_start_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 89
    const/4 v0, 0x1

    #@8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    #@e
    .line 90
    sput-object p0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 87
    return-void

    #@12
    .line 92
    :cond_1
    :try_start_1
    sget-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    #@14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_2

    #@1a
    .line 93
    new-instance v0, Ljava/security/ProviderException;

    #@1c
    .line 94
    const-string/jumbo v2, "SunJSSE already initialized in non-FIPS mode"

    #@1f
    .line 93
    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0

    #@26
    .line 96
    :cond_2
    :try_start_2
    sget-object v0, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@28
    if-eq v0, p0, :cond_0

    #@2a
    .line 97
    new-instance v0, Ljava/security/ProviderException;

    #@2c
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "SunJSSE already initialized with FIPS crypto provider "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 99
    sget-object v3, Lsun/security/ssl/SunJSSE;->cryptoProvider:Ljava/security/Provider;

    #@3a
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 97
    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected static declared-synchronized isFIPS()Z
    .locals 2

    #@0
    .prologue
    const-class v1, Lsun/security/ssl/SunJSSE;

    #@2
    monitor-enter v1

    #@3
    .line 79
    :try_start_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 80
    const/4 v0, 0x0

    #@8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    #@e
    .line 82
    :cond_0
    sget-object v0, Lsun/security/ssl/SunJSSE;->fips:Ljava/lang/Boolean;

    #@10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result v0

    #@14
    monitor-exit v1

    #@15
    return v0

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method private registerAlgorithms(Z)V
    .locals 1
    .param p1, "isfips"    # Z

    #@0
    .prologue
    .line 150
    new-instance v0, Lsun/security/ssl/SunJSSE$1;

    #@2
    invoke-direct {v0, p0, p1}, Lsun/security/ssl/SunJSSE$1;-><init>(Lsun/security/ssl/SunJSSE;Z)V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    .line 149
    return-void
.end method

.method private subclassCheck()V
    .locals 3

    #@0
    .prologue
    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    const-class v1, Lcom/sun/net/ssl/internal/ssl/Provider;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 232
    new-instance v0, Ljava/lang/AssertionError;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Illegal subclass: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@25
    throw v0

    #@26
    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    invoke-super {p0}, Ljava/security/Provider;->finalize()V

    #@3
    .line 237
    return-void
.end method
