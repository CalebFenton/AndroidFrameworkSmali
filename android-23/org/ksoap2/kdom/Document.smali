.class public Lorg/ksoap2/kdom/Document;
.super Lorg/ksoap2/kdom/Node;
.source "Document.java"


# instance fields
.field encoding:Ljava/lang/String;

.field protected rootIndex:I

.field standalone:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lorg/ksoap2/kdom/Node;-><init>()V

    #@3
    .line 33
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    #@6
    .line 31
    return-void
.end method


# virtual methods
.method public addChild(IILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "child"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 63
    const/4 v0, 0x2

    #@1
    if-ne p2, v0, :cond_1

    #@3
    .line 67
    iput p1, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    #@5
    .line 72
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/ksoap2/kdom/Node;->addChild(IILjava/lang/Object;)V

    #@8
    .line 62
    return-void

    #@9
    .line 69
    :cond_1
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    #@b
    if-lt v0, p1, :cond_0

    #@d
    .line 70
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    iput v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    #@13
    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lorg/ksoap2/kdom/Document;->encoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, "#document"

    #@3
    return-object v0
.end method

.method public getRootElement()Lorg/ksoap2/kdom/Element;
    .locals 2

    #@0
    .prologue
    .line 109
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v1, "Document has no root element!"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 112
    :cond_0
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    #@10
    invoke-virtual {p0, v0}, Lorg/ksoap2/kdom/Document;->getChild(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lorg/ksoap2/kdom/Element;

    #@16
    return-object v0
.end method

.method public getStandalone()Ljava/lang/Boolean;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lorg/ksoap2/kdom/Document;->standalone:Ljava/lang/Boolean;

    #@2
    return-object v0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 83
    const/4 v0, 0x0

    #@2
    invoke-interface {p1, v0, v1, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    #@5
    .line 84
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    #@8
    .line 86
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lorg/ksoap2/kdom/Document;->encoding:Ljava/lang/String;

    #@e
    .line 88
    const-string/jumbo v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    #@11
    .line 87
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Boolean;

    #@17
    iput-object v0, p0, Lorg/ksoap2/kdom/Document;->standalone:Ljava/lang/Boolean;

    #@19
    .line 90
    invoke-super {p0, p1}, Lorg/ksoap2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1c
    .line 92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@1f
    move-result v0

    #@20
    const/4 v1, 0x1

    #@21
    if-eq v0, v1, :cond_0

    #@23
    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    #@25
    const-string/jumbo v1, "Document end expected!"

    #@28
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 81
    :cond_0
    return-void
.end method

.method public removeChild(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 98
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 99
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    #@7
    .line 103
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/ksoap2/kdom/Node;->removeChild(I)V

    #@a
    .line 97
    return-void

    #@b
    .line 100
    :cond_1
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    #@d
    if-ge p1, v0, :cond_0

    #@f
    .line 101
    iget v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    iput v0, p0, Lorg/ksoap2/kdom/Document;->rootIndex:I

    #@15
    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "enc"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    iput-object p1, p0, Lorg/ksoap2/kdom/Document;->encoding:Ljava/lang/String;

    #@2
    .line 43
    return-void
.end method

.method public setStandalone(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "standalone"    # Ljava/lang/Boolean;

    #@0
    .prologue
    .line 48
    iput-object p1, p0, Lorg/ksoap2/kdom/Document;->standalone:Ljava/lang/Boolean;

    #@2
    .line 47
    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "writer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lorg/ksoap2/kdom/Document;->encoding:Ljava/lang/String;

    #@2
    iget-object v1, p0, Lorg/ksoap2/kdom/Document;->standalone:Ljava/lang/Boolean;

    #@4
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@7
    .line 123
    invoke-virtual {p0, p1}, Lorg/ksoap2/kdom/Document;->writeChildren(Lorg/xmlpull/v1/XmlSerializer;)V

    #@a
    .line 124
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@d
    .line 120
    return-void
.end method
