.class public Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SignerInfo.java"


# instance fields
.field private authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

.field private sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

.field private unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 186
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@5
    .line 189
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    #@8
    move-result-object v0

    #@9
    .line 191
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@f
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    .line 192
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    #@1b
    .line 193
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@22
    move-result-object v2

    #@23
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@25
    .line 195
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    .line 197
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@2b
    if-eqz v2, :cond_0

    #@2d
    .line 199
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@2f
    .end local v1    # "obj":Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@32
    move-result-object v2

    #@33
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@35
    .line 201
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3c
    move-result-object v2

    #@3d
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@3f
    .line 209
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@42
    move-result-object v2

    #@43
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@46
    move-result-object v2

    #@47
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@49
    .line 211
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_1

    #@4f
    .line 213
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@52
    move-result-object v2

    #@53
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@55
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@58
    move-result-object v2

    #@59
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@5b
    .line 187
    :goto_1
    return-void

    #@5c
    .line 205
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@5e
    .line 206
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@61
    move-result-object v2

    #@62
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@64
    goto :goto_0

    #@65
    .line 217
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@67
    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V
    .locals 4
    .param p1, "sid"    # Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;
    .param p2, "digAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "authenticatedAttributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .param p4, "digEncryptionAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "encryptedDigest"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .param p6, "unauthenticatedAttributes"    # Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 132
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 134
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    const-wide/16 v2, 0x3

    #@d
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@10
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@12
    .line 141
    :goto_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    #@14
    .line 142
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@16
    .line 143
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@18
    .line 144
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1a
    .line 145
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@1c
    .line 146
    iput-object p6, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@1e
    .line 130
    return-void

    #@1f
    .line 138
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@21
    const-wide/16 v2, 0x1

    #@23
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@26
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@28
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/cms/Attributes;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/org/bouncycastle/asn1/cms/Attributes;)V
    .locals 4
    .param p1, "sid"    # Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;
    .param p2, "digAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "authenticatedAttributes"    # Lcom/android/org/bouncycastle/asn1/cms/Attributes;
    .param p4, "digEncryptionAlgorithm"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "encryptedDigest"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .param p6, "unauthenticatedAttributes"    # Lcom/android/org/bouncycastle/asn1/cms/Attributes;

    #@0
    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 166
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 168
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@b
    const-wide/16 v2, 0x3

    #@d
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@10
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@12
    .line 175
    :goto_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    #@14
    .line 176
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@16
    .line 177
    invoke-static {p3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@1c
    .line 178
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@1e
    .line 179
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@20
    .line 180
    invoke-static {p6}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@26
    .line 164
    return-void

    #@27
    .line 172
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@29
    const-wide/16 v2, 0x1

    #@2b
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    #@2e
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@30
    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 103
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 105
    check-cast p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;

    #@7
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@8
    .line 107
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 109
    new-instance v0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;

    #@c
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@13
    return-object v0

    #@14
    .line 112
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getAuthenticatedAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getDigestAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getDigestEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@2
    return-object v0
.end method

.method public getEncryptedDigest()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2
    return-object v0
.end method

.method public getSID()Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;
    .locals 1

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    #@2
    return-object v0
.end method

.method public getUnauthenticatedAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2
    return-object v0
.end method

.method public getVersion()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 261
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@3
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@6
    .line 263
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->version:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@b
    .line 264
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->sid:Lcom/android/org/bouncycastle/asn1/cms/SignerIdentifier;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@10
    .line 265
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@12
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@15
    .line 267
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 269
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@1d
    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@20
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@23
    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    #@25
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@28
    .line 273
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->encryptedDigest:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@2a
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2d
    .line 275
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 277
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@33
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    #@35
    const/4 v3, 0x1

    #@36
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@39
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3c
    .line 280
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@3e
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@41
    return-object v1
.end method
