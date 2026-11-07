.class public Lorg/apache/xalan/templates/OutputProperties;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "OutputProperties.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final whitelist serialVersionUID:J = -0x60cd2713ce100890L


# instance fields
.field private greylist m_properties:Ljava/util/Properties;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 58
    const-string v0, "xml"

    invoke-direct {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3

    .line 82
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 668
    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    .line 83
    new-instance v0, Ljava/util/Properties;

    .line 84
    invoke-static {p1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    return-void
.end method

.method public constructor greylist <init>(Ljava/util/Properties;)V
    .registers 3

    .line 67
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    .line 668
    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    .line 68
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    return-void
.end method

.method public static greylist getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;
    .registers 1

    .line 687
    invoke-static {p0}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getQNameProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Vector;
    .registers 9

    .line 485
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_60

    .line 489
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 490
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 492
    new-instance v1, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v1}, Lorg/apache/xml/utils/FastStringBuffer;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_17
    if-ge v3, v0, :cond_4b

    .line 499
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 501
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_3a

    if-nez v4, :cond_45

    .line 505
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_48

    .line 507
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object v5

    .line 508
    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 509
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->reset()V

    goto :goto_48

    :cond_3a
    const/16 v6, 0x7b

    if-ne v6, v5, :cond_40

    const/4 v4, 0x1

    goto :goto_45

    :cond_40
    const/16 v6, 0x7d

    if-ne v6, v5, :cond_45

    move v4, v2

    .line 519
    :cond_45
    :goto_45
    invoke-virtual {v1, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(C)V

    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 522
    :cond_4b
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_5f

    .line 524
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object p0

    .line 525
    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 526
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->reset()V

    :cond_5f
    return-object p1

    :cond_60
    const/4 p0, 0x0

    return-object p0
.end method

.method public static greylist getQNameProperty(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/xml/utils/QName;
    .registers 2

    .line 388
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 391
    invoke-static {p0}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static greylist isLegalPropertyKey(Ljava/lang/String;)Z
    .registers 4

    .line 649
    const-string v0, "cdata-section-elements"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const-string v0, "doctype-public"

    .line 650
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const-string v0, "doctype-system"

    .line 651
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const-string v0, "encoding"

    .line 652
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const-string v0, "indent"

    .line 653
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const-string v0, "media-type"

    .line 654
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const-string v0, "method"

    .line 655
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const-string v0, "omit-xml-declaration"

    .line 656
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const-string v0, "standalone"

    .line 657
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    const-string v0, "version"

    .line 658
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 659
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_78

    .line 660
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7b

    if-ne v0, v2, :cond_78

    .line 661
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-nez v0, :cond_78

    const/16 v0, 0x7d

    .line 662
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_78

    .line 663
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne v2, p0, :cond_78

    goto :goto_79

    :cond_78
    return v1

    :cond_79
    :goto_79
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 99
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/OutputProperties;

    .line 101
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 555
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    return-void
.end method

.method public greylist copyFrom(Ljava/util/Properties;)V
    .registers 3

    const/4 v0, 0x1

    .line 579
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    return-void
.end method

.method public greylist copyFrom(Ljava/util/Properties;Z)V
    .registers 8

    .line 595
    invoke-virtual {p1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 597
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 599
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 601
    invoke-static {v1}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 604
    iget-object v2, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_37

    .line 607
    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p2, :cond_31

    .line 609
    const-string v3, "method"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 611
    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/OutputProperties;->setMethodDefaults(Ljava/lang/String;)V

    .line 614
    :cond_31
    iget-object v3, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v3, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 616
    :cond_37
    const-string v3, "cdata-section-elements"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 618
    iget-object v3, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 602
    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_71
    return-void
.end method

.method public greylist copyFrom(Lorg/apache/xalan/templates/OutputProperties;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 636
    invoke-virtual {p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    return-void
.end method

.method public greylist getBooleanProperty(Ljava/lang/String;)Z
    .registers 2

    .line 228
    iget-object p0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, p0}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result p0

    return p0
.end method

.method public greylist getBooleanProperty(Lorg/apache/xml/utils/QName;)Z
    .registers 2

    .line 212
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getBooleanProperty(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public greylist getIntProperty(Ljava/lang/String;)I
    .registers 2

    .line 284
    iget-object p0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, p0}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getIntProperty(Ljava/lang/String;Ljava/util/Properties;)I

    move-result p0

    return p0
.end method

.method public greylist getIntProperty(Lorg/apache/xml/utils/QName;)I
    .registers 2

    .line 268
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getIntProperty(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist getProperties()Ljava/util/Properties;
    .registers 1

    .line 566
    iget-object p0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    return-object p0
.end method

.method public greylist getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 169
    const-string v0, "{http://xml.apache.org/xslt}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{http://xml.apache.org/xalan}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    :cond_1f
    iget-object p0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getProperty(Lorg/apache/xml/utils/QName;)Ljava/lang/String;
    .registers 2

    .line 155
    iget-object p0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getQNameProperties(Ljava/lang/String;)Ljava/util/Vector;
    .registers 2

    .line 467
    iget-object p0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, p0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public greylist getQNameProperties(Lorg/apache/xml/utils/QName;)Ljava/util/Vector;
    .registers 2

    .line 451
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperties(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    return-object p0
.end method

.method public greylist getQNameProperty(Ljava/lang/String;)Lorg/apache/xml/utils/QName;
    .registers 2

    .line 371
    iget-object p0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, p0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperty(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/xml/utils/QName;

    move-result-object p0

    return-object p0
.end method

.method public greylist getQNameProperty(Lorg/apache/xml/utils/QName;)Lorg/apache/xml/utils/QName;
    .registers 2

    .line 356
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperty(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object p0

    return-object p0
.end method

.method public greylist recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 543
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeOutput(Lorg/apache/xalan/templates/OutputProperties;)V

    return-void
.end method

.method public greylist setBooleanProperty(Ljava/lang/String;Z)V
    .registers 3

    .line 196
    iget-object p0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    if-eqz p2, :cond_7

    const-string p2, "yes"

    goto :goto_9

    :cond_7
    const-string p2, "no"

    :goto_9
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist setBooleanProperty(Lorg/apache/xml/utils/QName;Z)V
    .registers 3

    .line 184
    iget-object p0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_b

    const-string p2, "yes"

    goto :goto_d

    :cond_b
    const-string p2, "no"

    :goto_d
    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist setIntProperty(Ljava/lang/String;I)V
    .registers 3

    .line 252
    iget-object p0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist setIntProperty(Lorg/apache/xml/utils/QName;I)V
    .registers 3

    .line 240
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setIntProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public greylist setMethodDefaults(Ljava/lang/String;)V
    .registers 4

    .line 309
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 311
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "xml"

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    .line 322
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    .line 324
    invoke-static {p1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p1

    .line 325
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v1, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    const/4 p1, 0x0

    .line 326
    invoke-virtual {p0, v0, p1}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    return-void
.end method

.method public greylist setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 132
    const-string v0, "method"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setMethodDefaults(Ljava/lang/String;)V

    .line 137
    :cond_b
    const-string v0, "{http://xml.apache.org/xslt}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{http://xml.apache.org/xalan}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_2a
    iget-object p0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist setProperty(Lorg/apache/xml/utils/QName;Ljava/lang/String;)V
    .registers 3

    .line 120
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V
    .registers 7

    .line 420
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 423
    new-instance v1, Lorg/apache/xml/utils/FastStringBuffer;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v2}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(II)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_27

    .line 427
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/utils/QName;

    .line 429
    invoke-virtual {v3}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_24

    const/16 v3, 0x20

    .line 432
    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/FastStringBuffer;->append(C)V

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 435
    :cond_27
    iget-object p0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist setQNameProperties(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V
    .registers 3

    .line 406
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V

    return-void
.end method

.method public greylist setQNameProperty(Ljava/lang/String;Lorg/apache/xml/utils/QName;)V
    .registers 3

    .line 341
    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public greylist setQNameProperty(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/QName;)V
    .registers 3

    .line 298
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperty(Ljava/lang/String;Lorg/apache/xml/utils/QName;)V

    return-void
.end method
