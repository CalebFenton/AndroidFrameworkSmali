.class public final Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;
.super Ljava/lang/Object;
.source "AndroidTrustRootIndex.java"

# interfaces
.implements Lcom/android/okhttp/internal/tls/TrustRootIndex;


# instance fields
.field private final blacklist findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

.field private final blacklist trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor blacklist <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 38
    iput-object p1, p0, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public static blacklist get(Ljavax/net/ssl/X509TrustManager;)Lcom/android/okhttp/internal/tls/TrustRootIndex;
    .registers 7

    .line 59
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 62
    new-instance v1, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;

    invoke-direct {v1, p0, v0}, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v1

    :catch_1b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4

    const/4 v0, 0x0

    .line 43
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/TrustAnchor;

    if-eqz p0, :cond_16

    .line 46
    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_15} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    :cond_16
    return-object v0

    .line 49
    :catch_17
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method
