.class public Lorg/apache/xml/dtm/ref/DTMManagerDefault;
.super Lorg/apache/xml/dtm/DTMManager;
.source "DTMManagerDefault.java"


# static fields
.field private static final greylist DEBUG:Z = false

.field private static final greylist DUMPTREE:Z = false


# instance fields
.field protected greylist m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

.field greylist m_dtm_offsets:[I

.field protected greylist m_dtms:[Lorg/apache/xml/dtm/DTM;

.field private greylist m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field protected greylist m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 207
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMManager;-><init>()V

    const/16 v0, 0x100

    .line 94
    new-array v1, v0, [Lorg/apache/xml/dtm/DTM;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    .line 109
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    .line 120
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    .line 200
    new-instance v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    return-void
.end method


# virtual methods
.method public declared-synchronized greylist addDTM(Lorg/apache/xml/dtm/DTM;I)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 130
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public declared-synchronized greylist addDTM(Lorg/apache/xml/dtm/DTM;II)V
    .registers 9

    monitor-enter p0

    const/high16 v0, 0x10000

    if-ge p2, v0, :cond_33

    .line 156
    :try_start_5
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v1, v1

    if-gt v1, p2, :cond_26

    add-int/lit16 v2, p2, 0x100

    .line 164
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 166
    new-array v2, v0, [Lorg/apache/xml/dtm/DTM;

    .line 167
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    .line 169
    new-array v0, v0, [I

    .line 170
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    goto :goto_26

    :catchall_24
    move-exception p1

    goto :goto_40

    .line 174
    :cond_26
    :goto_26
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aput-object p1, v0, p2

    .line 175
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aput p3, v0, p2

    .line 176
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->documentRegistration()V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_24

    .line 179
    monitor-exit p0

    return-void

    .line 148
    :cond_33
    :try_start_33
    new-instance p1, Lorg/apache/xml/dtm/DTMException;

    const-string p2, "ER_NO_DTMIDS_AVAIL"

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_24

    throw p1
.end method

.method public declared-synchronized greylist createDTMIterator(I)Lorg/apache/xml/dtm/DTMIterator;
    .registers 2

    monitor-enter p0

    .line 829
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized greylist createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;
    .registers 4

    monitor-enter p0

    .line 797
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized greylist createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;
    .registers 3

    monitor-enter p0

    .line 845
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized greylist createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;
    .registers 3

    monitor-enter p0

    .line 814
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized greylist createDocumentFragment()Lorg/apache/xml/dtm/DTM;
    .registers 8

    monitor-enter p0

    .line 766
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 768
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 770
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 771
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 772
    invoke-interface {v0}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v0

    .line 774
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_2e
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2b

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    :try_start_1f
    invoke-virtual/range {v1 .. v6}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_28
    .catchall {:try_start_1f .. :try_end_23} :catchall_25

    monitor-exit v1

    return-object p0

    :catchall_25
    move-exception v0

    :goto_26
    move-object p0, v0

    goto :goto_37

    :catch_28
    move-exception v0

    :goto_29
    move-object p0, v0

    goto :goto_31

    :catchall_2b
    move-exception v0

    move-object v1, p0

    goto :goto_26

    :catch_2e
    move-exception v0

    move-object v1, p0

    goto :goto_29

    .line 778
    :goto_31
    :try_start_31
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_25

    throw p0
.end method

.method public declared-synchronized greylist getDTM(I)Lorg/apache/xml/dtm/DTM;
    .registers 4

    monitor-enter p0

    .line 648
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    ushr-int/lit8 v1, p1, 0x10

    aget-object p1, v0, v1
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_7} :catch_b
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    goto :goto_13

    :catch_b
    move-exception v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_12

    .line 653
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 655
    :cond_12
    :try_start_12
    throw v0

    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_9

    throw p1
.end method

.method public declared-synchronized greylist getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    .registers 19

    monitor-enter p0

    .line 247
    :try_start_1
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    .line 248
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v7

    shl-int/lit8 v3, v7, 0x10

    const/4 v8, 0x0

    if-eqz p1, :cond_26

    .line 251
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_26

    .line 253
    new-instance v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    move-object v2, p1

    check-cast v2, Ljavax/xml/transform/dom/DOMSource;

    move-object v1, p0

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/dom/DOMSource;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .line 256
    invoke-virtual {p0, v0, v7, v8}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 263
    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1c6

    :cond_26
    const/4 v9, 0x1

    if-eqz p1, :cond_2c

    .line 268
    :try_start_29
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;

    goto :goto_2d

    :cond_2c
    move v0, v9

    :goto_2d
    if-eqz p1, :cond_32

    .line 270
    instance-of v2, p1, Ljavax/xml/transform/stream/StreamSource;

    goto :goto_33

    :cond_32
    move v2, v8

    :goto_33
    if-nez v0, :cond_48

    if-eqz v2, :cond_38

    goto :goto_48

    .line 477
    :cond_38
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    const-string v2, "ER_NOT_SUPPORTED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_22

    :cond_48
    :goto_48
    const/4 v10, 0x0

    if-nez p1, :cond_4e

    move-object v11, v10

    move-object v12, v11

    goto :goto_82

    .line 282
    :cond_4e
    :try_start_4e
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getXMLReader(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLReader;

    move-result-object v2
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_1a1

    .line 283
    :try_start_52
    invoke-static {p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_61

    if-eqz v4, :cond_80

    .line 289
    :try_start_5c
    invoke-static {v4}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_60} :catch_67
    .catchall {:try_start_5c .. :try_end_60} :catchall_61

    goto :goto_7d

    :catchall_61
    move-exception v0

    move-object p1, v0

    move/from16 v9, p4

    goto/16 :goto_1a6

    .line 292
    :catch_67
    :try_start_67
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can not absolutize URL: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    :goto_7d
    invoke-virtual {v0, v4}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_67 .. :try_end_80} :catchall_61

    :cond_80
    move-object v11, v0

    move-object v12, v2

    :goto_82
    if-nez p1, :cond_9e

    if-eqz p2, :cond_9e

    if-nez p4, :cond_9e

    if-nez p5, :cond_9e

    .line 307
    :try_start_8a
    new-instance v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    :goto_95
    move-object p1, v0

    goto :goto_aa

    :catchall_97
    move-exception v0

    move-object p1, v0

    move/from16 v9, p4

    :goto_9b
    move-object v2, v12

    goto/16 :goto_1a6

    .line 319
    :cond_9e
    new-instance v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    goto :goto_95

    .line 326
    :goto_aa
    invoke-virtual {p0, p1, v7, v8}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    if-eqz v12, :cond_c0

    .line 331
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "org.apache.xerces.parsers.SAXParser"

    .line 333
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_bd
    .catchall {:try_start_8a .. :try_end_bd} :catchall_97

    if-eqz v0, :cond_c0

    move v8, v9

    :cond_c0
    if-eqz v8, :cond_c3

    goto :goto_c5

    :cond_c3
    move/from16 v9, p4

    .line 341
    :goto_c5
    :try_start_c5
    iget-boolean v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z
    :try_end_c7
    .catchall {:try_start_c5 .. :try_end_c7} :catchall_da

    if-eqz v0, :cond_139

    if-eqz v9, :cond_139

    if-eqz v8, :cond_e1

    .line 348
    :try_start_cd
    const-string v0, "org.apache.xml.dtm.ref.IncrementalSAXSource_Xerces"

    .line 349
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d9} :catch_dd
    .catchall {:try_start_cd .. :try_end_d9} :catchall_da

    goto :goto_e2

    :catchall_da
    move-exception v0

    move-object p1, v0

    goto :goto_9b

    :catch_dd
    move-exception v0

    .line 351
    :try_start_de
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e1
    move-object v0, v10

    :goto_e2
    if-nez v0, :cond_f4

    if-nez v12, :cond_ec

    .line 359
    new-instance v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    goto :goto_f4

    .line 361
    :cond_ec
    new-instance v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    .line 363
    invoke-virtual {v0, v12}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 388
    :cond_f4
    :goto_f4
    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    :try_end_f7
    .catchall {:try_start_de .. :try_end_f7} :catchall_da

    if-nez v11, :cond_11a

    if-eqz v12, :cond_115

    .line 460
    :try_start_fb
    iget-boolean v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    if-eqz v0, :cond_101

    if-nez v9, :cond_115

    .line 461
    :cond_101
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v12, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 462
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v12, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 463
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v12, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_110
    .catchall {:try_start_fb .. :try_end_110} :catchall_22

    .line 467
    :try_start_110
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v12, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_115} :catch_115
    .catchall {:try_start_110 .. :try_end_115} :catchall_22

    .line 471
    :catch_115
    :cond_115
    :try_start_115
    invoke-virtual {p0, v12}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_118
    .catchall {:try_start_115 .. :try_end_118} :catchall_22

    .line 393
    monitor-exit p0

    return-object p1

    .line 396
    :cond_11a
    :try_start_11a
    invoke-interface {v12}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v2

    if-nez v2, :cond_123

    .line 397
    invoke-interface {v12, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 399
    :cond_123
    invoke-interface {v12, p1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_126
    .catchall {:try_start_11a .. :try_end_126} :catchall_da

    .line 405
    :try_start_126
    invoke-interface {v0, v11}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->startParse(Lorg/xml/sax/InputSource;)V
    :try_end_129
    .catch Ljava/lang/RuntimeException; {:try_start_126 .. :try_end_129} :catch_134
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_129} :catch_12a
    .catchall {:try_start_126 .. :try_end_129} :catchall_da

    goto :goto_171

    :catch_12a
    move-exception v0

    .line 413
    :try_start_12b
    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 415
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_134
    move-exception v0

    .line 408
    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 410
    throw v0
    :try_end_139
    .catchall {:try_start_12b .. :try_end_139} :catchall_da

    :cond_139
    if-nez v12, :cond_15a

    if-eqz v12, :cond_155

    if-eqz v0, :cond_141

    if-nez v9, :cond_155

    .line 461
    :cond_141
    :try_start_141
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v12, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 462
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v12, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 463
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v12, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_150
    .catchall {:try_start_141 .. :try_end_150} :catchall_22

    .line 467
    :try_start_150
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v12, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_155} :catch_155
    .catchall {:try_start_150 .. :try_end_155} :catchall_22

    .line 471
    :catch_155
    :cond_155
    :try_start_155
    invoke-virtual {p0, v12}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_158
    .catchall {:try_start_155 .. :try_end_158} :catchall_22

    .line 421
    monitor-exit p0

    return-object p1

    .line 425
    :cond_15a
    :try_start_15a
    invoke-interface {v12, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 426
    invoke-interface {v12, p1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 427
    invoke-interface {v12}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    if-nez v0, :cond_169

    .line 428
    invoke-interface {v12, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_169
    .catchall {:try_start_15a .. :try_end_169} :catchall_da

    .line 432
    :cond_169
    :try_start_169
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v12, v0, p1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_16e
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_169 .. :try_end_16e} :catch_16e
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_169 .. :try_end_16e} :catch_16e
    .catchall {:try_start_169 .. :try_end_16e} :catchall_da

    .line 439
    :catch_16e
    :try_start_16e
    invoke-interface {v12, v11}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_171
    .catch Ljava/lang/RuntimeException; {:try_start_16e .. :try_end_171} :catch_19c
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_171} :catch_192
    .catchall {:try_start_16e .. :try_end_171} :catchall_da

    :goto_171
    if-eqz v12, :cond_18d

    .line 460
    :try_start_173
    iget-boolean v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    if-eqz v0, :cond_179

    if-nez v9, :cond_18d

    .line 461
    :cond_179
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v12, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 462
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v12, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 463
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v12, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_188
    .catchall {:try_start_173 .. :try_end_188} :catchall_22

    .line 467
    :try_start_188
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v12, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_18d} :catch_18d
    .catchall {:try_start_188 .. :try_end_18d} :catchall_22

    .line 471
    :catch_18d
    :cond_18d
    :try_start_18d
    invoke-virtual {p0, v12}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_190
    .catchall {:try_start_18d .. :try_end_190} :catchall_22

    .line 456
    monitor-exit p0

    return-object p1

    :catch_192
    move-exception v0

    .line 445
    :try_start_193
    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 447
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_19c
    move-exception v0

    .line 441
    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 443
    throw v0
    :try_end_1a1
    .catchall {:try_start_193 .. :try_end_1a1} :catchall_da

    :catchall_1a1
    move-exception v0

    move-object p1, v0

    move/from16 v9, p4

    move-object v2, v10

    :goto_1a6
    if-eqz v2, :cond_1c2

    .line 460
    :try_start_1a8
    iget-boolean v0, p0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    if-eqz v0, :cond_1ae

    if-nez v9, :cond_1c2

    .line 461
    :cond_1ae
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v2, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 462
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v2, v0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 463
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v2, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_1bd
    .catchall {:try_start_1a8 .. :try_end_1bd} :catchall_22

    .line 467
    :try_start_1bd
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v2, v0, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1c2} :catch_1c2
    .catchall {:try_start_1bd .. :try_end_1c2} :catchall_22

    .line 471
    :catch_1c2
    :cond_1c2
    :try_start_1c2
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 472
    throw p1

    :goto_1c6
    monitor-exit p0
    :try_end_1c7
    .catchall {:try_start_1c2 .. :try_end_1c7} :catchall_22

    throw p1
