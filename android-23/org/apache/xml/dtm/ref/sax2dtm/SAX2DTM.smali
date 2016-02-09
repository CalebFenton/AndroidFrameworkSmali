.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.source "SAX2DTM.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field private static final DEBUG:Z = false

.field private static final ENTITY_FIELDS_PER:I = 0x4

.field private static final ENTITY_FIELD_NAME:I = 0x3

.field private static final ENTITY_FIELD_NOTATIONNAME:I = 0x2

.field private static final ENTITY_FIELD_PUBLICID:I = 0x0

.field private static final ENTITY_FIELD_SYSTEMID:I = 0x1

.field private static final m_fixednames:[Ljava/lang/String;


# instance fields
.field protected m_chars:Lorg/apache/xml/utils/FastStringBuffer;

.field protected transient m_coalescedTextType:I

.field protected transient m_contextIndexes:Lorg/apache/xml/utils/IntStack;

.field protected m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_endDocumentOccured:Z

.field private m_entities:Ljava/util/Vector;

.field protected m_idAttributes:Ljava/util/Hashtable;

.field private m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

.field protected transient m_insideDTD:Z

.field protected transient m_locator:Lorg/xml/sax/Locator;

.field protected transient m_parents:Lorg/apache/xml/utils/IntStack;

.field m_pastFirstElement:Z

.field protected transient m_prefixMappings:Ljava/util/Vector;

.field protected transient m_previous:I

.field protected m_sourceColumn:Lorg/apache/xml/utils/IntVector;

.field protected m_sourceLine:Lorg/apache/xml/utils/IntVector;

.field protected m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

.field private transient m_systemId:Ljava/lang/String;

.field protected m_textPendingStart:I

.field protected transient m_textType:I

.field protected m_useSourceLocationProperty:Z

.field protected m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field protected m_walker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 151
    const/16 v0, 0xd

    #@3
    new-array v0, v0, [Ljava/lang/String;

    #@5
    const/4 v1, 0x0

    #@6
    aput-object v3, v0, v1

    #@8
    .line 152
    const/4 v1, 0x1

    #@9
    aput-object v3, v0, v1

    #@b
    .line 153
    const/4 v1, 0x2

    #@c
    aput-object v3, v0, v1

    #@e
    const-string/jumbo v1, "#text"

    #@11
    const/4 v2, 0x3

    #@12
    aput-object v1, v0, v2

    #@14
    .line 154
    const-string/jumbo v1, "#cdata_section"

    #@17
    const/4 v2, 0x4

    #@18
    aput-object v1, v0, v2

    #@1a
    const/4 v1, 0x5

    #@1b
    aput-object v3, v0, v1

    #@1d
    .line 155
    const/4 v1, 0x6

    #@1e
    aput-object v3, v0, v1

    #@20
    const/4 v1, 0x7

    #@21
    aput-object v3, v0, v1

    #@23
    .line 156
    const-string/jumbo v1, "#comment"

    #@26
    const/16 v2, 0x8

    #@28
    aput-object v1, v0, v2

    #@2a
    const-string/jumbo v1, "#document"

    #@2d
    const/16 v2, 0x9

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 157
    const/16 v1, 0xa

    #@33
    aput-object v3, v0, v1

    #@35
    const-string/jumbo v1, "#document-fragment"

    #@38
    const/16 v2, 0xb

    #@3a
    aput-object v1, v0, v2

    #@3c
    .line 158
    const/16 v1, 0xc

    #@3e
    aput-object v3, v0, v1

    #@40
    .line 151
    sput-object v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    #@42
    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 10
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;
    .param p2, "source"    # Ljavax/xml/transform/Source;
    .param p3, "dtmIdentity"    # I
    .param p4, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p5, "xstringfactory"    # Lorg/apache/xml/utils/XMLStringFactory;
    .param p6, "doIndexing"    # Z

    #@0
    .prologue
    .line 225
    const/16 v7, 0x200

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v9, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move v3, p3

    #@8
    move-object v4, p4

    #@9
    move-object v5, p5

    #@a
    move/from16 v6, p6

    #@c
    .line 224
    invoke-direct/range {v0 .. v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    #@f
    .line 221
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .locals 6
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;
    .param p2, "source"    # Ljavax/xml/transform/Source;
    .param p3, "dtmIdentity"    # I
    .param p4, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p5, "xstringfactory"    # Lorg/apache/xml/utils/XMLStringFactory;
    .param p6, "doIndexing"    # Z
    .param p7, "blocksize"    # I
    .param p8, "usePrevsib"    # Z
    .param p9, "newNameTable"    # Z

    #@0
    .prologue
    const/16 v5, 0xa

    #@2
    const/4 v2, 0x3

    #@3
    const/4 v4, 0x4

    #@4
    const/4 v3, 0x0

    #@5
    const/4 v1, 0x0

    #@6
    .line 253
    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    #@9
    .line 67
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@b
    .line 97
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@d
    .line 103
    new-instance v0, Ljava/util/Vector;

    #@f
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@12
    .line 102
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@14
    .line 111
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    #@16
    .line 117
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    #@18
    .line 120
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    #@1a
    .line 123
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    #@1c
    .line 126
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    #@1e
    .line 129
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    #@20
    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;-><init>()V

    #@23
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_walker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    #@25
    .line 137
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    #@27
    .line 146
    new-instance v0, Ljava/util/Hashtable;

    #@29
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@2c
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    #@2e
    .line 164
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    #@30
    .line 186
    const/4 v0, -0x1

    #@31
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    #@33
    .line 194
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    #@35
    .line 1828
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    #@37
    .line 258
    const/16 v0, 0x40

    #@39
    if-gt p7, v0, :cond_1

    #@3b
    .line 260
    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@3d
    invoke-direct {v0, p7, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    #@40
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@42
    .line 261
    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@44
    invoke-direct {v0, p7, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    #@47
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@49
    .line 262
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@4b
    const/16 v2, 0x10

    #@4d
    invoke-direct {v0, v2}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>(I)V

    #@50
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@52
    .line 263
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    #@54
    const/4 v2, 0x7

    #@55
    invoke-direct {v0, v2, v5}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(II)V

    #@58
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@5a
    .line 264
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@5c
    invoke-direct {v0, v4}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    #@5f
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@61
    .line 265
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@63
    invoke-direct {v0, v4}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    #@66
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@68
    .line 282
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@6a
    invoke-virtual {v0, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@6d
    .line 287
    invoke-virtual {p1}, Lorg/apache/xml/dtm/DTMManager;->getSource_location()Z

    #@70
    move-result v0

    #@71
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    #@73
    .line 288
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    #@75
    if-eqz v0, :cond_2

    #@77
    new-instance v0, Lorg/apache/xml/utils/StringVector;

    #@79
    invoke-direct {v0}, Lorg/apache/xml/utils/StringVector;-><init>()V

    #@7c
    :goto_1
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    #@7e
    .line 289
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    #@80
    if-eqz v0, :cond_3

    #@82
    new-instance v0, Lorg/apache/xml/utils/IntVector;

    #@84
    invoke-direct {v0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    #@87
    :goto_2
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    #@89
    .line 290
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    #@8b
    if-eqz v0, :cond_0

    #@8d
    new-instance v1, Lorg/apache/xml/utils/IntVector;

    #@8f
    invoke-direct {v1}, Lorg/apache/xml/utils/IntVector;-><init>()V

    #@92
    :cond_0
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    #@94
    .line 250
    return-void

    #@95
    .line 269
    :cond_1
    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@97
    const/16 v2, 0x20

    #@99
    invoke-direct {v0, p7, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    #@9c
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@9e
    .line 270
    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@a0
    const/16 v2, 0x20

    #@a2
    invoke-direct {v0, p7, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    #@a5
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@a7
    .line 271
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@a9
    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    #@ac
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@ae
    .line 272
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    #@b0
    const/16 v2, 0xd

    #@b2
    invoke-direct {v0, v5, v2}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(II)V

    #@b5
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@b7
    .line 273
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@b9
    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@bc
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@be
    .line 274
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@c0
    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@c3
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@c5
    goto :goto_0

    #@c6
    :cond_2
    move-object v0, v1

    #@c7
    .line 288
    goto :goto_1

    #@c8
    :cond_3
    move-object v0, v1

    #@c9
    .line 289
    goto :goto_2
.end method

.method private final isTextType(I)Z
    .locals 2
    .param p1, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 835
    const/4 v1, 0x3

    #@2
    if-eq v1, p1, :cond_0

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v1, p1, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method


# virtual methods
.method protected _dataOrQName(I)I
    .locals 2
    .param p1, "identity"    # I

    #@0
    .prologue
    .line 312
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    #@2
    if-ge p1, v1, :cond_0

    #@4
    .line 313
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@6
    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 320
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    #@e
    move-result v0

    #@f
    .line 322
    .local v0, "isMore":Z
    if-nez v0, :cond_1

    #@11
    .line 323
    const/4 v1, -0x1

    #@12
    return v1

    #@13
    .line 324
    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    #@15
    if-ge p1, v1, :cond_0

    #@17
    .line 325
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@19
    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@1c
    move-result v1

    #@1d
    return v1
.end method

.method protected addNewDTMID(I)V
    .locals 6
    .param p1, "nodeIndex"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 927
    :try_start_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 928
    new-instance v3, Ljava/lang/ClassCastException;

    #@7
    invoke-direct {v3}, Ljava/lang/ClassCastException;-><init>()V

    #@a
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 937
    :catch_0
    move-exception v0

    #@c
    .line 941
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "ER_NO_DTMIDS_AVAIL"

    #@f
    invoke-static {v3, v5}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->error(Ljava/lang/String;)V

    #@16
    .line 924
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :goto_0
    return-void

    #@17
    .line 931
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    #@19
    check-cast v2, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@1b
    .line 932
    .local v2, "mgrD":Lorg/apache/xml/dtm/ref/DTMManagerDefault;
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    #@1e
    move-result v1

    #@1f
    .line 933
    .local v1, "id":I
    invoke-virtual {v2, p0, v1, p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    #@22
    .line 934
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@24
    shl-int/lit8 v4, v1, 0x10

    #@26
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    #@29
    goto :goto_0
.end method

.method protected addNode(IIIIIZ)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "expandedTypeID"    # I
    .param p3, "parentIndex"    # I
    .param p4, "previousSibling"    # I
    .param p5, "dataOrPrefix"    # I
    .param p6, "canHaveFirstChild"    # Z

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    const/4 v3, -0x1

    #@2
    .line 872
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    #@4
    add-int/lit8 v1, v0, 0x1

    #@6
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    #@8
    .line 875
    .local v0, "nodeIndex":I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@a
    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@d
    move-result v1

    #@e
    ushr-int/lit8 v4, v0, 0x10

    #@10
    if-ne v1, v4, :cond_0

    #@12
    .line 877
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNewDTMID(I)V

    #@15
    .line 880
    :cond_0
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@17
    if-eqz p6, :cond_5

    #@19
    move v1, v2

    #@1a
    :goto_0
    invoke-virtual {v4, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@1d
    .line 881
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1f
    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@22
    .line 882
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@24
    invoke-virtual {v1, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@27
    .line 883
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@29
    invoke-virtual {v1, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@2c
    .line 884
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2e
    invoke-virtual {v1, p5}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@31
    .line 886
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@33
    if-eqz v1, :cond_1

    #@35
    .line 887
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@37
    invoke-virtual {v1, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@3a
    .line 890
    :cond_1
    if-eq v3, p4, :cond_2

    #@3c
    .line 891
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@3e
    invoke-virtual {v1, v0, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@41
    .line 894
    :cond_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    #@43
    if-eqz v1, :cond_3

    #@45
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    #@47
    if-eqz v1, :cond_3

    #@49
    .line 895
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setSourceLocation()V

    #@4c
    .line 902
    :cond_3
    sparse-switch p1, :sswitch_data_0

    #@4f
    .line 910
    if-ne v3, p4, :cond_4

    #@51
    if-eq v3, p3, :cond_4

    #@53
    .line 911
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@55
    invoke-virtual {v1, v0, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@58
    .line 916
    :cond_4
    :goto_1
    :sswitch_0
    return v0

    #@59
    :cond_5
    move v1, v3

    #@5a
    .line 880
    goto :goto_0

    #@5b
    .line 905
    :sswitch_1
    invoke-virtual {p0, p3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->declareNamespaceInContext(II)V

    #@5e
    goto :goto_1

    #@5f
    .line 902
    nop

    #@60
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eName"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "valueDefault"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2274
    return-void
.end method

.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 2070
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    #@3
    const/4 v1, -0x1

    #@4
    if-ne v0, v1, :cond_1

    #@6
    .line 2072
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@8
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    #@b
    move-result v0

    #@c
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    #@e
    .line 2073
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    #@10
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    #@12
    .line 2084
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@14
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    #@17
    .line 2068
    return-void

    #@18
    .line 2079
    :cond_1
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    #@1a
    if-ne v0, v2, :cond_0

    #@1c
    .line 2081
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    #@1e
    goto :goto_0
.end method

.method protected charactersFlush()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v6, 0x0

    #@2
    .line 1516
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    #@4
    if-ltz v0, :cond_2

    #@6
    .line 1518
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@8
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    #@b
    move-result v0

    #@c
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    #@e
    sub-int v8, v0, v1

    #@10
    .line 1519
    .local v8, "length":I
    const/4 v7, 0x0

    #@11
    .line 1521
    .local v7, "doStrip":Z
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getShouldStripWhitespace()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 1523
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@19
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    #@1b
    invoke-virtual {v0, v1, v8}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    #@1e
    move-result v7

    #@1f
    .line 1526
    .end local v7    # "doStrip":Z
    :cond_0
    if-eqz v7, :cond_3

    #@21
    .line 1527
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@23
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    #@25
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    #@28
    .line 1544
    :cond_1
    :goto_0
    const/4 v0, -0x1

    #@29
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    #@2b
    .line 1545
    iput v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    #@2d
    iput v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    #@2f
    .line 1513
    .end local v8    # "length":I
    :cond_2
    return-void

    #@30
    .line 1531
    .restart local v8    # "length":I
    :cond_3
    if-lez v8, :cond_1

    #@32
    .line 1532
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@34
    invoke-virtual {v0, v9}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    #@37
    move-result v2

    #@38
    .line 1533
    .local v2, "exName":I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@3a
    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@3d
    move-result v5

    #@3e
    .line 1535
    .local v5, "dataIndex":I
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    #@40
    .line 1536
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@42
    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@45
    move-result v3

    #@46
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@48
    move-object v0, p0

    #@49
    .line 1535
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    #@4c
    move-result v0

    #@4d
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@4f
    .line 1538
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@51
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    #@53
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@56
    .line 1539
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@58
    invoke-virtual {v0, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@5b
    goto :goto_0
.end method

.method public clearCoRoutine()V
    .locals 1

    #@0
    .prologue
    .line 334
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine(Z)V

    #@4
    .line 332
    return-void
.end method

.method public clearCoRoutine(Z)V
    .locals 3
    .param p1, "callDoTerminate"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 347
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 349
    if-eqz p1, :cond_0

    #@7
    .line 350
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->deliverMoreNodes(Z)Ljava/lang/Object;

    #@d
    .line 352
    :cond_0
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@f
    .line 344
    :cond_1
    return-void
.end method

.method public comment([CII)V
    .locals 7
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v1, 0x8

    #@2
    .line 2448
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2449
    return-void

    #@7
    .line 2451
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    #@a
    .line 2453
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@c
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    #@f
    move-result v2

    #@10
    .line 2457
    .local v2, "exName":I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@12
    new-instance v3, Ljava/lang/String;

    #@14
    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@17
    invoke-virtual {v0, v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@1a
    move-result v5

    #@1b
    .line 2462
    .local v5, "dataIndex":I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@1d
    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@20
    move-result v3

    #@21
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@23
    const/4 v6, 0x0

    #@24
    move-object v0, p0

    #@25
    .line 2461
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    #@28
    move-result v0

    #@29
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@2b
    .line 2445
    return-void
.end method

.method protected declAlreadyDeclared(Ljava/lang/String;)Z
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1810
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@2
    invoke-virtual {v5}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@5
    move-result v4

    #@6
    .line 1811
    .local v4, "startDecls":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@8
    .line 1812
    .local v3, "prefixMappings":Ljava/util/Vector;
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@b
    move-result v1

    #@c
    .line 1814
    .local v1, "nDecls":I
    move v0, v4

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@f
    .line 1816
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/String;

    #@15
    .line 1818
    .local v2, "prefixDecl":Ljava/lang/String;
    if-nez v2, :cond_1

    #@17
    .line 1814
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@19
    goto :goto_0

    #@1a
    .line 1821
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 1822
    const/4 v5, 0x1

    #@21
    return v5

    #@22
    .line 1825
    .end local v2    # "prefixDecl":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    #@23
    return v5
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 12
    .param p1, "nodeHandle"    # I
    .param p2, "ch"    # Lorg/xml/sax/ContentHandler;
    .param p3, "normalize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, -0x1

    #@2
    .line 504
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    #@5
    move-result v2

    #@6
    .line 506
    .local v2, "identity":I
    if-ne v2, v10, :cond_0

    #@8
    .line 507
    return-void

    #@9
    .line 509
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    #@c
    move-result v7

    #@d
    .line 511
    .local v7, "type":I
    invoke-direct {p0, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    #@10
    move-result v8

    #@11
    if-eqz v8, :cond_3

    #@13
    .line 513
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@15
    invoke-virtual {v8, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@18
    move-result v0

    #@19
    .line 514
    .local v0, "dataIndex":I
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1b
    invoke-virtual {v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@1e
    move-result v4

    #@1f
    .line 515
    .local v4, "offset":I
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@21
    add-int/lit8 v9, v0, 0x1

    #@23
    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@26
    move-result v3

    #@27
    .line 517
    .local v3, "length":I
    if-eqz p3, :cond_2

    #@29
    .line 518
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@2b
    invoke-virtual {v8, p2, v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    #@2e
    .line 501
    .end local v0    # "dataIndex":I
    .end local v3    # "length":I
    .end local v4    # "offset":I
    :cond_1
    :goto_0
    return-void

    #@2f
    .line 520
    .restart local v0    # "dataIndex":I
    .restart local v3    # "length":I
    .restart local v4    # "offset":I
    :cond_2
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@31
    invoke-virtual {v8, p2, v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    #@34
    goto :goto_0

    #@35
    .line 524
    .end local v0    # "dataIndex":I
    .end local v3    # "length":I
    .end local v4    # "offset":I
    :cond_3
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_firstch(I)I

    #@38
    move-result v1

    #@39
    .line 526
    .local v1, "firstChild":I
    if-eq v10, v1, :cond_9

    #@3b
    .line 528
    const/4 v4, -0x1

    #@3c
    .line 529
    .restart local v4    # "offset":I
    const/4 v3, 0x0

    #@3d
    .line 530
    .restart local v3    # "length":I
    move v5, v2

    #@3e
    .line 532
    .local v5, "startNode":I
    move v2, v1

    #@3f
    .line 535
    :cond_4
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    #@42
    move-result v7

    #@43
    .line 537
    invoke-direct {p0, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    #@46
    move-result v8

    #@47
    if-eqz v8, :cond_6

    #@49
    .line 539
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    #@4c
    move-result v0

    #@4d
    .line 541
    .restart local v0    # "dataIndex":I
    if-ne v10, v4, :cond_5

    #@4f
    .line 543
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@51
    invoke-virtual {v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@54
    move-result v4

    #@55
    .line 546
    :cond_5
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@57
    add-int/lit8 v9, v0, 0x1

    #@59
    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@5c
    move-result v8

    #@5d
    add-int/2addr v3, v8

    #@5e
    .line 549
    .end local v0    # "dataIndex":I
    :cond_6
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNextNodeIdentity(I)I

    #@61
    move-result v2

    #@62
    .line 550
    if-eq v10, v2, :cond_7

    #@64
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_parent(I)I

    #@67
    move-result v8

    #@68
    if-ge v8, v5, :cond_4

    #@6a
    .line 552
    :cond_7
    if-lez v3, :cond_1

    #@6c
    .line 554
    if-eqz p3, :cond_8

    #@6e
    .line 555
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@70
    invoke-virtual {v8, p2, v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    #@73
    goto :goto_0

    #@74
    .line 557
    :cond_8
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@76
    invoke-virtual {v8, p2, v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    #@79
    goto :goto_0

    #@7a
    .line 560
    .end local v3    # "length":I
    .end local v4    # "offset":I
    .end local v5    # "startNode":I
    :cond_9
    const/4 v8, 0x1

    #@7b
    if-eq v7, v8, :cond_1

    #@7d
    .line 562
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    #@80
    move-result v0

    #@81
    .line 564
    .restart local v0    # "dataIndex":I
    if-gez v0, :cond_a

    #@83
    .line 566
    neg-int v0, v0

    #@84
    .line 567
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@86
    add-int/lit8 v9, v0, 0x1

    #@88
    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@8b
    move-result v0

    #@8c
    .line 570
    :cond_a
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@8e
    invoke-virtual {v8, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@91
    move-result-object v6

    #@92
    .line 572
    .local v6, "str":Ljava/lang/String;
    if-eqz p3, :cond_b

    #@94
    .line 573
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    #@97
    move-result-object v8

    #@98
    .line 574
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@9b
    move-result v9

    #@9c
    .line 573
    invoke-static {v8, v11, v9, p2}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V

    #@9f
    goto :goto_0

    #@a0
    .line 576
    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    #@a3
    move-result-object v8

    #@a4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@a7
    move-result v9

    #@a8
    invoke-interface {p2, v8, v11, v9}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@ab
    goto :goto_0
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .locals 4
    .param p1, "nodeHandle"    # I
    .param p2, "ch"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 737
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_walker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    #@3
    .line 738
    .local v1, "treeWalker":Lorg/apache/xml/dtm/ref/DTMTreeWalker;
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->getcontentHandler()Lorg/xml/sax/ContentHandler;

    #@6
    move-result-object v0

    #@7
    .line 740
    .local v0, "prevCH":Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_0

    #@9
    .line 742
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    #@b
    .end local v1    # "treeWalker":Lorg/apache/xml/dtm/ref/DTMTreeWalker;
    invoke-direct {v1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;-><init>()V

    #@e
    .line 745
    .restart local v1    # "treeWalker":Lorg/apache/xml/dtm/ref/DTMTreeWalker;
    :cond_0
    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    #@11
    .line 746
    invoke-virtual {v1, p0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setDTM(Lorg/apache/xml/dtm/DTM;)V

    #@14
    .line 750
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->traverse(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    .line 754
    invoke-virtual {v1, v3}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    #@1a
    .line 734
    return-void

    #@1b
    .line 753
    :catchall_0
    move-exception v2

    #@1c
    .line 754
    invoke-virtual {v1, v3}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    #@1f
    .line 753
    throw v2
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2247
    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2430
    const/4 v0, 0x3

    #@1
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    #@3
    .line 2428
    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2363
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    #@3
    .line 2360
    return-void
.end method

.method public endDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    .line 1715
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    #@6
    .line 1717
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@8
    invoke-virtual {v0, v2, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@b
    .line 1719
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@d
    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@10
    move-result v0

    #@11
    const/4 v1, -0x2

    #@12
    if-ne v0, v1, :cond_0

    #@14
    .line 1720
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@16
    invoke-virtual {v0, v2, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@19
    .line 1722
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@1b
    if-eq v2, v0, :cond_1

    #@1d
    .line 1723
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1f
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@21
    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@24
    .line 1725
    :cond_1
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@26
    .line 1726
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@28
    .line 1727
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@2a
    .line 1729
    const/4 v0, 0x1

    #@2b
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    #@2d
    .line 1732
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    #@2f
    .line 1710
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 2027
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    #@4
    .line 2031
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@6
    const/4 v3, 0x1

    #@7
    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    #@a
    .line 2034
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@c
    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@f
    move-result v1

    #@10
    .line 2035
    .local v1, "topContextIndex":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@12
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@15
    move-result v2

    #@16
    if-eq v1, v2, :cond_0

    #@18
    .line 2036
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@1a
    invoke-virtual {v2, v1}, Ljava/util/Vector;->setSize(I)V

    #@1d
    .line 2039
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@1f
    .line 2041
    .local v0, "lastNode":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@21
    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->pop()I

    #@24
    move-result v2

    #@25
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@27
    .line 2044
    if-ne v4, v0, :cond_1

    #@29
    .line 2045
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2b
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@2d
    invoke-virtual {v2, v4, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@30
    .line 2049
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->popShouldStripWhitespace()V

    #@33
    .line 2021
    return-void

    #@34
    .line 2047
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@36
    invoke-virtual {v2, v4, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@39
    goto :goto_0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2401
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1779
    if-nez p1, :cond_0

    #@2
    .line 1780
    const-string/jumbo p1, ""

    #@5
    .line 1782
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@7
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@a
    move-result v1

    #@b
    add-int/lit8 v0, v1, -0x1

    #@d
    .line 1786
    .local v0, "index":I
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    #@14
    move-result v0

    #@15
    .line 1787
    if-ltz v0, :cond_2

    #@17
    and-int/lit8 v1, v0, 0x1

    #@19
    const/4 v2, 0x1

    #@1a
    if-eq v1, v2, :cond_1

    #@1c
    .line 1790
    :cond_2
    const/4 v1, -0x1

    #@1d
    if-le v0, v1, :cond_3

    #@1f
    .line 1792
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@21
    const-string/jumbo v2, "%@$#^@#"

    #@24
    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@27
    .line 1793
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@29
    const-string/jumbo v2, "%@$#^@#"

    #@2c
    add-int/lit8 v3, v0, 0x1

    #@2e
    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@31
    .line 1774
    :cond_3
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2205
    throw p1
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2316
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2227
    throw p1
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "nodeHandle"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 1189
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getFirstAttribute(I)I

    #@4
    move-result v0

    #@5
    .local v0, "attrH":I
    :goto_0
    if-eq v5, v0, :cond_3

    #@7
    .line 1192
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 1193
    .local v1, "attrNS":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getLocalName(I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 1194
    .local v2, "attrName":Ljava/lang/String;
    if-eq p2, v1, :cond_0

    #@11
    .line 1195
    if-eqz p2, :cond_1

    #@13
    .line 1196
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    .line 1198
    :goto_1
    if-eqz v3, :cond_2

    #@19
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_2

    #@1f
    .line 1199
    return v0

    #@20
    .line 1194
    :cond_0
    const/4 v3, 0x1

    #@21
    .local v3, "nsMatch":Z
    goto :goto_1

    #@22
    .line 1195
    .end local v3    # "nsMatch":Z
    :cond_1
    const/4 v3, 0x0

    #@23
    .restart local v3    # "nsMatch":Z
    goto :goto_1

    #@24
    .line 1190
    .end local v3    # "nsMatch":Z
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNextAttribute(I)I

    #@27
    move-result v0

    #@28
    goto :goto_0

    #@29
    .line 1202
    .end local v1    # "attrNS":Ljava/lang/String;
    .end local v2    # "attrName":Ljava/lang/String;
    :cond_3
    return v5
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@2
    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 407
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@8
    check-cast v0, Lorg/xml/sax/ContentHandler;

    #@a
    return-object v0

    #@b
    .line 409
    :cond_0
    return-object p0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 0

    #@0
    .prologue
    .line 448
    return-object p0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 0

    #@0
    .prologue
    .line 468
    return-object p0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1217
    const-string/jumbo v0, "ER_METHOD_NOT_SUPPORTED"

    #@4
    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->error(Ljava/lang/String;)V

    #@b
    .line 1219
    return-object v1
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 697
    const-string/jumbo v0, "ER_METHOD_NOT_SUPPORTED"

    #@4
    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->error(Ljava/lang/String;)V

    #@b
    .line 699
    return-object v1
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 3
    .param p1, "elementId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1364
    const/4 v1, 0x1

    #@1
    .line 1368
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/Integer;

    #@9
    .line 1370
    .local v0, "intObj":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@b
    .line 1371
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@e
    move-result v2

    #@f
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeHandle(I)I

    #@12
    move-result v2

    #@13
    return v2

    #@14
    .line 1373
    :cond_0
    if-eqz v1, :cond_1

    #@16
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    #@18
    if-eqz v2, :cond_2

    #@1a
    .line 1380
    :cond_1
    const/4 v2, -0x1

    #@1b
    return v2

    #@1c
    .line 1376
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    #@1f
    move-result v1

    #@20
    .line 1378
    .local v1, "isMore":Z
    if-nez v0, :cond_1

    #@22
    goto :goto_0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 0

    #@0
    .prologue
    .line 438
    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    #@0
    .prologue
    .line 458
    return-object p0
.end method

.method public getFixedNames(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 2511
    sget-object v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getIdForNamespace(Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1465
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@2
    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 426
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@8
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    #@a
    return-object v0

    #@b
    .line 428
    :cond_0
    return-object p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1042
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@2
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_exptype(I)I

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1236
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@2
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_exptype(I)I

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespace(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1478
    const-string/jumbo v1, ""

    #@3
    .line 1479
    .local v1, "uri":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@5
    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@8
    move-result v2

    #@9
    add-int/lit8 v0, v2, -0x1

    #@b
    .line 1481
    .local v0, "prefixIndex":I
    if-nez p1, :cond_0

    #@d
    .line 1482
    const-string/jumbo p1, ""

    #@10
    .line 1486
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    #@17
    move-result v0

    #@18
    .line 1487
    if-ltz v0, :cond_1

    #@1a
    and-int/lit8 v2, v0, 0x1

    #@1c
    const/4 v3, 0x1

    #@1d
    if-eq v2, v3, :cond_0

    #@1f
    .line 1489
    :cond_1
    const/4 v2, -0x1

    #@20
    if-le v0, v2, :cond_2

    #@22
    .line 1491
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@24
    add-int/lit8 v3, v0, 0x1

    #@26
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    .end local v1    # "uri":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    #@2c
    .line 1495
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method protected getNextNodeIdentity(I)I
    .locals 1
    .param p1, "identity"    # I

    #@0
    .prologue
    .line 712
    add-int/lit8 p1, p1, 0x1

    #@2
    .line 714
    :goto_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 716
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 717
    const/4 v0, -0x1

    #@b
    return v0

    #@c
    .line 719
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    #@f
    goto :goto_0

    #@10
    .line 722
    :cond_1
    return p1
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 6
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getExpandedTypeID(I)I

    #@3
    move-result v0

    #@4
    .line 596
    .local v0, "expandedTypeID":I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@6
    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    #@9
    move-result v1

    #@a
    .line 598
    .local v1, "namespaceID":I
    if-nez v1, :cond_3

    #@c
    .line 602
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNodeType(I)S

    #@f
    move-result v3

    #@10
    .line 604
    .local v3, "type":I
    const/16 v4, 0xd

    #@12
    if-ne v3, v4, :cond_1

    #@14
    .line 606
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@16
    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    if-nez v4, :cond_0

    #@1c
    .line 607
    const-string/jumbo v4, "xmlns"

    #@1f
    return-object v4

    #@20
    .line 609
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "xmlns:"

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@2e
    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    return-object v4

    #@3b
    .line 611
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@3d
    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    #@40
    move-result v4

    #@41
    if-nez v4, :cond_2

    #@43
    .line 613
    sget-object v4, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    #@45
    aget-object v4, v4, v3

    #@47
    return-object v4

    #@48
    .line 616
    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@4a
    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    return-object v4

    #@4f
    .line 620
    .end local v3    # "type":I
    :cond_3
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@51
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    #@54
    move-result v5

    #@55
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@58
    move-result v2

    #@59
    .line 622
    .local v2, "qnameIndex":I
    if-gez v2, :cond_4

    #@5b
    .line 624
    neg-int v2, v2

    #@5c
    .line 625
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@5e
    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@61
    move-result v2

    #@62
    .line 628
    :cond_4
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@64
    invoke-virtual {v4, v2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    return-object v4
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 6
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 643
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getExpandedTypeID(I)I

    #@3
    move-result v0

    #@4
    .line 644
    .local v0, "expandedTypeID":I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@6
    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    #@9
    move-result v2

    #@a
    .line 646
    .local v2, "namespaceID":I
    if-nez v2, :cond_1

    #@c
    .line 648
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@e
    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 650
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    #@14
    .line 651
    const-string/jumbo v4, ""

    #@17
    return-object v4

    #@18
    .line 653
    :cond_0
    return-object v1

    #@19
    .line 657
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1b
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    #@1e
    move-result v5

    #@1f
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@22
    move-result v3

    #@23
    .line 659
    .local v3, "qnameIndex":I
    if-gez v3, :cond_2

    #@25
    .line 661
    neg-int v3, v3

    #@26
    .line 662
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@28
    invoke-virtual {v4, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@2b
    move-result v3

    #@2c
    .line 665
    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@2e
    invoke-virtual {v4, v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    return-object v4
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 7
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1001
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    #@3
    move-result v1

    #@4
    .line 1002
    .local v1, "identity":I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    #@7
    move-result v4

    #@8
    .line 1004
    .local v4, "type":I
    invoke-direct {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_0

    #@e
    .line 1006
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    #@11
    move-result v0

    #@12
    .line 1007
    .local v0, "dataIndex":I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@14
    invoke-virtual {v5, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@17
    move-result v3

    #@18
    .line 1008
    .local v3, "offset":I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1a
    add-int/lit8 v6, v0, 0x1

    #@1c
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@1f
    move-result v2

    #@20
    .line 1011
    .local v2, "length":I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@22
    invoke-virtual {v5, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    return-object v5

    #@27
    .line 1013
    .end local v0    # "dataIndex":I
    .end local v2    # "length":I
    .end local v3    # "offset":I
    :cond_0
    const/4 v5, 0x1

    #@28
    if-eq v5, v4, :cond_1

    #@2a
    const/16 v5, 0xb

    #@2c
    if-ne v5, v4, :cond_2

    #@2e
    .line 1016
    :cond_1
    const/4 v5, 0x0

    #@2f
    return-object v5

    #@30
    .line 1014
    :cond_2
    const/16 v5, 0x9

    #@32
    if-eq v5, v4, :cond_1

    #@34
    .line 1020
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    #@37
    move-result v0

    #@38
    .line 1022
    .restart local v0    # "dataIndex":I
    if-gez v0, :cond_3

    #@3a
    .line 1024
    neg-int v0, v0

    #@3b
    .line 1025
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@3d
    add-int/lit8 v6, v0, 0x1

    #@3f
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@42
    move-result v0

    #@43
    .line 1028
    :cond_3
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@45
    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    return-object v5
.end method

.method public getNumberOfNodes()I
    .locals 1

    #@0
    .prologue
    .line 765
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    #@2
    return v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 7
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1140
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    #@4
    move-result v0

    #@5
    .line 1141
    .local v0, "identity":I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    #@8
    move-result v3

    #@9
    .line 1143
    .local v3, "type":I
    const/4 v4, 0x1

    #@a
    if-ne v4, v3, :cond_1

    #@c
    .line 1145
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    #@f
    move-result v1

    #@10
    .line 1147
    .local v1, "prefixIndex":I
    if-nez v1, :cond_0

    #@12
    .line 1148
    const-string/jumbo v4, ""

    #@15
    return-object v4

    #@16
    .line 1151
    :cond_0
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@18
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 1153
    .local v2, "qname":Ljava/lang/String;
    invoke-virtual {p0, v2, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    return-object v4

    #@21
    .line 1156
    .end local v1    # "prefixIndex":I
    .end local v2    # "qname":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x2

    #@22
    if-ne v4, v3, :cond_2

    #@24
    .line 1158
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    #@27
    move-result v1

    #@28
    .line 1160
    .restart local v1    # "prefixIndex":I
    if-gez v1, :cond_2

    #@2a
    .line 1162
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2c
    neg-int v5, v1

    #@2d
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@30
    move-result v1

    #@31
    .line 1164
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@33
    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    .line 1166
    .restart local v2    # "qname":Ljava/lang/String;
    invoke-virtual {p0, v2, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    return-object v4

    #@3c
    .line 1170
    .end local v1    # "prefixIndex":I
    .end local v2    # "qname":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    #@3f
    return-object v4
.end method

.method public getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x3a

    #@2
    const/4 v4, 0x0

    #@3
    .line 1396
    const/4 v2, -0x1

    #@4
    .line 1398
    .local v2, "uriIndex":I
    if-eqz p2, :cond_6

    #@6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    if-lez v3, :cond_6

    #@c
    .line 1403
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@e
    add-int/lit8 v2, v2, 0x1

    #@10
    invoke-virtual {v3, p2, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    #@13
    move-result v2

    #@14
    .line 1404
    and-int/lit8 v3, v2, 0x1

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 1406
    if-ltz v2, :cond_1

    #@1a
    .line 1408
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@1c
    add-int/lit8 v4, v2, -0x1

    #@1e
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Ljava/lang/String;

    #@24
    .line 1451
    :goto_0
    return-object v1

    #@25
    .line 1410
    :cond_1
    if-eqz p1, :cond_5

    #@27
    .line 1412
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    #@2a
    move-result v0

    #@2b
    .line 1414
    .local v0, "indexOfNSSep":I
    const-string/jumbo v3, "xmlns"

    #@2e
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_2

    #@34
    .line 1415
    const-string/jumbo v1, ""

    #@37
    .local v1, "prefix":Ljava/lang/String;
    goto :goto_0

    #@38
    .line 1416
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "xmlns:"

    #@3b
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_3

    #@41
    .line 1417
    add-int/lit8 v3, v0, 0x1

    #@43
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .restart local v1    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@48
    .line 1419
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_3
    if-lez v0, :cond_4

    #@4a
    .line 1420
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    .restart local v1    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@4f
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    #@50
    .local v1, "prefix":Ljava/lang/String;
    goto :goto_0

    #@51
    .line 1424
    .end local v0    # "indexOfNSSep":I
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    #@52
    .restart local v1    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@53
    .line 1427
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_6
    if-eqz p1, :cond_a

    #@55
    .line 1429
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    #@58
    move-result v0

    #@59
    .line 1431
    .restart local v0    # "indexOfNSSep":I
    if-lez v0, :cond_8

    #@5b
    .line 1433
    const-string/jumbo v3, "xmlns:"

    #@5e
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_7

    #@64
    .line 1434
    add-int/lit8 v3, v0, 0x1

    #@66
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@69
    move-result-object v1

    #@6a
    .local v1, "prefix":Ljava/lang/String;
    goto :goto_0

    #@6b
    .line 1436
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    .restart local v1    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@70
    .line 1440
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_8
    const-string/jumbo v3, "xmlns"

    #@73
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v3

    #@77
    if-eqz v3, :cond_9

    #@79
    .line 1441
    const-string/jumbo v1, ""

    #@7c
    .restart local v1    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@7d
    .line 1443
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    #@7e
    .local v1, "prefix":Ljava/lang/String;
    goto :goto_0

    #@7f
    .line 1448
    .end local v0    # "indexOfNSSep":I
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_a
    const/4 v1, 0x0

    #@80
    .restart local v1    # "prefix":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .locals 5
    .param p1, "node"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2488
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2491
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    #@9
    move-result p1

    #@a
    .line 2494
    new-instance v0, Lorg/apache/xml/dtm/ref/NodeLocator;

    #@c
    .line 2495
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    #@e
    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 2496
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    #@14
    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    #@17
    move-result v2

    #@18
    .line 2497
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    #@1a
    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    #@1d
    move-result v3

    #@1e
    .line 2494
    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/xml/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    #@21
    return-object v0

    #@22
    .line 2499
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 2501
    new-instance v0, Lorg/apache/xml/dtm/ref/NodeLocator;

    #@28
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    #@2a
    invoke-interface {v1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v4, v1, v2, v2}, Lorg/apache/xml/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    #@31
    return-object v0

    #@32
    .line 2503
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    #@34
    if-eqz v0, :cond_2

    #@36
    .line 2505
    new-instance v0, Lorg/apache/xml/dtm/ref/NodeLocator;

    #@38
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    #@3a
    invoke-direct {v0, v4, v1, v2, v2}, Lorg/apache/xml/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    #@3d
    return-object v0

    #@3e
    .line 2507
    :cond_2
    return-object v4
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .locals 10
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    .line 1250
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    #@4
    move-result v2

    #@5
    .line 1252
    .local v2, "identity":I
    if-ne v2, v9, :cond_0

    #@7
    .line 1253
    const/4 v6, -0x1

    #@8
    .line 1257
    .local v6, "type":I
    :goto_0
    invoke-direct {p0, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    #@b
    move-result v7

    #@c
    if-eqz v7, :cond_1

    #@e
    .line 1259
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    #@11
    move-result v0

    #@12
    .line 1260
    .local v0, "dataIndex":I
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@14
    invoke-virtual {v7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@17
    move-result v4

    #@18
    .line 1261
    .local v4, "offset":I
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1a
    add-int/lit8 v8, v0, 0x1

    #@1c
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@1f
    move-result v3

    #@20
    .line 1263
    .local v3, "length":I
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@22
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@24
    invoke-virtual {v7, v8, v4, v3}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    #@27
    move-result-object v7

    #@28
    return-object v7

    #@29
    .line 1255
    .end local v0    # "dataIndex":I
    .end local v3    # "length":I
    .end local v4    # "offset":I
    .end local v6    # "type":I
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    #@2c
    move-result v6

    #@2d
    .restart local v6    # "type":I
    goto :goto_0

    #@2e
    .line 1267
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_firstch(I)I

    #@31
    move-result v1

    #@32
    .line 1269
    .local v1, "firstChild":I
    if-eq v9, v1, :cond_6

    #@34
    .line 1271
    const/4 v4, -0x1

    #@35
    .line 1272
    .restart local v4    # "offset":I
    const/4 v3, 0x0

    #@36
    .line 1273
    .restart local v3    # "length":I
    move v5, v2

    #@37
    .line 1275
    .local v5, "startNode":I
    move v2, v1

    #@38
    .line 1278
    :cond_2
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    #@3b
    move-result v6

    #@3c
    .line 1280
    invoke-direct {p0, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    #@3f
    move-result v7

    #@40
    if-eqz v7, :cond_4

    #@42
    .line 1282
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    #@45
    move-result v0

    #@46
    .line 1284
    .restart local v0    # "dataIndex":I
    if-ne v9, v4, :cond_3

    #@48
    .line 1286
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@4a
    invoke-virtual {v7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@4d
    move-result v4

    #@4e
    .line 1289
    :cond_3
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@50
    add-int/lit8 v8, v0, 0x1

    #@52
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@55
    move-result v7

    #@56
    add-int/2addr v3, v7

    #@57
    .line 1292
    .end local v0    # "dataIndex":I
    :cond_4
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNextNodeIdentity(I)I

    #@5a
    move-result v2

    #@5b
    .line 1293
    if-eq v9, v2, :cond_5

    #@5d
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_parent(I)I

    #@60
    move-result v7

    #@61
    if-ge v7, v5, :cond_2

    #@63
    .line 1295
    :cond_5
    if-lez v3, :cond_8

    #@65
    .line 1297
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@67
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@69
    invoke-virtual {v7, v8, v4, v3}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    #@6c
    move-result-object v7

    #@6d
    return-object v7

    #@6e
    .line 1300
    .end local v3    # "length":I
    .end local v4    # "offset":I
    .end local v5    # "startNode":I
    :cond_6
    const/4 v7, 0x1

    #@6f
    if-eq v6, v7, :cond_8

    #@71
    .line 1302
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    #@74
    move-result v0

    #@75
    .line 1304
    .restart local v0    # "dataIndex":I
    if-gez v0, :cond_7

    #@77
    .line 1306
    neg-int v0, v0

    #@78
    .line 1307
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@7a
    add-int/lit8 v8, v0, 0x1

    #@7c
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@7f
    move-result v0

    #@80
    .line 1309
    :cond_7
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@82
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@84
    invoke-virtual {v8, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@87
    move-result-object v8

    #@88
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    #@8b
    move-result-object v7

    #@8c
    return-object v7

    #@8d
    .line 1313
    .end local v0    # "dataIndex":I
    :cond_8
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@8f
    invoke-virtual {v7}, Lorg/apache/xml/utils/XMLStringFactory;->emptystr()Lorg/apache/xml/utils/XMLString;

    #@92
    move-result-object v7

    #@93
    return-object v7
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1082
    const-string/jumbo v4, ""

    #@3
    .line 1084
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    #@5
    if-nez v5, :cond_0

    #@7
    .line 1085
    return-object v4

    #@8
    .line 1087
    :cond_0
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    #@a
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    #@d
    move-result v2

    #@e
    .line 1089
    .local v2, "n":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@11
    .line 1091
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    #@13
    add-int/lit8 v6, v1, 0x3

    #@15
    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    .line 1093
    .local v0, "ename":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@1d
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_2

    #@23
    .line 1095
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    #@25
    add-int/lit8 v6, v1, 0x2

    #@27
    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Ljava/lang/String;

    #@2d
    .line 1098
    .local v3, "nname":Ljava/lang/String;
    if-eqz v3, :cond_1

    #@2f
    .line 1110
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    #@31
    add-int/lit8 v6, v1, 0x1

    #@33
    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    .end local v4    # "url":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    #@39
    .line 1112
    .restart local v4    # "url":Ljava/lang/String;
    if-nez v4, :cond_1

    #@3b
    .line 1114
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    #@3d
    add-int/lit8 v6, v1, 0x0

    #@3f
    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@42
    move-result-object v4

    #@43
    .end local v4    # "url":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    #@45
    .line 1122
    .end local v0    # "ename":Ljava/lang/String;
    .end local v3    # "nname":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_1
    return-object v4

    #@46
    .line 1089
    .restart local v0    # "ename":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x4

    #@48
    goto :goto_0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2109
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->characters([CII)V

    #@3
    .line 2104
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2294
    return-void
.end method

.method public isAttributeSpecified(I)Z
    .locals 1
    .param p1, "attributeHandle"    # I

    #@0
    .prologue
    .line 682
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isWhitespace(I)Z
    .locals 7
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1325
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    #@3
    move-result v1

    #@4
    .line 1327
    .local v1, "identity":I
    const/4 v5, -0x1

    #@5
    if-ne v1, v5, :cond_0

    #@7
    .line 1328
    const/4 v4, -0x1

    #@8
    .line 1332
    .local v4, "type":I
    :goto_0
    invoke-direct {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 1334
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    #@11
    move-result v0

    #@12
    .line 1335
    .local v0, "dataIndex":I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@14
    invoke-virtual {v5, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@17
    move-result v3

    #@18
    .line 1336
    .local v3, "offset":I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1a
    add-int/lit8 v6, v0, 0x1

    #@1c
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@1f
    move-result v2

    #@20
    .line 1338
    .local v2, "length":I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@22
    invoke-virtual {v5, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    #@25
    move-result v5

    #@26
    return v5

    #@27
    .line 1330
    .end local v0    # "dataIndex":I
    .end local v2    # "length":I
    .end local v3    # "offset":I
    .end local v4    # "type":I
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    #@2a
    move-result v4

    #@2b
    .restart local v4    # "type":I
    goto :goto_0

    #@2c
    .line 1340
    :cond_1
    const/4 v5, 0x0

    #@2d
    return v5
.end method

.method public migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 6
    .param p1, "manager"    # Lorg/apache/xml/dtm/DTMManager;

    #@0
    .prologue
    .line 953
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->migrateTo(Lorg/apache/xml/dtm/DTMManager;)V

    #@3
    .line 957
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@5
    invoke-virtual {v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@8
    move-result v3

    #@9
    .line 958
    .local v3, "numDTMs":I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@b
    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    #@e
    move-result v0

    #@f
    .line 959
    .local v0, "dtmId":I
    const/4 v2, 0x0

    #@10
    .line 960
    .local v2, "nodeIndex":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@13
    .line 962
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@15
    shl-int/lit8 v5, v0, 0x10

    #@17
    invoke-virtual {v4, v5, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@1a
    .line 963
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@1c
    invoke-virtual {v4, p0, v0, v2}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    #@1f
    .line 964
    add-int/lit8 v0, v0, 0x1

    #@21
    .line 965
    const/high16 v4, 0x10000

    #@23
    add-int/2addr v2, v4

    #@24
    .line 960
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 952
    :cond_0
    return-void
.end method

.method public needsTwoThreads()Z
    .locals 1

    #@0
    .prologue
    .line 479
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method protected nextNode()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 777
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 778
    return v2

    #@7
    .line 780
    :cond_0
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 782
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    #@e
    .line 784
    return v2

    #@f
    .line 787
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@11
    invoke-interface {v1, v3}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->deliverMoreNodes(Z)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    .line 796
    .local v0, "gotMore":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    #@17
    if-nez v1, :cond_4

    #@19
    .line 798
    instance-of v1, v0, Ljava/lang/RuntimeException;

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 800
    check-cast v0, Ljava/lang/RuntimeException;

    #@1f
    .end local v0    # "gotMore":Ljava/lang/Object;
    throw v0

    #@20
    .line 802
    .restart local v0    # "gotMore":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Exception;

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 804
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@26
    check-cast v0, Ljava/lang/Exception;

    #@28
    .end local v0    # "gotMore":Ljava/lang/Object;
    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@2b
    throw v1

    #@2c
    .line 807
    .restart local v0    # "gotMore":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    #@2f
    .line 809
    return v2

    #@30
    .line 814
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@32
    if-eq v0, v1, :cond_5

    #@34
    .line 818
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    #@37
    .line 823
    :cond_5
    return v3
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1602
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x7

    #@1
    .line 2133
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    #@4
    .line 2135
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {v0, v3, p1, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    #@a
    move-result v2

    #@b
    .line 2137
    .local v2, "exName":I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@d
    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@10
    move-result v5

    #@11
    .line 2140
    .local v5, "dataIndex":I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@13
    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@16
    move-result v3

    #@17
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@19
    .line 2141
    const/4 v6, 0x0

    #@1a
    move-object v0, p0

    #@1b
    .line 2139
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@21
    .line 2128
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1577
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    #@0
    .prologue
    .line 1676
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    #@2
    .line 1677
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    #@8
    .line 1674
    return-void
.end method

.method public setIDAttribute(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "elem"    # I

    #@0
    .prologue
    .line 1506
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    #@2
    new-instance v1, Ljava/lang/Integer;

    #@4
    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    #@7
    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 1504
    return-void
.end method

.method public setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .locals 0
    .param p1, "incrementalSAXSource"    # Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@0
    .prologue
    .line 378
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@2
    .line 381
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@5
    .line 382
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    #@8
    .line 383
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    #@b
    .line 368
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2474
    return-void
.end method

.method protected setSourceLocation()V
    .locals 3

    #@0
    .prologue
    .line 974
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    #@2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    #@4
    invoke-interface {v2}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    #@b
    .line 975
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    #@d
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    #@f
    invoke-interface {v2}, Lorg/xml/sax/Locator;->getLineNumber()I

    #@12
    move-result v2

    #@13
    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    #@16
    .line 976
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    #@18
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    #@1a
    invoke-interface {v2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    #@21
    .line 981
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    #@23
    invoke-virtual {v1}, Lorg/apache/xml/utils/StringVector;->size()I

    #@26
    move-result v1

    #@27
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    #@29
    if-eq v1, v2, :cond_0

    #@2b
    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "CODING ERROR in Source Location: "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    const-string/jumbo v2, " != "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 983
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    #@46
    invoke-virtual {v2}, Lorg/apache/xml/utils/StringVector;->size()I

    #@49
    move-result v2

    #@4a
    .line 982
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    .line 984
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@54
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@57
    .line 985
    new-instance v1, Ljava/lang/RuntimeException;

    #@59
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v1

    #@5d
    .line 973
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setUseSourceLocation(Z)V
    .locals 0
    .param p1, "useSourceLocation"    # Z

    #@0
    .prologue
    .line 299
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    #@2
    .line 297
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2157
    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2419
    const/4 v0, 0x4

    #@1
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    #@3
    .line 2417
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2351
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    #@3
    .line 2348
    return-void
.end method

.method public startDocument()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v1, 0x9

    #@2
    const/4 v3, -0x1

    #@3
    .line 1694
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@5
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    #@8
    move-result v2

    #@9
    .line 1695
    const/4 v5, 0x0

    #@a
    const/4 v6, 0x1

    #@b
    move-object v0, p0

    #@c
    move v4, v3

    #@d
    .line 1693
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    #@10
    move-result v7

    #@11
    .line 1697
    .local v7, "doc":I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@13
    invoke-virtual {v0, v7}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@16
    .line 1698
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@18
    .line 1700
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@1a
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@1c
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@23
    .line 1687
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 29
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1876
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    #@3
    .line 1878
    move-object/from16 v0, p0

    #@5
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@7
    const/4 v4, 0x1

    #@8
    move-object/from16 v0, p1

    #@a
    move-object/from16 v1, p2

    #@c
    invoke-virtual {v3, v0, v1, v4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    #@f
    move-result v5

    #@10
    .line 1879
    .local v5, "exName":I
    move-object/from16 v0, p0

    #@12
    move-object/from16 v1, p3

    #@14
    move-object/from16 v2, p1

    #@16
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v24

    #@1a
    .line 1880
    .local v24, "prefix":Ljava/lang/String;
    if-eqz v24, :cond_2

    #@1c
    .line 1881
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@20
    move-object/from16 v0, p3

    #@22
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@25
    move-result v8

    #@26
    .line 1883
    .local v8, "prefixIndex":I
    :goto_0
    const/4 v4, 0x1

    #@27
    .line 1884
    move-object/from16 v0, p0

    #@29
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@2b
    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@2e
    move-result v6

    #@2f
    move-object/from16 v0, p0

    #@31
    iget v7, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@33
    const/4 v9, 0x1

    #@34
    move-object/from16 v3, p0

    #@36
    .line 1883
    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    #@39
    move-result v12

    #@3a
    .line 1886
    .local v12, "elemNode":I
    move-object/from16 v0, p0

    #@3c
    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_indexing:Z

    #@3e
    if-eqz v3, :cond_0

    #@40
    .line 1887
    move-object/from16 v0, p0

    #@42
    invoke-virtual {v0, v5, v12}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->indexNode(II)V

    #@45
    .line 1890
    :cond_0
    move-object/from16 v0, p0

    #@47
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@49
    invoke-virtual {v3, v12}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@4c
    .line 1892
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@50
    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@53
    move-result v26

    #@54
    .line 1893
    .local v26, "startDecls":I
    move-object/from16 v0, p0

    #@56
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@58
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@5b
    move-result v23

    #@5c
    .line 1894
    .local v23, "nDecls":I
    const/4 v13, -0x1

    #@5d
    .line 1896
    .local v13, "prev":I
    move-object/from16 v0, p0

    #@5f
    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    #@61
    if-nez v3, :cond_1

    #@63
    .line 1899
    const-string/jumbo v24, "xml"

    #@66
    .line 1900
    const-string/jumbo v20, "http://www.w3.org/XML/1998/namespace"

    #@69
    .line 1901
    .local v20, "declURL":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6b
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@6d
    const/16 v4, 0xd

    #@6f
    const/4 v6, 0x0

    #@70
    move-object/from16 v0, v24

    #@72
    invoke-virtual {v3, v6, v0, v4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    #@75
    move-result v5

    #@76
    .line 1902
    move-object/from16 v0, p0

    #@78
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@7a
    move-object/from16 v0, v20

    #@7c
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@7f
    move-result v14

    #@80
    .line 1903
    .local v14, "val":I
    const/16 v10, 0xd

    #@82
    .line 1904
    const/4 v15, 0x0

    #@83
    move-object/from16 v9, p0

    #@85
    move v11, v5

    #@86
    .line 1903
    invoke-virtual/range {v9 .. v15}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    #@89
    move-result v13

    #@8a
    .line 1905
    const/4 v3, 0x1

    #@8b
    move-object/from16 v0, p0

    #@8d
    iput-boolean v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    #@8f
    .line 1908
    .end local v14    # "val":I
    .end local v20    # "declURL":Ljava/lang/String;
    :cond_1
    move/from16 v21, v26

    #@91
    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    #@93
    move/from16 v1, v23

    #@95
    if-ge v0, v1, :cond_4

    #@97
    .line 1910
    move-object/from16 v0, p0

    #@99
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@9b
    move/from16 v0, v21

    #@9d
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@a0
    move-result-object v24

    #@a1
    .end local v24    # "prefix":Ljava/lang/String;
    check-cast v24, Ljava/lang/String;

    #@a3
    .line 1912
    .restart local v24    # "prefix":Ljava/lang/String;
    if-nez v24, :cond_3

    #@a5
    .line 1908
    :goto_2
    add-int/lit8 v21, v21, 0x2

    #@a7
    goto :goto_1

    #@a8
    .line 1881
    .end local v8    # "prefixIndex":I
    .end local v12    # "elemNode":I
    .end local v13    # "prev":I
    .end local v21    # "i":I
    .end local v23    # "nDecls":I
    .end local v26    # "startDecls":I
    :cond_2
    const/4 v8, 0x0

    #@a9
    .restart local v8    # "prefixIndex":I
    goto/16 :goto_0

    #@ab
    .line 1915
    .restart local v12    # "elemNode":I
    .restart local v13    # "prev":I
    .restart local v21    # "i":I
    .restart local v23    # "nDecls":I
    .restart local v26    # "startDecls":I
    :cond_3
    move-object/from16 v0, p0

    #@ad
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@af
    add-int/lit8 v4, v21, 0x1

    #@b1
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@b4
    move-result-object v20

    #@b5
    check-cast v20, Ljava/lang/String;

    #@b7
    .line 1917
    .restart local v20    # "declURL":Ljava/lang/String;
    move-object/from16 v0, p0

    #@b9
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@bb
    const/16 v4, 0xd

    #@bd
    const/4 v6, 0x0

    #@be
    move-object/from16 v0, v24

    #@c0
    invoke-virtual {v3, v6, v0, v4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    #@c3
    move-result v5

    #@c4
    .line 1919
    move-object/from16 v0, p0

    #@c6
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@c8
    move-object/from16 v0, v20

    #@ca
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@cd
    move-result v14

    #@ce
    .line 1921
    .restart local v14    # "val":I
    const/16 v10, 0xd

    #@d0
    .line 1922
    const/4 v15, 0x0

    #@d1
    move-object/from16 v9, p0

    #@d3
    move v11, v5

    #@d4
    .line 1921
    invoke-virtual/range {v9 .. v15}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    #@d7
    move-result v13

    #@d8
    goto :goto_2

    #@d9
    .line 1925
    .end local v14    # "val":I
    .end local v20    # "declURL":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    #@dc
    move-result v22

    #@dd
    .line 1927
    .local v22, "n":I
    const/16 v21, 0x0

    #@df
    :goto_3
    move/from16 v0, v21

    #@e1
    move/from16 v1, v22

    #@e3
    if-ge v0, v1, :cond_b

    #@e5
    .line 1929
    move-object/from16 v0, p4

    #@e7
    move/from16 v1, v21

    #@e9
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    #@ec
    move-result-object v18

    #@ed
    .line 1930
    .local v18, "attrUri":Ljava/lang/String;
    move-object/from16 v0, p4

    #@ef
    move/from16 v1, v21

    #@f1
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@f4
    move-result-object v17

    #@f5
    .line 1931
    .local v17, "attrQName":Ljava/lang/String;
    move-object/from16 v0, p4

    #@f7
    move/from16 v1, v21

    #@f9
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@fc
    move-result-object v27

    #@fd
    .line 1933
    .local v27, "valString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@ff
    move-object/from16 v1, v17

    #@101
    move-object/from16 v2, v18

    #@103
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@106
    move-result-object v24

    #@107
    .line 1937
    move-object/from16 v0, p4

    #@109
    move/from16 v1, v21

    #@10b
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    #@10e
    move-result-object v16

    #@10f
    .line 1939
    .local v16, "attrLocalName":Ljava/lang/String;
    if-eqz v17, :cond_a

    #@111
    .line 1940
    const-string/jumbo v3, "xmlns"

    #@114
    move-object/from16 v0, v17

    #@116
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@119
    move-result v3

    #@11a
    if-nez v3, :cond_5

    #@11c
    .line 1941
    const-string/jumbo v3, "xmlns:"

    #@11f
    move-object/from16 v0, v17

    #@121
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@124
    move-result v3

    #@125
    .line 1939
    if-eqz v3, :cond_a

    #@127
    .line 1943
    :cond_5
    move-object/from16 v0, p0

    #@129
    move-object/from16 v1, v24

    #@12b
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->declAlreadyDeclared(Ljava/lang/String;)Z

    #@12e
    move-result v3

    #@12f
    if-eqz v3, :cond_6

    #@131
    .line 1927
    :goto_4
    add-int/lit8 v21, v21, 0x1

    #@133
    goto :goto_3

    #@134
    .line 1946
    :cond_6
    const/16 v10, 0xd

    #@136
    .line 1958
    .local v10, "nodeType":I
    :cond_7
    :goto_5
    if-nez v27, :cond_8

    #@138
    .line 1959
    const-string/jumbo v27, ""

    #@13b
    .line 1961
    :cond_8
    move-object/from16 v0, p0

    #@13d
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@13f
    move-object/from16 v0, v27

    #@141
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@144
    move-result v14

    #@145
    .line 1964
    .restart local v14    # "val":I
    if-eqz v24, :cond_9

    #@147
    .line 1967
    move-object/from16 v0, p0

    #@149
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@14b
    move-object/from16 v0, v17

    #@14d
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@150
    move-result v8

    #@151
    .line 1969
    move-object/from16 v0, p0

    #@153
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@155
    invoke-virtual {v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@158
    move-result v19

    #@159
    .line 1971
    .local v19, "dataIndex":I
    move-object/from16 v0, p0

    #@15b
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@15d
    invoke-virtual {v3, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@160
    .line 1972
    move-object/from16 v0, p0

    #@162
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@164
    invoke-virtual {v3, v14}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@167
    .line 1974
    move/from16 v0, v19

    #@169
    neg-int v14, v0

    #@16a
    .line 1977
    .end local v19    # "dataIndex":I
    :cond_9
    move-object/from16 v0, p0

    #@16c
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@16e
    move-object/from16 v0, v18

    #@170
    move-object/from16 v1, v16

    #@172
    invoke-virtual {v3, v0, v1, v10}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    #@175
    move-result v5

    #@176
    .line 1979
    const/4 v15, 0x0

    #@177
    move-object/from16 v9, p0

    #@179
    move v11, v5

    #@17a
    .line 1978
    invoke-virtual/range {v9 .. v15}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    #@17d
    move-result v13

    #@17e
    goto :goto_4

    #@17f
    .line 1950
    .end local v10    # "nodeType":I
    .end local v14    # "val":I
    :cond_a
    const/4 v10, 0x2

    #@180
    .line 1952
    .restart local v10    # "nodeType":I
    move-object/from16 v0, p4

    #@182
    move/from16 v1, v21

    #@184
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@187
    move-result-object v3

    #@188
    const-string/jumbo v4, "ID"

    #@18b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@18e
    move-result v3

    #@18f
    if-eqz v3, :cond_7

    #@191
    .line 1953
    move-object/from16 v0, p0

    #@193
    move-object/from16 v1, v27

    #@195
    invoke-virtual {v0, v1, v12}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setIDAttribute(Ljava/lang/String;I)V

    #@198
    goto :goto_5

    #@199
    .line 1982
    .end local v10    # "nodeType":I
    .end local v16    # "attrLocalName":Ljava/lang/String;
    .end local v17    # "attrQName":Ljava/lang/String;
    .end local v18    # "attrUri":Ljava/lang/String;
    .end local v27    # "valString":Ljava/lang/String;
    :cond_b
    const/4 v3, -0x1

    #@19a
    if-eq v3, v13, :cond_c

    #@19c
    .line 1983
    move-object/from16 v0, p0

    #@19e
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1a0
    const/4 v4, -0x1

    #@1a1
    invoke-virtual {v3, v4, v13}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@1a4
    .line 1985
    :cond_c
    move-object/from16 v0, p0

    #@1a6
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    #@1a8
    if-eqz v3, :cond_d

    #@1aa
    .line 1987
    move-object/from16 v0, p0

    #@1ac
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    invoke-virtual {v0, v12}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeHandle(I)I

    #@1b3
    move-result v4

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    invoke-interface {v3, v4, v0}, Lorg/apache/xml/dtm/DTMWSFilter;->getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S

    #@1b9
    move-result v28

    #@1ba
    .line 1988
    .local v28, "wsv":S
    const/4 v3, 0x3

    #@1bb
    move/from16 v0, v28

    #@1bd
    if-ne v3, v0, :cond_e

    #@1bf
    .line 1989
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getShouldStripWhitespace()Z

    #@1c2
    move-result v25

    #@1c3
    .line 1992
    :goto_6
    move-object/from16 v0, p0

    #@1c5
    move/from16 v1, v25

    #@1c7
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->pushShouldStripWhitespace(Z)V

    #@1ca
    .line 1995
    .end local v28    # "wsv":S
    :cond_d
    const/4 v3, -0x1

    #@1cb
    move-object/from16 v0, p0

    #@1cd
    iput v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    #@1cf
    .line 1997
    move-object/from16 v0, p0

    #@1d1
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    iget-object v4, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@1d7
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@1da
    move-result v4

    #@1db
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@1de
    .line 1853
    return-void

    #@1df
    .line 1990
    .restart local v28    # "wsv":S
    :cond_e
    const/4 v3, 0x2

    #@1e0
    move/from16 v0, v28

    #@1e2
    if-ne v3, v0, :cond_f

    #@1e4
    const/16 v25, 0x1

    #@1e6
    .local v25, "shouldStrip":Z
    goto :goto_6

    #@1e7
    .end local v25    # "shouldStrip":Z
    :cond_f
    const/16 v25, 0x0

    #@1e9
    .restart local v25    # "shouldStrip":Z
    goto :goto_6
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2388
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1756
    if-nez p1, :cond_0

    #@2
    .line 1757
    const-string/jumbo p1, ""

    #@5
    .line 1758
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@a
    .line 1759
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    #@c
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@f
    .line 1749
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1631
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1633
    new-instance v1, Ljava/util/Vector;

    #@6
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    #@b
    .line 1639
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getDocumentBaseURI()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 1638
    invoke-static {p3, v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object p3

    #@13
    .line 1647
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    #@15
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@18
    .line 1650
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    #@1a
    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1d
    .line 1653
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    #@1f
    invoke-virtual {v1, p4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@22
    .line 1656
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    #@24
    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@27
    .line 1628
    return-void

    #@28
    .line 1642
    :catch_0
    move-exception v0

    #@29
    .line 1643
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@2b
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@2e
    throw v1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 2186
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9
    .line 2182
    return-void
.end method
