.class Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString$1;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;
.source "ASN1NumericString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;
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

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method blacklist fromImplicitPrimitive(Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3
    .param p1, "octetString"    # Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    .line 28
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1NumericString;

    move-result-object v0

    return-object v0
.end method
