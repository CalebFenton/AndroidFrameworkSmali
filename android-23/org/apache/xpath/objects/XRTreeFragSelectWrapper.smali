.class public Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;
.super Lorg/apache/xpath/objects/XRTreeFrag;
.source "XRTreeFragSelectWrapper.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x5a91a43a5bb8e343L


# direct methods
.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XRTreeFrag;-><init>(Lorg/apache/xpath/Expression;)V

    #@3
    .line 36
    return-void
.end method


# virtual methods
.method public asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;
    .locals 3

    #@0
    .prologue
    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "ER_RTF_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method

.method public detach()V
    .locals 3

    #@0
    .prologue
    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "ER_DETACH_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method

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
    .line 69
    iget-object v1, p0, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;->m_obj:Ljava/lang/Object;

    #@2
    check-cast v1, Lorg/apache/xpath/Expression;

    #@4
    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@7
    move-result-object v0

    #@8
    .line 70
    .local v0, "m_selected":Lorg/apache/xpath/objects/XObject;
    iget-boolean v1, p0, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;->m_allowRelease:Z

    #@a
    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    #@d
    .line 71
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x3

    #@12
    if-ne v1, v2, :cond_0

    #@14
    .line 72
    return-object v0

    #@15
    .line 74
    :cond_0
    new-instance v1, Lorg/apache/xpath/objects/XString;

    #@17
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {v1, v2}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@1e
    return-object v1
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 1
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFragSelectWrapper;->m_obj:Ljava/lang/Object;

    #@2
    check-cast v0, Lorg/apache/xpath/Expression;

    #@4
    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@7
    .line 51
    return-void
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 131
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public num()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "ER_NUM_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method

.method public rtf()I
    .locals 3

    #@0
    .prologue
    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "ER_RTF_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method

.method public str()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "ER_STR_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 3

    #@0
    .prologue
    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "ER_XSTR_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
.end method
