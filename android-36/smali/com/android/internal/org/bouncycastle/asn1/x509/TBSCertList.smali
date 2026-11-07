.class public Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;,
        Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;,
        Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;
    }
.end annotation


# instance fields
.field blacklist crlExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field blacklist issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field blacklist nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field blacklist revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field blacklist version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 177
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b5

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_b5

    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "seqPos":I
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_28

    .line 187
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "seqPos":I
    .local v1, "seqPos":I
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move v0, v1

    goto :goto_2b

    .line 191
    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    :cond_28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 194
    :goto_2b
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 195
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 196
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 198
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v1, v0, :cond_7a

    .line 199
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-nez v0, :cond_6d

    .line 200
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-nez v0, :cond_6d

    .line 201
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_7a

    .line 203
    :cond_6d
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move v1, v0

    .line 206
    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    :cond_7a
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v1, v0, :cond_95

    .line 207
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v0, :cond_95

    .line 209
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move v1, v0

    .line 212
    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    :cond_95
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v1, v0, :cond_b4

    .line 213
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_b4

    .line 215
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 217
    :cond_b4
    return-void

    .line 180
    .end local v1    # "seqPos":I
    :cond_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 157
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 163
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    if-eqz v0, :cond_8

    .line 165
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    return-object v0

    .line 167
    :cond_8
    if-eqz p0, :cond_14

    .line 169
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 172
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_b

    .line 274
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList-IA;)V

    return-object v0

    .line 277
    :cond_b
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public blacklist getRevokedCertificates()[Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .registers 4

    .line 255
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_8

    .line 257
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    return-object v0

    .line 260
    :cond_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 262
    .local v0, "entries":[Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_23

    .line 264
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v2

    aput-object v2, v0, v1

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 267
    .end local v1    # "i":I
    :cond_23
    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getThisUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getVersionNumber()I
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 223
    return v1

    .line 225
    :cond_6
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 287
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 289
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_f

    .line 291
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 293
    :cond_f
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 294
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 296
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 297
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v1, :cond_27

    .line 299
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 303
    :cond_27
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_30

    .line 305
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 308
    :cond_30
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_3f

    .line 310
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 313
    :cond_3f
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
