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
.field public static final greylist-max-o DEFAULT:Lcom/android/okhttp/CertificatePinner;


# instance fields
.field private final greylist-max-o hostnameToPins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Lcom/android/okhttp/CertificatePinner$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/CertificatePinner$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/okhttp/CertificatePinner$Builder;->build()Lcom/android/okhttp/CertificatePinner;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/CertificatePinner;->DEFAULT:Lcom/android/okhttp/CertificatePinner;

    return-void
.end method

.method private constructor greylist-max-o <init>(Lcom/android/okhttp/CertificatePinner$Builder;)V
    .registers 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    # getter for: Lcom/android/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/okhttp/CertificatePinner$Builder;->access$000(Lcom/android/okhttp/CertificatePinner$Builder;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/CertificatePinner$Builder;Lcom/android/okhttp/CertificatePinner$1;)V
    .registers 3

    .line 134
    invoke-direct {p0, p1}, Lcom/android/okhttp/CertificatePinner;-><init>(Lcom/android/okhttp/CertificatePinner$Builder;)V

    return-void
.end method

.method public static greylist-max-o pin(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3

    .line 225
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_20

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sha1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lcom/android/okhttp/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Certificate pinning requires X509 certificates"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o sha1(Ljava/security/cert/X509Certificate;)Lcom/android/okhttp/okio/ByteString;
    .registers 1

    .line 232
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/android/okhttp/internal/Util;->sha1(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/ByteString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist-max-o check(Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/okhttp/CertificatePinner;->findMatchingPins(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_1f

    .line 159
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_23

    .line 160
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 161
    invoke-static {v3}, Lcom/android/okhttp/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    :goto_1f
    return-void

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 165
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate pinning failure!"

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  Peer certificate chain:"

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_36
    if-ge v1, v2, :cond_5d

    .line 169
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 170
    const-string v4, "\n    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    .line 171
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 173
    :cond_5d
    const-string p2, "\n  Pinned certificates for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_87

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/okhttp/okio/ByteString;

    .line 175
    const-string p2, "\n    sha1/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6e

    .line 177
    :cond_87
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs blacklist check(Ljava/lang/String;[Ljava/security/cert/Certificate;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 183
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method greylist-max-o findMatchingPins(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/16 v1, 0x2e

    .line 194
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, 0x0

    if-eq v2, v1, :cond_35

    .line 202
    iget-object p0, p0, Lcom/android/okhttp/CertificatePinner;->hostnameToPins:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    goto :goto_36

    :cond_35
    move-object p0, v3

    :goto_36
    if-nez v0, :cond_3b

    if-nez p0, :cond_3b

    return-object v3

    :cond_3b
    if-eqz v0, :cond_4b

    if-eqz p0, :cond_4b

    .line 208
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 209
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 210
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_4b
    if-eqz v0, :cond_4e

    return-object v0

    :cond_4e
    return-object p0
.end method
