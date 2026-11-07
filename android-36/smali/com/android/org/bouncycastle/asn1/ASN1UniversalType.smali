.class abstract Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;
.super Lcom/android/org/bouncycastle/asn1/ASN1Type;
.source "ASN1UniversalType.java"


# instance fields
.field final blacklist tag:Lcom/android/org/bouncycastle/asn1/ASN1Tag;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;I)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Type;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 15
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Tag;->create(II)Lcom/android/org/bouncycastle/asn1/ASN1Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->tag:Lcom/android/org/bouncycastle/asn1/ASN1Tag;

    return-void
.end method


# virtual methods
.method final blacklist checkedCast(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 20
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Type;->javaClass:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-object p1

    .line 25
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final blacklist fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 40
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method blacklist fromImplicitConstructed(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected implicit constructed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist fromImplicitPrimitive(Lcom/android/org/bouncycastle/asn1/DEROctetString;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected implicit primitive encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final blacklist getContextInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 45
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    const/16 v1, 0x80

    if-ne v1, v0, :cond_11

    .line 50
    invoke-virtual {p1, p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZLcom/android/org/bouncycastle/asn1/ASN1UniversalType;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    .line 47
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "this method only valid for CONTEXT_SPECIFIC tags"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
