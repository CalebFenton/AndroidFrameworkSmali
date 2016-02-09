.class public Lorg/apache/xpath/functions/FuncTranslate;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FuncTranslate.java"


# static fields
.field static final serialVersionUID:J = -0x173719f81d54e982L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 11
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 46
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncTranslate;->m_arg0:Lorg/apache/xpath/Expression;

    #@2
    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@5
    move-result-object v9

    #@6
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    .line 47
    .local v3, "theFirstString":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncTranslate;->m_arg1:Lorg/apache/xpath/Expression;

    #@c
    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@f
    move-result-object v9

    #@10
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    .line 48
    .local v6, "theSecondString":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/xpath/functions/FuncTranslate;->m_arg2:Lorg/apache/xpath/Expression;

    #@16
    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@19
    move-result-object v9

    #@1a
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    .line 49
    .local v7, "theThirdString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@21
    move-result v4

    #@22
    .line 50
    .local v4, "theFirstStringLength":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@25
    move-result v8

    #@26
    .line 54
    .local v8, "theThirdStringLength":I
    new-instance v1, Ljava/lang/StringBuffer;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@2b
    .line 56
    .local v1, "sbuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    #@2c
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    #@2e
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v2

    #@32
    .line 59
    .local v2, "theCurrentChar":C
    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    #@35
    move-result v5

    #@36
    .line 61
    .local v5, "theIndex":I
    if-gez v5, :cond_1

    #@38
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@3b
    .line 56
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 68
    :cond_1
    if-ge v5, v8, :cond_0

    #@40
    .line 73
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    #@43
    move-result v9

    #@44
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@47
    goto :goto_1

    #@48
    .line 86
    .end local v2    # "theCurrentChar":C
    .end local v5    # "theIndex":I
    :cond_2
    new-instance v9, Lorg/apache/xpath/objects/XString;

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@4d
    move-result-object v10

    #@4e
    invoke-direct {v9, v10}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@51
    return-object v9
.end method
