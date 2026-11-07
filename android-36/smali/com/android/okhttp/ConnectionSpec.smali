.class public final Lcom/android/okhttp/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o APPROVED_CIPHER_SUITES:[Lcom/android/okhttp/CipherSuite;

.field public static final greylist-max-o CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

.field public static final greylist-max-o COMPATIBLE_TLS:Lcom/android/okhttp/ConnectionSpec;

.field public static final greylist-max-o MODERN_TLS:Lcom/android/okhttp/ConnectionSpec;


# instance fields
.field private final greylist-max-o cipherSuites:[Ljava/lang/String;

.field private final greylist-max-o supportsTlsExtensions:Z

.field private final greylist-max-o tls:Z

.field private final greylist-max-o tlsVersions:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 45
    sget-object v0, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    sget-object v2, Lcom/android/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    sget-object v3, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    sget-object v4, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    sget-object v5, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    sget-object v6, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    sget-object v7, Lcom/android/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    sget-object v8, Lcom/android/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    sget-object v9, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    sget-object v10, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    sget-object v11, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    sget-object v12, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    filled-new-array/range {v0 .. v12}, [Lcom/android/okhttp/CipherSuite;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lcom/android/okhttp/CipherSuite;

    .line 66
    new-instance v1, Lcom/android/okhttp/ConnectionSpec$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    .line 67
    invoke-virtual {v1, v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites([Lcom/android/okhttp/CipherSuite;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    sget-object v3, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    sget-object v4, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    filled-new-array {v1, v3, v4}, [Lcom/android/okhttp/TlsVersion;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v2}, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/android/okhttp/ConnectionSpec;

    .line 73
    new-instance v1, Lcom/android/okhttp/ConnectionSpec$Builder;

    invoke-direct {v1, v0}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Lcom/android/okhttp/ConnectionSpec;)V

    filled-new-array {v4}, [Lcom/android/okhttp/TlsVersion;

    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v2}, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->COMPATIBLE_TLS:Lcom/android/okhttp/ConnectionSpec;

    .line 79
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    return-void
.end method

.method private constructor greylist-max-o <init>(Lcom/android/okhttp/ConnectionSpec$Builder;)V
    .registers 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    # getter for: Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->access$000(Lcom/android/okhttp/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    .line 88
    # getter for: Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->access$100(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 89
    # getter for: Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->access$200(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 90
    # getter for: Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->access$300(Lcom/android/okhttp/ConnectionSpec$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/ConnectionSpec$Builder;Lcom/android/okhttp/ConnectionSpec$1;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Lcom/android/okhttp/ConnectionSpec;-><init>(Lcom/android/okhttp/ConnectionSpec$Builder;)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/ConnectionSpec;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    return p0
.end method

.method static synthetic blacklist access$500(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$700(Lcom/android/okhttp/ConnectionSpec;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    return p0
.end method

.method private static greylist-max-o nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    .line 200
    array-length v1, p0

    if-eqz v1, :cond_1d

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_1d

    .line 203
    :cond_c
    array-length v1, p0

    move v2, v0

    :goto_e
    if-ge v2, v1, :cond_1d

    aget-object v3, p0, v2

    .line 204
    invoke-static {p1, v3}, Lcom/android/okhttp/internal/Util;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1d
    :goto_1d
    return v0
.end method

.method private greylist-max-o supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/android/okhttp/ConnectionSpec;
    .registers 7

    .line 146
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 147
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_15

    .line 148
    :cond_11
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_15
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_24

    .line 150
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_28

    .line 151
    :cond_24
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_28
    if-eqz p2, :cond_3a

    .line 155
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    const-string p2, "TLS_FALLBACK_SCSV"

    invoke-static {p1, p2}, Lcom/android/okhttp/internal/Util;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 156
    invoke-static {v0, p2}, Lcom/android/okhttp/internal/Util;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_3a
    new-instance p1, Lcom/android/okhttp/ConnectionSpec$Builder;

    invoke-direct {p1, p0}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Lcom/android/okhttp/ConnectionSpec;)V

    .line 160
    invoke-virtual {p1, v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object p0

    .line 161
    invoke-virtual {p0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method greylist-max-o apply(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 3

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/android/okhttp/ConnectionSpec;

    move-result-object p0

    .line 133
    iget-object p2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 134
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 136
    :cond_b
    iget-object p0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz p0, :cond_12

    .line 137
    invoke-virtual {p1, p0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public greylist-max-o cipherSuites()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_6
    array-length v0, v0

    new-array v0, v0, [Lcom/android/okhttp/CipherSuite;

    const/4 v1, 0x0

    .line 105
    :goto_a
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 106
    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/okhttp/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/android/okhttp/CipherSuite;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 108
    :cond_1a
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 212
    instance-of v0, p1, Lcom/android/okhttp/ConnectionSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 215
    :cond_a
    check-cast p1, Lcom/android/okhttp/ConnectionSpec;

    .line 216
    iget-boolean v2, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    iget-boolean v3, p1, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    if-eqz v2, :cond_32

    .line 219
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v3, p1, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    .line 220
    :cond_20
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v3, p1, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    .line 221
    :cond_2b
    iget-boolean p0, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean p1, p1, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    if-eq p0, p1, :cond_32

    return v1

    :cond_32
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 229
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    if-eqz v0, :cond_1e

    .line 230
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 231
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 232
    iget-boolean p0, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr v1, p0

    return v1

    :cond_1e
    const/16 p0, 0x11

    return p0
.end method

.method public greylist-max-o isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .registers 5

    .line 177
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 181
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 182
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/okhttp/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 186
    :cond_15
    iget-object p0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz p0, :cond_24

    .line 187
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/okhttp/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_24

    return v1

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public greylist-max-o isTls()Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    return p0
.end method

.method public greylist-max-o supportsTlsExtensions()Z
    .registers 1

    .line 126
    iget-boolean p0, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    return p0
.end method

.method public greylist-max-o tlsVersions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/TlsVersion;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_6
    array-length v0, v0

    new-array v0, v0, [Lcom/android/okhttp/TlsVersion;

    const/4 v1, 0x0

    .line 119
    :goto_a
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 120
    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/okhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/android/okhttp/TlsVersion;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 122
    :cond_1a
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 238
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    if-nez v0, :cond_7

    .line 239
    const-string p0, "ConnectionSpec()"

    return-object p0

    .line 242
    :cond_7
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    .line 243
    :goto_17
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
