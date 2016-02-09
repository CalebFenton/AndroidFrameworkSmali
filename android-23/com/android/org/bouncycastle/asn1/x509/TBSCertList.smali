.class public Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;,
        Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;,
        Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;
    }
.end annotation


# instance fields
.field crlExtensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

.field issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

.field nextUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field thisUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 172
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6
    move-result v2

    #@7
    const/4 v3, 0x3

    #@8
    if-lt v2, v3, :cond_0

    #@a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@d
    move-result v2

    #@e
    const/4 v3, 0x7

    #@f
    if-le v2, v3, :cond_1

    #@11
    .line 174
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Bad sequence size: "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@22
    move-result v4

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 177
    :cond_1
    const/4 v0, 0x0

    #@30
    .line 179
    .local v0, "seqPos":I
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@33
    move-result-object v2

    #@34
    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@36
    if-eqz v2, :cond_5

    #@38
    .line 177
    const/4 v2, 0x0

    #@39
    .line 181
    const/4 v0, 0x1

    #@3a
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@41
    move-result-object v2

    #@42
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@44
    .line 188
    :goto_0
    add-int/lit8 v1, v0, 0x1

    #@46
    .end local v0    # "seqPos":I
    .local v1, "seqPos":I
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@49
    move-result-object v2

    #@4a
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@4d
    move-result-object v2

    #@4e
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@50
    .line 189
    add-int/lit8 v0, v1, 0x1

    #@52
    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@55
    move-result-object v2

    #@56
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@59
    move-result-object v2

    #@5a
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@5c
    .line 190
    add-int/lit8 v1, v0, 0x1

    #@5e
    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@61
    move-result-object v2

    #@62
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@65
    move-result-object v2

    #@66
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@68
    .line 192
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@6b
    move-result v2

    #@6c
    if-ge v1, v2, :cond_6

    #@6e
    .line 193
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@71
    move-result-object v2

    #@72
    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    #@74
    if-nez v2, :cond_2

    #@76
    .line 194
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@79
    move-result-object v2

    #@7a
    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    #@7c
    .line 193
    if-nez v2, :cond_2

    #@7e
    .line 195
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@81
    move-result-object v2

    #@82
    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@84
    .line 192
    if-eqz v2, :cond_8

    #@86
    .line 197
    :cond_2
    add-int/lit8 v0, v1, 0x1

    #@88
    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8b
    move-result-object v2

    #@8c
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@8f
    move-result-object v2

    #@90
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@92
    .line 200
    :goto_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@95
    move-result v2

    #@96
    if-ge v0, v2, :cond_3

    #@98
    .line 201
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@9b
    move-result-object v2

    #@9c
    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@9e
    if-eqz v2, :cond_7

    #@a0
    .line 206
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@a3
    move-result v2

    #@a4
    if-ge v0, v2, :cond_4

    #@a6
    .line 207
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@a9
    move-result-object v2

    #@aa
    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@ac
    .line 206
    if-eqz v2, :cond_4

    #@ae
    .line 209
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@b1
    move-result-object v2

    #@b2
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@b4
    const/4 v3, 0x1

    #@b5
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@b8
    move-result-object v2

    #@b9
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@bc
    move-result-object v2

    #@bd
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@bf
    .line 170
    :cond_4
    return-void

    #@c0
    .line 185
    :cond_5
    const/4 v2, 0x0

    #@c1
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@c3
    goto :goto_0

    #@c4
    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    :cond_6
    move v0, v1

    #@c5
    .line 196
    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    goto :goto_1

    #@c6
    .line 203
    :cond_7
    add-int/lit8 v1, v0, 0x1

    #@c8
    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@cb
    move-result-object v2

    #@cc
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@cf
    move-result-object v2

    #@d0
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@d2
    move v0, v1

    #@d3
    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    goto :goto_2

    #@d4
    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    :cond_8
    move v0, v1

    #@d5
    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    goto :goto_1
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
    .locals 1
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 151
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 157
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 159
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 161
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 163
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 166
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getExtensions()Lcom/android/org/bouncycastle/asn1/x509/Extensions;
    .locals 1

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@2
    return-object v0
.end method

.method public getIssuer()Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@2
    return-object v0
.end method

.method public getNextUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@2
    return-object v0
.end method

.method public getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 266
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 268
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;

    #@7
    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;)V

    #@a
    return-object v0

    #@b
    .line 271
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;

    #@d
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;-><init>(Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;Ljava/util/Enumeration;)V

    #@16
    return-object v0
.end method

.method public getRevokedCertificates()[Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .locals 3

    #@0
    .prologue
    .line 249
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 251
    const/4 v2, 0x0

    #@5
    new-array v2, v2, [Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@7
    return-object v2

    #@8
    .line 254
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@a
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@d
    move-result v2

    #@e
    new-array v0, v2, [Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@10
    .line 256
    .local v0, "entries":[Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@12
    if-ge v1, v2, :cond_1

    #@14
    .line 258
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@16
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    #@1d
    move-result-object v2

    #@1e
    aput-object v2, v0, v1

    #@20
    .line 256
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 261
    :cond_1
    return-object v0
.end method

.method public getSignature()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getThisUpdate()Lcom/android/org/bouncycastle/asn1/x509/Time;
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@2
    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 217
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@f
    move-result v0

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 281
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@5
    .line 283
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 285
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@e
    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@10
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@13
    .line 288
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@15
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@18
    .line 290
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1d
    .line 291
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 293
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    #@23
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@26
    .line 297
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 299
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2f
    .line 302
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@31
    if-eqz v1, :cond_3

    #@33
    .line 304
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@35
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/org/bouncycastle/asn1/x509/Extensions;

    #@37
    const/4 v3, 0x0

    #@38
    invoke-direct {v1, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3b
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3e
    .line 307
    :cond_3
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@40
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@43
    return-object v1
.end method
