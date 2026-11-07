.class public Lcom/android/org/bouncycastle/asn1/DLSequenceParser;
.super Ljava/lang/Object;
.source "DLSequenceParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;


# instance fields
.field private blacklist _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DLSequenceParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/DLSequenceParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/DLSequence;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DLSequenceParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
