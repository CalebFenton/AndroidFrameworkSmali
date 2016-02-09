.class public Lorg/apache/xpath/functions/FuncNamespace;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncNamespace.java"


# static fields
.field static final serialVersionUID:J = -0x412a6323c251fb55L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncNamespace;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    #@3
    move-result v0

    #@4
    .line 50
    .local v0, "context":I
    const/4 v4, -0x1

    #@5
    if-eq v0, v4, :cond_4

    #@7
    .line 52
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@a
    move-result-object v1

    #@b
    .line 53
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@e
    move-result v3

    #@f
    .line 54
    .local v3, "t":I
    const/4 v4, 0x1

    #@10
    if-ne v3, v4, :cond_0

    #@12
    .line 56
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 76
    .local v2, "s":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_5

    #@18
    sget-object v4, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@1a
    :goto_1
    return-object v4

    #@1b
    .line 58
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x2

    #@1c
    if-ne v3, v4, :cond_3

    #@1e
    .line 64
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 65
    .restart local v2    # "s":Ljava/lang/String;
    const-string/jumbo v4, "xmlns:"

    #@25
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_1

    #@2b
    const-string/jumbo v4, "xmlns"

    #@2e
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_2

    #@34
    .line 66
    :cond_1
    sget-object v4, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@36
    return-object v4

    #@37
    .line 68
    :cond_2
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    goto :goto_0

    #@3c
    .line 71
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    sget-object v4, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@3e
    return-object v4

    #@3f
    .line 74
    .end local v1    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v3    # "t":I
    :cond_4
    sget-object v4, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@41
    return-object v4

    #@42
    .line 76
    .restart local v1    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v2    # "s":Ljava/lang/String;
    .restart local v3    # "t":I
    :cond_5
    new-instance v4, Lorg/apache/xpath/objects/XString;

    #@44
    invoke-direct {v4, v2}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@47
    goto :goto_1
.end method
