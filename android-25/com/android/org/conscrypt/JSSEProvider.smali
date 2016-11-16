.class public final Lcom/android/org/conscrypt/JSSEProvider;
.super Ljava/security/Provider;
.source "JSSEProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x2aaf083489ce78ebL


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 45
    const-string/jumbo v0, "HarmonyJSSE"

    #@3
    const-string/jumbo v1, "Harmony JSSE Provider"

    #@6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@8
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@b
    .line 47
    const-string/jumbo v0, "KeyManagerFactory.PKIX"

    #@e
    const-class v1, Lcom/android/org/conscrypt/KeyManagerFactoryImpl;

    #@10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 48
    const-string/jumbo v0, "Alg.Alias.KeyManagerFactory.X509"

    #@1a
    const-string/jumbo v1, "PKIX"

    #@1d
    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 50
    const-string/jumbo v0, "TrustManagerFactory.PKIX"

    #@23
    const-class v1, Lcom/android/org/conscrypt/TrustManagerFactoryImpl;

    #@25
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 51
    const-string/jumbo v0, "Alg.Alias.TrustManagerFactory.X509"

    #@2f
    const-string/jumbo v1, "PKIX"

    #@32
    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 53
    const-string/jumbo v0, "KeyStore.AndroidCAStore"

    #@38
    const-class v1, Lcom/android/org/conscrypt/TrustedCertificateKeyStoreSpi;

    #@3a
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {p0, v0, v1}, Lcom/android/org/conscrypt/JSSEProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 44
    return-void
.end method
