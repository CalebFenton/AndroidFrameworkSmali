.class public Lorg/apache/xpath/functions/FuncCount;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncCount.java"


# static fields
.field static final serialVersionUID:J = -0x62c1e906877afb17L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    iget-object v2, p0, Lorg/apache/xpath/functions/FuncCount;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@5
    move-result v3

    #@6
    invoke-virtual {v2, p1, v3}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    #@9
    move-result-object v1

    #@a
    .line 59
    .local v1, "nl":Lorg/apache/xml/dtm/DTMIterator;
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    #@d
    move-result v0

    #@e
    .line 60
    .local v0, "i":I
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    #@11
    .line 62
    new-instance v2, Lorg/apache/xpath/objects/XNumber;

    #@13
    int-to-double v4, v0

    #@14
    invoke-direct {v2, v4, v5}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@17
    return-object v2
.end method
