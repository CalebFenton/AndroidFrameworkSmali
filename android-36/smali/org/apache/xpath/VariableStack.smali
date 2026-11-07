.class public Lorg/apache/xpath/VariableStack;
.super Ljava/lang/Object;
.source "VariableStack.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final greylist CLEARLIMITATION:I = 0x400

.field private static greylist m_nulls:[Lorg/apache/xpath/objects/XObject;


# instance fields
.field private greylist _currentFrameBottom:I

.field greylist _frameTop:I

.field greylist _links:[I

.field greylist _linksTop:I

.field greylist _stackFrames:[Lorg/apache/xpath/objects/XObject;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    const/16 v0, 0x400

    .line 397
    new-array v0, v0, [Lorg/apache/xpath/objects/XObject;

    sput-object v0, Lorg/apache/xpath/VariableStack;->m_nulls:[Lorg/apache/xpath/objects/XObject;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0}, Lorg/apache/xpath/VariableStack;->reset()V

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 v0, p1, 0x2

    .line 60
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/VariableStack;->reset(II)V

    return-void
.end method


# virtual methods
.method public greylist clearLocalSlots(II)V
    .registers 5

    .line 411
    iget v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr p1, v0

    .line 413
    sget-object v0, Lorg/apache/xpath/VariableStack;->m_nulls:[Lorg/apache/xpath/objects/XObject;

    const/4 v1, 0x0

    iget-object p0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-static {v0, v1, p0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public declared-synchronized whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    monitor-enter p0

    .line 73
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/VariableStack;

    .line 76
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v1}, [Lorg/apache/xpath/objects/XObject;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/xpath/objects/XObject;

    iput-object v1, v0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    .line 77
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/apache/xpath/VariableStack;->_links:[I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 79
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public greylist elementAt(I)Lorg/apache/xpath/objects/XObject;
    .registers 2

    .line 122
    iget-object p0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public greylist getGlobalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v0, p2

    .line 451
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_15

    .line 452
    iget-object p0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p1

    aput-object p1, p0, p2

    return-object p1

    :cond_15
    return-object v0
.end method

.method public greylist getGlobalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v0, p2

    .line 478
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_15

    .line 479
    iget-object p0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p1

    aput-object p1, p0, p2

    return-object p1

    :cond_15
    if-eqz p3, :cond_18

    return-object v0

    .line 481
    :cond_18
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getFresh()Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public greylist getLocalVariable(II)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    add-int/2addr p1, p2

    .line 342
    iget-object p0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public greylist getLocalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 308
    iget v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr p2, v0

    .line 310
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v0, p2

    if-eqz v0, :cond_1b

    .line 318
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_1a

    .line 319
    iget-object p0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p1

    aput-object p1, p0, p2

    return-object p1

    :cond_1a
    return-object v0

    .line 313
    :cond_1b
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p2, "ER_VARIABLE_ACCESSED_BEFORE_BIND"

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 314
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw p0
.end method

.method public greylist getLocalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 365
    iget v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr p2, v0

    .line 367
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aget-object v0, v0, p2

    if-eqz v0, :cond_22

    .line 375
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    const/16 v2, 0x258

    if-ne v1, v2, :cond_1a

    .line 376
    iget-object p0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XObject;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p1

    aput-object p1, p0, p2

    return-object p1

    :cond_1a
    if-eqz p3, :cond_1d

    return-object v0

    .line 378
    :cond_1d
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->getFresh()Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0

    .line 370
    :cond_22
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p2, "ER_VARIABLE_ACCESSED_BEFORE_BIND"

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 371
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw p0
.end method

.method public greylist getStackFrame()I
    .registers 1

    .line 192
    iget p0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    return p0
.end method

.method public greylist getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 503
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v0

    .line 511
    instance-of v1, v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v1, :cond_4f

    .line 516
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 519
    instance-of v1, v0, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v1, :cond_3c

    .line 521
    :goto_e
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v1, :cond_3c

    move-object v1, v0

    .line 525
    :cond_17
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 527
    instance-of v2, v1, Lorg/apache/xalan/templates/ElemVariable;

    if-eqz v2, :cond_17

    .line 529
    move-object v2, v1

    check-cast v2, Lorg/apache/xalan/templates/ElemVariable;

    .line 531
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 532
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/VariableStack;->getLocalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0

    .line 535
    :cond_37
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_e

    .line 539
    :cond_3c
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 541
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemVariable;->getIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/VariableStack;->getGlobalVariable(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0

    .line 544
    :cond_4f
    new-instance p0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_VAR_NOT_RESOLVABLE"

    invoke-static {p2, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist isLocalSet(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    iget p0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr p1, p0

    aget-object p0, v0, p1

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public greylist link(I)I
    .registers 6

    .line 213
    iget v0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    iput v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr v0, p1

    .line 214
    iput v0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    .line 216
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_19

    .line 218
    array-length v0, v1

    add-int/lit16 v0, v0, 0x1000

    add-int/2addr v0, p1

    new-array p1, v0, [Lorg/apache/xpath/objects/XObject;

    .line 220
    array-length v0, v1

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iput-object p1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    .line 225
    :cond_19
    iget p1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    array-length v1, v0

    if-lt p1, v1, :cond_2d

    .line 227
    array-length p1, v0

    add-int/lit16 p1, p1, 0x800

    new-array p1, p1, [I

    .line 229
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iput-object p1, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    .line 234
    :cond_2d
    iget-object p1, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget v0, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    iget p0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    aput p0, p1, v0

    return p0
.end method

.method public greylist reset()V
    .registers 3

    .line 143
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    if-nez v0, :cond_7

    const/16 v0, 0x1000

    goto :goto_8

    .line 144
    :cond_7
    array-length v0, v0

    .line 145
    :goto_8
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    if-nez v1, :cond_f

    const/16 v1, 0x2000

    goto :goto_10

    .line 146
    :cond_f
    array-length v1, v1

    .line 147
    :goto_10
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/VariableStack;->reset(II)V

    return-void
.end method

.method protected greylist reset(II)V
    .registers 5

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    .line 157
    iput v0, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    .line 160
    iget-object v1, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    if-nez v1, :cond_d

    .line 161
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    .line 167
    :cond_d
    iget-object p1, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    aput v0, p1, v0

    .line 170
    new-array p1, p2, [Lorg/apache/xpath/objects/XObject;

    iput-object p1, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    return-void
.end method

.method public greylist setGlobalVariable(ILorg/apache/xpath/objects/XObject;)V
    .registers 3

    .line 427
    iget-object p0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    aput-object p2, p0, p1

    return-void
.end method

.method public greylist setLocalVariable(ILorg/apache/xpath/objects/XObject;)V
    .registers 4

    .line 272
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    iget p0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    add-int/2addr p1, p0

    aput-object p2, v0, p1

    return-void
.end method

.method public greylist setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V
    .registers 4

    .line 287
    iget-object p0, p0, Lorg/apache/xpath/VariableStack;->_stackFrames:[Lorg/apache/xpath/objects/XObject;

    add-int/2addr p1, p3

    aput-object p2, p0, p1

    return-void
.end method

.method public greylist setStackFrame(I)V
    .registers 2

    .line 180
    iput p1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    return-void
.end method

.method public greylist size()I
    .registers 1

    .line 132
    iget p0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    return p0
.end method

.method public greylist unlink()V
    .registers 4

    .line 245
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    aget v2, v0, v2

    iput v2, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    add-int/lit8 v1, v1, -0x2

    .line 246
    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    return-void
.end method

.method public greylist unlink(I)V
    .registers 4

    .line 257
    iget-object v0, p0, Lorg/apache/xpath/VariableStack;->_links:[I

    iget v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xpath/VariableStack;->_linksTop:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xpath/VariableStack;->_frameTop:I

    .line 258
    iput p1, p0, Lorg/apache/xpath/VariableStack;->_currentFrameBottom:I

    return-void
.end method
