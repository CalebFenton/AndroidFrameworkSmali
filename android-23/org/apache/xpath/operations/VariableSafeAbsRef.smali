.class public Lorg/apache/xpath/operations/VariableSafeAbsRef;
.super Lorg/apache/xpath/operations/Variable;
.source "VariableSafeAbsRef.java"


# static fields
.field static final serialVersionUID:J = -0x7f52f278a11a31dcL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/xpath/operations/Variable;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;
    .locals 6
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "destructiveOK"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/operations/Variable;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v3

    #@4
    check-cast v3, Lorg/apache/xpath/objects/XNodeSet;

    #@6
    .line 62
    .local v3, "xns":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@9
    move-result-object v1

    #@a
    .line 63
    .local v1, "dtmMgr":Lorg/apache/xml/dtm/DTMManager;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNode()I

    #@d
    move-result v0

    #@e
    .line 64
    .local v0, "context":I
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XNodeSet;->getRoot()I

    #@11
    move-result v4

    #@12
    invoke-virtual {v1, v4}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@15
    move-result-object v4

    #@16
    invoke-interface {v4}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@19
    move-result v4

    #@1a
    .line 65
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@1d
    move-result-object v5

    #@1e
    invoke-interface {v5}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@21
    move-result v5

    #@22
    .line 64
    if-eq v4, v5, :cond_0

    #@24
    .line 67
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XNodeSet;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lorg/apache/xpath/Expression;

    #@2a
    .line 68
    .local v2, "expr":Lorg/apache/xpath/Expression;
    invoke-virtual {v2, p1, v0}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    #@2d
    move-result-object v3

    #@2e
    .end local v3    # "xns":Lorg/apache/xpath/objects/XNodeSet;
    check-cast v3, Lorg/apache/xpath/objects/XNodeSet;

    #@30
    .line 70
    .end local v2    # "expr":Lorg/apache/xpath/Expression;
    .restart local v3    # "xns":Lorg/apache/xpath/objects/XNodeSet;
    :cond_0
    return-object v3
.end method
