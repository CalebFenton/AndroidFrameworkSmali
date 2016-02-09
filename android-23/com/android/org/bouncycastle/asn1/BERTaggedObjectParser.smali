.class public Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source "BERTaggedObjectParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field private _constructed:Z

.field private _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

.field private _tagNumber:I


# direct methods
.method constructor <init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0
    .param p1, "constructed"    # Z
    .param p2, "tagNumber"    # I
    .param p3, "parser"    # Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 17
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    #@5
    .line 18
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    #@7
    .line 19
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@9
    .line 15
    return-void
.end method


# virtual methods
.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@2
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    #@4
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    #@6
    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getObjectParser(IZ)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .param p1, "tag"    # I
    .param p2, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 37
    if-eqz p2, :cond_1

    #@2
    .line 39
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 41
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "Explicit tags must be constructed (see X.690 8.14.2)"

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@11
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    #@18
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    #@1a
    invoke-virtual {v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readImplicit(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public getTagNo()I
    .locals 1

    #@0
    .prologue
    .line 29
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    #@2
    return v0
.end method

.method public isConstructed()Z
    .locals 1

    #@0
    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    #@2
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    #@0
    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 62
    :catch_0
    move-exception v0

    #@6
    .line 63
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    #@8
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1
.end method
