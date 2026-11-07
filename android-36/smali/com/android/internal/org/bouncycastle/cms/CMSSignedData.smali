.class public Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
.super Ljava/lang/Object;
.source "CMSSignedData.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Encodable;


# static fields
.field private static final blacklist DIGEST_ALG_ID_FINDER:Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

.field private static final blacklist HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;


# instance fields
.field blacklist contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

.field private blacklist hashes:Ljava/util/Map;

.field blacklist signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

.field blacklist signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

.field blacklist signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    .line 72
    new-instance v0, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->DIGEST_ALG_ID_FINDER:Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V
    .registers 6
    .param p1, "sigData"    # Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 194
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignedData()Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 200
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 201
    .local v0, "content":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v0, :cond_46

    .line 203
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_34

    .line 205
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 206
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    goto :goto_49

    .line 210
    :cond_34
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    goto :goto_49

    .line 215
    :cond_46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    .line 217
    :goto_49
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V
    .registers 4
    .param p1, "signedContent"    # Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;
    .param p2, "sigData"    # Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    if-eqz v0, :cond_d

    .line 151
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    goto :goto_14

    .line 155
    :cond_d
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData$1;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    .line 175
    :goto_14
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 176
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignedData()Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 177
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Ljava/io/InputStream;)V
    .registers 4
    .param p1, "signedContent"    # Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;
    .param p2, "sigData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V
    .registers 4
    .param p1, "signedContent"    # Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;
    .param p2, "sigBlock"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 103
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    .line 104
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;)V
    .registers 3
    .param p1, "c"    # Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 86
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 87
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    .line 88
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    .line 89
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "sigData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 141
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    .line 142
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V
    .registers 4
    .param p1, "hashes"    # Ljava/util/Map;
    .param p2, "sigData"    # Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    .line 185
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 186
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignedData()Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 187
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;[B)V
    .registers 4
    .param p1, "hashes"    # Ljava/util/Map;
    .param p2, "sigBlock"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 117
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Ljava/util/Map;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    .line 118
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "sigBlock"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 95
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    .line 96
    return-void
.end method

