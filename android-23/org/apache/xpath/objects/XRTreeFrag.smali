.class public Lorg/apache/xpath/objects/XRTreeFrag;
.super Lorg/apache/xpath/objects/XObject;
.source "XRTreeFrag.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x2c6e343d20cc504fL


# instance fields
.field private m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

.field protected m_allowRelease:Z

.field private m_dtmRoot:I

.field private m_xmlStr:Lorg/apache/xml/utils/XMLString;


# direct methods
.method public constructor <init>(ILorg/apache/xpath/XPathContext;)V
    .locals 2
    .param p1, "root"    # I
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 63
    invoke-direct {p0, v1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    #@4
    .line 42
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    #@7
    .line 43
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    #@a
    .line 171
    iput-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    #@c
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/objects/XRTreeFrag;->initDTM(ILorg/apache/xpath/XPathContext;)V

    #@f
    .line 61
    return-void
.end method

.method public constructor <init>(ILorg/apache/xpath/XPathContext;Lorg/apache/xpath/ExpressionNode;)V
    .locals 2
    .param p1, "root"    # I
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p3, "parent"    # Lorg/apache/xpath/ExpressionNode;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 52
    invoke-direct {p0, v1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    #@4
    .line 42
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    #@7
    .line 43
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    #@a
    .line 171
    iput-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    #@c
    .line 53
    invoke-virtual {p0, p3}, Lorg/apache/xpath/objects/XRTreeFrag;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@f
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/objects/XRTreeFrag;->initDTM(ILorg/apache/xpath/XPathContext;)V

    #@12
    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .locals 1
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 95
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 42
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    #@6
    .line 43
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    #@9
    .line 171
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    #@c
    .line 93
    return-void
.end method

.method private final initDTM(ILorg/apache/xpath/XPathContext;)V
    .locals 2
    .param p1, "root"    # I
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 68
    iput p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    #@2
    .line 69
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@5
    move-result-object v0

    #@6
    .line 70
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    if-eqz v0, :cond_0

    #@8
    .line 71
    invoke-virtual {p2, v0}, Lorg/apache/xpath/XPathContext;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    #@b
    move-result v1

    #@c
    invoke-virtual {p2, v1}, Lorg/apache/xpath/XPathContext;->getDTMXRTreeFrag(I)Lorg/apache/xpath/objects/DTMXRTreeFrag;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    #@12
    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public allowDetachToRelease(Z)V
    .locals 0
    .param p1, "allowRelease"    # Z

    #@0
    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    #@2
    .line 104
    return-void
.end method

.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 1
    .param p1, "fsb"    # Lorg/apache/xml/utils/FastStringBuffer;

    #@0
    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/objects/XString;

    #@6
    .line 194
    .local v0, "xstring":Lorg/apache/xpath/objects/XString;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XString;->appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@9
    .line 191
    return-void
.end method

.method public asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;
    .locals 3

    #@0
    .prologue
    .line 229
    new-instance v0, Lorg/apache/xpath/axes/RTFIterator;

    #@2
    iget v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    #@4
    iget-object v2, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    #@6
    invoke-virtual {v2}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/axes/RTFIterator;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    #@11
    return-object v0
.end method

.method public bool()Z
    .locals 1

    #@0
    .prologue
    .line 168
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public convertToNodeset()Lorg/w3c/dom/NodeList;
    .locals 2

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_obj:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Lorg/w3c/dom/NodeList;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 241
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_obj:Ljava/lang/Object;

    #@8
    check-cast v0, Lorg/w3c/dom/NodeList;

    #@a
    return-object v0

    #@b
    .line 243
    :cond_0
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeList;

    #@d
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeList;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@14
    return-object v0
.end method

.method public detach()V
    .locals 1

    #@0
    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 120
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    #@6
    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->destruct()V

    #@9
    .line 121
    const/4 v0, 0x0

    #@a
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XRTreeFrag;->setObject(Ljava/lang/Object;)V

    #@d
    .line 118
    :cond_0
    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 8
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x1

    #@3
    .line 260
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@6
    move-result v3

    #@7
    if-ne v5, v3, :cond_0

    #@9
    .line 266
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 268
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@11
    move-result v3

    #@12
    if-ne v1, v3, :cond_2

    #@14
    .line 270
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->bool()Z

    #@17
    move-result v3

    #@18
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    #@1b
    move-result v4

    #@1c
    if-ne v3, v4, :cond_1

    #@1e
    :goto_0
    return v1

    #@1f
    :cond_1
    move v1, v2

    #@20
    goto :goto_0

    #@21
    .line 272
    :cond_2
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@24
    move-result v3

    #@25
    const/4 v4, 0x2

    #@26
    if-ne v4, v3, :cond_4

    #@28
    .line 274
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->num()D

    #@2b
    move-result-wide v4

    #@2c
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@2f
    move-result-wide v6

    #@30
    cmpl-double v3, v4, v6

    #@32
    if-nez v3, :cond_3

    #@34
    :goto_1
    return v1

    #@35
    :cond_3
    move v1, v2

    #@36
    goto :goto_1

    #@37
    .line 276
    :cond_4
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@3a
    move-result v1

    #@3b
    if-ne v5, v1, :cond_5

    #@3d
    .line 278
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@44
    move-result-object v2

    #@45
    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    #@48
    move-result v1

    #@49
    return v1

    #@4a
    .line 280
    :cond_5
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@4d
    move-result v1

    #@4e
    const/4 v2, 0x3

    #@4f
    if-ne v2, v1, :cond_6

    #@51
    .line 282
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@58
    move-result-object v2

    #@59
    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    #@5c
    move-result v1

    #@5d
    return v1

    #@5e
    .line 284
    :cond_6
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@61
    move-result v1

    #@62
    const/4 v2, 0x5

    #@63
    if-ne v2, v1, :cond_7

    #@65
    .line 288
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@6c
    move-result-object v2

    #@6d
    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    #@70
    move-result v1

    #@71
    return v1

    #@72
    .line 292
    :cond_7
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@75
    move-result v1

    #@76
    return v1

    #@77
    .line 296
    :catch_0
    move-exception v0

    #@78
    .line 297
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@7a
    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@7d
    throw v1
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 132
    const/4 v0, 0x5

    #@1
    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 143
    const-string/jumbo v0, "#RTREEFRAG"

    #@3
    return-object v0
.end method

.method public num()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    #@3
    move-result-object v0

    #@4
    .line 157
    .local v0, "s":Lorg/apache/xml/utils/XMLString;
    invoke-interface {v0}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    #@7
    move-result-wide v2

    #@8
    return-wide v2
.end method

.method public object()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 84
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    #@a
    new-instance v1, Lorg/apache/xpath/NodeSetDTM;

    #@c
    iget v2, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    #@e
    iget-object v3, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    #@10
    invoke-virtual {v3}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@17
    move-result-object v3

    #@18
    invoke-direct {v1, v2, v3}, Lorg/apache/xpath/NodeSetDTM;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    #@1b
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@1e
    return-object v0

    #@1f
    .line 86
    :cond_0
    invoke-super {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method

.method public rtf()I
    .locals 1

    #@0
    .prologue
    .line 217
    iget v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    #@2
    return v0
.end method

.method public str()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 205
    iget-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    #@2
    invoke-virtual {v1}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTM()Lorg/apache/xml/dtm/DTM;

    #@5
    move-result-object v1

    #@6
    iget v2, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    #@8
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 207
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    #@12
    const-string/jumbo v0, ""

    #@15
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 2

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 181
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    #@6
    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTM()Lorg/apache/xml/dtm/DTM;

    #@9
    move-result-object v0

    #@a
    iget v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    #@c
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    #@12
    .line 183
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    #@14
    return-object v0
.end method
