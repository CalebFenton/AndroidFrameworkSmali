.class Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence$1;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;
.source "ASN1Sequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
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

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method blacklist fromImplicitConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2
    .param p1, "sequence"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 69
    return-object p1
.end method
