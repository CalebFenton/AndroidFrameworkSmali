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
            "Ljava/util/Set",
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
    .line 133
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
    .line 132
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/CertificatePinner$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/okhttp/CertificatePinner$Builder;

    #@0
    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 138
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
    .line 137
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
    .line 223
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Certificate pinning requires X509 certificates"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 226
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
    .line 230
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
    .locals 9
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
    .line 153
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-virtual {p0, p1}, Lcom/android/okhttp/CertificatePinner;->findMatchingPins(Ljava/lang/String;)Ljava/util/Set;

    #@3
    move-result-object v4

    #@4
    .line 155
    .local v4, "pins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    if-nez v4, :cond_0

    #@6
    return-void

    #@7
    .line 157
    :cond_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@b
    move-result v5

    #@c
    .local v5, "size":I
    :goto_0
    if-ge v0, v5, :cond_2

    #@e
    .line 158
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v6

    #@12
    check-cast v6, Ljava/security/cert/X509Certificate;

    #@14
    .line 159
    .local v6, "x509Certificate":Ljava/security/cert/X509Certificate;
    invoke-static {v6}, Lcom/android/okhttp/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lcom/android/okhttp/okio/ByteString;

    #@17
    move-result-object v7

    #@18
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_1

    #@1e
    return-void

    #@1f
    .line 157
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 163
    .end local v6    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    .line 164
    const-string/jumbo v8, "Certificate pinning failure!"

    #@2a
    .line 163
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    .line 165
    const-string/jumbo v8, "\n  Peer certificate chain:"

    #@31
    .line 163
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    .line 166
    .local v1, "message":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@36
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@39
    move-result v5

    #@3a
    :goto_1
    if-ge v0, v5, :cond_3

    #@3c
    .line 167
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v6

    #@40
    check-cast v6, Ljava/security/cert/X509Certificate;

    #@42
    .line 168
    .restart local v6    # "x509Certificate":Ljava/security/cert/X509Certificate;
    const-string/jumbo v7, "\n    "

    #@45
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    invoke-static {v6}, Lcom/android/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    #@4c
    move-result-object v8

    #@4d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    .line 169
    const-string/jumbo v8, ": "

    #@54
    .line 168
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    .line 169
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    #@5b
    move-result-object v8

    #@5c
    invoke-interface {v8}, Ljava/security/Principal;->getName()Ljava/lang/String;

    #@5f
    move-result-object v8

    #@60
    .line 168
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 166
    add-int/lit8 v0, v0, 0x1

    #@65
    goto :goto_1

    #@66
    .line 171
    .end local v6    # "x509Certificate":Ljava/security/cert/X509Certificate;
    :cond_3
    const-string/jumbo v7, "\n  Pinned certificates for "

    #@69
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v7

    #@6d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v7

    #@71
    const-string/jumbo v8, ":"

    #@74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    .line 172
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7a
    move-result-object v3

    #@7b
    .local v3, "pin$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@7e
    move-result v7

    #@7f
    if-eqz v7, :cond_4

    #@81
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@84
    move-result-object v2

    #@85
    check-cast v2, Lcom/android/okhttp/okio/ByteString;

    #@87
    .line 173
    .local v2, "pin":Lcom/android/okhttp/okio/ByteString;
    const-string/jumbo v7, "\n    sha1/"

    #@8a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v7

    #@8e
    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    #@91
    move-result-object v8

    #@92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    goto :goto_2

    #@96
    .line 175
    .end local v2    # "pin":Lcom/android/okhttp/okio/ByteString;
    :cond_4
    new-instance v7, Ljavax/net/ssl/SSLPeerUnverifiedException;

    #@98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v8

    #@9c
    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    #@9f
    throw v7
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
    .line 181
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    #@7
    .line 180
    return-void
.end method

.method findMatchingPins(Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x2e

    #@2
    const/4 v8, 0x0

    #@3
    .line 189
    iget-object v5, p0, Lcom/android/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    #@5
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/Set;

    #@b
    .line 190
    .local v0, "directPins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    const/4 v4, 0x0

    #@c
    .line 192
    .local v4, "wildcardPins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v1

    #@10
    .line 193
    .local v1, "indexOfFirstDot":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    #@13
    move-result v2

    #@14
    .line 198
    .local v2, "indexOfLastDot":I
    if-eq v1, v2, :cond_0

    #@16
    .line 200
    iget-object v5, p0, Lcom/android/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    #@18
    new-instance v6, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v7, "*."

    #@20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v6

    #@24
    add-int/lit8 v7, v1, 0x1

    #@26
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v6

    #@32
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    .end local v4    # "wildcardPins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    check-cast v4, Ljava/util/Set;

    #@38
    .line 203
    :cond_0
    if-nez v0, :cond_1

    #@3a
    if-nez v4, :cond_1

    #@3c
    return-object v8

    #@3d
    .line 205
    :cond_1
    if-eqz v0, :cond_2

    #@3f
    if-eqz v4, :cond_2

    #@41
    .line 206
    new-instance v3, Ljava/util/LinkedHashSet;

    #@43
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    #@46
    .line 207
    .local v3, "pins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@49
    .line 208
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@4c
    .line 209
    return-object v3

    #@4d
    .line 212
    .end local v3    # "pins":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    :cond_2
    if-eqz v0, :cond_3

    #@4f
    return-object v0

    #@50
    .line 214
    :cond_3
    return-object v4
.end method
