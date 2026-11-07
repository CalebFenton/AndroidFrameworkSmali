.class public Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;
.super Ljava/lang/Object;
.source "DLSequenceParser.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1SequenceParser;


# instance fields
.field private blacklist _parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 2
    .param p1, "parser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 20
    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 57
    :catch_5
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
