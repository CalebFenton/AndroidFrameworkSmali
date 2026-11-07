.class Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source "BERTaggedObjectParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field final blacklist _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

.field final blacklist _tagClass:I

.field final blacklist _tagNo:I


# direct methods
.method constructor blacklist <init>(IILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    .line 19
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    .line 20
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    invoke-virtual {v0, v1, p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->loadTaggedIL(II)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 103
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
