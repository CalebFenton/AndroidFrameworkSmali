.class Lcom/android/org/bouncycastle/asn1/ASN1Set$3;
.super Ljava/lang/Object;
.source "ASN1Set.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1SetParser;


# instance fields
.field private blacklist pos:I

.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field final synthetic blacklist val$count:I


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;I)V
    .registers 3

    .line 309
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$3;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$3;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 310
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$3;->pos:I

    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 334
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$3;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 339
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set$3;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object p0
.end method
