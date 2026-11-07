.class public Lorg/apache/xpath/objects/XRTreeFrag;
.super Lorg/apache/xpath/objects/XObject;
.source "XRTreeFrag.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final whitelist serialVersionUID:J = -0x2c6e343d20cc504fL


# instance fields
.field private greylist m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

.field protected greylist m_allowRelease:Z

.field private greylist m_dtmRoot:I

.field private greylist m_xmlStr:Lorg/apache/xml/utils/XMLString;


# direct methods
.method public constructor greylist <init>(ILorg/apache/xpath/XPathContext;)V
    .registers 5

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    .line 171
    iput-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/objects/XRTreeFrag;->initDTM(ILorg/apache/xpath/XPathContext;)V

    return-void
.end method

.method public constructor greylist <init>(ILorg/apache/xpath/XPathContext;Lorg/apache/xpath/ExpressionNode;)V
    .registers 6

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    .line 171
    iput-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    .line 53
    invoke-virtual {p0, p3}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/objects/XRTreeFrag;->initDTM(ILorg/apache/xpath/XPathContext;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    return-void
.end method

.method private final greylist initDTM(ILorg/apache/xpath/XPathContext;)V
    .registers 3

    .line 68
    iput p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    .line 69
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 71
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTMXRTreeFrag(I)Lorg/apache/xpath/objects/DTMXRTreeFrag;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    :cond_12
    return-void
.end method


# virtual methods
.method public greylist allowDetachToRelease(Z)V
    .registers 2

    .line 106
    iput-boolean p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    return-void
.end method

.method public greylist appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 2

    .line 193
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/XString;

    .line 194
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V

    return-void
.end method

.method public greylist asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;
    .registers 3

    .line 229
    new-instance v0, Lorg/apache/xpath/axes/RTFIterator;

    iget v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    iget-object p0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/xpath/axes/RTFIterator;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    return-object v0
.end method

.method public greylist bool()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist convertToNodeset()Lorg/w3c/dom/NodeList;
    .registers 3

    .line 240
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    instance-of v1, v0, Lorg/w3c/dom/NodeList;

    if-eqz v1, :cond_9

    .line 241
    check-cast v0, Lorg/w3c/dom/NodeList;

    return-object v0

    .line 243
    :cond_9
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeList;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMNodeList;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    return-object v0
.end method

.method public greylist detach()V
    .registers 2

    .line 119
    iget-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    if-eqz v0, :cond_d

    .line 120
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->destruct()V

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public greylist equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 7

    .line 260
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_c

    .line 266
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    return p0

    .line 268
    :cond_c
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, v0, :cond_20

    .line 270
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->bool()Z

    move-result p0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result p1

    if-ne p0, p1, :cond_1f

    return v3

    :cond_1f
    return v2

    .line 272
    :cond_20
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v4, v0, :cond_35

    .line 274
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_34

    return v3

    :cond_34
    return v2

    .line 276
    :cond_35
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    if-ne v1, v0, :cond_48

    .line 278
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result p0

    return p0

    .line 280
    :cond_48
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_5c

    .line 282
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result p0

    return p0

    .line 284
    :cond_5c
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_70

    .line 288
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result p0

    return p0

    .line 292
    :cond_70
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0
    :try_end_74
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_74} :catch_75

    return p0

    :catch_75
    move-exception p0

    .line 297
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist getType()I
    .registers 1

    .line 0
    const/4 p0, 0x5

    return p0
.end method

.method public greylist getTypeString()Ljava/lang/String;
    .registers 1

    .line 143
    const-string p0, "#RTREEFRAG"

    return-object p0
.end method

.method public greylist num()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    .line 157
    invoke-interface {p0}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist object()Ljava/lang/Object;
    .registers 4

    .line 83
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 84
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    new-instance v1, Lorg/apache/xpath/NodeSetDTM;

    iget v2, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    iget-object p0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/apache/xpath/NodeSetDTM;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    return-object v0

    .line 86
    :cond_1f
    invoke-super {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public greylist rtf()I
    .registers 1

    .line 217
    iget p0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    return p0
.end method

.method public greylist str()Ljava/lang/String;
    .registers 2

    .line 205
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iget p0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    invoke-interface {v0, p0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_14

    .line 207
    const-string p0, ""

    :cond_14
    return-object p0
.end method

.method public greylist xstr()Lorg/apache/xml/utils/XMLString;
    .registers 3

    .line 180
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    if-nez v0, :cond_12

    .line 181
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    .line 183
    :cond_12
    iget-object p0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    return-object p0
.end method
