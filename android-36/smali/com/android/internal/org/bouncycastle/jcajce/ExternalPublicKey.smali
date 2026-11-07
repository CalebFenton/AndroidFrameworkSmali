.class public Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;
.super Ljava/lang/Object;
.source "ExternalPublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final blacklist digest:[B

.field private final blacklist digestAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist location:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;)V
    .registers 5
    .param p1, "extKey"    # Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;

    .line 64
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->getLocation()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->getHashAlg()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->getHashValue()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .registers 5
    .param p1, "location"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .param p2, "digestAlg"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "digest"    # [B

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;->location:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 40
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;->digestAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 41
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;->digest:[B

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 74
    const-string v0, "ExternalKey"

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 7

    .line 96
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/bc/BCObjectIdentifiers;->external_value:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;->location:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;->digestAlg:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;->digest:[B

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const-string v1, "DER"

    .line 98
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 96
    return-object v0

    .line 100
    :catch_1e
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to encode composite key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 84
    const-string v0, "X.509"

    return-object v0
.end method
