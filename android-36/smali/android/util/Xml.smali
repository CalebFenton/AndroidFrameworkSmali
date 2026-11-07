.class public Landroid/util/Xml;
.super Ljava/lang/Object;
.source "Xml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Xml$Encoding;
    }
.end annotation


# static fields
.field public static final blacklist ENABLE_BINARY_DEFAULT:Z

.field public static final blacklist ENABLE_RESOLVE_OPTIMIZATIONS:Z

.field public static whitelist FEATURE_RELAXED:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    const-string v0, "http://xmlpull.org/v1/doc/features.html#relaxed"

    sput-object v0, Landroid/util/Xml;->FEATURE_RELAXED:Ljava/lang/String;

    .line 79
    invoke-static {}, Landroid/util/Xml;->shouldEnableBinaryDefault()Z

    move-result v0

    sput-boolean v0, Landroid/util/Xml;->ENABLE_BINARY_DEFAULT:Z

    .line 96
    invoke-static {}, Landroid/util/Xml;->shouldEnableResolveOptimizations()Z

    move-result v0

    sput-boolean v0, Landroid/util/Xml;->ENABLE_RESOLVE_OPTIMIZATIONS:Z

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    .registers 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 454
    instance-of v0, p0, Landroid/util/AttributeSet;

    if-eqz v0, :cond_8

    .line 455
    move-object v0, p0

    check-cast v0, Landroid/util/AttributeSet;

    goto :goto_d

    .line 456
    :cond_8
    new-instance v0, Landroid/util/XmlPullAttributes;

    invoke-direct {v0, p0}, Landroid/util/XmlPullAttributes;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 454
    :goto_d
    return-object v0
.end method

