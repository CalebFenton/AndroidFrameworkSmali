.class public Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SignerInfo.java"


# instance fields
.field private blacklist authenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist digAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist digEncryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist encryptedDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

.field private blacklist sid:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

.field private blacklist unauthenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

.field private blacklist version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 190
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 191
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 193
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 194
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    .line 195
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 197
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 199
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_41

    .line 201
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 203
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_49

    .line 207
    :cond_41
    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 208
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 211
    :goto_49
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 213
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 215
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    goto :goto_68

    .line 219
    :cond_66
    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 221
    :goto_68
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .registers 10
    .param p1, "sid"    # Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .param p2, "digAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "authenticatedAttributes"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .param p4, "digEncryptionAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "encryptedDigest"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .param p6, "unauthenticatedAttributes"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 133
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 134
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 136
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_1c

    .line 140
    :cond_13
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 143
    :goto_1c
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    .line 144
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 145
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 146
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 147
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 148
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 149
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;)V
    .registers 10
    .param p1, "sid"    # Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .param p2, "digAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "authenticatedAttributes"    # Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;
    .param p4, "digEncryptionAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "encryptedDigest"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .param p6, "unauthenticatedAttributes"    # Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;

    .line 167
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 170
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_1c

    .line 174
    :cond_13
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 177
    :goto_1c
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    .line 178
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 179
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 180
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 181
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 182
    invoke-static {p6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 183
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 105
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    if-eqz v0, :cond_8

    .line 107
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    return-object v0

    .line 109
    :cond_8
    if-eqz p0, :cond_14

    .line 111
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 114
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getAuthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getDigestEncryptionAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getEncryptedDigest()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public blacklist getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    return-object v0
.end method

.method public blacklist getUnauthenticatedAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 263
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 265
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 266
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 267
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 269
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 271
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 274
    :cond_24
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 277
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3d

    .line 279
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 282
    :cond_3d
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
