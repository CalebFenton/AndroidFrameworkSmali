.class Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier$1;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;
.source "ASN1ObjectIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
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

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method blacklist fromImplicitPrimitive(Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .param p1, "octetString"    # Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    .line 23
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->createPrimitive([BZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method
