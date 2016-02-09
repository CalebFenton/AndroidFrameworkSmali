.class public Lcom/android/org/bouncycastle/asn1/x509/Holder;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Holder.java"


# static fields
.field public static final V1_CERTIFICATE_HOLDER:I = 0x0

.field public static final V2_CERTIFICATE_HOLDER:I = 0x1


# instance fields
.field baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

.field entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

.field objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

.field private version:I


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 98
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@5
    .line 52
    iput v5, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    #@7
    .line 100
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@a
    move-result v2

    #@b
    const/4 v3, 0x3

    #@c
    if-le v2, v3, :cond_0

    #@e
    .line 102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Bad sequence size: "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    .line 103
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@1f
    move-result v4

    #@20
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2

    #@2c
    .line 106
    :cond_0
    const/4 v0, 0x0

    #@2d
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@30
    move-result v2

    #@31
    if-eq v0, v2, :cond_1

    #@33
    .line 108
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@36
    move-result-object v2

    #@37
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@3a
    move-result-object v1

    #@3b
    .line 111
    .local v1, "tObj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@3e
    move-result v2

    #@3f
    packed-switch v2, :pswitch_data_0

    #@42
    .line 123
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@44
    const-string/jumbo v3, "unknown tag in Holder"

    #@47
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v2

    #@4b
    .line 114
    :pswitch_0
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@4e
    move-result-object v2

    #@4f
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@51
    .line 106
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@53
    goto :goto_0

    #@54
    .line 117
    :pswitch_1
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@57
    move-result-object v2

    #@58
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@5a
    goto :goto_1

    #@5b
    .line 120
    :pswitch_2
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@61
    goto :goto_1

    #@62
    .line 126
    .end local v1    # "tObj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1
    iput v5, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    #@64
    .line 98
    return-void

    #@65
    .line 111
    nop

    #@66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .param p1, "tagObj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 77
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 52
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    #@6
    .line 79
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@9
    move-result v0

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "unknown tag in Holder"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 82
    :pswitch_0
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@1c
    .line 90
    :goto_0
    const/4 v0, 0x0

    #@1d
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    #@1f
    .line 77
    return-void

    #@20
    .line 85
    :pswitch_1
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@26
    goto :goto_0

    #@27
    .line 79
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 1
    .param p1, "entityName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@0
    .prologue
    .line 163
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;I)V

    #@4
    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;I)V
    .locals 1
    .param p1, "entityName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "version"    # I

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 52
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    #@6
    .line 175
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@8
    .line 176
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    #@a
    .line 173
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V
    .locals 1
    .param p1, "baseCertificateID"    # Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@0
    .prologue
    .line 131
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;I)V

    #@4
    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;I)V
    .locals 1
    .param p1, "baseCertificateID"    # Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;
    .param p2, "version"    # I

    #@0
    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 52
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    #@6
    .line 142
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@8
    .line 143
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    #@a
    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 1
    .param p1, "objectDigestInfo"    # Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@0
    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 52
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    #@6
    .line 186
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@8
    .line 184
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Holder;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 56
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 58
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@7
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@8
    .line 60
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@e
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@11
    move-result-object v1

    #@12
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)V

    #@15
    return-object v0

    #@16
    .line 64
    :cond_1
    if-eqz p0, :cond_2

    #@18
    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    #@1a
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@21
    return-object v0

    #@22
    .line 69
    :cond_2
    return-object v1
.end method


# virtual methods
.method public getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@2
    return-object v0
.end method

.method public getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@2
    return-object v0
.end method

.method public getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@2
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    #@2
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 212
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->version:I

    #@4
    if-ne v1, v3, :cond_3

    #@6
    .line 214
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@8
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@b
    .line 216
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 218
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@11
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@13
    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@16
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@19
    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 223
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@1f
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@21
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@24
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@27
    .line 226
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@29
    if-eqz v1, :cond_2

    #@2b
    .line 228
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@2d
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->objectDigestInfo:Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    #@2f
    const/4 v3, 0x2

    #@30
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@33
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@36
    .line 231
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@38
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@3b
    return-object v1

    #@3c
    .line 235
    .end local v0    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@3e
    if-eqz v1, :cond_4

    #@40
    .line 237
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@42
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->entityName:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    #@44
    invoke-direct {v1, v3, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@47
    return-object v1

    #@48
    .line 241
    :cond_4
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@4a
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Holder;->baseCertificateID:Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    #@4c
    invoke-direct {v1, v3, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@4f
    return-object v1
.end method
