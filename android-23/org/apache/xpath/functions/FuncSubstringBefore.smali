.class public Lorg/apache/xpath/functions/FuncSubstringBefore;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncSubstringBefore.java"


# static fields
.field static final serialVersionUID:J = 0x390b98dd6bf9b89fL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

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
    .line 46
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncSubstringBefore;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 47
    .local v1, "s1":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/xpath/functions/FuncSubstringBefore;->m_arg1:Lorg/apache/xpath/Expression;

    #@c
    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 48
    .local v2, "s2":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@17
    move-result v0

    #@18
    .line 50
    .local v0, "index":I
    const/4 v3, -0x1

    #@19
    if-ne v3, v0, :cond_0

    #@1b
    .line 51
    sget-object v3, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@1d
    .line 50
    :goto_0
    return-object v3

    #@1e
    .line 51
    :cond_0
    new-instance v3, Lorg/apache/xpath/objects/XString;

    #@20
    const/4 v4, 0x0

    #@21
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-direct {v3, v4}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@28
    goto :goto_0
.end method
