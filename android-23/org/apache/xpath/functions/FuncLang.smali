.class public Lorg/apache/xpath/functions/FuncLang;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncLang.java"


# static fields
.field static final serialVersionUID:J = -0x6d3341a25189a979L


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
    .locals 10
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    .line 47
    iget-object v7, p0, Lorg/apache/xpath/functions/FuncLang;->m_arg0:Lorg/apache/xpath/Expression;

    #@3
    invoke-virtual {v7, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@6
    move-result-object v7

    #@7
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 48
    .local v2, "lang":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@e
    move-result v5

    #@f
    .line 49
    .local v5, "parent":I
    const/4 v1, 0x0

    #@10
    .line 50
    .local v1, "isLang":Z
    invoke-virtual {p1, v5}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@13
    move-result-object v0

    #@14
    .line 52
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    :goto_0
    if-eq v9, v5, :cond_1

    #@16
    .line 54
    invoke-interface {v0, v5}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@19
    move-result v7

    #@1a
    const/4 v8, 0x1

    #@1b
    if-ne v8, v7, :cond_2

    #@1d
    .line 56
    const-string/jumbo v7, "http://www.w3.org/XML/1998/namespace"

    #@20
    const-string/jumbo v8, "lang"

    #@23
    invoke-interface {v0, v5, v7, v8}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    #@26
    move-result v3

    #@27
    .line 58
    .local v3, "langAttr":I
    if-eq v9, v3, :cond_2

    #@29
    .line 60
    invoke-interface {v0, v3}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 62
    .local v4, "langVal":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@38
    move-result v7

    #@39
    if-eqz v7, :cond_1

    #@3b
    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@3e
    move-result v6

    #@3f
    .line 66
    .local v6, "valLen":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@42
    move-result v7

    #@43
    if-eq v7, v6, :cond_0

    #@45
    .line 67
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    #@48
    move-result v7

    #@49
    const/16 v8, 0x2d

    #@4b
    if-ne v7, v8, :cond_1

    #@4d
    .line 69
    :cond_0
    const/4 v1, 0x1

    #@4e
    .line 80
    .end local v3    # "langAttr":I
    .end local v4    # "langVal":Ljava/lang/String;
    .end local v6    # "valLen":I
    :cond_1
    if-eqz v1, :cond_3

    #@50
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    #@52
    :goto_1
    return-object v7

    #@53
    .line 77
    :cond_2
    invoke-interface {v0, v5}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    #@56
    move-result v5

    #@57
    goto :goto_0

    #@58
    .line 80
    :cond_3
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    #@5a
    goto :goto_1
.end method
