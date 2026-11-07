.class public Lorg/apache/xpath/functions/FuncCount;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncCount.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x62c1e906877afb17L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    .line 59
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result p1

    .line 60
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 62
    new-instance p0, Lorg/apache/xpath/objects/XNumber;

    int-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object p0
.end method
