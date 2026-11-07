.class public Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;
.super Ljava/lang/Object;
.source "BcDefaultDigestProvider.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;

.field private static final blacklist lookup:Ljava/util/Map;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    invoke-static {}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;->createTable()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;->lookup:Ljava/util/Map;

    .line 230
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method private static blacklist createTable()Ljava/util/Map;
    .registers 3

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v0, "table":Ljava/util/Map;
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$1;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$2;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$3;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$4;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$5;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;
    .registers 5
    .param p1, "digestAlgorithmIdentifier"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 240
    sget-object v0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDefaultDigestProvider;->lookup:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;

    .line 242
    .local v0, "extProv":Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;
    if-eqz v0, :cond_13

    .line 247
    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/bc/BcDigestProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;

    move-result-object v1

    return-object v1

    .line 244
    :cond_13
    new-instance v1, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;

    const-string v2, "cannot recognise digest"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
