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
.field private cipherSuites:[Ljava/lang/String;

.field private supportsTlsExtensions:Z

.field private tls:Z

.field private tlsVersions:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/ConnectionSpec$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/ConnectionSpec$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/okhttp/ConnectionSpec;)V
    .locals 1
    .param p1, "connectionSpec"    # Lcom/android/okhttp/ConnectionSpec;

    #@0
    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 282
    iget-boolean v0, p1, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    #@5
    iput-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    #@7
    .line 283
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec;->-get0(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    #@d
    .line 284
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec;->-get1(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    #@13
    .line 285
    iget-boolean v0, p1, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    #@15
    iput-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    #@17
    .line 281
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "tls"    # Z

    #@0
    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 278
    iput-boolean p1, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    #@5
    .line 277
    return-void
.end method


# virtual methods
.method public build()Lcom/android/okhttp/ConnectionSpec;
    .locals 2

    #@0
    .prologue
    .line 348
    new-instance v0, Lcom/android/okhttp/ConnectionSpec;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/ConnectionSpec;-><init>(Lcom/android/okhttp/ConnectionSpec$Builder;Lcom/android/okhttp/ConnectionSpec;)V

    #@6
    return-object v0
.end method

.method public varargs cipherSuites([Lcom/android/okhttp/CipherSuite;)Lcom/android/okhttp/ConnectionSpec$Builder;
    .locals 4
    .param p1, "cipherSuites"    # [Lcom/android/okhttp/CipherSuite;

    #@0
    .prologue
    .line 289
    iget-boolean v2, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    #@2
    if-nez v2, :cond_0

    #@4
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v3, "no cipher suites for cleartext connections"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 292
    :cond_0
    array-length v2, p1

    #@e
    new-array v1, v2, [Ljava/lang/String;

    #@10
    .line 293
    .local v1, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@12
    if-ge v0, v2, :cond_1

    #@14
    .line 294
    aget-object v2, p1, v0

    #@16
    iget-object v2, v2, Lcom/android/okhttp/CipherSuite;->javaName:Ljava/lang/String;

    #@18
    aput-object v2, v1, v0

    #@1a
    .line 293
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 296
    :cond_1
    iput-object v1, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    #@1f
    .line 297
    return-object p0
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;
    .locals 2
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 301
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    #@3
    if-nez v0, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "no cipher suites for cleartext connections"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 303
    :cond_0
    if-nez p1, :cond_1

    #@10
    .line 304
    iput-object v1, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    #@12
    .line 310
    :goto_0
    return-object p0

    #@13
    .line 307
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, [Ljava/lang/String;

    #@19
    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    #@1b
    goto :goto_0
.end method

.method public supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;
    .locals 2
    .param p1, "supportsTlsExtensions"    # Z

    #@0
    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "no TLS extensions for cleartext connections"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 343
    :cond_0
    iput-boolean p1, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    #@f
    .line 344
    return-object p0
.end method

.method public varargs tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;
    .locals 4
    .param p1, "tlsVersions"    # [Lcom/android/okhttp/TlsVersion;

    #@0
    .prologue
    .line 314
    iget-boolean v2, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    #@2
    if-nez v2, :cond_0

    #@4
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v3, "no TLS versions for cleartext connections"

    #@9
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v2

    #@d
    .line 315
    :cond_0
    array-length v2, p1

    #@e
    if-nez v2, :cond_1

    #@10
    .line 316
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v3, "At least one TlsVersion is required"

    #@15
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2

    #@19
    .line 320
    :cond_1
    array-length v2, p1

    #@1a
    new-array v1, v2, [Ljava/lang/String;

    #@1c
    .line 321
    .local v1, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@1e
    if-ge v0, v2, :cond_2

    #@20
    .line 322
    aget-object v2, p1, v0

    #@22
    iget-object v2, v2, Lcom/android/okhttp/TlsVersion;->javaName:Ljava/lang/String;

    #@24
    aput-object v2, v1, v0

    #@26
    .line 321
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 324
    :cond_2
    iput-object v1, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    #@2b
    .line 325
    return-object p0
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;
    .locals 2
    .param p1, "tlsVersions"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 329
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    #@3
    if-nez v0, :cond_0

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "no TLS versions for cleartext connections"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 331
    :cond_0
    if-nez p1, :cond_1

    #@10
    .line 332
    iput-object v1, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    #@12
    .line 338
    :goto_0
    return-object p0

    #@13
    .line 335
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, [Ljava/lang/String;

    #@19
    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    #@1b
    goto :goto_0
.end method
