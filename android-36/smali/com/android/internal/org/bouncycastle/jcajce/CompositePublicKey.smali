.class public Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;
.super Ljava/lang/Object;
.source "CompositePublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final blacklist keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor blacklist <init>([Ljava/security/PublicKey;)V
    .registers 5
    .param p1, "keys"    # [Ljava/security/PublicKey;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-eqz p1, :cond_21

    array-length v0, p1

    if-eqz v0, :cond_21

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, p1

    if-eq v1, v2, :cond_1a

    .line 41
    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 43
    .end local v1    # "i":I
    :cond_1a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    .line 44
    return-void

    .line 35
    .end local v0    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "at least one public key must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    if-ne p1, p0, :cond_4

    .line 95
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    if-eqz v0, :cond_14

    .line 100
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 103
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 58
    const-string v0, "Composite"

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 6

    .line 68
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 70
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_24

    .line 72
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 77
    .end local v1    # "i":I
    :cond_24
    :try_start_24
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_composite_key:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "DER"

    .line 78
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3b} :catch_3c

    .line 77
    return-object v1

    .line 80
    :catch_3c
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to encode composite key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 63
    const-string v0, "X.509"

    return-object v0
.end method

.method public blacklist getPublicKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method
