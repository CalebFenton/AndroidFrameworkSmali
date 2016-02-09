.class public Lorg/apache/xpath/functions/FuncDoclocation;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncDoclocation.java"


# static fields
.field static final serialVersionUID:J = 0x67a7fa82b733b581L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

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
    const/4 v5, -0x1

    #@1
    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncDoclocation;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    #@4
    move-result v2

    #@5
    .line 49
    .local v2, "whereNode":I
    const/4 v1, 0x0

    #@6
    .line 51
    .local v1, "fileLocation":Ljava/lang/String;
    if-eq v5, v2, :cond_1

    #@8
    .line 53
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@b
    move-result-object v0

    #@c
    .line 56
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@f
    move-result v3

    #@10
    const/16 v4, 0xb

    #@12
    if-ne v4, v3, :cond_0

    #@14
    .line 58
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    #@17
    move-result v2

    #@18
    .line 61
    :cond_0
    if-eq v5, v2, :cond_1

    #@1a
    .line 63
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 69
    .end local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v1    # "fileLocation":Ljava/lang/String;
    :cond_1
    new-instance v3, Lorg/apache/xpath/objects/XString;

    #@20
    if-eqz v1, :cond_2

    #@22
    :goto_0
    invoke-direct {v3, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@25
    return-object v3

    #@26
    :cond_2
    const-string/jumbo v1, ""

    #@29
    goto :goto_0
.end method
