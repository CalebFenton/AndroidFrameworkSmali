.class public final Lcom/android/org/conscrypt/JSSEProvider;
.super Ljava/security/Provider;
.source "JSSEProvider.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x2aaf083489ce78ebL


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 47
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "Harmony JSSE Provider"

    const-string v3, "HarmonyJSSE"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 49
    const-class v0, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyManagerFactory.PKIX"

    invoke-virtual {p0, v1, v0}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "Alg.Alias.KeyManagerFactory.X509"

    const-string v1, "PKIX"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-class v0, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TrustManagerFactory.PKIX"

    invoke-virtual {p0, v2, v0}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "Alg.Alias.TrustManagerFactory.X509"

    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-class v0, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyStore.AndroidCAStore"

    invoke-virtual {p0, v1, v0}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method
