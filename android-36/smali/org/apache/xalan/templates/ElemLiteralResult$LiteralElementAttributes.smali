.class public Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;
.super Ljava/lang/Object;
.source "ElemLiteralResult.java"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/ElemLiteralResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiteralElementAttributes"
.end annotation


# instance fields
.field private greylist m_count:I

.field final synthetic greylist this$0:Lorg/apache/xalan/templates/ElemLiteralResult;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/templates/ElemLiteralResult;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 560
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 554
    iput p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    return-void
.end method


# virtual methods
.method public whitelist test-api getLength()I
    .registers 3

    .line 571
    iget v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 573
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->-$$Nest$fgetm_avts(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->-$$Nest$fgetm_avts(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    goto :goto_1d

    :cond_1a
    const/4 v0, 0x0

    .line 574
    iput v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    .line 576
    :cond_1d
    :goto_1d
    iget p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    return p0
.end method

.method public whitelist test-api getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 7

    .line 588
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 591
    :cond_8
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_1d

    const/4 v2, 0x0

    .line 593
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 594
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    move-object v2, v1

    .line 597
    :goto_1e
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->-$$Nest$fgetm_avts(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 598
    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 599
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/AVT;

    .line 600
    invoke-virtual {v3}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 602
    invoke-virtual {v3}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_46

    if-eqz v4, :cond_4e

    :cond_46
    if-eqz v2, :cond_28

    .line 604
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 606
    :cond_4e
    new-instance p1, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct {p1, p0, v3, p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    return-object p1

    :cond_56
    return-object v1
.end method

.method public whitelist test-api getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 7

    .line 625
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 627
    :cond_8
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->-$$Nest$fgetm_avts(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 628
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 630
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVT;

    .line 631
    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 633
    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_30

    if-eqz v3, :cond_38

    :cond_30
    if-eqz p1, :cond_12

    .line 635
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 637
    :cond_38
    new-instance p1, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct {p1, p0, v2, p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    return-object p1

    :cond_40
    return-object v1
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .registers 5

    .line 655
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->-$$Nest$fgetm_avts(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_13

    goto :goto_27

    .line 656
    :cond_13
    new-instance v0, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-static {v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->-$$Nest$fgetm_avts(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    move-result-object v2

    .line 657
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xalan/templates/AVT;

    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    return-object v0

    :cond_27
    :goto_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 673
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 692
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string p2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 709
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 726
    iget-object p0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    const/4 p1, 0x7

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
