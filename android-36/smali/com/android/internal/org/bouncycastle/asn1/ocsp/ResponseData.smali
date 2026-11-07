.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "ResponseData.java"


# static fields
.field private static final blacklist V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private blacklist producedAt:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

.field private blacklist responderID:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

.field private blacklist responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private blacklist responses:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field private blacklist version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist versionPresent:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 31
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V
    .registers 6
    .param p1, "version"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .param p2, "responderID"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;
    .param p3, "producedAt"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p4, "responses"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .param p5, "responseExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 47
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 49
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->responderID:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    .line 50
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->producedAt:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 51
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->responses:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 52
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 53
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 82
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "index":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    .line 87
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 89
    .local v2, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-nez v4, :cond_2c

    .line 91
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->versionPresent:Z

    .line 92
    nop

    .line 93
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 92
    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 98
    :cond_2c
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 100
    .end local v2    # "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_30
    goto :goto_35

    .line 103
    :cond_31
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 106
    :goto_35
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->responderID:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    .line 107
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->producedAt:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 108
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->responses:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 110
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_6a

    .line 112
    nop

    .line 113
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 112
    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 115
    :cond_6a
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V
    .registers 11
    .param p1, "responderID"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;
    .param p2, "producedAt"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p3, "responses"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .param p4, "responseExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 77
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "responderID":Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;
    .end local p2    # "producedAt":Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local p3    # "responses":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local p4    # "responseExtensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .local v2, "responderID":Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;
    .local v3, "producedAt":Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .local v4, "responses":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v5, "responseExtensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 11
    .param p1, "responderID"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;
    .param p2, "producedAt"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .param p3, "responses"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .param p4, "responseExtensions"    # Lcom/android/internal/org/bouncycastle/asn1/x509/X509Extensions;

    .line 68
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v3

    invoke-static {p4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    .end local p1    # "responderID":Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;
    .end local p3    # "responses":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v2, "responderID":Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;
    .local v4, "responses":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;)V

    .line 69
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 121
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 127
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    if-eqz v0, :cond_8

    .line 129
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    return-object v0

    .line 131
    :cond_8
    if-eqz p0, :cond_14

    .line 133
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 136
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getProducedAt()Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->producedAt:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public blacklist getResponderID()Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->responderID:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    return-object v0
.end method

.method public blacklist getResponseExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getResponses()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->responses:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 177
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 179
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->versionPresent:Z

    const/4 v2, 0x1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->V1:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 181
    :cond_15
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 184
    :cond_20
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->responderID:Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->producedAt:Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 186
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->responses:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 187
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_3d

    .line 189
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseData;->responseExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 192
    :cond_3d
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
