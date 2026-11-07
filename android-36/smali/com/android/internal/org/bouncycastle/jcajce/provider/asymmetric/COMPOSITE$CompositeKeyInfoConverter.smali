.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/COMPOSITE$CompositeKeyInfoConverter;
.super Ljava/lang/Object;
.source "COMPOSITE.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeKeyInfoConverter"
.end annotation


# instance fields
.field private final blacklist provider:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 2
    .param p1, "provider"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/COMPOSITE$CompositeKeyInfoConverter;->provider:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 89
    return-void
.end method


# virtual methods
.method public blacklist generatePrivate(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .registers 8
    .param p1, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 95
    .local v0, "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/PrivateKey;

    .line 97
    .local v1, "privKeys":[Ljava/security/PrivateKey;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_34

    .line 99
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v3

    .line 101
    .local v3, "privInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/COMPOSITE$CompositeKeyInfoConverter;->provider:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 102
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    .line 101
    invoke-interface {v4, v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->getKeyInfoConverter(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object v4

    .line 102
    invoke-interface {v4, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePrivate(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v4

    aput-object v4, v1, v2

    .line 97
    .end local v3    # "privInfo":Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 105
    .end local v2    # "i":I
    :cond_34
    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/CompositePrivateKey;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/CompositePrivateKey;-><init>([Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public blacklist generatePublic(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .registers 8
    .param p1, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 112
    .local v0, "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/PublicKey;

    .line 114
    .local v1, "pubKeys":[Ljava/security/PublicKey;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v2, v3, :cond_38

    .line 116
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 118
    .local v3, "pubInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/COMPOSITE$CompositeKeyInfoConverter;->provider:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->getKeyInfoConverter(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePublic(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v4

    aput-object v4, v1, v2

    .line 114
    .end local v3    # "pubInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 121
    .end local v2    # "i":I
    :cond_38
    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;-><init>([Ljava/security/PublicKey;)V

    return-object v2
.end method
