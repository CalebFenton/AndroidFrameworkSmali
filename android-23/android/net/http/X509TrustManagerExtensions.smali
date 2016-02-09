.class public Landroid/net/http/X509TrustManagerExtensions;
.super Ljava/lang/Object;
.source "X509TrustManagerExtensions.java"


# instance fields
.field final mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 3
    .param p1, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    instance-of v0, p1, Lcom/android/org/conscrypt/TrustManagerImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 47
    check-cast p1, Lcom/android/org/conscrypt/TrustManagerImpl;

    #@9
    .end local p1    # "tm":Ljavax/net/ssl/X509TrustManager;
    iput-object p1, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@b
    .line 45
    return-void

    #@c
    .line 49
    .restart local p1    # "tm":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@f
    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "tm is an instance of "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 51
    const-string/jumbo v2, " which is not a supported type of X509TrustManager"

    #@2c
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0
.end method


# virtual methods
.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
