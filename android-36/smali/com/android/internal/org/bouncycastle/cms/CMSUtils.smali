.class Lcom/android/internal/org/bouncycastle/cms/CMSUtils;
.super Ljava/lang/Object;
.source "CMSUtils.java"


# static fields
.field private static final blacklist des:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ecAlgs:Ljava/util/Set;

.field private static final blacklist gostAlgs:Ljava/util/Set;

.field private static final blacklist mqvAlgs:Ljava/util/Set;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->des:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->mqvAlgs:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->ecAlgs:Ljava/util/Set;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->gostAlgs:Ljava/util/Set;

    .line 59
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->des:Ljava/util/Set;

    const-string v1, "DES"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->des:Ljava/util/Set;

    const-string v1, "DESEDE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist addDigestAlgs(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .registers 8
    .param p1, "signer"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .param p2, "dgstAlgFinder"    # Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;",
            "Lcom/android/internal/org/bouncycastle/cms/SignerInformation;",
            "Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;",
            ")V"
        }
    .end annotation

    .line 167
    .local p0, "digestAlgs":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getCounterSignatures()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    .line 169
    .local v0, "counterSignaturesStore":Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 170
    .local v1, "counterSignatureIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/org/bouncycastle/cms/SignerInformation;>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    .line 173
    .local v2, "counterSigner":Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    sget-object v3, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v2    # "counterSigner":Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    goto :goto_15

    .line 175
    :cond_2f
    return-void
.end method

