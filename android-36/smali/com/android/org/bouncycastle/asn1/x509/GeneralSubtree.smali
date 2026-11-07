.class public Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "GeneralSubtree.java"


# static fields
.field private static final blacklist ZERO:Ljava/math/BigInteger;


# instance fields
.field private blacklist base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

.field private blacklist maximum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    .line 36
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7

    .line 46
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .line 49
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_cd

    const/4 v3, 0x2

    if-eq v1, v3, :cond_95

    const/4 v4, 0x3

    if-ne v1, v4, :cond_7a

    .line 71
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-nez v4, :cond_5f

    .line 76
    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 80
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-ne v1, v2, :cond_44

    .line 85
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void

    .line 83
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad tag number for \'maximum\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad tag number for \'minimum\': "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_7a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad sequence size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_95
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-eqz v1, :cond_c7

    if-ne v1, v2, :cond_ac

    .line 61
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-void

    .line 64
    :cond_ac
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad tag number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_c7
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    :cond_cd
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 153
    :cond_4
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    if-eqz v0, :cond_b

    .line 155
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    return-object p0

    .line 158
    :cond_b
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 204
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 206
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 208
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 210
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v2, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 213
    :cond_20
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz p0, :cond_2d

    .line 215
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 218
    :cond_2d
    new-instance p0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
