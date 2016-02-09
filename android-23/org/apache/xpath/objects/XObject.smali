.class public Lorg/apache/xpath/objects/XObject;
.super Lorg/apache/xpath/Expression;
.source "XObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CLASS_BOOLEAN:I = 0x1

.field public static final CLASS_NODESET:I = 0x4

.field public static final CLASS_NULL:I = -0x1

.field public static final CLASS_NUMBER:I = 0x2

.field public static final CLASS_RTREEFRAG:I = 0x5

.field public static final CLASS_STRING:I = 0x3

.field public static final CLASS_UNKNOWN:I = 0x0

.field public static final CLASS_UNRESOLVEDVARIABLE:I = 0x258

.field static final serialVersionUID:J = -0xb67edf6448449e7L


# instance fields
.field protected m_obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    #@3
    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    #@6
    .line 69
    return-void
.end method

.method public static create(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p0, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 165
    invoke-static {p0}, Lorg/apache/xpath/objects/XObjectFactory;->create(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p0, "val"    # Ljava/lang/Object;
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 180
    invoke-static {p0, p1}, Lorg/apache/xpath/objects/XObjectFactory;->create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public allowDetachToRelease(Z)V
    .locals 0
    .param p1, "allowRelease"    # Z

    #@0
    .prologue
    .line 103
    return-void
.end method

.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 1
    .param p1, "fsb"    # Lorg/apache/xml/utils/FastStringBuffer;

    #@0
    .prologue
    .line 732
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@7
    .line 730
    return-void
.end method

.method public bool()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 266
    const-string/jumbo v0, "ER_CANT_CONVERT_TO_NUMBER"

    #@4
    .line 267
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Ljava/lang/Object;

    #@7
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    aput-object v2, v1, v3

    #@d
    .line 266
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@10
    .line 269
    return v3
.end method

.method public boolWithSideEffects()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 2
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 740
    const-string/jumbo v0, "callVisitors should not be called for this object!!!"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/objects/XObject;->assertion(ZLjava/lang/String;)V

    #@7
    .line 738
    return-void
.end method

.method public castToType(ILorg/apache/xpath/XPathContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "t"    # I
    .param p2, "support"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 495
    packed-switch p1, :pswitch_data_0

    #@3
    .line 518
    const-string/jumbo v1, "ER_CANT_CONVERT_TO_TYPE"

    #@6
    .line 519
    const/4 v2, 0x2

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    const/4 v4, 0x0

    #@e
    aput-object v3, v2, v4

    #@10
    .line 520
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    const/4 v4, 0x1

    #@15
    aput-object v3, v2, v4

    #@17
    .line 518
    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1a
    .line 522
    const/4 v0, 0x0

    #@1b
    .line 525
    :goto_0
    return-object v0

    #@1c
    .line 498
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .local v0, "result":Ljava/lang/Object;
    goto :goto_0

    #@21
    .line 501
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_1
    new-instance v0, Ljava/lang/Double;

    #@23
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    #@26
    move-result-wide v2

    #@27
    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    #@2a
    .line 502
    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_0

    #@2b
    .line 504
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    #@2e
    move-result-object v0

    #@2f
    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_0

    #@30
    .line 507
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_3
    new-instance v0, Ljava/lang/Boolean;

    #@32
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    #@35
    move-result v1

    #@36
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    #@39
    .line 508
    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_0

    #@3a
    .line 510
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_4
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    #@3c
    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_0

    #@3d
    .line 495
    nop

    #@3e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 2
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 747
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->isSameClass(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 748
    return v1

    #@8
    .line 753
    :cond_0
    check-cast p1, Lorg/apache/xpath/objects/XObject;

    #@a
    .end local p1    # "expr":Lorg/apache/xpath/Expression;
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    .line 754
    return v1

    #@11
    .line 756
    :cond_1
    const/4 v0, 0x1

    #@12
    return v0
.end method

.method public destruct()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 121
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 123
    const/4 v0, 0x1

    #@6
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    #@9
    .line 124
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->detach()V

    #@c
    .line 126
    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    #@f
    .line 118
    :cond_0
    return-void
.end method

.method public detach()V
    .locals 0

    #@0
    .prologue
    .line 112
    return-void
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Lorg/apache/xml/utils/XMLString;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    #@7
    .line 149
    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 2
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;

    #@0
    .prologue
    .line 639
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 640
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 642
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 644
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    #@12
    iget-object v1, p1, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 648
    :cond_1
    iget-object v0, p1, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    #@1b
    if-nez v0, :cond_2

    #@1d
    const/4 v0, 0x1

    #@1e
    :goto_0
    return v0

    #@1f
    :cond_2
    const/4 v0, 0x0

    #@20
    goto :goto_0
.end method

.method protected error(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 685
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@4
    .line 683
    return-void
.end method

.method protected error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 701
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 709
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v1, Lorg/apache/xpath/XPathException;

    #@6
    invoke-direct {v1, v0, p0}, Lorg/apache/xpath/XPathException;-><init>(Ljava/lang/String;Lorg/apache/xpath/ExpressionNode;)V

    #@9
    throw v1
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 0
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 90
    return-object p0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 717
    return-void
.end method

.method public getFresh()Lorg/apache/xpath/objects/XObject;
    .locals 0

    #@0
    .prologue
    .line 425
    return-object p0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 214
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "#UNKNOWN ("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, ")"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public greaterThan(Lorg/apache/xpath/objects/XObject;)Z
    .locals 4
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 594
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 595
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->lessThan(Lorg/apache/xpath/objects/XObject;)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 597
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    #@f
    move-result-wide v0

    #@10
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@13
    move-result-wide v2

    #@14
    cmpl-double v0, v0, v2

    #@16
    if-lez v0, :cond_1

    #@18
    const/4 v0, 0x1

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .locals 4
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 618
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 619
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->lessThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 621
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    #@f
    move-result-wide v0

    #@10
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@13
    move-result-wide v2

    #@14
    cmpl-double v0, v0, v2

    #@16
    if-ltz v0, :cond_1

    #@18
    const/4 v0, 0x1

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public iter()Lorg/apache/xml/dtm/DTMIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    const-string/jumbo v0, "ER_CANT_CONVERT_TO_NODELIST"

    #@3
    .line 413
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    .line 412
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@10
    .line 415
    const/4 v0, 0x0

    #@11
    return-object v0
.end method

.method public lessThan(Lorg/apache/xpath/objects/XObject;)Z
    .locals 4
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 546
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 547
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->greaterThan(Lorg/apache/xpath/objects/XObject;)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 549
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    #@f
    move-result-wide v0

    #@10
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@13
    move-result-wide v2

    #@14
    cmpg-double v0, v0, v2

    #@16
    if-gez v0, :cond_1

    #@18
    const/4 v0, 0x1

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public lessThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .locals 4
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 570
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 571
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 573
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    #@f
    move-result-wide v0

    #@10
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@13
    move-result-wide v2

    #@14
    cmpg-double v0, v0, v2

    #@16
    if-gtz v0, :cond_1

    #@18
    const/4 v0, 0x1

    #@19
    :goto_0
    return v0

    #@1a
    :cond_1
    const/4 v0, 0x0

    #@1b
    goto :goto_0
.end method

.method public mutableNodeset()Lorg/apache/xpath/NodeSetDTM;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    const-string/jumbo v0, "ER_CANT_CONVERT_TO_MUTABLENODELIST"

    #@3
    .line 474
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    .line 473
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@10
    .line 476
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    #@12
    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    #@14
    return-object v0
.end method

.method public nodelist()Lorg/w3c/dom/NodeList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 455
    const-string/jumbo v0, "ER_CANT_CONVERT_TO_NODELIST"

    #@3
    .line 456
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    .line 455
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@10
    .line 458
    const/4 v0, 0x0

    #@11
    return-object v0
.end method

.method public nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 439
    const-string/jumbo v0, "ER_CANT_CONVERT_TO_NODELIST"

    #@3
    .line 440
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    .line 439
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@10
    .line 442
    const/4 v0, 0x0

    #@11
    return-object v0
.end method

.method public notEquals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 2
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 668
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 669
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->notEquals(Lorg/apache/xpath/objects/XObject;)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 671
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    const/4 v0, 0x0

    #@13
    :goto_0
    return v0

    #@14
    :cond_1
    const/4 v0, 0x1

    #@15
    goto :goto_0
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
    .line 238
    const-string/jumbo v0, "ER_CANT_CONVERT_TO_NUMBER"

    #@3
    .line 239
    const/4 v1, 0x1

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->getTypeString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    .line 238
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/objects/XObject;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@10
    .line 241
    const-wide/16 v0, 0x0

    #@12
    return-wide v0
.end method

.method public numWithSideEffects()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public object()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 133
    return-void
.end method

.method public rtf()I
    .locals 1

    #@0
    .prologue
    .line 388
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public rtf(Lorg/apache/xpath/XPathContext;)I
    .locals 3
    .param p1, "support"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 325
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->rtf()I

    #@3
    move-result v1

    #@4
    .line 327
    .local v1, "result":I
    const/4 v2, -0x1

    #@5
    if-ne v2, v1, :cond_0

    #@7
    .line 329
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    #@a
    move-result-object v0

    #@b
    .line 332
    .local v0, "frag":Lorg/apache/xml/dtm/DTM;
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    #@12
    .line 334
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@15
    move-result v1

    #@16
    .line 337
    .end local v0    # "frag":Lorg/apache/xml/dtm/DTM;
    :cond_0
    return v1
.end method

.method public rtree()Lorg/w3c/dom/DocumentFragment;
    .locals 1

    #@0
    .prologue
    .line 378
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public rtree(Lorg/apache/xpath/XPathContext;)Lorg/w3c/dom/DocumentFragment;
    .locals 4
    .param p1, "support"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 349
    const/4 v0, 0x0

    #@1
    .line 350
    .local v0, "docFrag":Lorg/w3c/dom/DocumentFragment;
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->rtf()I

    #@4
    move-result v2

    #@5
    .line 352
    .local v2, "result":I
    const/4 v3, -0x1

    #@6
    if-ne v3, v2, :cond_0

    #@8
    .line 354
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    #@b
    move-result-object v1

    #@c
    .line 357
    .local v1, "frag":Lorg/apache/xml/dtm/DTM;
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-interface {v1, v3}, Lorg/apache/xml/dtm/DTM;->appendTextChild(Ljava/lang/String;)V

    #@13
    .line 359
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@16
    move-result v3

    #@17
    invoke-interface {v1, v3}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@1a
    move-result-object v0

    #@1b
    .end local v0    # "docFrag":Lorg/w3c/dom/DocumentFragment;
    check-cast v0, Lorg/w3c/dom/DocumentFragment;

    #@1d
    .line 367
    .local v0, "docFrag":Lorg/w3c/dom/DocumentFragment;
    :goto_0
    return-object v0

    #@1e
    .line 363
    .end local v1    # "frag":Lorg/apache/xml/dtm/DTM;
    .local v0, "docFrag":Lorg/w3c/dom/DocumentFragment;
    :cond_0
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@21
    move-result-object v1

    #@22
    .line 364
    .restart local v1    # "frag":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@25
    move-result v3

    #@26
    invoke-interface {v1, v3}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@29
    move-result-object v0

    #@2a
    .end local v0    # "docFrag":Lorg/w3c/dom/DocumentFragment;
    check-cast v0, Lorg/w3c/dom/DocumentFragment;

    #@2c
    .local v0, "docFrag":Lorg/w3c/dom/DocumentFragment;
    goto :goto_0
.end method

.method protected setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    #@2
    .line 74
    return-void
.end method

.method public str()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    #@6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const-string/jumbo v0, ""

    #@e
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 2

    #@0
    .prologue
    .line 291
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
