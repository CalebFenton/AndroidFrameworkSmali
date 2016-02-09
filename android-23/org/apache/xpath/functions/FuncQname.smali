.class public Lorg/apache/xpath/functions/FuncQname;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncQname.java"


# static fields
.field static final serialVersionUID:J = -0x1543d9e4efa7b6a4L


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
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncQname;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    #@3
    move-result v0

    #@4
    .line 50
    .local v0, "context":I
    const/4 v4, -0x1

    #@5
    if-eq v4, v0, :cond_1

    #@7
    .line 52
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@a
    move-result-object v1

    #@b
    .line 53
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 54
    .local v2, "qname":Ljava/lang/String;
    if-nez v2, :cond_0

    #@11
    sget-object v3, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@13
    .line 61
    .end local v1    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v2    # "qname":Ljava/lang/String;
    .local v3, "val":Lorg/apache/xpath/objects/XObject;
    :goto_0
    return-object v3

    #@14
    .line 54
    .end local v3    # "val":Lorg/apache/xpath/objects/XObject;
    .restart local v1    # "dtm":Lorg/apache/xml/dtm/DTM;
    .restart local v2    # "qname":Ljava/lang/String;
    :cond_0
    new-instance v3, Lorg/apache/xpath/objects/XString;

    #@16
    invoke-direct {v3, v2}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@19
    .restart local v3    # "val":Lorg/apache/xpath/objects/XObject;
    goto :goto_0

    #@1a
    .line 58
    .end local v1    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v2    # "qname":Ljava/lang/String;
    .end local v3    # "val":Lorg/apache/xpath/objects/XObject;
    :cond_1
    sget-object v3, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@1c
    .restart local v3    # "val":Lorg/apache/xpath/objects/XObject;
    goto :goto_0
.end method
