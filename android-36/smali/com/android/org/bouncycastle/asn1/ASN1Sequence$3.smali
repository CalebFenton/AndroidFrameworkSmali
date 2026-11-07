.class Lcom/android/org/bouncycastle/asn1/ASN1Sequence$3;
.super Ljava/lang/Object;
.source "ASN1Sequence.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;


# instance fields
.field private blacklist pos:I

.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field final synthetic blacklist val$count:I


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;I)V
    .registers 3

    .line 228
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$3;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$3;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 229
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$3;->pos:I

    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$3;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 258
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence$3;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object p0
.end method
