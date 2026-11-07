.class public Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Attributes.java"


# instance fields
.field private blacklist attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "v"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 38
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 40
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    .registers 2
    .param p1, "set"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 33
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 35
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 73
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 57
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;

    if-eqz v0, :cond_8

    .line 59
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;

    return-object v0

    .line 61
    :cond_8
    if-eqz p0, :cond_14

    .line 63
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    .line 66
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getAttributes()[Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    .registers 4

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    .line 80
    .local v0, "rv":[Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-eq v1, v2, :cond_1b

    .line 82
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/Attribute;

    move-result-object v2

    aput-object v2, v0, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 85
    .end local v1    # "i":I
    :cond_1b
    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/cms/Attributes;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method
