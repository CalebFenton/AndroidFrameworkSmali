.class public Lorg/apache/xalan/templates/VarNameCollector;
.super Lorg/apache/xpath/XPathVisitor;
.source "VarNameCollector.java"


# instance fields
.field greylist m_refs:Ljava/util/Vector;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lorg/apache/xpath/XPathVisitor;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method greylist doesOccur(Lorg/apache/xml/utils/QName;)Z
    .registers 2

    .line 63
    iget-object p0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public greylist getVarCount()I
    .registers 1

    .line 51
    iget-object p0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public greylist reset()V
    .registers 1

    .line 42
    iget-object p0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public greylist visitVariableRef(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Variable;)Z
    .registers 3

    .line 75
    iget-object p0, p0, Lorg/apache/xalan/templates/VarNameCollector;->m_refs:Ljava/util/Vector;

    invoke-virtual {p2}, Lorg/apache/xpath/operations/Variable;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
