.class public Lorg/apache/xpath/operations/VariableSafeAbsRef;
.super Lorg/apache/xpath/operations/Variable;
.source "VariableSafeAbsRef.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x7f52f278a11a31dcL


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lorg/apache/xpath/operations/Variable;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 61
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/operations/Variable;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/XNodeSet;

    .line 62
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object p2

    .line 63
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNode()I

    move-result v0

    .line 64
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getRoot()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    .line 65
    invoke-virtual {p2, v0}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result p2

    if-eq v1, p2, :cond_30

    .line 67
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/Expression;

    .line 68
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/XNodeSet;

    :cond_30
    return-object p0
.end method
