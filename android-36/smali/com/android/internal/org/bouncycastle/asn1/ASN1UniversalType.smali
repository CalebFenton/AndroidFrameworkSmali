.class abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Type;
.source "ASN1UniversalType.java"


# instance fields
.field final blacklist tag:Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;I)V
    .registers 4
    .param p1, "javaClass"    # Ljava/lang/Class;
    .param p2, "tagNumber"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Type;-><init>(Ljava/lang/Class;)V

    .line 15
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;->create(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->tag:Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;

    .line 16
    return-void
.end method


# virtual methods
.method final blacklist checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .param p1, "primitive"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 20
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->javaClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22
    return-object p1

    .line 25
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method blacklist fromImplicitConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .param p1, "sequence"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unexpected implicit constructed encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist fromImplicitPrimitive(Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .param p1, "octetString"    # Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unexpected implicit primitive encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .param p1, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p2, "declaredExplicit"    # Z

    .line 45
    const/16 v0, 0x80

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 50
    invoke-virtual {p1, p2, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZLcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 47
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method only valid for CONTEXT_SPECIFIC tags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist getTag()Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->tag:Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;

    return-object v0
.end method
