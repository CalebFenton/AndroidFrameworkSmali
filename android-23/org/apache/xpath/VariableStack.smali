.class public Lorg/apache/xpath/VariableStack;
.super Ljava/lang/Object;
.source "VariableStack.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CLEARLIMITATION:I = 0x400

.field private static m_nulls:[Lorg/apache/xpath/objects/XObject;


# instance fields
.field private _currentFrameBottom:I

.field _frameTop:I

.field _links:[I

.field _linksTop:I

.field _stackFrames:[Lorg/apache/xpath/objects/XObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 397
    const/16 v0, 0x400

    #@2
    new-array v0, v0, [Lorg/apache/xpath/objects/XObject;

    #@4
    sput-object v0, Lorg/apache/xpath/VariableStack;->m_nulls:[Lorg/apache/xpath/objects/XObject;

    #@6
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    invoke-virtual {p0}, Lorg/apache/xpath/VariableStack;->reset()V

    #@6
    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initStackSize"    # I

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    mul-int/lit8 v0, p1, 0x2

    #@5
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/VariableStack;->reset(II)V

    #@8
    .line 57
    return-void
.end method


# virtual methods
.method public clearLocalSlots(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    .line 411
    iget v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    #@2
    add-int/2addr p1, v0

    #@3
    .line 413
    sget-object v0, Lorg/apache/xpath/VariableStack;->m_nulls:[Lorg/apache/xpath/objects/XObject;

    #@5
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-static {v0, v2, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@b
    .line 408
    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 73
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lorg/apache/xpath/VariableStack;

    #@7
    .line 76
    .local v0, "vs":Lorg/apache/xpath/VariableStack;
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@9
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, [Lorg/apache/xpath/objects/XObject;

    #@f
    iput-object v1, v0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@11
    .line 77
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@13
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, [I

    #@19
    iput-object v1, v0, Lorg/apache/xpath/VariableStack;->_links:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    .line 79
    return-object v0

    #@1d
    .end local v0    # "vs":Lorg/apache/xpath/VariableStack;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit p0

    #@1f
    throw v1
.end method

.method public elementAt(I)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getGlobalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 448
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@2
    aget-object v0, v1, p2

    #@4
    .line 451
    .local v0, "val":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@7
    move-result v1

    #@8
    const/16 v2, 0x258

    #@a
    if-ne v1, v2, :cond_0

    #@c
    .line 452
    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@12
    aput-object v1, v2, p2

    #@14
    return-object v1

    #@15
    .line 454
    :cond_0
    return-object v0
.end method

.method public getGlobalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "index"    # I
    .param p3, "destructiveOK"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 475
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@2
    aget-object v0, v1, p2

    #@4
    .line 478
    .local v0, "val":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@7
    move-result v1

    #@8
    const/16 v2, 0x258

    #@a
    if-ne v1, v2, :cond_0

    #@c
    .line 479
    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@f
    move-result-object v1

    #@10
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@12
    aput-object v1, v2, p2

    #@14
    return-object v1

    #@15
    .line 481
    :cond_0
    if-eqz p3, :cond_1

    #@17
    .end local v0    # "val":Lorg/apache/xpath/objects/XObject;
    :goto_0
    return-object v0

    #@18
    .restart local v0    # "val":Lorg/apache/xpath/objects/XObject;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getFresh()Lorg/apache/xpath/objects/XObject;

    #@1b
    move-result-object v0

    #@1c
    goto :goto_0
.end method

.method public getLocalVariable(II)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .param p1, "index"    # I
    .param p2, "frame"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 340
    add-int/2addr p1, p2

    #@1
    .line 342
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@3
    aget-object v0, v1, p1

    #@5
    .line 344
    .local v0, "val":Lorg/apache/xpath/objects/XObject;
    return-object v0
.end method

.method public getLocalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 308
    iget v1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    #@3
    add-int/2addr p2, v1

    #@4
    .line 310
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@6
    aget-object v0, v1, p2

    #@8
    .line 312
    .local v0, "val":Lorg/apache/xpath/objects/XObject;
    if-nez v0, :cond_0

    #@a
    .line 313
    new-instance v1, Ljavax/xml/transform/TransformerException;

    #@c
    const-string/jumbo v2, "ER_VARIABLE_ACCESSED_BEFORE_BIND"

    #@f
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 314
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@16
    move-result-object v3

    #@17
    .line 313
    invoke-direct {v1, v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@1a
    throw v1

    #@1b
    .line 318
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@1e
    move-result v1

    #@1f
    const/16 v2, 0x258

    #@21
    if-ne v1, v2, :cond_1

    #@23
    .line 319
    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@29
    aput-object v1, v2, p2

    #@2b
    return-object v1

    #@2c
    .line 321
    :cond_1
    return-object v0
.end method

.method public getLocalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "index"    # I
    .param p3, "destructiveOK"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 365
    iget v1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    #@3
    add-int/2addr p2, v1

    #@4
    .line 367
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@6
    aget-object v0, v1, p2

    #@8
    .line 369
    .local v0, "val":Lorg/apache/xpath/objects/XObject;
    if-nez v0, :cond_0

    #@a
    .line 370
    new-instance v1, Ljavax/xml/transform/TransformerException;

    #@c
    const-string/jumbo v2, "ER_VARIABLE_ACCESSED_BEFORE_BIND"

    #@f
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    .line 371
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@16
    move-result-object v3

    #@17
    .line 370
    invoke-direct {v1, v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@1a
    throw v1

    #@1b
    .line 375
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@1e
    move-result v1

    #@1f
    const/16 v2, 0x258

    #@21
    if-ne v1, v2, :cond_1

    #@23
    .line 376
    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@29
    aput-object v1, v2, p2

    #@2b
    return-object v1

    #@2c
    .line 378
    :cond_1
    if-eqz p3, :cond_2

    #@2e
    .end local v0    # "val":Lorg/apache/xpath/objects/XObject;
    :goto_0
    return-object v0

    #@2f
    .restart local v0    # "val":Lorg/apache/xpath/objects/XObject;
    :cond_2
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getFresh()Lorg/apache/xpath/objects/XObject;

    #@32
    move-result-object v0

    #@33
    goto :goto_0
.end method

.method public getStackFrame()I
    .locals 1

    #@0
    .prologue
    .line 192
    iget v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    #@2
    return v0
.end method

.method public getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;
    .locals 9
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "qname"    # Lorg/apache/xml/utils/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 503
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@3
    move-result-object v0

    #@4
    .line 511
    .local v0, "prefixResolver":Lorg/apache/xml/utils/PrefixResolver;
    instance-of v4, v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@6
    if-eqz v4, :cond_3

    #@8
    move-object v1, v0

    #@9
    .line 517
    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@b
    .line 519
    .local v1, "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    instance-of v4, v1, Lorg/apache/xalan/templates/Stylesheet;

    #@d
    if-nez v4, :cond_2

    #@f
    .line 521
    :goto_0
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNode()Lorg/w3c/dom/Node;

    #@12
    move-result-object v4

    #@13
    instance-of v4, v4, Lorg/apache/xalan/templates/Stylesheet;

    #@15
    if-nez v4, :cond_2

    #@17
    .line 523
    move-object v2, v1

    #@18
    .line 525
    .local v2, "savedprev":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_0
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 527
    instance-of v4, v1, Lorg/apache/xalan/templates/ElemVariable;

    #@20
    if-eqz v4, :cond_0

    #@22
    move-object v3, v1

    #@23
    .line 529
    check-cast v3, Lorg/apache/xalan/templates/ElemVariable;

    #@25
    .line 531
    .local v3, "vvar":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4, p2}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_0

    #@2f
    .line 532
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getIndex()I

    #@32
    move-result v4

    #@33
    invoke-virtual {p0, p1, v4}, Lorg/apache/xpath/VariableStack;->getLocalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    #@36
    move-result-object v4

    #@37
    return-object v4

    #@38
    .line 535
    .end local v3    # "vvar":Lorg/apache/xalan/templates/ElemVariable;
    :cond_1
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3b
    move-result-object v1

    #@3c
    goto :goto_0

    #@3d
    .line 539
    .end local v2    # "savedprev":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_2
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4, p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;

    #@44
    move-result-object v3

    #@45
    .line 540
    .restart local v3    # "vvar":Lorg/apache/xalan/templates/ElemVariable;
    if-eqz v3, :cond_3

    #@47
    .line 541
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getIndex()I

    #@4a
    move-result v4

    #@4b
    invoke-virtual {p0, p1, v4}, Lorg/apache/xpath/VariableStack;->getGlobalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    #@4e
    move-result-object v4

    #@4f
    return-object v4

    #@50
    .line 544
    .end local v1    # "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v3    # "vvar":Lorg/apache/xalan/templates/ElemVariable;
    :cond_3
    new-instance v4, Ljavax/xml/transform/TransformerException;

    #@52
    const-string/jumbo v5, "ER_VAR_NOT_RESOLVABLE"

    #@55
    const/4 v6, 0x1

    #@56
    new-array v6, v6, [Ljava/lang/Object;

    #@58
    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    #@5b
    move-result-object v7

    #@5c
    const/4 v8, 0x0

    #@5d
    aput-object v7, v6, v8

    #@5f
    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    invoke-direct {v4, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@66
    throw v4
.end method

.method public isLocalSet(I)Z
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@2
    iget v1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    #@4
    add-int/2addr v1, p1

    #@5
    aget-object v0, v0, v1

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public link(I)I
    .locals 5
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 213
    iget v2, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    #@3
    iput v2, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    #@5
    .line 214
    iget v2, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    #@7
    add-int/2addr v2, p1

    #@8
    iput v2, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    #@a
    .line 216
    iget v2, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    #@c
    iget-object v3, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@e
    array-length v3, v3

    #@f
    if-lt v2, v3, :cond_0

    #@11
    .line 218
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@13
    array-length v2, v2

    #@14
    add-int/lit16 v2, v2, 0x1000

    #@16
    add-int/2addr v2, p1

    #@17
    new-array v1, v2, [Lorg/apache/xpath/objects/XObject;

    #@19
    .line 220
    .local v1, "newsf":[Lorg/apache/xpath/objects/XObject;
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@1b
    iget-object v3, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@1d
    array-length v3, v3

    #@1e
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    .line 222
    iput-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@23
    .line 225
    .end local v1    # "newsf":[Lorg/apache/xpath/objects/XObject;
    :cond_0
    iget v2, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    #@25
    add-int/lit8 v2, v2, 0x1

    #@27
    iget-object v3, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@29
    array-length v3, v3

    #@2a
    if-lt v2, v3, :cond_1

    #@2c
    .line 227
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@2e
    array-length v2, v2

    #@2f
    add-int/lit16 v2, v2, 0x800

    #@31
    new-array v0, v2, [I

    #@33
    .line 229
    .local v0, "newlinks":[I
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@35
    iget-object v3, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@37
    array-length v3, v3

    #@38
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@3b
    .line 231
    iput-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@3d
    .line 234
    .end local v0    # "newlinks":[I
    :cond_1
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@3f
    iget v3, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    #@41
    add-int/lit8 v4, v3, 0x1

    #@43
    iput v4, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    #@45
    iget v4, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    #@47
    aput v4, v2, v3

    #@49
    .line 236
    iget v2, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    #@4b
    return v2
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    .line 143
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@2
    if-nez v2, :cond_0

    #@4
    const/16 v0, 0x1000

    #@6
    .line 145
    .local v0, "linksSize":I
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@8
    if-nez v2, :cond_1

    #@a
    const/16 v1, 0x2000

    #@c
    .line 147
    .local v1, "varArraySize":I
    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/VariableStack;->reset(II)V

    #@f
    .line 138
    return-void

    #@10
    .line 144
    .end local v0    # "linksSize":I
    .end local v1    # "varArraySize":I
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@12
    array-length v0, v2

    #@13
    .restart local v0    # "linksSize":I
    goto :goto_0

    #@14
    .line 146
    :cond_1
    iget-object v2, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@16
    array-length v1, v2

    #@17
    .restart local v1    # "varArraySize":I
    goto :goto_1
.end method

.method protected reset(II)V
    .locals 4
    .param p1, "linksSize"    # I
    .param p2, "varArraySize"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 156
    iput v3, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    #@3
    .line 157
    iput v3, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    #@5
    .line 160
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@7
    if-nez v0, :cond_0

    #@9
    .line 161
    new-array v0, p1, [I

    #@b
    iput-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@d
    .line 167
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@f
    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    #@11
    add-int/lit8 v2, v1, 0x1

    #@13
    iput v2, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    #@15
    aput v3, v0, v1

    #@17
    .line 170
    new-array v0, p2, [Lorg/apache/xpath/objects/XObject;

    #@19
    iput-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@1b
    .line 155
    return-void
.end method

.method public setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "val"    # Lorg/apache/xpath/objects/XObject;

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@2
    aput-object p2, v0, p1

    #@4
    .line 425
    return-void
.end method

.method public setLocalVariable(ILorg/apache/xpath/objects/XObject;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "val"    # Lorg/apache/xpath/objects/XObject;

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@2
    iget v1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    #@4
    add-int/2addr v1, p1

    #@5
    aput-object p2, v0, v1

    #@7
    .line 270
    return-void
.end method

.method public setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "val"    # Lorg/apache/xpath/objects/XObject;
    .param p3, "stackFrame"    # I

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    #@2
    add-int v1, p1, p3

    #@4
    aput-object p2, v0, v1

    #@6
    .line 285
    return-void
.end method

.method public setStackFrame(I)V
    .locals 0
    .param p1, "sf"    # I

    #@0
    .prologue
    .line 180
    iput p1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    #@2
    .line 178
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 132
    iget v0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    #@2
    return v0
.end method

.method public unlink()V
    .locals 2

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@2
    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    #@8
    aget v0, v0, v1

    #@a
    iput v0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    #@c
    .line 246
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@e
    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    aget v0, v0, v1

    #@14
    iput v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    #@16
    .line 243
    return-void
.end method

.method public unlink(I)V
    .locals 2
    .param p1, "currentFrame"    # I

    #@0
    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    #@2
    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    iput v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    #@8
    aget v0, v0, v1

    #@a
    iput v0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    #@c
    .line 258
    iput p1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    #@e
    .line 255
    return-void
.end method
