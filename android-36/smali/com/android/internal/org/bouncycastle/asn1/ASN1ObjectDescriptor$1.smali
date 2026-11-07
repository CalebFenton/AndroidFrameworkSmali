.class Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor$1;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;
.source "ASN1ObjectDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;I)V
    .registers 3
    .param p1, "javaClass"    # Ljava/lang/Class;
    .param p2, "tagNumber"    # I

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method blacklist fromImplicitConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .param p1, "sequence"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 22
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    .line 23
    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V

    .line 22
    return-object v0
.end method

.method blacklist fromImplicitPrimitive(Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .param p1, "octetString"    # Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    .line 16
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    .line 17
    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitPrimitive(Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V

    .line 16
    return-object v0
.end method
