.class public final Lcom/android/okhttp/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o cipherSuites:[Ljava/lang/String;

.field private greylist-max-o supportsTlsExtensions:Z

.field private greylist-max-o tls:Z

.field private greylist-max-o tlsVersions:[Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/okhttp/ConnectionSpec;)V
    .registers 3

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    # getter for: Lcom/android/okhttp/ConnectionSpec;->tls:Z
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec;->access$400(Lcom/android/okhttp/ConnectionSpec;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    .line 266
    # getter for: Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec;->access$500(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 267
    # getter for: Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec;->access$600(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 268
    # getter for: Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec;->access$700(Lcom/android/okhttp/ConnectionSpec;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Z)V
    .registers 2

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-boolean p1, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/ConnectionSpec$Builder;)Z
    .registers 1

    .line 254
    iget-boolean p0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    return p0
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/ConnectionSpec$Builder;)Z
    .registers 1

    .line 254
    iget-boolean p0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return p0
.end method


# virtual methods
.method public greylist-max-o allEnabledCipherSuites()Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 2

    .line 272
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0

    .line 272
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o allEnabledTlsVersions()Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 2

    .line 299
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0

    .line 299
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o build()Lcom/android/okhttp/ConnectionSpec;
    .registers 3

    .line 333
    new-instance v0, Lcom/android/okhttp/ConnectionSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/ConnectionSpec;-><init>(Lcom/android/okhttp/ConnectionSpec$Builder;Lcom/android/okhttp/ConnectionSpec$1;)V

    return-object v0
.end method

.method public varargs blacklist cipherSuites([Lcom/android/okhttp/CipherSuite;)Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 5

    .line 278
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_19

    .line 280
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 281
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 282
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/okhttp/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 284
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object p0

    return-object p0

    .line 278
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no cipher suites for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs blacklist cipherSuites([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 3

    .line 288
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_18

    .line 290
    array-length v0, p1

    if-eqz v0, :cond_10

    .line 294
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0

    .line 291
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one cipher suite is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 288
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no cipher suites for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 3

    .line 327
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_7

    .line 328
    iput-boolean p1, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-object p0

    .line 327
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no TLS extensions for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs blacklist tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 5

    .line 305
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_19

    .line 307
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 308
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 309
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/okhttp/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 312
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object p0

    return-object p0

    .line 305
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no TLS versions for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs blacklist tlsVersions([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 3

    .line 316
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_18

    .line 318
    array-length v0, p1

    if-eqz v0, :cond_10

    .line 322
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0

    .line 319
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one TLS version is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no TLS versions for cleartext connections"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