.method public static blacklist copy(Lorg/xmlpull/v1/XmlPullParser;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    .line 342
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 341
    if-nez v0, :cond_12

    .line 342
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 346
    :cond_12
    :goto_12
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v0

    .line 347
    .local v0, "token":I
    packed-switch v0, :pswitch_data_b8

    .line 386
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :pswitch_32
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    .line 384
    goto/16 :goto_b5

    .line 380
    :pswitch_3b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 381
    goto/16 :goto_b5

    .line 377
    :pswitch_44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    .line 378
    goto :goto_b5

    .line 374
    :pswitch_4c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    .line 375
    goto :goto_b5

    .line 371
    :pswitch_54
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    .line 372
    goto :goto_b5

    .line 368
    :pswitch_5c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 369
    goto :goto_b5

    .line 365
    :pswitch_64
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    goto :goto_b5

    .line 362
    :pswitch_6c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Xml;->normalizeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    goto :goto_b5

    .line 355
    :pswitch_7c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Xml;->normalizeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_a8

    .line 357
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/util/Xml;->normalizeNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_8c

    .line 360
    .end local v2    # "i":I
    :cond_a8
    goto :goto_b5

    .line 352
    :pswitch_a9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 353
    return-void

    .line 349
    :pswitch_ad
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 350
    nop

    .line 388
    .end local v0    # "token":I
    :goto_b5
    goto/16 :goto_12

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_a9
        :pswitch_7c
        :pswitch_6c
        :pswitch_64
        :pswitch_5c
        :pswitch_54
        :pswitch_4c
        :pswitch_44
        :pswitch_3b
        :pswitch_32
    .end packed-switch
.end method

.method public static whitelist findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;
    .registers 6
    .param p0, "encodingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 426
    if-nez p0, :cond_5

    .line 427
    sget-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    return-object v0

    .line 430
    :cond_5
    invoke-static {}, Landroid/util/Xml$Encoding;->values()[Landroid/util/Xml$Encoding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 431
    .local v3, "encoding":Landroid/util/Xml$Encoding;
    iget-object v4, v3, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 432
    return-object v3

    .line 430
    .end local v3    # "encoding":Landroid/util/Xml$Encoding;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 434
    :cond_1b
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;
    .registers 1

    .line 197
    new-instance v0, Lcom/android/internal/util/ArtBinaryXmlPullParser;

    invoke-direct {v0}, Lcom/android/internal/util/ArtBinaryXmlPullParser;-><init>()V

    return-object v0
.end method

.method public static blacklist newBinaryPullParser$ravenwood()Lcom/android/modules/utils/TypedXmlPullParser;
    .registers 1

    .line 203
    new-instance v0, Lcom/android/modules/utils/BinaryXmlPullParser;

    invoke-direct {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    return-object v0
.end method

.method public static blacklist newBinarySerializer()Lcom/android/modules/utils/TypedXmlSerializer;
    .registers 1

    .line 283
    new-instance v0, Lcom/android/internal/util/ArtBinaryXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/ArtBinaryXmlSerializer;-><init>()V

    return-object v0
.end method

.method public static blacklist newBinarySerializer$ravenwood()Lcom/android/modules/utils/TypedXmlSerializer;
    .registers 1

    .line 289
    new-instance v0, Lcom/android/modules/utils/BinaryXmlSerializer;

    invoke-direct {v0}, Lcom/android/modules/utils/BinaryXmlSerializer;-><init>()V

    return-object v0
.end method

.method public static blacklist newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;
    .registers 1

    .line 184
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;
    .registers 1

    .line 270
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .registers 3

    .line 151
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newXmlPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 152
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 153
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_f} :catch_10

    .line 154
    return-object v0

    .line 155
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_10
    move-exception v0

    .line 156
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static blacklist newPullParser$ravenwood()Lorg/xmlpull/v1/XmlPullParser;
    .registers 3

    .line 165
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newXmlPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 166
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_a} :catch_b

    .line 167
    return-object v0

    .line 168
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_b
    move-exception v0

    .line 169
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static whitelist newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .registers 1

    .line 256
    invoke-static {}, Landroid/util/Xml;->newXmlSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist newXMLReader()Lorg/xml/sax/XMLReader;
    .registers 1

    .line 487
    invoke-static {}, Llibcore/util/XmlObjectFactory;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist newXMLReader$ravenwood()Lorg/xml/sax/XMLReader;
    .registers 2

    .line 492
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 493
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 494
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v1

    .line 495
    .end local v0    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :catch_11
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist newXmlPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .registers 1

    .line 474
    invoke-static {}, Llibcore/util/XmlObjectFactory;->newXmlPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist newXmlPullParser$ravenwood()Lorg/xmlpull/v1/XmlPullParser;
    .registers 2

    .line 479
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 480
    :catch_9
    move-exception v0

    .line 481
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist newXmlSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .registers 1

    .line 461
    invoke-static {}, Llibcore/util/XmlObjectFactory;->newXmlSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist newXmlSerializer$ravenwood()Lorg/xmlpull/v1/XmlSerializer;
    .registers 2

    .line 466
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 467
    :catch_9
    move-exception v0

    .line 468
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist normalizeNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "namespace"    # Ljava/lang/String;

    .line 397
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_a

    .line 400
    :cond_9
    return-object p0

    .line 398
    :cond_a
    :goto_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Landroid/util/Xml$Encoding;
    .param p2, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 138
    invoke-static {}, Landroid/util/Xml;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 139
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 140
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 141
    .local v1, "source":Lorg/xml/sax/InputSource;
    iget-object v2, p1, Landroid/util/Xml$Encoding;->expatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 142
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 143
    return-void
.end method

.method public static whitelist parse(Ljava/io/Reader;Lorg/xml/sax/ContentHandler;)V
    .registers 4
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 127
    invoke-static {}, Landroid/util/Xml;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 128
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 129
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 130
    return-void
.end method

.method public static whitelist parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    .registers 5
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 113
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 114
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 115
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_16

    .line 118
    .end local v0    # "reader":Lorg/xml/sax/XMLReader;
    nop

    .line 119
    return-void

    .line 116
    :catch_16
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static blacklist resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;
    .registers 8
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 223
    .local v2, "magic":[B
    sget-boolean v0, Landroid/util/Xml;->ENABLE_RESOLVE_OPTIMIZATIONS:Z

    if-eqz v0, :cond_20

    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_20

    .line 225
    :try_start_b
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    array-length v4, v2

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I
    :try_end_19
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_19} :catch_1a

    .line 228
    goto :goto_37

    .line 226
    :catch_1a
    move-exception v0

    .line 227
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 230
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_20
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 231
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 233
    :cond_2c
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 234
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    .line 235
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 239
    :goto_37
    sget-object v0, Lcom/android/modules/utils/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 240
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    move-object v1, v0

    .local v0, "xml":Lcom/android/modules/utils/TypedXmlPullParser;
    goto :goto_4a

    .line 242
    .end local v0    # "xml":Lcom/android/modules/utils/TypedXmlPullParser;
    :cond_45
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    move-object v1, v0

    .line 245
    .local v1, "xml":Lcom/android/modules/utils/TypedXmlPullParser;
    :goto_4a
    :try_start_4a
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_53} :catch_55

    .line 248
    nop

    .line 249
    return-object v1

    .line 246
    :catch_55
    move-exception v0

    .line 247
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static blacklist resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;
    .registers 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    sget-boolean v0, Landroid/util/Xml;->ENABLE_BINARY_DEFAULT:Z

    if-eqz v0, :cond_9

    .line 311
    invoke-static {}, Landroid/util/Xml;->newBinarySerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .local v0, "xml":Lcom/android/modules/utils/TypedXmlSerializer;
    goto :goto_d

    .line 313
    .end local v0    # "xml":Lcom/android/modules/utils/TypedXmlSerializer;
    :cond_9
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 315
    .restart local v0    # "xml":Lcom/android/modules/utils/TypedXmlSerializer;
    :goto_d
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 316
    return-object v0
.end method

.method public static blacklist resolveSerializer$ravenwood(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;
    .registers 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    new-instance v0, Lcom/android/modules/utils/BinaryXmlSerializer;

    invoke-direct {v0}, Lcom/android/modules/utils/BinaryXmlSerializer;-><init>()V

    .line 324
    .local v0, "xml":Lcom/android/modules/utils/TypedXmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 325
    return-object v0
.end method

.method private static blacklist shouldEnableBinaryDefault()Z
    .registers 2

    .line 83
    const-string v0, "persist.sys.binary_xml"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist shouldEnableBinaryDefault$ravenwood()Z
    .registers 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist shouldEnableResolveOptimizations()Z
    .registers 1

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist shouldEnableResolveOptimizations$ravenwood()Z
    .registers 1

    .line 104
    const/4 v0, 0x0

    return v0
.end method
