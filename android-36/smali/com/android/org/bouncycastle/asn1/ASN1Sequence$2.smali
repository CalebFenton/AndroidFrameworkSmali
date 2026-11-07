.class Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;
.super Ljava/lang/Object;
.source "ASN1Sequence.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private blacklist pos:I

.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 204
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->pos:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 208
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->pos:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length p0, p0

    if-ge v0, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api nextElement()Ljava/lang/Object;
    .registers 4

    .line 213
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->pos:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    iget-object v1, v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v2, v1

    if-ge v0, v2, :cond_10

    add-int/lit8 v2, v0, 0x1

    .line 215
    iput v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$2;->pos:I

    aget-object p0, v1, v0

    return-object p0

    .line 217
    :cond_10
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
