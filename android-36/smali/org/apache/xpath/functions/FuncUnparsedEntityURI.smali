.class public Lorg/apache/xpath/functions/FuncUnparsedEntityURI;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncUnparsedEntityURI.java"


# static fields
.field static final whitelist serialVersionUID:J = 0xbbb24bf4c2ca6f2L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

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

    .line 46
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 48
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    .line 49
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    .line 51
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 53
    new-instance p1, Lorg/apache/xpath/objects/XString;

    invoke-direct {p1, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
