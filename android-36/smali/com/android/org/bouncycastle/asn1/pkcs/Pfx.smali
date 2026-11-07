.class public Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Pfx.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private blacklist contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

.field private blacklist macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    const/4 v1, 0x3

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 33
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_32

    const/4 v0, 0x2

    .line 35
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    :cond_32
    return-void

    .line 28
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong version for PFX PDU"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/pkcs/MacData;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    .line 60
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .registers 2

    .line 42
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    if-eqz v0, :cond_7

    .line 44
    check-cast p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist getAuthSafe()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    return-object p0
.end method

.method public blacklist getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 77
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 78
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->contentInfo:Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 80
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->macData:Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    if-eqz p0, :cond_1c

    .line 82
    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 85
    :cond_1c
    new-instance p0, Lcom/android/org/bouncycastle/asn1/BERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
