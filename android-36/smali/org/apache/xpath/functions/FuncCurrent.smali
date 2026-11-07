.class public Lorg/apache/xpath/functions/FuncCurrent;
.super Lorg/apache/xpath/functions/Function;
.source "FuncCurrent.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x4f50e25a5d8e8640L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNodeList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 59
    instance-of v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;

    if-eqz v0, :cond_15

    .line 60
    check-cast p0, Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 61
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getLocPathIterator()Lorg/apache/xpath/axes/LocPathIterator;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getCurrentContextNode()I

    move-result p0

    goto :goto_2c

    .line 63
    :cond_15
    instance-of p0, p0, Lorg/apache/xpath/patterns/StepPattern;

    if-nez p0, :cond_1b

    const/4 p0, -0x1

    goto :goto_2c

    .line 64
    :cond_1b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_PROCESSOR_ERROR"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_28
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNode()I

    move-result p0

    .line 71
    :goto_2c
    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    return-object v0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 0
    return-void
.end method
