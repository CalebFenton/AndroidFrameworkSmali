.class public final Lcom/android/okhttp/CertificatePinner;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/CertificatePinner$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/okhttp/CertificatePinner;


# instance fields
.field private final hostnameToPins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 112
    new-instance v0, Lcom/android/okhttp/CertificatePinner$Builder;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/CertificatePinner$Builder;-><init>()V

    #@5
    invoke-virtual {v0}, Lcom/android/okhttp/CertificatePinner$Builder;->build()Lcom/android/okhttp/CertificatePinner;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Lcom/android/okhttp/CertificatePinner;->DEFAULT:Lcom/android/okhttp/CertificatePinner;

    #@b
    .line 111
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/CertificatePinner$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/okhttp/CertificatePinner$Builder;

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 117
    invoke-static {p1}, Lcom/android/okhttp/CertificatePinner$Builder;->-get0(Lcom/android/okhttp/CertificatePinner$Builder;)Ljava/util/Map;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableMap(Ljava/util/Map;)Ljava/util/Map;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    #@d
    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/CertificatePinner$Builder;Lcom/android/okhttp/CertificatePinner;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/okhttp/CertificatePinner$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/CertificatePinner;-><init>(Lcom/android/okhttp/CertificatePinner$Builder;)V

    #@3
    return-void
.end method

.method public static pin(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 168
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Certificate pinning requires X509 certificates"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 171
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v1, "sha1/"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    check-cast p0, Ljava/security/cert/X509Certificate;

    #@1b
    .end local p0    # "certificate":Ljava/security/cert/Certificate;
    invoke-static {p0}, Lcom/android/okhttp/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lcom/android/okhttp/okio/ByteString;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method private static sha1(Ljava/security/cert/X509Certificate;)Lcom/android/okhttp/okio/ByteString;
    .locals 1
    .param p0, "x509Certificate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->sha1(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    iget-object v6, p0, Lcom/android/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    #@2
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Ljava/util/List;

    #@8
    .line 132
    .local v3, "pins":Ljava/util/List;, "Ljava/util/List<Lokio/ByteString;>;"
    if-nez v3, :cond_0

    #@a
    return-void

    #@b
    .line 134
    :cond_0
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@f
    move-result v4

    #@10
    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_2

    #@12
    .line 135
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    check-cast v5, Ljava/security/cert/X509Certificate;

    #@18
    .line 136
    .local v5, "x509Certificate":Ljava/security/cert/X509Certificate;
    invoke-static {v5}, Lcom/android/okhttp/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lcom/android/okhttp/okio/ByteString;

    #@1b
    move-result-object v6

    #@1c
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_1

    #@22
    return-void

    #@23
    .line 134
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 140
    .end local v5    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    .line 141
    const-string/jumbo v7, "Certificate pinning failure!"

    #@2e
    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    .line 142
    const-string/jumbo v7, "\n  Peer certificate chain:"

    #@35
    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 143
    .local v1, "message":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@3a
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@3d
    move-result v4

    #@3e
    :goto_1
    if-ge v0, v4, :cond_3

    #@40
    .line 144
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v5

    #@44
    check-cast v5, Ljava/security/cert/X509Certificate;

    #@46
    .line 145
    .restart local v5    # "x509Certificate":Ljava/security/cert/X509Certificate;
    const-string/jumbo v6, "\n    "

    #@49
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    invoke-static {v5}, Lcom/android/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v6

    #@55
    .line 146
    const-string/jumbo v7, ": "

    #@58
    .line 145
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    .line 146
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@5f
    move-result-object v7

    #@60
    invoke-interface {v7}, Ljava/security/Principal;->getName()Ljava/lang/String;

    #@63
    move-result-object v7

    #@64
    .line 145
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 143
    add-int/lit8 v0, v0, 0x1

    #@69
    goto :goto_1

    #@6a
    .line 148
    .end local v5    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_3
    const-string/jumbo v6, "\n  Pinned certificates for "

    #@6d
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v6

    #@75
    const-string/jumbo v7, ":"

    #@78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 149
    const/4 v0, 0x0

    #@7c
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@7f
    move-result v4

    #@80
    :goto_2
    if-ge v0, v4, :cond_4

    #@82
    .line 150
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@85
    move-result-object v2

    #@86
    check-cast v2, Lcom/android/okhttp/okio/ByteString;

    #@88
    .line 151
    .local v2, "pin":Lcom/android/okhttp/okio/ByteString;
    const-string/jumbo v6, "\n    sha1/"

    #@8b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    #@92
    move-result-object v7

    #@93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    .line 149
    add-int/lit8 v0, v0, 0x1

    #@98
    goto :goto_2

    #@99
    .line 153
    .end local v2    # "pin":Lcom/android/okhttp/okio/ByteString;
    :cond_4
    new-instance v6, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@9b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v7

    #@9f
    invoke-direct {v6, v7}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v6
.end method

.method public varargs check(Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "peerCertificates"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    #@7
    .line 158
    return-void
.end method
