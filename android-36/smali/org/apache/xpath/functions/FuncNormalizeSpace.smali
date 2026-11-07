.class public Lorg/apache/xpath/functions/FuncNormalizeSpace;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncNormalizeSpace.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x2ee0e9e0c01181a0L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FunctionDef1Arg;->getArg0AsString(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 50
    invoke-interface {p0, p1, p1, v0}, Lorg/apache/xml/utils/XMLString;->fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/XString;

    return-object p0
.end method

.method public greylist executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;->Arg0IsNodesetExpr()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FunctionDef1Arg;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    move-result p0

    const/4 v0, -0x1

    if-eq v0, p0, :cond_15

    .line 75
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    const/4 v0, 0x1

    .line 76
    invoke-interface {p1, p0, p2, v0}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    :cond_15
    return-void

    .line 81
    :cond_16
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncNormalizeSpace;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 82
    invoke-virtual {p0, p2}, Lorg/apache/xpath/objects/XObject;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method
