.class public final Lcom/android/okhttp/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final greylist-max-o cipherSuite:Ljava/lang/String;

.field private final greylist-max-o localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    .line 46
    iput-object p3, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    return-void
.end method

.method public static greylist-max-o get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lcom/android/okhttp/Handshake;"
        }
    .end annotation

    if-eqz p0, :cond_10

    .line 74
    new-instance v0, Lcom/android/okhttp/Handshake;

    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 75
    invoke-static {p2}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/android/okhttp/Handshake;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 73
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cipherSuite == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greylist-max-o get(Ljavax/net/ssl/SSLSession;)Lcom/android/okhttp/Handshake;
    .registers 4

    .line 50
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 55
    :try_start_6
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1
    :try_end_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_13

    .line 60
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_15

    .line 61
    :cond_13
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 63
    :goto_15
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 65
    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_22

    .line 66
    :cond_20
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 68
    :goto_22
    new-instance v2, Lcom/android/okhttp/Handshake;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/okhttp/Handshake;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v2

    .line 51
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cipherSuite == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public greylist-max-o cipherSuite()Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 108
    instance-of v0, p1, Lcom/android/okhttp/Handshake;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 109
    :cond_6
    check-cast p1, Lcom/android/okhttp/Handshake;

    .line 110
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    iget-object v2, p1, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    .line 111
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object p0, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    iget-object p1, p1, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    .line 112
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 118
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 119
    iget-object p0, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public greylist-max-o localCertificates()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object p0, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-o localPrincipal()Ljava/security/Principal;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 103
    iget-object p0, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-o peerCertificates()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-o peerPrincipal()Ljava/security/Principal;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 91
    iget-object p0, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method
