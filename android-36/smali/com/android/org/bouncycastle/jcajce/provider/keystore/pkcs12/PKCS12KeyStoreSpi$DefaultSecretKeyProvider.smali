.class Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;
.super Ljava/lang/Object;
.source "PKCS12KeyStoreSpi.java"


# instance fields
.field private final blacklist KEY_SIZES:Ljava/util/Map;


# direct methods
.method constructor blacklist <init>()V
    .registers 6

    .line 1970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1971
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1973
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.2.840.113533.7.66.10"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v3, 0xc0

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0x100

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->KEY_SIZES:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist getKeySize(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)I
    .registers 2

    .line 1997
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->KEY_SIZES:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_13

    .line 2001
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_13
    const/4 p0, -0x1

    return p0
.end method
