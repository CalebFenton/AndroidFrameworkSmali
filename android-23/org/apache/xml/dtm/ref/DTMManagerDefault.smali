.class public Lorg/apache/xml/dtm/ref/DTMManagerDefault;
.super Lorg/apache/xml/dtm/DTMManager;
.source "DTMManagerDefault.java"


# static fields
.field private static final DEBUG:Z

.field private static final DUMPTREE:Z


# instance fields
.field protected m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

.field m_dtm_offsets:[I

.field protected m_dtms:[Lorg/apache/xml/dtm/DTM;

.field private m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field protected m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x100

    #@2
    .line 207
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMManager;-><init>()V

    #@5
    .line 94
    new-array v0, v1, [Lorg/apache/xml/dtm/DTM;

    #@7
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@9
    .line 109
    new-array v0, v1, [I

    #@b
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    #@d
    .line 115
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    #@10
    .line 120
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    #@12
    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    #@15
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    #@17
    .line 201
    new-instance v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@19
    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    #@1c
    .line 200
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@1e
    .line 207
    return-void
.end method


# virtual methods
.method public declared-synchronized addDTM(Lorg/apache/xml/dtm/DTM;I)V
    .locals 1
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "id"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 130
    const/4 v0, 0x0

    #@2
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public declared-synchronized addDTM(Lorg/apache/xml/dtm/DTM;II)V
    .locals 7
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "id"    # I
    .param p3, "offset"    # I

    #@0
    .prologue
    const/high16 v4, 0x10000

    #@2
    monitor-enter p0

    #@3
    .line 145
    if-lt p2, v4, :cond_0

    #@5
    .line 148
    :try_start_0
    new-instance v4, Lorg/apache/xml/dtm/DTMException;

    #@7
    const-string/jumbo v5, "ER_NO_DTMIDS_AVAIL"

    #@a
    const/4 v6, 0x0

    #@b
    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    invoke-direct {v4, v5}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@12
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :catchall_0
    move-exception v4

    #@14
    monitor-exit p0

    #@15
    throw v4

    #@16
    .line 156
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@18
    array-length v3, v4

    #@19
    .line 157
    .local v3, "oldlen":I
    if-gt v3, p2, :cond_1

    #@1b
    .line 164
    add-int/lit16 v4, p2, 0x100

    #@1d
    const/high16 v5, 0x10000

    #@1f
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@22
    move-result v2

    #@23
    .line 166
    .local v2, "newlen":I
    new-array v1, v2, [Lorg/apache/xml/dtm/DTM;

    #@25
    .line 167
    .local v1, "new_m_dtms":[Lorg/apache/xml/dtm/DTM;
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@27
    const/4 v5, 0x0

    #@28
    const/4 v6, 0x0

    #@29
    invoke-static {v4, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2c
    .line 168
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@2e
    .line 169
    new-array v0, v2, [I

    #@30
    .line 170
    .local v0, "new_m_dtm_offsets":[I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    #@32
    const/4 v5, 0x0

    #@33
    const/4 v6, 0x0

    #@34
    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@37
    .line 171
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    #@39
    .line 174
    .end local v0    # "new_m_dtm_offsets":[I
    .end local v1    # "new_m_dtms":[Lorg/apache/xml/dtm/DTM;
    .end local v2    # "newlen":I
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@3b
    aput-object p1, v4, p2

    #@3d
    .line 175
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    #@3f
    aput p3, v4, p2

    #@41
    .line 176
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->documentRegistration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    monitor-exit p0

    #@45
    .line 143
    return-void
.end method

.method public declared-synchronized createDTMIterator(I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "node"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 829
    const/4 v0, 0x0

    #@2
    monitor-exit p0

    #@3
    return-object v0
.end method

.method public declared-synchronized createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "whatToShow"    # I
    .param p2, "filter"    # Lorg/apache/xml/dtm/DTMFilter;
    .param p3, "entityReferenceExpansion"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 797
    const/4 v0, 0x0

    #@2
    monitor-exit p0

    #@3
    return-object v0
.end method

.method public declared-synchronized createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "xpathCompiler"    # Ljava/lang/Object;
    .param p2, "pos"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 845
    const/4 v0, 0x0

    #@2
    monitor-exit p0

    #@3
    return-object v0
.end method

.method public declared-synchronized createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "xpathString"    # Ljava/lang/String;
    .param p2, "presolver"    # Lorg/apache/xml/utils/PrefixResolver;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 814
    const/4 v0, 0x0

    #@2
    monitor-exit p0

    #@3
    return-object v0
.end method

.method public declared-synchronized createDocumentFragment()Lorg/apache/xml/dtm/DTM;
    .locals 11

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 766
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    #@4
    move-result-object v7

    #@5
    .line 768
    .local v7, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x1

    #@6
    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    #@9
    .line 770
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    #@c
    move-result-object v6

    #@d
    .line 771
    .local v6, "db":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    #@10
    move-result-object v9

    #@11
    .line 772
    .local v9, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v9}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    #@14
    move-result-object v8

    #@15
    .line 774
    .local v8, "df":Lorg/w3c/dom/Node;
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    #@17
    invoke-direct {v1, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    #@1a
    const/4 v2, 0x1

    #@1b
    const/4 v3, 0x0

    #@1c
    const/4 v4, 0x0

    #@1d
    const/4 v5, 0x0

    #@1e
    move-object v0, p0

    #@1f
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v0

    #@23
    monitor-exit p0

    #@24
    return-object v0

    #@25
    .line 777
    .end local v6    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "df":Lorg/w3c/dom/Node;
    .end local v9    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v10

    #@26
    .line 778
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    #@28
    invoke-direct {v0, v10}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/Throwable;)V

    #@2b
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@2d
    monitor-exit p0

    #@2e
    throw v0
.end method

.method public declared-synchronized getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 3
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 648
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@3
    ushr-int/lit8 v2, p1, 0x10

    #@5
    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v1

    #@9
    .line 651
    :catch_0
    move-exception v0

    #@a
    .line 652
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, -0x1

    #@b
    if-ne p1, v1, :cond_0

    #@d
    .line 653
    const/4 v1, 0x0

    #@e
    monitor-exit p0

    #@f
    return-object v1

    #@10
    .line 655
    :cond_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v1

    #@12
    monitor-exit p0

    #@13
    throw v1
.end method

.method public declared-synchronized getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    .locals 29
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "unique"    # Z
    .param p3, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p4, "incremental"    # Z
    .param p5, "doIndexing"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 247
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget-object v7, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    #@5
    .line 248
    .local v7, "xstringFactory":Lorg/apache/xml/utils/XMLStringFactory;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    #@8
    move-result v16

    #@9
    .line 249
    .local v16, "dtmPos":I
    shl-int/lit8 v5, v16, 0x10

    #@b
    .line 251
    .local v5, "documentID":I
    if-eqz p1, :cond_0

    #@d
    move-object/from16 v0, p1

    #@f
    instance-of v3, v0, Ljavax/xml/transform/dom/DOMSource;

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 253
    new-instance v2, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    #@15
    move-object/from16 v0, p1

    #@17
    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    #@19
    move-object v4, v0

    #@1a
    move-object/from16 v3, p0

    #@1c
    move-object/from16 v6, p3

    #@1e
    move/from16 v8, p5

    #@20
    invoke-direct/range {v2 .. v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/dom/DOMSource;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    #@23
    .line 256
    .local v2, "dtm":Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;
    const/4 v3, 0x0

    #@24
    move-object/from16 v0, p0

    #@26
    move/from16 v1, v16

    #@28
    invoke-virtual {v0, v2, v1, v3}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@2b
    monitor-exit p0

    #@2c
    .line 263
    return-object v2

    #@2d
    .line 267
    .end local v2    # "dtm":Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;
    :cond_0
    if-eqz p1, :cond_8

    #@2f
    .line 268
    :try_start_1
    move-object/from16 v0, p1

    #@31
    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    #@33
    move/from16 v23, v0

    #@35
    .line 269
    :goto_0
    if-eqz p1, :cond_9

    #@37
    .line 270
    move-object/from16 v0, p1

    #@39
    instance-of v0, v0, Ljavax/xml/transform/stream/StreamSource;

    #@3b
    move/from16 v24, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3d
    .line 272
    :goto_1
    if-nez v23, :cond_1

    #@3f
    if-eqz v24, :cond_1a

    #@41
    .line 273
    :cond_1
    const/16 v26, 0x0

    #@43
    .line 279
    .local v26, "reader":Lorg/xml/sax/XMLReader;
    if-nez p1, :cond_a

    #@45
    .line 280
    const/16 v28, 0x0

    #@47
    .line 299
    .end local v26    # "reader":Lorg/xml/sax/XMLReader;
    :cond_2
    :goto_2
    if-nez p1, :cond_3

    #@49
    if-eqz p2, :cond_3

    #@4b
    if-eqz p4, :cond_c

    #@4d
    .line 319
    :cond_3
    :try_start_2
    new-instance v8, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    #@4f
    move-object/from16 v9, p0

    #@51
    move-object/from16 v10, p1

    #@53
    move v11, v5

    #@54
    move-object/from16 v12, p3

    #@56
    move-object v13, v7

    #@57
    move/from16 v14, p5

    #@59
    invoke-direct/range {v8 .. v14}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    #@5c
    .line 326
    .local v8, "dtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    :goto_3
    const/4 v3, 0x0

    #@5d
    move-object/from16 v0, p0

    #@5f
    move/from16 v1, v16

    #@61
    invoke-virtual {v0, v8, v1, v3}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    #@64
    .line 330
    if-eqz v26, :cond_d

    #@66
    .line 331
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    .line 333
    const-string/jumbo v4, "org.apache.xerces.parsers.SAXParser"

    #@71
    .line 331
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@74
    move-result v22

    #@75
    .line 335
    :goto_4
    if-eqz v22, :cond_4

    #@77
    .line 336
    const/16 p4, 0x1

    #@79
    .line 341
    .end local p4    # "incremental":Z
    :cond_4
    move-object/from16 v0, p0

    #@7b
    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7d
    if-eqz v3, :cond_13

    #@7f
    if-eqz p4, :cond_13

    #@81
    .line 343
    const/4 v15, 0x0

    #@82
    .line 345
    .local v15, "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    if-eqz v22, :cond_5

    #@84
    .line 349
    :try_start_3
    const-string/jumbo v3, "org.apache.xml.dtm.ref.IncrementalSAXSource_Xerces"

    #@87
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@8e
    move-result-object v15

    #@8f
    .end local v15    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    check-cast v15, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@91
    .line 356
    :cond_5
    :goto_5
    if-nez v15, :cond_6

    #@93
    .line 358
    if-nez v26, :cond_e

    #@95
    .line 359
    :try_start_4
    new-instance v15, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    #@97
    invoke-direct {v15}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    #@9a
    .line 388
    :cond_6
    :goto_6
    invoke-virtual {v8, v15}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9d
    .line 390
    if-nez v28, :cond_10

    #@9f
    .line 460
    if-eqz v26, :cond_7

    #@a1
    :try_start_5
    move-object/from16 v0, p0

    #@a3
    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z

    #@a5
    if-eqz v3, :cond_f

    #@a7
    if-eqz p4, :cond_f

    #@a9
    .line 471
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    #@ab
    move-object/from16 v1, v26

    #@ad
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@b0
    monitor-exit p0

    #@b1
    .line 393
    return-object v8

    #@b2
    .line 268
    .end local v8    # "dtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    .restart local p4    # "incremental":Z
    :cond_8
    const/16 v23, 0x1

    #@b4
    .local v23, "isSAXSource":Z
    goto :goto_0

    #@b5
    .line 270
    .end local v23    # "isSAXSource":Z
    :cond_9
    const/16 v24, 0x0

    #@b7
    .local v24, "isStreamSource":Z
    goto :goto_1

    #@b8
    .line 282
    .end local v24    # "isStreamSource":Z
    .restart local v26    # "reader":Lorg/xml/sax/XMLReader;
    :cond_a
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getXMLReader(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLReader;

    #@bb
    move-result-object v26

    #@bc
    .line 283
    .local v26, "reader":Lorg/xml/sax/XMLReader;
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    #@bf
    move-result-object v28

    #@c0
    .line 285
    .local v28, "xmlSource":Lorg/xml/sax/InputSource;
    invoke-virtual/range {v28 .. v28}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c3
    move-result-object v27

    #@c4
    .line 287
    .local v27, "urlOfSource":Ljava/lang/String;
    if-eqz v27, :cond_2

    #@c6
    .line 289
    :try_start_7
    invoke-static/range {v27 .. v27}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@c9
    move-result-object v27

    #@ca
    .line 295
    :goto_8
    :try_start_8
    move-object/from16 v0, v28

    #@cc
    move-object/from16 v1, v27

    #@ce
    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@d1
    goto/16 :goto_2

    #@d3
    .line 457
    .end local v26    # "reader":Lorg/xml/sax/XMLReader;
    .end local v27    # "urlOfSource":Ljava/lang/String;
    .end local v28    # "xmlSource":Lorg/xml/sax/InputSource;
    .end local p4    # "incremental":Z
    :catchall_0
    move-exception v3

    #@d4
    .line 460
    if-eqz v26, :cond_b

    #@d6
    :try_start_9
    move-object/from16 v0, p0

    #@d8
    iget-boolean v4, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z

    #@da
    if-eqz v4, :cond_19

    #@dc
    if-eqz p4, :cond_19

    #@de
    .line 471
    :cond_b
    :goto_9
    move-object/from16 v0, p0

    #@e0
    move-object/from16 v1, v26

    #@e2
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    #@e5
    .line 457
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@e6
    .end local v5    # "documentID":I
    .end local v7    # "xstringFactory":Lorg/apache/xml/utils/XMLStringFactory;
    .end local v16    # "dtmPos":I
    :catchall_1
    move-exception v3

    #@e7
    monitor-exit p0

    #@e8
    throw v3

    #@e9
    .line 290
    .restart local v5    # "documentID":I
    .restart local v7    # "xstringFactory":Lorg/apache/xml/utils/XMLStringFactory;
    .restart local v16    # "dtmPos":I
    .restart local v26    # "reader":Lorg/xml/sax/XMLReader;
    .restart local v27    # "urlOfSource":Ljava/lang/String;
    .restart local v28    # "xmlSource":Lorg/xml/sax/InputSource;
    .restart local p4    # "incremental":Z
    :catch_0
    move-exception v17

    #@ea
    .line 292
    .local v17, "e":Ljava/lang/Exception;
    :try_start_a
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ec
    new-instance v4, Ljava/lang/StringBuilder;

    #@ee
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f1
    const-string/jumbo v6, "Can not absolutize URL: "

    #@f4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v4

    #@f8
    move-object/from16 v0, v27

    #@fa
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v4

    #@fe
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v4

    #@102
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@105
    goto :goto_8

    #@106
    .line 299
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v26    # "reader":Lorg/xml/sax/XMLReader;
    .end local v27    # "urlOfSource":Ljava/lang/String;
    .end local v28    # "xmlSource":Lorg/xml/sax/InputSource;
    :cond_c
    if-nez p5, :cond_3

    #@108
    .line 307
    new-instance v8, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@10a
    move-object/from16 v9, p0

    #@10c
    move-object/from16 v10, p1

    #@10e
    move v11, v5

    #@10f
    move-object/from16 v12, p3

    #@111
    move-object v13, v7

    #@112
    move/from16 v14, p5

    #@114
    invoke-direct/range {v8 .. v14}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    #@117
    .restart local v8    # "dtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    goto/16 :goto_3

    #@119
    .line 330
    :cond_d
    const/16 v22, 0x0

    #@11b
    .local v22, "haveXercesParser":Z
    goto/16 :goto_4

    #@11d
    .line 350
    .end local v22    # "haveXercesParser":Z
    .end local p4    # "incremental":Z
    :catch_1
    move-exception v20

    #@11e
    .line 351
    .local v20, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    #@121
    .line 352
    const/4 v15, 0x0

    #@122
    .restart local v15    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    goto/16 :goto_5

    #@124
    .line 362
    .end local v15    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    .end local v20    # "ex":Ljava/lang/Exception;
    :cond_e
    new-instance v21, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    #@126
    invoke-direct/range {v21 .. v21}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    #@129
    .line 363
    .local v21, "filter":Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
    move-object/from16 v0, v21

    #@12b
    move-object/from16 v1, v26

    #@12d
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->setXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@130
    .line 364
    move-object/from16 v15, v21

    #@132
    .local v15, "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    goto/16 :goto_6

    #@134
    .line 461
    .end local v15    # "coParser":Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    .end local v21    # "filter":Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
    :cond_f
    :try_start_b
    move-object/from16 v0, p0

    #@136
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    #@138
    move-object/from16 v0, v26

    #@13a
    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@13d
    .line 462
    move-object/from16 v0, p0

    #@13f
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    #@141
    move-object/from16 v0, v26

    #@143
    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    #@146
    .line 463
    move-object/from16 v0, p0

    #@148
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    #@14a
    move-object/from16 v0, v26

    #@14c
    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    #@14f
    .line 467
    :try_start_c
    const-string/jumbo v3, "http://xml.org/sax/properties/lexical-handler"

    #@152
    const/4 v4, 0x0

    #@153
    move-object/from16 v0, v26

    #@155
    invoke-interface {v0, v3, v4}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@158
    goto/16 :goto_7

    #@15a
    .line 469
    :catch_2
    move-exception v17

    #@15b
    .restart local v17    # "e":Ljava/lang/Exception;
    goto/16 :goto_7

    #@15d
    .line 396
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_10
    :try_start_d
    invoke-interface/range {v26 .. v26}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    #@160
    move-result-object v3

    #@161
    if-nez v3, :cond_11

    #@163
    .line 397
    move-object/from16 v0, v26

    #@165
    invoke-interface {v0, v8}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    #@168
    .line 399
    :cond_11
    move-object/from16 v0, v26

    #@16a
    invoke-interface {v0, v8}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    #@16d
    .line 405
    :try_start_e
    move-object/from16 v0, v28

    #@16f
    invoke-interface {v15, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->startParse(Lorg/xml/sax/InputSource;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    #@172
    .line 460
    :goto_a
    if-eqz v26, :cond_12

    #@174
    :try_start_f
    move-object/from16 v0, p0

    #@176
    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z

    #@178
    if-eqz v3, :cond_18

    #@17a
    if-eqz p4, :cond_18

    #@17c
    .line 471
    :cond_12
    :goto_b
    move-object/from16 v0, p0

    #@17e
    move-object/from16 v1, v26

    #@180
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    #@183
    monitor-exit p0

    #@184
    .line 456
    return-object v8

    #@185
    .line 411
    :catch_3
    move-exception v17

    #@186
    .line 413
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v8}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    #@189
    .line 415
    new-instance v3, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@18b
    move-object/from16 v0, v17

    #@18d
    invoke-direct {v3, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@190
    throw v3

    #@191
    .line 406
    .end local v17    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v25

    #@192
    .line 408
    .local v25, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v8}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    #@195
    .line 410
    throw v25
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    #@196
    .line 418
    .end local v25    # "re":Ljava/lang/RuntimeException;
    :cond_13
    if-nez v26, :cond_16

    #@198
    .line 460
    if-eqz v26, :cond_14

    #@19a
    :try_start_11
    move-object/from16 v0, p0

    #@19c
    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z

    #@19e
    if-eqz v3, :cond_15

    #@1a0
    if-eqz p4, :cond_15

    #@1a2
    .line 471
    :cond_14
    :goto_c
    move-object/from16 v0, p0

    #@1a4
    move-object/from16 v1, v26

    #@1a6
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    #@1a9
    monitor-exit p0

    #@1aa
    .line 421
    return-object v8

    #@1ab
    .line 461
    :cond_15
    :try_start_12
    move-object/from16 v0, p0

    #@1ad
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    #@1af
    move-object/from16 v0, v26

    #@1b1
    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@1b4
    .line 462
    move-object/from16 v0, p0

    #@1b6
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    #@1b8
    move-object/from16 v0, v26

    #@1ba
    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    #@1bd
    .line 463
    move-object/from16 v0, p0

    #@1bf
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    #@1c1
    move-object/from16 v0, v26

    #@1c3
    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    #@1c6
    .line 467
    :try_start_13
    const-string/jumbo v3, "http://xml.org/sax/properties/lexical-handler"

    #@1c9
    const/4 v4, 0x0

    #@1ca
    move-object/from16 v0, v26

    #@1cc
    invoke-interface {v0, v3, v4}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    #@1cf
    goto :goto_c

    #@1d0
    .line 469
    :catch_5
    move-exception v17

    #@1d1
    .restart local v17    # "e":Ljava/lang/Exception;
    goto :goto_c

    #@1d2
    .line 425
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_16
    :try_start_14
    move-object/from16 v0, v26

    #@1d4
    invoke-interface {v0, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@1d7
    .line 426
    move-object/from16 v0, v26

    #@1d9
    invoke-interface {v0, v8}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    #@1dc
    .line 427
    invoke-interface/range {v26 .. v26}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    #@1df
    move-result-object v3

    #@1e0
    if-nez v3, :cond_17

    #@1e2
    .line 428
    move-object/from16 v0, v26

    #@1e4
    invoke-interface {v0, v8}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    #@1e7
    .line 433
    :cond_17
    :try_start_15
    const-string/jumbo v3, "http://xml.org/sax/properties/lexical-handler"

    #@1ea
    .line 432
    move-object/from16 v0, v26

    #@1ec
    invoke-interface {v0, v3, v8}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    #@1ef
    .line 439
    :goto_d
    :try_start_16
    move-object/from16 v0, v26

    #@1f1
    move-object/from16 v1, v28

    #@1f3
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    #@1f6
    goto/16 :goto_a

    #@1f8
    .line 440
    :catch_6
    move-exception v25

    #@1f9
    .line 441
    .restart local v25    # "re":Ljava/lang/RuntimeException;
    :try_start_17
    invoke-virtual {v8}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    #@1fc
    .line 443
    throw v25

    #@1fd
    .line 444
    .end local v25    # "re":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v17

    #@1fe
    .line 445
    .restart local v17    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    #@201
    .line 447
    new-instance v3, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@203
    move-object/from16 v0, v17

    #@205
    invoke-direct {v3, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@208
    throw v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    #@209
    .line 461
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_18
    :try_start_18
    move-object/from16 v0, p0

    #@20b
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    #@20d
    move-object/from16 v0, v26

    #@20f
    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@212
    .line 462
    move-object/from16 v0, p0

    #@214
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    #@216
    move-object/from16 v0, v26

    #@218
    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    #@21b
    .line 463
    move-object/from16 v0, p0

    #@21d
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    #@21f
    move-object/from16 v0, v26

    #@221
    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    #@224
    .line 467
    :try_start_19
    const-string/jumbo v3, "http://xml.org/sax/properties/lexical-handler"

    #@227
    const/4 v4, 0x0

    #@228
    move-object/from16 v0, v26

    #@22a
    invoke-interface {v0, v3, v4}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    #@22d
    goto/16 :goto_b

    #@22f
    .line 469
    :catch_8
    move-exception v17

    #@230
    .restart local v17    # "e":Ljava/lang/Exception;
    goto/16 :goto_b

    #@232
    .line 461
    .end local v8    # "dtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_19
    :try_start_1a
    move-object/from16 v0, p0

    #@234
    iget-object v4, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    #@236
    move-object/from16 v0, v26

    #@238
    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@23b
    .line 462
    move-object/from16 v0, p0

    #@23d
    iget-object v4, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    #@23f
    move-object/from16 v0, v26

    #@241
    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    #@244
    .line 463
    move-object/from16 v0, p0

    #@246
    iget-object v4, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    #@248
    move-object/from16 v0, v26

    #@24a
    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    #@24d
    .line 467
    :try_start_1b
    const-string/jumbo v4, "http://xml.org/sax/properties/lexical-handler"

    #@250
    const/4 v6, 0x0

    #@251
    move-object/from16 v0, v26

    #@253
    invoke-interface {v0, v4, v6}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    #@256
    goto/16 :goto_9

    #@258
    .line 469
    :catch_9
    move-exception v17

    #@259
    .restart local v17    # "e":Ljava/lang/Exception;
    goto/16 :goto_9

    #@25b
    .line 477
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local p4    # "incremental":Z
    :cond_1a
    :try_start_1c
    new-instance v3, Lorg/apache/xml/dtm/DTMException;

    #@25d
    const-string/jumbo v4, "ER_NOT_SUPPORTED"

    #@260
    const/4 v6, 0x1

    #@261
    new-array v6, v6, [Ljava/lang/Object;

    #@263
    const/4 v9, 0x0

    #@264
    aput-object p1, v6, v9

    #@266
    invoke-static {v4, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@269
    move-result-object v4

    #@26a
    invoke-direct {v3, v4}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@26d
    throw v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    #@26e
    .line 435
    .end local p4    # "incremental":Z
    .restart local v8    # "dtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    :catch_a
    move-exception v18

    #@26f
    .local v18, "e":Lorg/xml/sax/SAXNotRecognizedException;
    goto :goto_d

    #@270
    .line 436
    .end local v18    # "e":Lorg/xml/sax/SAXNotRecognizedException;
    :catch_b
    move-exception v19

    #@271
    .local v19, "e":Lorg/xml/sax/SAXNotSupportedException;
    goto/16 :goto_d
.end method

.method public declared-synchronized getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
    .locals 15
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v14, -0x1

    #@1
    monitor-enter p0

    #@2
    .line 493
    if-nez p1, :cond_0

    #@4
    .line 494
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v2, "ER_NODE_NON_NULL"

    #@9
    const/4 v3, 0x0

    #@a
    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .end local p1    # "node":Lorg/w3c/dom/Node;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1

    #@15
    .line 496
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    #@17
    instance-of v1, v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 497
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    #@1d
    .end local p1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result v1

    #@21
    monitor-exit p0

    #@22
    return v1

    #@23
    .line 522
    .restart local p1    # "node":Lorg/w3c/dom/Node;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@25
    array-length v10, v1

    #@26
    .line 523
    .local v10, "max":I
    const/4 v9, 0x0

    #@27
    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_3

    #@29
    .line 525
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@2b
    aget-object v13, v1, v9

    #@2d
    .line 526
    .local v13, "thisDTM":Lorg/apache/xml/dtm/DTM;
    if-eqz v13, :cond_2

    #@2f
    instance-of v1, v13, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 528
    check-cast v13, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    #@35
    .end local v13    # "thisDTM":Lorg/apache/xml/dtm/DTM;
    move-object/from16 v0, p1

    #@37
    invoke-virtual {v13, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    move-result v8

    #@3b
    .line 529
    .local v8, "handle":I
    if-eq v8, v14, :cond_2

    #@3d
    monitor-exit p0

    #@3e
    return v8

    #@3f
    .line 523
    .end local v8    # "handle":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    #@41
    goto :goto_0

    #@42
    .line 552
    :cond_3
    move-object/from16 v12, p1

    #@44
    .line 553
    .local v12, "root":Lorg/w3c/dom/Node;
    :try_start_3
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    #@47
    move-result v1

    #@48
    const/4 v2, 0x2

    #@49
    if-ne v1, v2, :cond_4

    #@4b
    move-object v0, v12

    #@4c
    check-cast v0, Lorg/w3c/dom/Attr;

    #@4e
    move-object v1, v0

    #@4f
    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    #@52
    move-result-object v11

    #@53
    .line 554
    .local v11, "p":Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v11, :cond_5

    #@55
    .line 556
    move-object v12, v11

    #@56
    .line 554
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@59
    move-result-object v11

    #@5a
    goto :goto_1

    #@5b
    .line 553
    .end local v11    # "p":Lorg/w3c/dom/Node;
    :cond_4
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@5e
    move-result-object v11

    #@5f
    .restart local v11    # "p":Lorg/w3c/dom/Node;
    goto :goto_1

    #@60
    .line 559
    :cond_5
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    #@62
    invoke-direct {v2, v12}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    #@65
    .line 560
    const/4 v3, 0x0

    #@66
    const/4 v4, 0x0

    #@67
    const/4 v5, 0x1

    #@68
    const/4 v6, 0x1

    #@69
    move-object v1, p0

    #@6a
    .line 559
    invoke-virtual/range {v1 .. v6}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    #@6d
    move-result-object v7

    #@6e
    check-cast v7, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    #@70
    .line 564
    .local v7, "dtm":Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;
    move-object/from16 v0, p1

    #@72
    instance-of v1, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;

    #@74
    if-eqz v1, :cond_6

    #@76
    .line 569
    move-object/from16 v0, p1

    #@78
    check-cast v0, Lorg/w3c/dom/Attr;

    #@7a
    move-object v1, v0

    #@7b
    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v7, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I

    #@82
    move-result v8

    #@83
    .line 570
    .restart local v8    # "handle":I
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v7, v8, v1, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    #@8e
    move-result v8

    #@8f
    .line 575
    :goto_2
    if-ne v14, v8, :cond_7

    #@91
    .line 576
    new-instance v1, Ljava/lang/RuntimeException;

    #@93
    const-string/jumbo v2, "ER_COULD_NOT_RESOLVE_NODE"

    #@96
    const/4 v3, 0x0

    #@97
    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9a
    move-result-object v2

    #@9b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v1

    #@9f
    .line 573
    .end local v8    # "handle":I
    :cond_6
    move-object/from16 v0, p1

    #@a1
    invoke-virtual {v7, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a4
    move-result v8

    #@a5
    .restart local v8    # "handle":I
    goto :goto_2

    #@a6
    :cond_7
    monitor-exit p0

    #@a7
    .line 578
    return v8
.end method

.method public declared-synchronized getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I
    .locals 7
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    monitor-enter p0

    #@2
    .line 673
    :try_start_0
    instance-of v5, p1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    #@4
    if-eqz v5, :cond_1

    #@6
    .line 675
    move-object v0, p1

    #@7
    check-cast v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    #@9
    move-object v1, v0

    #@a
    .line 676
    .local v1, "dtmdb":Lorg/apache/xml/dtm/ref/DTMDefaultBase;
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getManager()Lorg/apache/xml/dtm/DTMManager;

    #@d
    move-result-object v5

    #@e
    if-ne v5, p0, :cond_0

    #@10
    .line 677
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;

    #@13
    move-result-object v5

    #@14
    const/4 v6, 0x0

    #@15
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v5

    #@19
    monitor-exit p0

    #@1a
    return v5

    #@1b
    :cond_0
    monitor-exit p0

    #@1c
    .line 679
    return v6

    #@1d
    .line 682
    .end local v1    # "dtmdb":Lorg/apache/xml/dtm/ref/DTMDefaultBase;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@1f
    array-length v3, v5

    #@20
    .line 684
    .local v3, "n":I
    const/4 v2, 0x0

    #@21
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    #@23
    .line 686
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@25
    aget-object v4, v5, v2

    #@27
    .line 688
    .local v4, "tdtm":Lorg/apache/xml/dtm/DTM;
    if-ne v4, p1, :cond_2

    #@29
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    #@2b
    aget v5, v5, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    if-nez v5, :cond_2

    #@2f
    .line 689
    shl-int/lit8 v5, v2, 0x10

    #@31
    monitor-exit p0

    #@32
    return v5

    #@33
    .line 684
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_0

    #@36
    .end local v4    # "tdtm":Lorg/apache/xml/dtm/DTM;
    :cond_3
    monitor-exit p0

    #@37
    .line 692
    return v6

    #@38
    .end local v2    # "i":I
    .end local v3    # "n":I
    :catchall_0
    move-exception v5

    #@39
    monitor-exit p0

    #@3a
    throw v5
.end method

.method public getExpandedNameTable(Lorg/apache/xml/dtm/DTM;)Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    .locals 1
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;

    #@0
    .prologue
    .line 857
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@2
    return-object v0
.end method

.method public declared-synchronized getFirstFreeDTMID()I
    .locals 3

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 186
    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@3
    array-length v1, v2

    #@4
    .line 187
    .local v1, "n":I
    const/4 v0, 0x1

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 189
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@9
    aget-object v2, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    if-nez v2, :cond_0

    #@d
    monitor-exit p0

    #@e
    .line 191
    return v0

    #@f
    .line 187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    :cond_1
    monitor-exit p0

    #@13
    .line 194
    return v1

    #@14
    .end local v0    # "i":I
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    #@15
    monitor-exit p0

    #@16
    throw v2
.end method

.method public declared-synchronized getXMLReader(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLReader;
    .locals 4
    .param p1, "inputSource"    # Ljavax/xml/transform/Source;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 601
    :try_start_0
    instance-of v2, p1, Ljavax/xml/transform/sax/SAXSource;

    #@3
    if-eqz v2, :cond_2

    #@5
    .line 602
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    #@7
    .end local p1    # "inputSource":Ljavax/xml/transform/Source;
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    #@a
    move-result-object v0

    #@b
    .line 605
    :goto_0
    if-nez v0, :cond_1

    #@d
    .line 606
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    #@f
    if-nez v2, :cond_0

    #@11
    .line 607
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    #@14
    move-result-object v2

    #@15
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    #@17
    .line 610
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    #@19
    invoke-virtual {v2}, Lorg/apache/xml/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v0

    #@1d
    :cond_1
    monitor-exit p0

    #@1e
    .line 613
    return-object v0

    #@1f
    .line 602
    .restart local p1    # "inputSource":Ljavax/xml/transform/Source;
    :cond_2
    const/4 v0, 0x0

    #@20
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    goto :goto_0

    #@21
    .line 615
    .end local v0    # "reader":Lorg/xml/sax/XMLReader;
    .end local p1    # "inputSource":Ljavax/xml/transform/Source;
    :catch_0
    move-exception v1

    #@22
    .line 616
    .local v1, "se":Lorg/xml/sax/SAXException;
    :try_start_1
    new-instance v2, Lorg/apache/xml/dtm/DTMException;

    #@24
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-direct {v2, v3, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2b
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    .end local v1    # "se":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit p0

    #@2e
    throw v2
.end method

.method public declared-synchronized release(Lorg/apache/xml/dtm/DTM;Z)Z
    .locals 6
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "shouldHardDelete"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 723
    :try_start_0
    instance-of v3, p1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 725
    move-object v0, p1

    #@6
    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    #@8
    move-object v3, v0

    #@9
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    #@c
    .line 736
    :cond_0
    instance-of v3, p1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    #@e
    if-eqz v3, :cond_1

    #@10
    .line 738
    move-object v0, p1

    #@11
    check-cast v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    #@13
    move-object v3, v0

    #@14
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;

    #@17
    move-result-object v2

    #@18
    .line 739
    .local v2, "ids":Lorg/apache/xml/utils/SuballocatedIntVector;
    invoke-virtual {v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@1b
    move-result v3

    #@1c
    add-int/lit8 v1, v3, -0x1

    #@1e
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@20
    .line 740
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@22
    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@25
    move-result v4

    #@26
    ushr-int/lit8 v4, v4, 0x10

    #@28
    const/4 v5, 0x0

    #@29
    aput-object v5, v3, v4

    #@2b
    .line 739
    add-int/lit8 v1, v1, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 744
    .end local v1    # "i":I
    .end local v2    # "ids":Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    #@31
    move-result v1

    #@32
    .line 745
    .restart local v1    # "i":I
    if-ltz v1, :cond_2

    #@34
    .line 747
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@36
    ushr-int/lit8 v4, v1, 0x10

    #@38
    const/4 v5, 0x0

    #@39
    aput-object v5, v3, v4

    #@3b
    .line 751
    :cond_2
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->documentRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 752
    const/4 v3, 0x1

    #@3f
    monitor-exit p0

    #@40
    return v3

    #@41
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    #@42
    monitor-exit p0

    #@43
    throw v3
.end method

.method public declared-synchronized releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 631
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 632
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    #@7
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 630
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
