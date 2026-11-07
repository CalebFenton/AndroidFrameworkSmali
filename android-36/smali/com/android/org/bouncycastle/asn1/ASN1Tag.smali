.class final Lcom/android/org/bouncycastle/asn1/ASN1Tag;
.super Ljava/lang/Object;
.source "ASN1Tag.java"


# instance fields
.field private final blacklist tagClass:I

.field private final blacklist tagNumber:I


# direct methods
.method private constructor blacklist <init>(II)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Tag;->tagClass:I

    .line 17
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Tag;->tagNumber:I

    return-void
.end method

.method static blacklist create(II)Lcom/android/org/bouncycastle/asn1/ASN1Tag;
    .registers 3

    .line 8
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Tag;

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Tag;-><init>(II)V

    return-object v0
.end method
