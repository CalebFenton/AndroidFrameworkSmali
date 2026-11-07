.class public Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;
.super Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;
.source "CMSSignedDataGenerator.java"


# instance fields
.field private blacklist isDefiniteLength:Z

.field private blacklist signerInfs:Ljava/util/List;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .registers 3
    .param p1, "digestAlgIdFinder"    # Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;-><init>(Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    .line 73
    return-void
.end method


# virtual methods
.method public blacklist generate(Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 3
    .param p1, "content"    # Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;Z)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    return-object v0
.end method

.method public blacklist generate(Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;Z)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 14
    .param p1, "content"    # Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;
    .param p2, "encapsulate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 145
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v1, v0

    .line 146
    .local v1, "digestAlgs":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v2, v0

    .line 148
    .local v2, "signerInfos":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->digests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 153
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->_signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    .line 156
    .local v3, "signer":Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->digestAlgIdFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-static {v1, v3, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->addDigestAlgs(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 158
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    .end local v3    # "signer":Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    goto :goto_1f

    .line 164
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_38
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    .line 166
    .local v3, "contentTypeOID":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v4, 0x0

    .line 168
    .local v4, "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;->getContent()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    if-eqz p2, :cond_4d

    .line 174
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v5

    goto :goto_4e

    .line 172
    :cond_4d
    move-object v5, v0

    .line 177
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .local v5, "bOut":Ljava/io/ByteArrayOutputStream;
    :goto_4e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    invoke-static {v0, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->attachSignersToOutputStream(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 180
    .local v0, "cOut":Ljava/io/OutputStream;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v6

    .line 184
    .end local v0    # "cOut":Ljava/io/OutputStream;
    .local v6, "cOut":Ljava/io/OutputStream;
    :try_start_58
    invoke-interface {p1, v6}, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    .line 186
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5e} :catch_7b

    .line 191
    nop

    .line 193
    if-eqz p2, :cond_99

    .line 195
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    if-eqz v0, :cond_70

    .line 197
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object v4, v0

    goto :goto_99

    .line 201
    :cond_70
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    move-object v4, v0

    goto :goto_99

    .line 188
    :catch_7b
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data processing exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 206
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "cOut":Ljava/io/OutputStream;
    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    .line 209
    .local v5, "sGen":Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->generate(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v6

    .line 211
    .local v6, "inf":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v2, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 214
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getCalculatedDigest()[B

    move-result-object v7

    .line 216
    .local v7, "calcDigest":[B
    if-eqz v7, :cond_d0

    .line 218
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->digests:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .end local v5    # "sGen":Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
    .end local v6    # "inf":Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .end local v7    # "calcDigest":[B
    :cond_d0
    goto :goto_9f

    .line 222
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_d1
    const/4 v0, 0x0

    .line 224
    .local v0, "certificates":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->certs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_ee

    .line 226
    iget-boolean v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    if-eqz v5, :cond_e6

    .line 228
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->certs:Ljava/util/List;

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createDlSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    move-object v8, v0

    goto :goto_ef

    .line 232
    :cond_e6
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->certs:Ljava/util/List;

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    move-object v8, v0

    goto :goto_ef

    .line 224
    :cond_ee
    move-object v8, v0

    .line 236
    .end local v0    # "certificates":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .local v8, "certificates":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :goto_ef
    const/4 v0, 0x0

    .line 238
    .local v0, "certrevlist":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->crls:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_10c

    .line 240
    iget-boolean v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    if-eqz v5, :cond_104

    .line 242
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->crls:Ljava/util/List;

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createDlSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    move-object v9, v0

    goto :goto_10d

    .line 246
    :cond_104
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->crls:Ljava/util/List;

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    move-object v9, v0

    goto :goto_10d

    .line 238
    :cond_10c
    move-object v9, v0

    .line 250
    .end local v0    # "certrevlist":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .local v9, "certrevlist":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :goto_10d
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {v7, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 252
    .local v7, "encInfo":Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 253
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->convertToDlSet(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v10, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 259
    .local v5, "sd":Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v6, v5}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 262
    .local v0, "contentInfo":Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    new-instance v6, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-direct {v6, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v6

    .line 112
    .end local v0    # "contentInfo":Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .end local v1    # "digestAlgs":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;>;"
    .end local v2    # "signerInfos":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "contentTypeOID":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v5    # "sd":Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;
    .end local v7    # "encInfo":Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .end local v8    # "certificates":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .end local v9    # "certrevlist":Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    :cond_12d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method can only be used with SignerInfoGenerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist generateCounterSigners(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;
    .registers 5
    .param p1, "signer"    # Lcom/android/internal/org/bouncycastle/cms/SignerInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 275
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;Z)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setDefiniteLengthEncoding(Z)V
    .registers 2
    .param p1, "isDefiniteLength"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    .line 83
    return-void
.end method
