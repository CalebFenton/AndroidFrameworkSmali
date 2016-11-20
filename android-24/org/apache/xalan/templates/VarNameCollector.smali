.class public Lorg/apache/xalan/templates/VarNameCollector;
.super Lorg/apache/xpath/XPathVisitor;
.source "VarNameCollector.java"


# instance fields
.field m_refs:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    #@3
    .line 35
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    #@a
    .line 33
    return-void
.end method


# virtual methods
.method doesOccur(Lorg/apache/xml/utils/QName;)Z
    .locals 1
    .param p1, "refName"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getVarCount()I
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    #@5
    .line 40
    return-void
.end method

.method public visitVariableRef(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Variable;)Z
    .locals 2
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "var"    # Lorg/apache/xpath/operations/Variable;

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    #@2
    invoke-virtual {p2}, Lorg/apache/xpath/operations/Variable;->getQName()Lorg/apache/xml/utils/QName;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@9
    .line 76
    const/4 v0, 0x1

    #@a
    return v0
.end method
