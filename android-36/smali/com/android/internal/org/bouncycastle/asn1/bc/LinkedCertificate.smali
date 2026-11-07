.class public Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "LinkedCertificate.java"


# instance fields
.field private blacklist cACerts:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

.field private blacklist certIssuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field private final blacklist certLocation:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

.field private final blacklist digest:Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 51
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->digest:Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;

    .line 53
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->certLocation:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 55
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_50

    .line 57
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_21
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_50

    .line 59
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 61
    .local v2, "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_52

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown tag in tagged field"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :pswitch_3f
    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 68
    goto :goto_4d

    .line 64
    :pswitch_46
    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 65
    nop

    .line 57
    .end local v2    # "tagged":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 74
    .end local v1    # "i":I
    :cond_50
    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_46
        :pswitch_3f
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 4
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    .param p2, "certLocation"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 5
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    .param p2, "certLocation"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .param p3, "certIssuer"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p4, "cACerts"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 43
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->digest:Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;

    .line 45
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->certLocation:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 46
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 47
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    .line 48
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 78
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;

    if-eqz v0, :cond_8

    .line 80
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;

    return-object v0

    .line 82
    :cond_8
    if-eqz p0, :cond_14

    .line 84
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 87
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCACerts()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public blacklist getCertIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getCertLocation()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->certLocation:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public blacklist getDigest()Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->digest:Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 112
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 114
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->digest:Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 115
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->certLocation:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 117
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 119
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->certIssuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 121
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_2e

    .line 123
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/bc/LinkedCertificate;->cACerts:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 126
    :cond_2e
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
