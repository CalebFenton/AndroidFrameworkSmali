.class Lcom/android/org/bouncycastle/asn1/DLTaggedObjectParser;
.super Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;
.source "DLTaggedObjectParser.java"


# instance fields
.field private final blacklist _constructed:Z


# direct methods
.method constructor blacklist <init>(IIZLcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 5

    .line 16
    invoke-direct {p0, p1, p2, p4}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    .line 18
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    iget-boolean p0, p0, Lcom/android/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->loadTaggedDL(IIZ)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method
