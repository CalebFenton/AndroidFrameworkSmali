.class public final Lcom/android/okhttp/CertificatePinner$Builder;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/CertificatePinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/CertificatePinner$Builder;)Ljava/util/Map;
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/android/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public varargs blacklist add(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/okhttp/CertificatePinner$Builder;
    .registers 7

    if-eqz p1, :cond_66

    .line 251
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 252
    iget-object v1, p0, Lcom/android/okhttp/CertificatePinner$Builder;->hostnameToPins:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_18

    .line 254
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 257
    :cond_18
    array-length p1, p2

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, p1, :cond_65

    aget-object v2, p2, v1

    .line 258
    const-string v3, "sha1/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const/4 v3, 0x5

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 265
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 263
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pins must be base64: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pins must start with \'sha1/\': "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_65
    return-object p0

    .line 249
    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hostname == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o build()Lcom/android/okhttp/CertificatePinner;
    .registers 3

    .line 272
    new-instance v0, Lcom/android/okhttp/CertificatePinner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/CertificatePinner;-><init>(Lcom/android/okhttp/CertificatePinner$Builder;Lcom/android/okhttp/CertificatePinner$1;)V

    return-object v0
.end method
