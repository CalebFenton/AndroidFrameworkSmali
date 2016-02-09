.class Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;
.super Ljava/lang/Object;
.source "PKCS12KeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSecretKeyProvider"
.end annotation


# instance fields
.field private final KEY_SIZES:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x100

    #@2
    const/16 v4, 0xc0

    #@4
    const/16 v3, 0x80

    #@6
    .line 1773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 1775
    new-instance v0, Ljava/util/HashMap;

    #@b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@e
    .line 1777
    .local v0, "keySizes":Ljava/util/Map;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@10
    const-string/jumbo v2, "1.2.840.113533.7.66.10"

    #@13
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@16
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 1779
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v2

    #@27
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 1781
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2c
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v2

    #@30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 1782
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@35
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v2

    #@39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 1783
    sget-object v1, Lcom/android/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@3e
    invoke-static {v5}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v2

    #@42
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 1785
    sget-object v1, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@47
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@4a
    move-result-object v2

    #@4b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    .line 1786
    sget-object v1, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@50
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@53
    move-result-object v2

    #@54
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    .line 1787
    sget-object v1, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@59
    invoke-static {v5}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@5c
    move-result-object v2

    #@5d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    .line 1793
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@63
    move-result-object v1

    #@64
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->KEY_SIZES:Ljava/util/Map;

    #@66
    .line 1773
    return-void
.end method


# virtual methods
.method public getKeySize(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)I
    .locals 3
    .param p1, "algorithmIdentifier"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@0
    .prologue
    .line 1799
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->KEY_SIZES:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Integer;

    #@c
    .line 1801
    .local v0, "keySize":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@e
    .line 1803
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 1806
    :cond_0
    const/4 v1, -0x1

    #@14
    return v1
.end method