.end method

.method public declared-synchronized greylist getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
    .registers 13

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_97

    .line 496
    :try_start_4
    instance-of v1, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_94

    if-eqz v1, :cond_15

    .line 497
    :try_start_8
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I

    move-result p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_10

    monitor-exit p0

    return p1

    :catchall_10
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto/16 :goto_a4

    .line 522
    :cond_15
    :try_start_15
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v1, v1
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_94

    const/4 v2, 0x0

    :goto_19
    const/4 v3, -0x1

    if-ge v2, v1, :cond_33

    .line 525
    :try_start_1c
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v4, v4, v2

    if-eqz v4, :cond_30

    .line 526
    instance-of v5, v4, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    if-eqz v5, :cond_30

    .line 528
    check-cast v4, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    invoke-virtual {v4, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I

    move-result v4
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_10

    if-eq v4, v3, :cond_30

    .line 529
    monitor-exit p0

    return v4

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 553
    :cond_33
    :try_start_33
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_94

    const/4 v2, 0x2

    if-ne v1, v2, :cond_42

    :try_start_3a
    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_10

    goto :goto_46

    :cond_42
    :try_start_42
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_94

    :goto_46
    move-object v2, p1

    :goto_47
    if-eqz v1, :cond_51

    .line 554
    :try_start_49
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_10

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_47

    .line 559
    :cond_51
    :try_start_51
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_94

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    :try_start_5b
    invoke-virtual/range {v4 .. v9}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    .line 564
    instance-of v1, p1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;

    if-eqz v1, :cond_80

    .line 569
    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I

    move-result v1

    .line 570
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_84

    :catchall_7d
    move-exception v0

    :goto_7e
    move-object p1, v0

    goto :goto_a4

    .line 573
    :cond_80
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I

    move-result p0
    :try_end_84
    .catchall {:try_start_5b .. :try_end_84} :catchall_7d

    :goto_84
    if-eq v3, p0, :cond_88

    .line 578
    monitor-exit v4

    return p0

    .line 576
    :cond_88
    :try_start_88
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_COULD_NOT_RESOLVE_NODE"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_94
    move-exception v0

    move-object v4, p0

    goto :goto_7e

    :cond_97
    move-object v4, p0

    .line 494
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_NODE_NON_NULL"

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 578
    :goto_a4
    monitor-exit v4
    :try_end_a5
    .catchall {:try_start_88 .. :try_end_a5} :catchall_7d

    throw p1
.end method

.method public declared-synchronized greylist getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I
    .registers 6

    monitor-enter p0

    .line 673
    :try_start_1
    instance-of v0, p1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    .line 675
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    .line 676
    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    if-ne v0, p0, :cond_1b

    .line 677
    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return p1

    :catchall_19
    move-exception p1

    goto :goto_37

    .line 679
    :cond_1b
    monitor-exit p0

    return v1

    .line 682
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v0, v0

    :goto_20
    if-ge v2, v0, :cond_35

    .line 686
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_32

    .line 688
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aget v3, v3, v2
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_19

    if-nez v3, :cond_32

    shl-int/lit8 p1, v2, 0x10

    .line 689
    monitor-exit p0

    return p1

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 692
    :cond_35
    monitor-exit p0

    return v1

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_19

    throw p1
.end method

.method public greylist getExpandedNameTable(Lorg/apache/xml/dtm/DTM;)Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    .registers 2

    .line 857
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    return-object p0
.end method

.method public declared-synchronized greylist getFirstFreeDTMID()I
    .registers 4

    monitor-enter p0

    .line 186
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v0, v0

    const/4 v1, 0x1

    :goto_5
    if-ge v1, v0, :cond_14

    .line 189
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v2, v2, v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_12

    if-nez v2, :cond_f

    .line 191
    monitor-exit p0

    return v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catchall_12
    move-exception v0

    goto :goto_16

    .line 194
    :cond_14
    monitor-exit p0

    return v0

    :goto_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_12

    throw v0
.end method

.method public declared-synchronized greylist getXMLReader(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLReader;
    .registers 4

    monitor-enter p0

    .line 601
    :try_start_1
    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_10

    .line 602
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    goto :goto_11

    :catchall_c
    move-exception p1

    goto :goto_2f

    :catch_e
    move-exception p1

    goto :goto_25

    :cond_10
    const/4 p1, 0x0

    :goto_11
    if-nez p1, :cond_23

    .line 606
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    if-nez p1, :cond_1d

    .line 607
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    .line 610
    :cond_1d
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    invoke-virtual {p1}, Lorg/apache/xml/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_23
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_23} :catch_e
    .catchall {:try_start_1 .. :try_end_23} :catchall_c

    .line 613
    :cond_23
    monitor-exit p0

    return-object p1

    .line 616
    :goto_25
    :try_start_25
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_c

    throw p1
.end method

.method public declared-synchronized greylist release(Lorg/apache/xml/dtm/DTM;Z)Z
    .registers 8

    monitor-enter p0

    .line 723
    :try_start_1
    instance-of p2, p1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    if-eqz p2, :cond_e

    .line 725
    move-object p2, p1

    check-cast p2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    invoke-virtual {p2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    goto :goto_e

    :catchall_c
    move-exception p1

    goto :goto_40

    .line 736
    :cond_e
    :goto_e
    instance-of p2, p1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2f

    .line 738
    move-object p2, p1

    check-cast p2, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    invoke-virtual {p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object p2

    .line 739
    invoke-virtual {p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_20
    if-ltz v2, :cond_3b

    .line 740
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    invoke-virtual {p2, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x10

    aput-object v0, v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 744
    :cond_2f
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    move-result p2

    if-ltz p2, :cond_3b

    .line 747
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    ushr-int/lit8 p2, p2, 0x10

    aput-object v0, v2, p2

    .line 751
    :cond_3b
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->documentRelease()V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_c

    .line 752
    monitor-exit p0

    return v1

    :goto_40
    :try_start_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_c

    throw p1
.end method

.method public declared-synchronized greylist releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    .registers 3

    monitor-enter p0

    .line 631
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    if-eqz v0, :cond_b

    .line 632
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_d

    .line 634
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    :goto_d
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_9

    throw p1
.end method