.method public static blacklist addDigestAlgorithm(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 3
    .param p0, "signedData"    # Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .param p1, "digestAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 516
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->DIGEST_ALG_ID_FINDER:Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->addDigestAlgorithm(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist addDigestAlgorithm(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 14
    .param p0, "signedData"    # Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .param p1, "digestAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "digestAlgIdFinder"    # Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 531
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getDigestAlgorithmIDs()Ljava/util/Set;

    move-result-object v0

    .line 532
    .local v0, "digestAlgorithms":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 537
    .local v1, "digestAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 539
    return-object p0

    .line 545
    :cond_11
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-direct {v2, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;)V

    .line 550
    .local v2, "cms":Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 552
    .local v3, "digestAlgs":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 553
    .local v4, "it":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 555
    sget-object v5, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v5, v6, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 557
    :cond_35
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->convertToDlSet(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    .line 560
    .local v5, "digestSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 565
    .local v6, "sD":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 566
    .local v7, "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 567
    invoke-virtual {v7, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 569
    const/4 v8, 0x2

    .local v8, "i":I
    :goto_59
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    if-eq v8, v9, :cond_69

    .line 571
    invoke-virtual {v6, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 569
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    .line 574
    .end local v8    # "i":I
    :cond_69
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v8, v7}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 579
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    iget-object v9, v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    iget-object v10, v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-direct {v8, v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v8, v2, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 581
    return-object v2
.end method

.method private blacklist getSignedData()Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 224
    const-string v0, "Malformed content."

    :try_start_2
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_c} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_c} :catch_d

    return-object v0

    .line 230
    :catch_d
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 226
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public static blacklist replaceCertificatesAndCRLs(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/util/Store;Lcom/android/internal/org/bouncycastle/util/Store;Lcom/android/internal/org/bouncycastle/util/Store;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 15
    .param p0, "signedData"    # Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .param p1, "certificates"    # Lcom/android/internal/org/bouncycastle/util/Store;
    .param p2, "attrCerts"    # Lcom/android/internal/org/bouncycastle/util/Store;
    .param p3, "revocations"    # Lcom/android/internal/org/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 690
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;)V

    .line 695
    .local v0, "cms":Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    const/4 v1, 0x0

    .line 696
    .local v1, "certSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    const/4 v2, 0x0

    .line 698
    .local v2, "crlSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    if-nez p1, :cond_b

    if-eqz p2, :cond_2f

    .line 700
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v3, "certs":Ljava/util/List;
    if-eqz p1, :cond_19

    .line 704
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 706
    :cond_19
    if-eqz p2, :cond_22

    .line 708
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getAttributeCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 711
    :cond_22
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    .line 713
    .local v4, "set":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    if-eqz v5, :cond_2f

    .line 715
    move-object v1, v4

    move-object v8, v1

    goto :goto_30

    .line 719
    .end local v3    # "certs":Ljava/util/List;
    .end local v4    # "set":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :cond_2f
    move-object v8, v1

    .end local v1    # "certSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .local v8, "certSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :goto_30
    if-eqz p3, :cond_43

    .line 721
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getCRLsFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 723
    .local v1, "set":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eqz v3, :cond_43

    .line 725
    move-object v2, v1

    move-object v9, v2

    goto :goto_44

    .line 732
    .end local v1    # "set":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :cond_43
    move-object v9, v2

    .end local v2    # "crlSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .local v9, "crlSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :goto_44
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 733
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v7

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 736
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    iput-object v5, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 741
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 743
    return-object v0
.end method

.method public static blacklist replaceSigners(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 3
    .param p0, "signedData"    # Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .param p1, "signerInformationStore"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    .line 597
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->DIGEST_ALG_ID_FINDER:Lcom/android/internal/org/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->replaceSigners(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist replaceSigners(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 14
    .param p0, "signedData"    # Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .param p1, "signerInformationStore"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;
    .param p2, "digestAlgIdFinder"    # Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 618
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;)V

    .line 623
    .local v0, "cms":Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    iput-object p1, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    .line 628
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 630
    .local v1, "digestAlgs":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v2

    .line 631
    .local v2, "signers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/org/bouncycastle/cms/SignerInformation;>;"
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 633
    .local v3, "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 634
    .local v4, "it":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 636
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    .line 637
    .local v5, "signer":Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    invoke-static {v1, v5, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->addDigestAlgs(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 638
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 639
    .end local v5    # "signer":Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    goto :goto_1d

    .line 641
    :cond_34
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->convertToDlSet(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    .line 642
    .local v5, "digestSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    invoke-direct {v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 643
    .local v6, "signerSet":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 648
    .local v7, "sD":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    invoke-direct {v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 649
    .end local v3    # "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v8, "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 650
    invoke-virtual {v8, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 652
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_5a
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v3, v9, :cond_6c

    .line 654
    invoke-virtual {v7, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 652
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 657
    .end local v3    # "i":I
    :cond_6c
    invoke-virtual {v8, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 659
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v3, v8}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 664
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-direct {v3, v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v3, v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    .line 666
    return-object v0
.end method


# virtual methods
.method public blacklist getAttributeCertificates()Lcom/android/internal/org/bouncycastle/util/Store;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/org/bouncycastle/util/Store<",
            "Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;",
            ">;"
        }
    .end annotation

    .line 326
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getCertificates()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->getAttributeCertificates(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCRLs()Lcom/android/internal/org/bouncycastle/util/Store;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/org/bouncycastle/util/Store<",
            "Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;",
            ">;"
        }
    .end annotation

    .line 316
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getCRLs()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->getCRLs(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCertificates()Lcom/android/internal/org/bouncycastle/util/Store;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/org/bouncycastle/util/Store<",
            "Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;",
            ">;"
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->HELPER:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getCertificates()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->getCertificates(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)Lcom/android/internal/org/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDigestAlgorithmIDs()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 354
    .local v0, "digests":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 356
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 359
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignedContent()Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    return-object v0
.end method

.method public blacklist getSignedContentTypeOID()Ljava/lang/String;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignerInfos()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;
    .registers 10

    .line 250
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    if-nez v0, :cond_7b

    .line 252
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    .line 253
    .local v0, "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v1, "signerInfos":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_74

    .line 257
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    .line 258
    .local v3, "info":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 260
    .local v4, "contentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    const/4 v6, 0x0

    if-nez v5, :cond_38

    .line 262
    new-instance v5, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedContent:Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;

    invoke-direct {v5, v3, v4, v7, v6}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 266
    :cond_38
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 267
    .local v5, "obj":Ljava/lang/Object;
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_59

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    goto :goto_63

    :cond_59
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    :goto_63
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 269
    .local v7, "hash":[B
    new-instance v8, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    invoke-direct {v8, v3, v4, v6, v7}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v3    # "info":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .end local v4    # "contentType":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v7    # "hash":[B
    :goto_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 273
    .end local v2    # "i":I
    :cond_74
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    .line 276
    .end local v0    # "s":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .end local v1    # "signerInfos":Ljava/util/List;
    :cond_7b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public blacklist isCertificateManagementMessage()Z
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public blacklist isDetachedSignature()Z
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->signedData:Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public blacklist toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method
