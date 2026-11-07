.class final Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;
.super Ljava/lang/Object;
.source "SAX1ParserAdapter.java"

# interfaces
.implements Lorg/xml/sax/AttributeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AttributesWrapper"
.end annotation


# instance fields
.field greylist attrs:Lorg/xml/sax/Attributes;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getLength()I
    .registers 2

    .line 203
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getName(I)Ljava/lang/String;
    .registers 4
    .param p1, "i"    # I

    .line 208
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "n":Ljava/lang/String;
    if-nez v0, :cond_f

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    invoke-interface {v1, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    return-object v1
.end method

.method public whitelist test-api getType(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 214
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 224
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist setAttributes(Lorg/xml/sax/Attributes;)V
    .registers 2
    .param p1, "a"    # Lorg/xml/sax/Attributes;

    .line 198
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    .line 199
    return-void
.end method
