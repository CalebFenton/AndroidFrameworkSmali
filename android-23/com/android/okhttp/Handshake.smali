.class public final Lcom/android/okhttp/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "cipherSuite"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p3, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    #@5
    .line 43
    iput-object p2, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    #@7
    .line 44
    iput-object p3, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    #@9
    .line 41
    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;
    .locals 3
    .param p0, "cipherSuite"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lcom/android/okhttp/Handshake;"
        }
    .end annotation

    #@0
    .prologue
    .line 71
    .local p1, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p2, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez p0, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "cipherSuite == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 72
    :cond_0
    new-instance v0, Lcom/android/okhttp/Handshake;

    #@d
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    .line 73
    invoke-static {p2}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    #@14
    move-result-object v2

    #@15
    .line 72
    invoke-direct {v0, p0, v1, v2}, Lcom/android/okhttp/Handshake;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    #@18
    return-object v0
.end method

.method public static get(Ljavax/net/ssl/SSLSession;)Lcom/android/okhttp/Handshake;
    .locals 8
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;

    #@0
    .prologue
    .line 48
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 49
    .local v0, "cipherSuite":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    new-instance v6, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v7, "cipherSuite == null"

    #@b
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v6

    #@f
    .line 53
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v4

    #@13
    .line 57
    :goto_0
    if-eqz v4, :cond_1

    #@15
    .line 58
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    #@18
    move-result-object v5

    #@19
    .line 61
    .local v5, "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    #@1c
    move-result-object v2

    #@1d
    .line 62
    .local v2, "localCertificates":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_2

    #@1f
    .line 63
    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    #@22
    move-result-object v3

    #@23
    .line 66
    .local v3, "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_2
    new-instance v6, Lcom/android/okhttp/Handshake;

    #@25
    invoke-direct {v6, v0, v5, v3}, Lcom/android/okhttp/Handshake;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    #@28
    return-object v6

    #@29
    .line 54
    .end local v2    # "localCertificates":[Ljava/security/cert/Certificate;
    .end local v3    # "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v5    # "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v1

    #@2a
    .line 55
    .local v1, "ignored":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v4, 0x0

    #@2b
    .local v4, "peerCertificates":[Ljava/security/cert/Certificate;
    goto :goto_0

    #@2c
    .line 59
    .end local v1    # "ignored":Ljavax/net/ssl/SSLPeerUnverifiedException;
    .end local v4    # "peerCertificates":[Ljava/security/cert/Certificate;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@2f
    move-result-object v5

    #@30
    .restart local v5    # "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    goto :goto_1

    #@31
    .line 64
    .restart local v2    # "localCertificates":[Ljava/security/cert/Certificate;
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@34
    move-result-object v3

    #@35
    .restart local v3    # "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    goto :goto_2
.end method


# virtual methods
.method public cipherSuite()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 106
    instance-of v2, p1, Lcom/android/okhttp/Handshake;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 107
    check-cast v0, Lcom/android/okhttp/Handshake;

    #@9
    .line 108
    .local v0, "that":Lcom/android/okhttp/Handshake;
    iget-object v2, p0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    #@b
    iget-object v3, v0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 109
    iget-object v2, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    #@15
    iget-object v3, v0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    #@17
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    .line 108
    if-eqz v2, :cond_1

    #@1d
    .line 110
    iget-object v1, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    #@1f
    iget-object v2, v0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    #@21
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v1

    #@25
    .line 108
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v1

    #@6
    add-int/lit16 v0, v1, 0x20f

    #@8
    .line 116
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget-object v2, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    #@c
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    #@f
    move-result v2

    #@10
    add-int v0, v1, v2

    #@12
    .line 117
    mul-int/lit8 v1, v0, 0x1f

    #@14
    iget-object v2, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    #@16
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    #@19
    move-result v2

    #@1a
    add-int v0, v1, v2

    #@1c
    .line 118
    return v0
.end method

.method public localCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public localPrincipal()Ljava/security/Principal;
    .locals 2

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 101
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@11
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@14
    move-result-object v0

    #@15
    .line 100
    :goto_0
    return-object v0

    #@16
    .line 102
    :cond_0
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method public peerCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public peerPrincipal()Ljava/security/Principal;
    .locals 2

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 89
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/security/cert/X509Certificate;

    #@11
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@14
    move-result-object v0

    #@15
    .line 88
    :goto_0
    return-object v0

    #@16
    .line 90
    :cond_0
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method
