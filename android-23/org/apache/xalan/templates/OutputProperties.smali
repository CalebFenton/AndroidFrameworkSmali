.class public Lorg/apache/xalan/templates/OutputProperties;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "OutputProperties.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x60cd2713ce100890L


# instance fields
.field private m_properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "xml"

    #@3
    invoke-direct {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    #@6
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 668
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@6
    .line 83
    new-instance v0, Ljava/util/Properties;

    #@8
    .line 84
    invoke-static {p1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    #@b
    move-result-object v1

    #@c
    .line 83
    invoke-direct {v0, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    #@f
    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@11
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1
    .param p1, "defaults"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    #@3
    .line 668
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@6
    .line 68
    new-instance v0, Ljava/util/Properties;

    #@8
    invoke-direct {v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    #@b
    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@d
    .line 66
    return-void
.end method

.method public static getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 687
    invoke-static {p0}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getQNameProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Vector;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 485
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v6

    #@5
    .line 487
    .local v6, "s":Ljava/lang/String;
    if-eqz v6, :cond_6

    #@7
    .line 489
    new-instance v7, Ljava/util/Vector;

    #@9
    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    #@c
    .line 490
    .local v7, "v":Ljava/util/Vector;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@f
    move-result v4

    #@10
    .line 491
    .local v4, "l":I
    const/4 v3, 0x0

    #@11
    .line 492
    .local v3, "inCurly":Z
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    #@13
    invoke-direct {v0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>()V

    #@16
    .line 497
    .local v0, "buf":Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_4

    #@19
    .line 499
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v1

    #@1d
    .line 501
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    #@20
    move-result v8

    #@21
    if-eqz v8, :cond_1

    #@23
    .line 503
    if-nez v3, :cond_2

    #@25
    .line 505
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    #@28
    move-result v8

    #@29
    if-lez v8, :cond_0

    #@2b
    .line 507
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    invoke-static {v8}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    #@32
    move-result-object v5

    #@33
    .line 508
    .local v5, "qname":Lorg/apache/xml/utils/QName;
    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@36
    .line 509
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->reset()V

    #@39
    .line 497
    .end local v5    # "qname":Lorg/apache/xml/utils/QName;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 514
    :cond_1
    const/16 v8, 0x7b

    #@3e
    if-ne v8, v1, :cond_3

    #@40
    .line 515
    const/4 v3, 0x1

    #@41
    .line 519
    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(C)V

    #@44
    goto :goto_1

    #@45
    .line 516
    :cond_3
    const/16 v8, 0x7d

    #@47
    if-ne v8, v1, :cond_2

    #@49
    .line 517
    const/4 v3, 0x0

    #@4a
    goto :goto_2

    #@4b
    .line 522
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    #@4e
    move-result v8

    #@4f
    if-lez v8, :cond_5

    #@51
    .line 524
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    #@54
    move-result-object v8

    #@55
    invoke-static {v8}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    #@58
    move-result-object v5

    #@59
    .line 525
    .restart local v5    # "qname":Lorg/apache/xml/utils/QName;
    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5c
    .line 526
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->reset()V

    #@5f
    .line 529
    .end local v5    # "qname":Lorg/apache/xml/utils/QName;
    :cond_5
    return-object v7

    #@60
    .line 532
    .end local v0    # "buf":Lorg/apache/xml/utils/FastStringBuffer;
    .end local v2    # "i":I
    .end local v3    # "inCurly":Z
    .end local v4    # "l":I
    .end local v7    # "v":Ljava/util/Vector;
    :cond_6
    return-object v8
.end method

.method public static getQNameProperty(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/xml/utils/QName;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 388
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 390
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 391
    invoke-static {v0}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 393
    :cond_0
    return-object v1
.end method

.method public static isLegalPropertyKey(Ljava/lang/String;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0x7b

    #@2
    const/4 v0, 0x1

    #@3
    const/16 v3, 0x7d

    #@5
    const/4 v1, 0x0

    #@6
    .line 649
    const-string/jumbo v2, "cdata-section-elements"

    #@9
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    .line 650
    const-string/jumbo v2, "doctype-public"

    #@12
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    .line 649
    if-nez v2, :cond_0

    #@18
    .line 651
    const-string/jumbo v2, "doctype-system"

    #@1b
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    .line 649
    if-nez v2, :cond_0

    #@21
    .line 652
    const-string/jumbo v2, "encoding"

    #@24
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    .line 649
    if-nez v2, :cond_0

    #@2a
    .line 653
    const-string/jumbo v2, "indent"

    #@2d
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    .line 649
    if-nez v2, :cond_0

    #@33
    .line 654
    const-string/jumbo v2, "media-type"

    #@36
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v2

    #@3a
    .line 649
    if-nez v2, :cond_0

    #@3c
    .line 655
    const-string/jumbo v2, "method"

    #@3f
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    .line 649
    if-nez v2, :cond_0

    #@45
    .line 656
    const-string/jumbo v2, "omit-xml-declaration"

    #@48
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v2

    #@4c
    .line 649
    if-nez v2, :cond_0

    #@4e
    .line 657
    const-string/jumbo v2, "standalone"

    #@51
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v2

    #@55
    .line 649
    if-nez v2, :cond_0

    #@57
    .line 658
    const-string/jumbo v2, "version"

    #@5a
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v2

    #@5e
    .line 649
    if-nez v2, :cond_0

    #@60
    .line 659
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@63
    move-result v2

    #@64
    if-lez v2, :cond_2

    #@66
    .line 660
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@69
    move-result v2

    #@6a
    if-ne v2, v4, :cond_2

    #@6c
    .line 661
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@6f
    move-result v2

    #@70
    if-nez v2, :cond_2

    #@72
    .line 662
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@75
    move-result v2

    #@76
    if-lez v2, :cond_2

    #@78
    .line 663
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@7b
    move-result v2

    #@7c
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@7f
    move-result v3

    #@80
    if-ne v2, v3, :cond_1

    #@82
    .line 649
    :cond_0
    :goto_0
    return v0

    #@83
    :cond_1
    move v0, v1

    #@84
    .line 663
    goto :goto_0

    #@85
    :cond_2
    move v0, v1

    #@86
    .line 659
    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 99
    :try_start_0
    invoke-super {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xalan/templates/OutputProperties;

    #@6
    .line 101
    .local v0, "cloned":Lorg/apache/xalan/templates/OutputProperties;
    iget-object v2, v0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@8
    invoke-virtual {v2}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Ljava/util/Properties;

    #@e
    iput-object v2, v0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 103
    return-object v0

    #@11
    .line 106
    .end local v0    # "cloned":Lorg/apache/xalan/templates/OutputProperties;
    :catch_0
    move-exception v1

    #@12
    .line 107
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    #@13
    return-object v2
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 555
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    #@3
    .line 552
    return-void
.end method

.method public copyFrom(Ljava/util/Properties;)V
    .locals 1
    .param p1, "src"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 579
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    #@4
    .line 577
    return-void
.end method

.method public copyFrom(Ljava/util/Properties;Z)V
    .locals 8
    .param p1, "src"    # Ljava/util/Properties;
    .param p2, "shouldResetDefaults"    # Z

    #@0
    .prologue
    .line 595
    invoke-virtual {p1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    #@3
    move-result-object v1

    #@4
    .line 597
    .local v1, "keys":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_4

    #@a
    .line 599
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    .line 601
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    #@13
    move-result v4

    #@14
    if-nez v4, :cond_1

    #@16
    .line 602
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v5, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    #@1b
    const/4 v6, 0x1

    #@1c
    new-array v6, v6, [Ljava/lang/Object;

    #@1e
    const/4 v7, 0x0

    #@1f
    aput-object v0, v6, v7

    #@21
    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v4

    #@29
    .line 604
    :cond_1
    iget-object v4, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@2b
    invoke-virtual {v4, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    .line 605
    .local v2, "oldValue":Ljava/lang/Object;
    if-nez v2, :cond_3

    #@31
    .line 607
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Ljava/lang/String;

    #@37
    .line 609
    .local v3, "val":Ljava/lang/String;
    if-eqz p2, :cond_2

    #@39
    const-string/jumbo v4, "method"

    #@3c
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_2

    #@42
    .line 611
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/OutputProperties;->setMethodDefaults(Ljava/lang/String;)V

    #@45
    .line 614
    :cond_2
    iget-object v4, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@47
    invoke-virtual {v4, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    goto :goto_0

    #@4b
    .line 616
    .end local v3    # "val":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "cdata-section-elements"

    #@4e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_0

    #@54
    .line 618
    iget-object v5, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@56
    new-instance v4, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    check-cast v2, Ljava/lang/String;

    #@5d
    .end local v2    # "oldValue":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    const-string/jumbo v6, " "

    #@64
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6b
    move-result-object v4

    #@6c
    check-cast v4, Ljava/lang/String;

    #@6e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    invoke-virtual {v5, v0, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    goto :goto_0

    #@7a
    .line 592
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public copyFrom(Lorg/apache/xalan/templates/OutputProperties;)V
    .locals 1
    .param p1, "opsrc"    # Lorg/apache/xalan/templates/OutputProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 636
    invoke-virtual {p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    #@7
    .line 632
    return-void
.end method

.method public getBooleanProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@2
    invoke-static {p1, v0}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getBooleanProperty(Lorg/apache/xml/utils/QName;)Z
    .locals 1
    .param p1, "key"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 212
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->getBooleanProperty(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getIntProperty(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@2
    invoke-static {p1, v0}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getIntProperty(Ljava/lang/String;Ljava/util/Properties;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIntProperty(Lorg/apache/xml/utils/QName;)I
    .locals 1
    .param p1, "key"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 268
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->getIntProperty(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@2
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    const-string/jumbo v0, "{http://xml.apache.org/xslt}"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v1, "{http://xml.apache.org/xalan}"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    .line 171
    sget v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    #@17
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object p1

    #@23
    .line 172
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@25
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method public getProperty(Lorg/apache/xml/utils/QName;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@2
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getQNameProperties(Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 467
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@2
    invoke-static {p1, v0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Vector;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getQNameProperties(Lorg/apache/xml/utils/QName;)Ljava/util/Vector;
    .locals 1
    .param p1, "key"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 451
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperties(Ljava/lang/String;)Ljava/util/Vector;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getQNameProperty(Ljava/lang/String;)Lorg/apache/xml/utils/QName;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@2
    invoke-static {p1, v0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperty(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/xml/utils/QName;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getQNameProperty(Lorg/apache/xml/utils/QName;)Lorg/apache/xml/utils/QName;
    .locals 1
    .param p1, "key"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 356
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperty(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0
    .param p1, "root"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 543
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeOutput(Lorg/apache/xalan/templates/OutputProperties;)V

    #@3
    .line 541
    return-void
.end method

.method public setBooleanProperty(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 196
    iget-object v1, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@2
    if-eqz p2, :cond_0

    #@4
    const-string/jumbo v0, "yes"

    #@7
    :goto_0
    invoke-virtual {v1, p1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 194
    return-void

    #@b
    .line 196
    :cond_0
    const-string/jumbo v0, "no"

    #@e
    goto :goto_0
.end method

.method public setBooleanProperty(Lorg/apache/xml/utils/QName;Z)V
    .locals 3
    .param p1, "key"    # Lorg/apache/xml/utils/QName;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 184
    iget-object v1, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@2
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    if-eqz p2, :cond_0

    #@8
    const-string/jumbo v0, "yes"

    #@b
    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 182
    return-void

    #@f
    .line 184
    :cond_0
    const-string/jumbo v0, "no"

    #@12
    goto :goto_0
.end method

.method public setIntProperty(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@2
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 250
    return-void
.end method

.method public setIntProperty(Lorg/apache/xml/utils/QName;I)V
    .locals 1
    .param p1, "key"    # Lorg/apache/xml/utils/QName;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 240
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setIntProperty(Ljava/lang/String;I)V

    #@7
    .line 238
    return-void
.end method

.method public setMethodDefaults(Ljava/lang/String;)V
    .locals 5
    .param p1, "method"    # Ljava/lang/String;

    #@0
    .prologue
    .line 309
    iget-object v3, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@2
    const-string/jumbo v4, "method"

    #@5
    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 311
    .local v0, "defaultMethod":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 319
    const-string/jumbo v3, "xml"

    #@14
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v3

    #@18
    .line 311
    if-eqz v3, :cond_1

    #@1a
    .line 322
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@1c
    .line 324
    .local v2, "savedProps":Ljava/util/Properties;
    invoke-static {p1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    #@1f
    move-result-object v1

    #@20
    .line 325
    .local v1, "newDefaults":Ljava/util/Properties;
    new-instance v3, Ljava/util/Properties;

    #@22
    invoke-direct {v3, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    #@25
    iput-object v3, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@27
    .line 326
    const/4 v3, 0x0

    #@28
    invoke-virtual {p0, v2, v3}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    #@2b
    .line 307
    .end local v1    # "newDefaults":Ljava/util/Properties;
    .end local v2    # "savedProps":Ljava/util/Properties;
    :cond_1
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 132
    const-string/jumbo v0, "method"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 134
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setMethodDefaults(Ljava/lang/String;)V

    #@c
    .line 137
    :cond_0
    const-string/jumbo v0, "{http://xml.apache.org/xslt}"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v1, "{http://xml.apache.org/xalan}"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 139
    sget v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    #@23
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object p1

    #@2f
    .line 141
    :cond_1
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@31
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    .line 130
    return-void
.end method

.method public setProperty(Lorg/apache/xml/utils/QName;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/xml/utils/QName;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 118
    return-void
.end method

.method public setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/util/Vector;

    #@0
    .prologue
    const/16 v4, 0x9

    #@2
    .line 420
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    #@5
    move-result v3

    #@6
    .line 423
    .local v3, "s":I
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    #@8
    invoke-direct {v0, v4, v4}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(II)V

    #@b
    .line 425
    .local v0, "fsb":Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@e
    .line 427
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lorg/apache/xml/utils/QName;

    #@14
    .line 429
    .local v2, "qname":Lorg/apache/xml/utils/QName;
    invoke-virtual {v2}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@1b
    .line 431
    add-int/lit8 v4, v3, -0x1

    #@1d
    if-ge v1, v4, :cond_0

    #@1f
    .line 432
    const/16 v4, 0x20

    #@21
    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(C)V

    #@24
    .line 425
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 435
    .end local v2    # "qname":Lorg/apache/xml/utils/QName;
    :cond_1
    iget-object v4, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    #@29
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v4, p1, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 417
    return-void
.end method

.method public setQNameProperties(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/xml/utils/QName;
    .param p2, "v"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 406
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V

    #@7
    .line 404
    return-void
.end method

.method public setQNameProperty(Ljava/lang/String;Lorg/apache/xml/utils/QName;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 341
    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 339
    return-void
.end method

.method public setQNameProperty(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/QName;)V
    .locals 1
    .param p1, "key"    # Lorg/apache/xml/utils/QName;
    .param p2, "value"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 298
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperty(Ljava/lang/String;Lorg/apache/xml/utils/QName;)V

    #@7
    .line 296
    return-void
.end method
