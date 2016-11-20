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
.field attrs:Lorg/xml/sax/Attributes;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    #@2
    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 208
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    #@2
    invoke-interface {v1, p1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 209
    .local v0, "n":Ljava/lang/String;
    if-nez v0, :cond_0

    #@8
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    #@a
    invoke-interface {v1, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .end local v0    # "n":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getType(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    #@2
    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "a"    # Lorg/xml/sax/Attributes;

    #@0
    .prologue
    .line 198
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/jaxp/SAX1ParserAdapter$AttributesWrapper;->attrs:Lorg/xml/sax/Attributes;

    #@2
    .line 197
    return-void
.end method
