.class public Lorg/apache/xpath/functions/FuncDoclocation;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncDoclocation.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x67a7fa82b733b581L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FunctionDef1Arg;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    move-result p0

    const/4 v0, -0x1

    if-eq v0, p0, :cond_1e

    .line 53
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    .line 56
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    const/16 v2, 0xb

    if-ne v2, v1, :cond_17

    .line 58
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result p0

    :cond_17
    if-eq v0, p0, :cond_1e

    .line 63
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    .line 69
    :goto_1f
    new-instance p1, Lorg/apache/xpath/objects/XString;

    if-eqz p0, :cond_24

    goto :goto_26

    :cond_24
    const-string p0, ""

    :goto_26
    invoke-direct {p1, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
