.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "TBSRequest.java"


# static fields
.field private static final blacklist V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# instance fields
.field blacklist requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field blacklist requestList:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

.field blacklist version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field blacklist versionSet:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 22
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 61
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "index":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x1

    if-eqz v2, :cond_30

    .line 66
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 68
    .local v2, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-nez v4, :cond_2b

    .line 70
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->versionSet:Z

    .line 71
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 76
    :cond_2b
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 78
    .end local v2    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_2f
    goto :goto_34

    .line 81
    :cond_30
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 84
    :goto_34
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_4b

    .line 86
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move v0, v1

    .line 89
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_4b
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestList:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 91
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    add-int/lit8 v2, v1, 0x1

    if-ne v0, v2, :cond_69

    .line 93
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 95
    :cond_69
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V
    .registers 5
    .param p1, "requestorName"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .param p2, "requestList"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .param p3, "requestExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 52
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 53
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 54
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 55
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestList:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 56
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 5
    .param p1, "requestorName"    # Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .param p2, "requestList"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .param p3, "requestExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    .line 41
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 43
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 44
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestList:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 45
    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 46
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 101
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 107
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    if-eqz v0, :cond_8

    .line 109
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    return-object v0

    .line 111
    :cond_8
    if-eqz p0, :cond_14

    .line 113
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 116
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getRequestExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getRequestList()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestList:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public blacklist getRequestorName()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 151
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 157
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->versionSet:Z

    if-eqz v1, :cond_20

    .line 159
    :cond_15
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 162
    :cond_20
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_2e

    .line 164
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestorName:Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 167
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestList:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_42

    .line 171
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 174
    :cond_42
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
