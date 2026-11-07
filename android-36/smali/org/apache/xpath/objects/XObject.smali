.class public Lorg/apache/xpath/objects/XObject;
.super Lorg/apache/xpath/Expression;
.source "XObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final greylist CLASS_BOOLEAN:I = 0x1

.field public static final greylist CLASS_NODESET:I = 0x4

.field public static final greylist CLASS_NULL:I = -0x1

.field public static final greylist CLASS_NUMBER:I = 0x2

.field public static final greylist CLASS_RTREEFRAG:I = 0x5

.field public static final greylist CLASS_STRING:I = 0x3

.field public static final greylist CLASS_UNKNOWN:I = 0x0

.field public static final greylist CLASS_UNRESOLVEDVARIABLE:I = 0x258

.field static final whitelist serialVersionUID:J = -0xb67edf6448449e7L


# instance fields
.field protected greylist m_obj:Ljava/lang/Object;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/Object;)V
    .registers 2

    .line 70
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public static greylist create(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .registers 1

    .line 165
    invoke-static {p0}, Lorg/apache/xpath/objects/XObjectFactory;->create(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public static greylist create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 2

    .line 180
    invoke-static {p0, p1}, Lorg/apache/xpath/objects/XObjectFactory;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist allowDetachToRelease(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 2

    .line 732
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public greylist bool()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 266
    const-string v1, "ER_CANT_CONVERT_TO_NUMBER"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist boolWithSideEffects()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result p0

    return p0
.end method

.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 3

    const/4 p1, 0x0

    .line 740
    const-string p2, "callVisitors should not be called for this object!!!"

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public greylist castToType(ILorg/apache/xpath/XPathContext;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-eqz p1, :cond_3f

    const/4 p2, 0x1

    if-eq p1, p2, :cond_35

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2b

    const/4 p2, 0x3

    if-eq p1, p2, :cond_26

    const/4 p2, 0x4

    if-eq p1, p2, :cond_21

    .line 519
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object p2

    .line 520
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 518
    const-string p2, "ER_CANT_CONVERT_TO_TYPE"

    invoke-virtual {p0, p2, p1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 504
    :cond_21
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    return-object p0

    .line 498
    :cond_26
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 501
    :cond_2b
    new-instance p1, Ljava/lang/Double;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p1

    .line 507
    :cond_35
    new-instance p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1

    .line 510
    :cond_3f
    iget-object p0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    return-object p0
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 4

    .line 747
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 753
    :cond_8
    check-cast p1, Lorg/apache/xpath/objects/XObject;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    if-nez p0, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public greylist destruct()V
    .registers 2

    .line 121
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    .line 124
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->detach()V

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public greylist detach()V
    .registers 1

    .line 0
    return-void
.end method

.method public greylist dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/xml/utils/XMLString;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public greylist equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 4

    .line 639
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 640
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    return p0

    .line 642
    :cond_c
    iget-object p0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz p0, :cond_17

    .line 644
    iget-object p1, p1, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 648
    :cond_17
    iget-object p0, p1, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-nez p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist error(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 685
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected greylist error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 701
    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 709
    new-instance p2, Lorg/apache/xpath/XPathException;

    invoke-direct {p2, p1, p0}, Lorg/apache/xpath/XPathException;-><init>(Ljava/lang/String;Lorg/apache/xpath/ExpressionNode;)V

    throw p2
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public greylist getFresh()Lorg/apache/xpath/objects/XObject;
    .registers 1

    .line 0
    return-object p0
.end method

.method public greylist getType()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getTypeString()Ljava/lang/String;
    .registers 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist greaterThan(Lorg/apache/xpath/objects/XObject;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 594
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 595
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->lessThan(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    return p0

    .line 597
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-lez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public greylist greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 618
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 619
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->lessThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    return p0

    .line 621
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-ltz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public greylist iter()Lorg/apache/xml/dtm/DTMIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 413
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 412
    const-string v1, "ER_CANT_CONVERT_TO_NODELIST"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist lessThan(Lorg/apache/xpath/objects/XObject;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 546
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 547
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->greaterThan(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    return p0

    .line 549
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public greylist lessThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 570
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 571
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    return p0

    .line 573
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public greylist mutableNodeset()Lorg/apache/xpath/NodeSetDTM;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 473
    const-string v1, "ER_CANT_CONVERT_TO_MUTABLENODELIST"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object p0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast p0, Lorg/apache/xpath/NodeSetDTM;

    return-object p0
.end method

.method public greylist nodelist()Lorg/w3c/dom/NodeList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 455
    const-string v1, "ER_CANT_CONVERT_TO_NODELIST"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 439
    const-string v1, "ER_CANT_CONVERT_TO_NODELIST"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist notEquals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 668
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 669
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->notEquals(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    return p0

    .line 671
    :cond_c
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public greylist num()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 238
    const-string v1, "ER_CANT_CONVERT_TO_NUMBER"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist numWithSideEffects()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist object()Ljava/lang/Object;
    .registers 1

    .line 399
    iget-object p0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    return-object p0
.end method

.method public greylist reset()V
    .registers 1

    .line 0
    return-void
.end method

.method public greylist rtf()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public greylist rtf(Lorg/apache/xpath/XPathContext;)I
    .registers 4

    .line 325
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->rtf()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_17

    .line 329
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    .line 332
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    .line 334
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result p0

    return p0

    :cond_17
    return v0
.end method

.method public greylist rtree()Lorg/w3c/dom/DocumentFragment;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist rtree(Lorg/apache/xpath/XPathContext;)Lorg/w3c/dom/DocumentFragment;
    .registers 4

    .line 350
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->rtf()I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    .line 354
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    .line 357
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    .line 359
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/DocumentFragment;

    return-object p0

    .line 363
    :cond_1d
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    .line 364
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/DocumentFragment;

    return-object p0
.end method

.method protected greylist setObject(Ljava/lang/Object;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    return-void
.end method

.method public greylist str()Ljava/lang/String;
    .registers 1

    .line 301
    iget-object p0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 312
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist xstr()Lorg/apache/xml/utils/XMLString;
    .registers 2

    .line 291
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0
.end method
