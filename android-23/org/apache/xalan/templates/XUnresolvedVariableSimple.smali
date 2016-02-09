.class public Lorg/apache/xalan/templates/XUnresolvedVariableSimple;
.super Lorg/apache/xpath/objects/XObject;
.source "XUnresolvedVariableSimple.java"


# static fields
.field static final serialVersionUID:J = -0x10fdfddee2c7dcc9L


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/ElemVariable;)V
    .locals 0
    .param p1, "obj"    # Lorg/apache/xalan/templates/ElemVariable;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 38
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    iget-object v2, p0, Lorg/apache/xalan/templates/XUnresolvedVariableSimple;->m_obj:Ljava/lang/Object;

    #@2
    check-cast v2, Lorg/apache/xalan/templates/ElemVariable;

    #@4
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@b
    move-result-object v0

    #@c
    .line 56
    .local v0, "expr":Lorg/apache/xpath/Expression;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@f
    move-result-object v1

    #@10
    .line 57
    .local v1, "xobj":Lorg/apache/xpath/objects/XObject;
    const/4 v2, 0x0

    #@11
    invoke-virtual {v1, v2}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    #@14
    .line 58
    return-object v1
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 68
    const/16 v0, 0x258

    #@2
    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "XUnresolvedVariableSimple ("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Lorg/apache/xalan/templates/XUnresolvedVariableSimple;->object()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, ")"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method
