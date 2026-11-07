.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Pfx.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private blacklist contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private blacklist macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 24
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    .line 26
    .local v0, "version":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 31
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 33
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ne v2, v1, :cond_32

    .line 35
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    .line 37
    :cond_32
    return-void

    .line 28
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "wrong version for PFX PDU"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;)V
    .registers 4
    .param p1, "contentInfo"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .param p2, "macData"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    .line 58
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    .line 59
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 60
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    .line 61
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 42
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;

    if-eqz v0, :cond_8

    .line 44
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;

    return-object v0

    .line 47
    :cond_8
    if-eqz p0, :cond_14

    .line 49
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 52
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getAuthSafe()Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-object v0
.end method

.method public blacklist getMacData()Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 75
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 77
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 78
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/internal/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 80
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    if-eqz v1, :cond_1e

    .line 82
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/internal/org/bouncycastle/asn1/pkcs/MacData;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 85
    :cond_1e
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
