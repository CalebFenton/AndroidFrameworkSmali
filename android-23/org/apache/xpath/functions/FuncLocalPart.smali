.class public Lorg/apache/xpath/functions/FuncLocalPart;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncLocalPart.java"


# static fields
.field static final serialVersionUID:J = 0x695b7cc22f847ddaL


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
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncLocalPart;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    #@4
    move-result v0

    #@5
    .line 48
    .local v0, "context":I
    if-ne v3, v0, :cond_0

    #@7
    .line 49
    sget-object v3, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@9
    return-object v3

    #@a
    .line 50
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@d
    move-result-object v1

    #@e
    .line 51
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    if-eq v0, v3, :cond_2

    #@10
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 52
    .local v2, "s":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "#"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1a
    move-result v3

    #@1b
    if-nez v3, :cond_1

    #@1d
    const-string/jumbo v3, "xmlns"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_3

    #@26
    .line 53
    :cond_1
    sget-object v3, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@28
    return-object v3

    #@29
    .line 51
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, ""

    #@2c
    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 55
    :cond_3
    new-instance v3, Lorg/apache/xpath/objects/XString;

    #@2f
    invoke-direct {v3, v2}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@32
    return-object v3
.end method
