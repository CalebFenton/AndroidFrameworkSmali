.class public Lorg/apache/xpath/functions/FuncSum;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncSum.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x25bc00e53bbcd00fL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 53
    :cond_c
    :goto_c
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result p1

    const/4 v2, -0x1

    if-eq v2, p1, :cond_23

    .line 55
    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    .line 56
    invoke-interface {v2, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 59
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_c

    .line 61
    :cond_23
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 63
    new-instance p0, Lorg/apache/xpath/objects/XNumber;

    invoke-direct {p0, v0, v1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object p0
.end method