.method static blacklist attachDigestsToInputStream(Ljava/util/Collection;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 7
    .param p0, "digests"    # Ljava/util/Collection;
    .param p1, "s"    # Ljava/io/InputStream;

    .line 392
    move-object v0, p1

    .line 393
    .local v0, "result":Ljava/io/InputStream;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 394
    .local v1, "it":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 396
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    .line 397
    .local v2, "digest":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    new-instance v3, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object v0, v3

    .line 398
    .end local v2    # "digest":Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    goto :goto_5

    .line 399
    :cond_1c
    return-object v0
.end method

.method static blacklist attachSignersToOutputStream(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 6
    .param p0, "signers"    # Ljava/util/Collection;
    .param p1, "s"    # Ljava/io/OutputStream;

    .line 404
    move-object v0, p1

    .line 405
    .local v0, "result":Ljava/io/OutputStream;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 406
    .local v1, "it":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 408
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    .line 409
    .local v2, "signerGen":Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getCalculatingOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getSafeTeeOutputStream(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 410
    .end local v2    # "signerGen":Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    goto :goto_5

    .line 411
    :cond_1a
    return-object v0
.end method

.method static blacklist convertToDlSet(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;)",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;"
        }
    .end annotation

    .line 162
    .local p0, "digestAlgs":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method static blacklist createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;
    .registers 6
    .param p0, "s"    # Ljava/io/OutputStream;
    .param p1, "tagNo"    # I
    .param p2, "isExplicit"    # Z
    .param p3, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 339
    .local v0, "octGen":Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;
    if-eqz p3, :cond_e

    .line 341
    new-array v1, p3, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;->getOctetOutputStream([B)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1

    .line 344
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;->getOctetOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method

.method static blacklist createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 4
    .param p0, "derObjects"    # Ljava/util/List;

    .line 299
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 301
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_9

    .line 306
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_19
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method static blacklist createDerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 4
    .param p0, "derObjects"    # Ljava/util/List;

    .line 323
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 325
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 327
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_9

    .line 330
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_19
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method static blacklist createDlSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 4
    .param p0, "derObjects"    # Ljava/util/List;

    .line 311
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 313
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 315
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_9

    .line 318
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_19
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method static blacklist getAttributeCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;
    .registers 8
    .param p0, "attrStore"    # Lcom/android/internal/org/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "certs":Ljava/util/List;
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Store;->getMatches(Lcom/android/internal/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;

    .line 210
    .local v2, "attrCert":Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_28} :catch_2b

    .line 211
    nop

    .end local v2    # "attrCert":Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;
    goto :goto_e

    .line 213
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_2a
    return-object v0

    .line 215
    :catch_2b
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v3, "error processing certs"

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method static blacklist getCRLsFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;
    .registers 6
    .param p0, "crlStore"    # Lcom/android/internal/org/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "crls":Ljava/util/List;
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Store;->getMatches(Lcom/android/internal/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 231
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 233
    .local v2, "rev":Ljava/lang/Object;
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;

    if-eqz v3, :cond_28

    .line 235
    move-object v3, v2

    check-cast v3, Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;

    .line 237
    .local v3, "c":Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    nop

    .end local v3    # "c":Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;
    goto :goto_2f

    .line 249
    :cond_28
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_2f

    .line 251
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_2f} :catch_31

    .line 253
    .end local v2    # "rev":Ljava/lang/Object;
    :cond_2f
    :goto_2f
    goto :goto_e

    .line 255
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_30
    return-object v0

    .line 257
    :catch_31
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v3, "error processing certs"

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method static blacklist getCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;
    .registers 5
    .param p0, "certStore"    # Lcom/android/internal/org/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "certs":Ljava/util/List;
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Store;->getMatches(Lcom/android/internal/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 188
    .local v2, "c":Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_21} :catch_24

    .line 189
    nop

    .end local v2    # "c":Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    goto :goto_e

    .line 191
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_23
    return-object v0

    .line 193
    :catch_24
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v3, "error processing certs"

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method static blacklist getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "s"    # Ljava/io/OutputStream;

    .line 416
    if-nez p0, :cond_8

    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/NullOutputStream;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/cms/NullOutputStream;-><init>()V

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method static blacklist getSafeTeeOutputStream(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 3
    .param p0, "s1"    # Ljava/io/OutputStream;
    .param p1, "s2"    # Ljava/io/OutputStream;

    .line 422
    if-nez p0, :cond_7

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_13

    .line 423
    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_13

    :cond_e
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 422
    :goto_13
    return-object v0
.end method

.method static blacklist isDES(Ljava/lang/String;)Z
    .registers 3
    .param p0, "algorithmID"    # Ljava/lang/String;

    .line 117
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->des:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static blacklist isEC(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 2
    .param p0, "algorithm"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 98
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->ecAlgs:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static blacklist isEquivalent(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z
    .registers 7
    .param p0, "algId1"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p1, "algId2"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 124
    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    if-nez p1, :cond_6

    goto :goto_3e

    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 131
    return v0

    .line 134
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 135
    .local v1, "params1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 136
    .local v2, "params2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v3, 0x1

    if-eqz v1, :cond_32

    .line 138
    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-interface {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    if-nez v2, :cond_31

    :cond_30
    move v0, v3

    :cond_31
    return v0

    .line 141
    :cond_32
    if-eqz v2, :cond_3c

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-interface {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    :cond_3c
    move v0, v3

    :cond_3d
    return v0

    .line 126
    .end local v1    # "params1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v2    # "params2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_3e
    :goto_3e
    return v0
.end method

.method static blacklist isGOST(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 2
    .param p0, "algorithm"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 103
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->gostAlgs:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static blacklist isMQV(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 2
    .param p0, "algorithm"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 93
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->mqvAlgs:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist readContentInfo(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .registers 5
    .param p0, "in"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 353
    const-string v0, "Malformed content."

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    .line 354
    .local v1, "info":Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    if-eqz v1, :cond_d

    .line 359
    return-object v1

    .line 356
    :cond_d
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v3, "No content found."

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .end local p0    # "in":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    throw v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_23
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_15} :catch_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_15} :catch_15

    .line 369
    .end local v1    # "info":Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .restart local p0    # "in":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    :catch_15
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 365
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1c
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 361
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_23
    move-exception v0

    .line 363
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v2, "IOException reading content."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static blacklist readContentInfo(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    return-object v0
.end method

.method static blacklist readContentInfo([B)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .registers 2
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist streamToByteArray(Ljava/io/InputStream;)[B
    .registers 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist streamToByteArray(Ljava/io/InputStream;I)[B
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readAllLimited(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method
