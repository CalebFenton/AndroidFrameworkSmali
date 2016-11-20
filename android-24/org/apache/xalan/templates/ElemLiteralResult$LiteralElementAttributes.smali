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
.field private m_count:I

.field final synthetic this$0:Lorg/apache/xalan/templates/ElemLiteralResult;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/ElemLiteralResult;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xalan/templates/ElemLiteralResult;

    #@0
    .prologue
    .line 560
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 554
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    #@8
    .line 560
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    #@0
    .prologue
    .line 571
    iget v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 573
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@7
    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->-get0(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@f
    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->-get0(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    #@19
    .line 576
    :cond_0
    :goto_0
    iget v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    #@1b
    return v0

    #@1c
    .line 574
    :cond_1
    const/4 v0, 0x0

    #@1d
    iput v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->m_count:I

    #@1f
    goto :goto_0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 588
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    #@5
    move-result v7

    #@6
    if-nez v7, :cond_0

    #@8
    return-object v8

    #@9
    .line 589
    :cond_0
    const/4 v6, 0x0

    #@a
    .line 590
    .local v6, "uri":Ljava/lang/String;
    move-object v3, p1

    #@b
    .line 591
    .local v3, "localName":Ljava/lang/String;
    const-string/jumbo v7, ":"

    #@e
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@11
    move-result v2

    #@12
    .line 592
    .local v2, "index":I
    const/4 v7, -0x1

    #@13
    if-eq v7, v2, :cond_1

    #@15
    .line 593
    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    .line 594
    .local v6, "uri":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    #@1b
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 596
    .end local v6    # "uri":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    #@20
    .line 597
    .local v5, "retNode":Lorg/w3c/dom/Node;
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@22
    invoke-static {v7}, Lorg/apache/xalan/templates/ElemLiteralResult;->-get0(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    #@25
    move-result-object v7

    #@26
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v1

    #@2a
    .line 598
    .local v1, "eum":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_3

    #@30
    .line 599
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Lorg/apache/xalan/templates/AVT;

    #@36
    .line 600
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v7

    #@3e
    if-eqz v7, :cond_2

    #@40
    .line 602
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    .line 603
    .local v4, "nsURI":Ljava/lang/String;
    if-nez v6, :cond_4

    #@46
    if-nez v4, :cond_4

    #@48
    .line 606
    :goto_0
    new-instance v5, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    #@4a
    .end local v5    # "retNode":Lorg/w3c/dom/Node;
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@4c
    iget-object v8, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@4e
    invoke-direct {v5, v7, v0, v8}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    #@51
    .line 611
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v4    # "nsURI":Ljava/lang/String;
    :cond_3
    return-object v5

    #@52
    .line 604
    .restart local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v4    # "nsURI":Ljava/lang/String;
    .restart local v5    # "retNode":Lorg/w3c/dom/Node;
    :cond_4
    if-eqz v6, :cond_2

    #@54
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v7

    #@58
    .line 603
    if-eqz v7, :cond_2

    #@5a
    goto :goto_0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 625
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    return-object v5

    #@8
    .line 626
    :cond_0
    const/4 v3, 0x0

    #@9
    .line 627
    .local v3, "retNode":Lorg/w3c/dom/Node;
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@b
    invoke-static {v4}, Lorg/apache/xalan/templates/ElemLiteralResult;->-get0(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    #@e
    move-result-object v4

    #@f
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .line 628
    .local v1, "eum":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 630
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lorg/apache/xalan/templates/AVT;

    #@1f
    .line 631
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_1

    #@29
    .line 633
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 634
    .local v2, "nsURI":Ljava/lang/String;
    if-nez p1, :cond_3

    #@2f
    if-nez v2, :cond_3

    #@31
    .line 637
    :goto_0
    new-instance v3, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    #@33
    .end local v3    # "retNode":Lorg/w3c/dom/Node;
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@35
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@37
    invoke-direct {v3, v4, v0, v5}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    #@3a
    .line 642
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v2    # "nsURI":Ljava/lang/String;
    :cond_2
    return-object v3

    #@3b
    .line 635
    .restart local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v2    # "nsURI":Ljava/lang/String;
    .restart local v3    # "retNode":Lorg/w3c/dom/Node;
    :cond_3
    if-eqz p1, :cond_1

    #@3d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v4

    #@41
    .line 634
    if-eqz v4, :cond_1

    #@43
    goto :goto_0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    .line 655
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->getLength()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@8
    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->-get0(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@f
    move-result v0

    #@10
    if-lt p1, v0, :cond_1

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    return-object v0

    #@14
    .line 657
    :cond_1
    new-instance v1, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;

    #@16
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@18
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@1a
    invoke-static {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->-get0(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;

    #@1d
    move-result-object v0

    #@1e
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lorg/apache/xalan/templates/AVT;

    #@24
    .line 658
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@26
    .line 657
    invoke-direct {v1, v2, v0, v3}, Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;Lorg/apache/xalan/templates/AVT;Lorg/w3c/dom/Element;)V

    #@29
    .line 656
    return-object v1
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 673
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@2
    .line 674
    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    #@5
    .line 673
    const/4 v2, 0x7

    #@6
    invoke-virtual {v0, v2, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    #@9
    .line 675
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 692
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@2
    .line 693
    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    #@5
    .line 692
    const/4 v2, 0x7

    #@6
    invoke-virtual {v0, v2, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    #@9
    .line 694
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "arg"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 709
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@2
    .line 710
    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    #@5
    .line 709
    const/4 v2, 0x7

    #@6
    invoke-virtual {v0, v2, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    #@9
    .line 711
    const/4 v0, 0x0

    #@a
    return-object v0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "arg"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 726
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;->this$0:Lorg/apache/xalan/templates/ElemLiteralResult;

    #@2
    .line 727
    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    #@5
    .line 726
    const/4 v2, 0x7

    #@6
    invoke-virtual {v0, v2, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->throwDOMException(SLjava/lang/String;)V

    #@9
    .line 728
    const/4 v0, 0x0

    #@a
    return-object v0
.end method
