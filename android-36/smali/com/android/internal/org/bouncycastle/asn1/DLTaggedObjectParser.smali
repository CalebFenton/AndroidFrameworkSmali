.class Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;
.super Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;
.source "DLTaggedObjectParser.java"


# instance fields
.field private final blacklist _constructed:Z


# direct methods
.method constructor blacklist <init>(IIZLcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 5
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "constructed"    # Z
    .param p4, "parser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 16
    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    .line 18
    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_tagClass:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_tagNo:I

    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->loadTaggedDL(IIZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .param p1, "declaredExplicit"    # Z
    .param p2, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    if-eqz p1, :cond_15

    .line 37
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    if-eqz v0, :cond_d

    .line 42
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseObject(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    .line 39
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_15
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    if-eqz v0, :cond_20

    .line 46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseImplicitConstructedDL(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    goto :goto_26

    .line 47
    :cond_20
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseImplicitPrimitive(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 45
    :goto_26
    return-object v0
.end method

.method public blacklist parseExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    if-eqz v0, :cond_b

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    .line 54
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist parseExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    if-eqz v0, :cond_b

    .line 67
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->parseTaggedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0

    .line 64
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist parseImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 6
    .param p1, "baseTagClass"    # I
    .param p2, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObjectParser;-><init>(IIZLcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0
.end method
