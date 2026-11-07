.class Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source "BERTaggedObjectParser.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field final blacklist _parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

.field final blacklist _tagClass:I

.field final blacklist _tagNo:I


# direct methods
.method constructor blacklist <init>(IILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 4
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "parser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    .line 19
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    .line 20
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->loadTaggedIL(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTagClass()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    return v0
.end method

.method public blacklist getTagNo()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    return v0
.end method

.method public blacklist hasContextTag()Z
    .registers 3

    .line 35
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasContextTag(I)Z
    .registers 4
    .param p1, "tagNo"    # I

    .line 40
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    if-ne v0, p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist hasTag(II)Z
    .registers 4
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I

    .line 45
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist hasTagClass(I)Z
    .registers 3
    .param p1, "tagClass"    # I

    .line 50
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist parseBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .param p1, "declaredExplicit"    # Z
    .param p2, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    if-eqz p1, :cond_9

    .line 69
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseObject(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    .line 72
    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseImplicitConstructedIL(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseTaggedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 5
    .param p1, "baseTagClass"    # I
    .param p2, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 101
    :catch_5
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
