.class public Lorg/apache/xpath/functions/FuncSubstringAfter;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncSubstringAfter.java"


# static fields
.field static final serialVersionUID:J = -0x70af152236aa8e42L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 47
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncSubstringAfter;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@9
    move-result-object v1

    #@a
    .line 48
    .local v1, "s1":Lorg/apache/xml/utils/XMLString;
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncSubstringAfter;->m_arg1:Lorg/apache/xpath/Expression;

    #@c
    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@13
    move-result-object v2

    #@14
    .line 49
    .local v2, "s2":Lorg/apache/xml/utils/XMLString;
    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->indexOf(Lorg/apache/xml/utils/XMLString;)I

    #@17
    move-result v0

    #@18
    .line 51
    .local v0, "index":I
    const/4 v3, -0x1

    #@19
    if-ne v3, v0, :cond_0

    #@1b
    .line 52
    sget-object v3, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@1d
    .line 51
    :goto_0
    return-object v3

    #@1e
    .line 53
    :cond_0
    invoke-interface {v2}, Lorg/apache/xml/utils/XMLString;->length()I

    #@21
    move-result v3

    #@22
    add-int/2addr v3, v0

    #@23
    invoke-interface {v1, v3}, Lorg/apache/xml/utils/XMLString;->substring(I)Lorg/apache/xml/utils/XMLString;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Lorg/apache/xpath/objects/XString;

    #@29
    goto :goto_0
.end method
