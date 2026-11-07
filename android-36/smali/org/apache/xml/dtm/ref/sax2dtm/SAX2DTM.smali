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
.field private static final greylist DEBUG:Z = false

.field private static final greylist ENTITY_FIELDS_PER:I = 0x4

.field private static final greylist ENTITY_FIELD_NAME:I = 0x3

.field private static final greylist ENTITY_FIELD_NOTATIONNAME:I = 0x2

.field private static final greylist ENTITY_FIELD_PUBLICID:I = 0x0

.field private static final greylist ENTITY_FIELD_SYSTEMID:I = 0x1

.field private static final greylist m_fixednames:[Ljava/lang/String;


# instance fields
.field protected greylist m_chars:Lorg/apache/xml/utils/FastStringBuffer;

.field protected transient greylist m_coalescedTextType:I

.field protected transient greylist m_contextIndexes:Lorg/apache/xml/utils/IntStack;

.field protected greylist m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected greylist m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected greylist m_endDocumentOccured:Z

.field private greylist m_entities:Ljava/util/Vector;

.field protected greylist m_idAttributes:Ljava/util/Hashtable;

.field private greylist m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

.field protected transient greylist m_insideDTD:Z

.field protected transient greylist m_locator:Lorg/xml/sax/Locator;

.field protected transient greylist m_parents:Lorg/apache/xml/utils/IntStack;

.field greylist m_pastFirstElement:Z

.field protected transient greylist m_prefixMappings:Ljava/util/Vector;

.field protected transient greylist m_previous:I

.field protected greylist m_sourceColumn:Lorg/apache/xml/utils/IntVector;

.field protected greylist m_sourceLine:Lorg/apache/xml/utils/IntVector;

.field protected greylist m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

.field private transient greylist m_systemId:Ljava/lang/String;

.field protected greylist m_textPendingStart:I

.field protected transient greylist m_textType:I

.field protected greylist m_useSourceLocationProperty:Z

.field protected greylist m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field protected greylist m_walker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 13

    .line 151
    const-string v11, "#document-fragment"

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "#text"

    const-string v4, "#cdata_section"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "#comment"

    const-string v9, "#document"

    const/4 v10, 0x0

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .registers 17

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v7, 0x200

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 224
    invoke-direct/range {v0 .. v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .registers 10

    .line 253
    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    const/4 p2, 0x0

    .line 67
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    const/4 p3, 0x0

    .line 97
    iput p3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 102
    new-instance p4, Ljava/util/Vector;

    invoke-direct {p4}, Ljava/util/Vector;-><init>()V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    const/4 p4, 0x3

    .line 111
    iput p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    .line 117
    iput p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    .line 120
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    .line 123
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    .line 126
    iput-boolean p3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    .line 129
    new-instance p4, Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    invoke-direct {p4}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;-><init>()V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_walker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    .line 137
    iput-boolean p3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    .line 146
    new-instance p4, Ljava/util/Hashtable;

    invoke-direct {p4}, Ljava/util/Hashtable;-><init>()V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    .line 164
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    const/4 p4, -0x1

    .line 186
    iput p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    .line 194
    iput-boolean p3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    .line 1828
    iput-boolean p3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    const/16 p4, 0x40

    const/16 p5, 0xa

    if-gt p7, p4, :cond_69

    .line 260
    new-instance p4, Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 p6, 0x4

    invoke-direct {p4, p7, p6}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 261
    new-instance p4, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {p4, p7, p6}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 262
    new-instance p4, Lorg/apache/xml/dtm/ref/DTMStringPool;

    const/16 p7, 0x10

    invoke-direct {p4, p7}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>(I)V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 263
    new-instance p4, Lorg/apache/xml/utils/FastStringBuffer;

    const/4 p7, 0x7

    invoke-direct {p4, p7, p5}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(II)V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    .line 264
    new-instance p4, Lorg/apache/xml/utils/IntStack;

    invoke-direct {p4, p6}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    .line 265
    new-instance p4, Lorg/apache/xml/utils/IntStack;

    invoke-direct {p4, p6}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    goto :goto_97

    .line 269
    :cond_69
    new-instance p4, Lorg/apache/xml/utils/SuballocatedIntVector;

    const/16 p6, 0x20

    invoke-direct {p4, p7, p6}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 270
    new-instance p4, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {p4, p7, p6}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 271
    new-instance p4, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {p4}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 272
    new-instance p4, Lorg/apache/xml/utils/FastStringBuffer;

    const/16 p6, 0xd

    invoke-direct {p4, p5, p6}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(II)V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    .line 273
    new-instance p4, Lorg/apache/xml/utils/IntStack;

    invoke-direct {p4}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    .line 274
    new-instance p4, Lorg/apache/xml/utils/IntStack;

    invoke-direct {p4}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 282
    :goto_97
    iget-object p4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p4, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 287
    invoke-virtual {p1}, Lorg/apache/xml/dtm/DTMManager;->getSource_location()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p1, :cond_aa

    .line 288
    new-instance p1, Lorg/apache/xml/utils/StringVector;

    invoke-direct {p1}, Lorg/apache/xml/utils/StringVector;-><init>()V

    goto :goto_ab

    :cond_aa
    move-object p1, p2

    :goto_ab
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    .line 289
    iget-boolean p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p1, :cond_b7

    new-instance p1, Lorg/apache/xml/utils/IntVector;

    invoke-direct {p1}, Lorg/apache/xml/utils/IntVector;-><init>()V

    goto :goto_b8

    :cond_b7
    move-object p1, p2

    :goto_b8
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    .line 290
    iget-boolean p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p1, :cond_c3

    new-instance p2, Lorg/apache/xml/utils/IntVector;

    invoke-direct {p2}, Lorg/apache/xml/utils/IntVector;-><init>()V

    :cond_c3
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    return-void
.end method

.method private final greylist isTextType(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x3

    if-eq p0, p1, :cond_9

    const/4 p0, 0x4

    if-ne p0, p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected greylist _dataOrQName(I)I
    .registers 3

    .line 312
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v0, :cond_b

    .line 313
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0

    .line 320
    :cond_b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 p0, -0x1

    return p0

    .line 324
    :cond_13
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v0, :cond_b

    .line 325
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method protected greylist addNewDTMID(I)V
    .registers 4

    .line 927
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    if-eqz v0, :cond_15

    .line 931
    check-cast v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    .line 932
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v1

    .line 933
    invoke-virtual {v0, p0, v1, p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    .line 934
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    shl-int/lit8 v0, v1, 0x10

    invoke-virtual {p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    return-void

    .line 928
    :cond_15
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_1b} :catch_1b

    .line 941
    :catch_1b
    const-string p1, "ER_NO_DTMIDS_AVAIL"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-void
.end method

.method protected greylist addNode(IIIIIZ)I
    .registers 11

    .line 872
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    .line 875
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    ushr-int/lit8 v2, v0, 0x10

    if-ne v1, v2, :cond_13

    .line 877
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNewDTMID(I)V

    .line 880
    :cond_13
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eqz p6, :cond_1b

    move p6, v2

    goto :goto_1c

    :cond_1b
    move p6, v3

    :goto_1c
    invoke-virtual {v1, p6}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 881
    iget-object p6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p6, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 882
    iget-object p6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p6, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 883
    iget-object p6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p6, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 884
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p2, p5}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 886
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz p2, :cond_3a

    .line 887
    invoke-virtual {p2, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    :cond_3a
    if-eq v3, p4, :cond_41

    .line 891
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p2, v0, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 894
    :cond_41
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    if-eqz p2, :cond_4c

    iget-boolean p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p2, :cond_4c

    .line 895
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setSourceLocation()V

    :cond_4c
    const/4 p2, 0x2

    if-eq p1, p2, :cond_60

    const/16 p2, 0xd

    if-eq p1, p2, :cond_5d

    if-ne v3, p4, :cond_60

    if-eq v3, p3, :cond_60

    .line 911
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, v0, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    return v0

    .line 905
    :cond_5d
    invoke-virtual {p0, p3, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->declareNamespaceInContext(II)V

    :cond_60
    return v0
.end method

.method public whitelist test-api attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api characters([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2070
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 2072
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    .line 2073
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    goto :goto_19

    .line 2079
    :cond_12
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    .line 2081
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    .line 2084
    :cond_19
    :goto_19
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    return-void
.end method

.method protected greylist charactersFlush()V
    .registers 11

    .line 1516
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    if-ltz v0, :cond_5c

    .line 1518
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    sub-int/2addr v0, v1

    .line 1521
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getShouldStripWhitespace()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1523
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v1, v2, v0}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    const/4 v2, 0x3

    if-eqz v1, :cond_29

    .line 1527
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    :cond_27
    move-object v3, p0

    goto :goto_55

    :cond_29
    if-lez v0, :cond_27

    .line 1532
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v5

    .line 1533
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v8

    .line 1535
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 1536
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v6

    iget v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v9, 0x0

    move-object v3, p0

    .line 1535
    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result p0

    iput p0, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 1538
    iget-object p0, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 1539
    iget-object p0, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    :goto_55
    const/4 p0, -0x1

    .line 1544
    iput p0, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    .line 1545
    iput v2, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iput v2, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    :cond_5c
    return-void
.end method

.method public greylist clearCoRoutine()V
    .registers 2

    const/4 v0, 0x1

    .line 334
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine(Z)V

    return-void
.end method

.method public greylist clearCoRoutine(Z)V
    .registers 3

    .line 347
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 350
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->deliverMoreNodes(Z)Ljava/lang/Object;

    :cond_a
    const/4 p1, 0x0

    .line 352
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    :cond_d
    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2448
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    if-eqz v0, :cond_5

    return-void

    .line 2451
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    .line 2453
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v4

    .line 2457
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v7

    .line 2461
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 2462
    invoke-virtual {p1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v5

    iget v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v8, 0x0

    const/16 v3, 0x8

    move-object v2, p0

    .line 2461
    invoke-virtual/range {v2 .. v8}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result p0

    iput p0, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    return-void
.end method

.method protected greylist declAlreadyDeclared(Ljava/lang/String;)Z
    .registers 5

    .line 1810
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v0

    .line 1811
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    .line 1812
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_c
    if-ge v0, v1, :cond_22

    .line 1816
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_17

    goto :goto_1f

    .line 1821
    :cond_17
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x2

    goto :goto_c

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public greylist dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    goto/16 :goto_a7

    .line 509
    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v1

    .line 511
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    .line 513
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 514
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 515
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v3

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-eqz p3, :cond_2f

    .line 518
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p0, p2, v0, p1}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    return-void

    .line 520
    :cond_2f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p0, p2, v0, p1}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    return-void

    .line 524
    :cond_35
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_78

    move v1, v0

    .line 535
    :cond_3d
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v3

    .line 537
    invoke-direct {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 539
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v3

    if-ne v0, v1, :cond_53

    .line 543
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    .line 546
    :cond_53
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    add-int/2addr v4, v3

    .line 549
    :cond_5c
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNextNodeIdentity(I)I

    move-result v2

    if-eq v0, v2, :cond_68

    .line 550
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v3

    if-ge v3, p1, :cond_3d

    :cond_68
    if-lez v4, :cond_a7

    if-eqz p3, :cond_72

    .line 555
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p0, p2, v1, v4}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    return-void

    .line 557
    :cond_72
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p0, p2, v1, v4}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    return-void

    :cond_78
    if-eq v1, v3, :cond_a7

    .line 562
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    if-gez p1, :cond_88

    neg-int p1, p1

    .line 567
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 570
    :cond_88
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_9c

    .line 573
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 574
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 573
    invoke-static {p1, v4, p0, p2}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V

    return-void

    .line 576
    :cond_9c
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {p2, p1, v4, p0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_a7
    :goto_a7
    return-void
.end method

.method public greylist dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_walker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    .line 738
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->getcontentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 742
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;-><init>()V

    .line 745
    :cond_d
    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 746
    invoke-virtual {v0, p0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setDTM(Lorg/apache/xml/dtm/DTM;)V

    const/4 p0, 0x0

    .line 750
    :try_start_14
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->traverse(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1b

    .line 754
    invoke-virtual {v0, p0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void

    :catchall_1b
    move-exception p1

    invoke-virtual {v0, p0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 755
    throw p1
.end method

.method public whitelist test-api elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api endCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 2430
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    return-void
.end method

.method public whitelist test-api endDTD()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2363
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1715
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    .line 1717
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 1719
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_18

    .line 1720
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 1722
    :cond_18
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    if-eq v1, v0, :cond_21

    .line 1723
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2, v1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_21
    const/4 v0, 0x0

    .line 1725
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 1726
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    .line 1727
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    const/4 v1, 0x1

    .line 1729
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    .line 1732
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2027
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    .line 2031
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    .line 2034
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result p1

    .line 2035
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    if-eq p1, p2, :cond_1c

    .line 2036
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->setSize(I)V

    .line 2039
    :cond_1c
    iget p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 2041
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p2}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result p2

    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 p3, -0x1

    if-ne p3, p1, :cond_2f

    .line 2045
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p1, p3, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_34

    .line 2047
    :cond_2f
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p2, p3, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 2049
    :goto_34
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->popShouldStripWhitespace()V

    return-void
.end method

.method public whitelist test-api endEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api endPrefixMapping(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_4

    .line 1780
    const-string p1, ""

    .line 1782
    :cond_4
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1786
    :cond_c
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/2addr v0, v1

    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    if-ltz v0, :cond_19

    and-int/lit8 v2, v0, 0x1

    if-eq v2, v1, :cond_c

    :cond_19
    const/4 p1, -0x1

    if-le v0, p1, :cond_29

    .line 1792
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    const-string v2, "%@$#^@#"

    invoke-virtual {p1, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1793
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_29
    return-void
.end method

.method public whitelist test-api error(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2205
    throw p1
.end method

.method public whitelist test-api externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2227
    throw p1
.end method

.method public greylist getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1189
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getFirstAttribute(I)I

    move-result p1

    :goto_4
    const/4 v0, -0x1

    if-eq v0, p1, :cond_25

    .line 1192
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    .line 1193
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    if-eq p2, v0, :cond_19

    if-eqz p2, :cond_20

    .line 1196
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1198
    :cond_19
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    return p1

    .line 1190
    :cond_20
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextAttribute(I)I

    move-result p1

    goto :goto_4

    :cond_25
    return v0
.end method

.method public greylist getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 3

    .line 406
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v1, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v1, :cond_9

    .line 407
    check-cast v0, Lorg/xml/sax/ContentHandler;

    return-object v0

    :cond_9
    return-object p0
.end method

.method public greylist getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 1

    .line 0
    return-object p0
.end method

.method public greylist getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .registers 1

    .line 0
    return-object p0
.end method

.method public greylist getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .registers 3

    .line 1217
    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-object v1
.end method

.method public greylist getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .registers 3

    .line 697
    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-object v1
.end method

.method public greylist getElementById(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x1

    .line 1368
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 1371
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_14
    if-eqz v0, :cond_21

    .line 1373
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    if-eqz v0, :cond_1b

    goto :goto_21

    .line 1376
    :cond_1b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    move-result v0

    if-eqz v1, :cond_1

    :cond_21
    :goto_21
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 1

    .line 0
    return-object p0
.end method

.method public greylist getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 1

    .line 0
    return-object p0
.end method

.method public greylist getFixedNames(I)Ljava/lang/String;
    .registers 2

    .line 2511
    sget-object p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public greylist getIdForNamespace(Ljava/lang/String;)I
    .registers 2

    .line 1465
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public greylist getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 3

    .line 425
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v1, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v1, :cond_9

    .line 426
    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    return-object v0

    :cond_9
    return-object p0
.end method

.method public greylist getLocalName(I)Ljava/lang/String;
    .registers 3

    .line 1042
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceURI(I)Ljava/lang/String;
    .registers 3

    .line 1236
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespace(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1479
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1481
    const-string v2, ""

    if-nez p1, :cond_d

    move-object p1, v2

    .line 1486
    :cond_d
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/2addr v0, v1

    invoke-virtual {v3, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    if-ltz v0, :cond_1a

    and-int/lit8 v3, v0, 0x1

    if-eq v3, v1, :cond_d

    :cond_1a
    const/4 p1, -0x1

    if-le v0, p1, :cond_27

    .line 1491
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_27
    return-object v2
.end method

.method protected greylist getNextNodeIdentity(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 714
    :goto_2
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v0, :cond_10

    .line 716
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-nez v0, :cond_c

    const/4 p0, -0x1

    return p0

    .line 719
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    goto :goto_2

    :cond_10
    return p1
.end method

.method public greylist getNodeName(I)Ljava/lang/String;
    .registers 4

    .line 594
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v0

    .line 596
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v1

    if-nez v1, :cond_4b

    .line 602
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result p1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_37

    .line 606
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p1, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1f

    .line 607
    const-string p0, "xmlns"

    return-object p0

    .line 609
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 611
    :cond_37
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result v1

    if-nez v1, :cond_44

    .line 613
    sget-object p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 616
    :cond_44
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 620
    :cond_4b
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-gez p1, :cond_5e

    neg-int p1, p1

    .line 625
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 628
    :cond_5e
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNodeNameX(I)Ljava/lang/String;
    .registers 4

    .line 643
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v0

    .line 644
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v1

    if-nez v1, :cond_17

    .line 648
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_16

    .line 651
    const-string p0, ""

    :cond_16
    return-object p0

    .line 657
    :cond_17
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-gez p1, :cond_2a

    neg-int p1, p1

    .line 662
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 665
    :cond_2a
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNodeValue(I)Ljava/lang/String;
    .registers 5

    .line 1001
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1002
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    .line 1004
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    .line 1006
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    .line 1007
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 1008
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v2

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 1011
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    if-eq v2, v0, :cond_47

    const/16 v1, 0xb

    if-eq v1, v0, :cond_47

    const/16 v1, 0x9

    if-ne v1, v0, :cond_32

    goto :goto_47

    .line 1020
    :cond_32
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    if-gez p1, :cond_40

    neg-int p1, p1

    .line 1025
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 1028
    :cond_40
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_47
    :goto_47
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getNumberOfNodes()I
    .registers 1

    .line 765
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    return p0
.end method

.method public greylist getPrefix(I)Ljava/lang/String;
    .registers 6

    .line 1140
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1141
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1143
    const-string v3, ""

    if-ne v1, v0, :cond_20

    .line 1145
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    if-nez p1, :cond_15

    return-object v3

    .line 1151
    :cond_15
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p1

    .line 1153
    invoke-virtual {p0, p1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const/4 v1, 0x2

    if-ne v1, v0, :cond_3b

    .line 1158
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    if-gez p1, :cond_3b

    .line 1162
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 1164
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p1

    .line 1166
    invoke-virtual {p0, p1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    return-object v3
.end method

.method public greylist getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    .line 1398
    const-string v1, "xmlns:"

    const-string v2, ""

    const-string v3, "xmlns"

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-eqz p2, :cond_4e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4e

    const/4 v6, -0x1

    .line 1403
    :cond_13
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7, p2, v6}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v6

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_13

    if-ltz v6, :cond_2c

    .line 1408
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2c
    if-eqz p1, :cond_4d

    .line 1412
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    .line 1414
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    return-object v2

    .line 1416
    :cond_39
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_46

    add-int/lit8 p0, p0, 0x1

    .line 1417
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_46
    if-lez p0, :cond_4d

    .line 1420
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4d
    return-object v5

    :cond_4e
    if-eqz p1, :cond_6f

    .line 1429
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-lez p0, :cond_68

    .line 1433
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_63

    add-int/lit8 p0, p0, 0x1

    .line 1434
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1436
    :cond_63
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1440
    :cond_68
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6f

    return-object v2

    :cond_6f
    return-object v5
.end method

.method public greylist getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .registers 6

    .line 2488
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 2491
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 2494
    new-instance v0, Lorg/apache/xml/dtm/ref/NodeLocator;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    .line 2495
    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    .line 2496
    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    move-result v3

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    .line 2497
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/apache/xml/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    .line 2499
    :cond_21
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    const/4 v0, -0x1

    if-eqz p1, :cond_30

    .line 2501
    new-instance p0, Lorg/apache/xml/dtm/ref/NodeLocator;

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0, v0}, Lorg/apache/xml/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object p0

    .line 2503
    :cond_30
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    if-eqz p0, :cond_3a

    .line 2505
    new-instance p1, Lorg/apache/xml/dtm/ref/NodeLocator;

    invoke-direct {p1, v1, p0, v0, v0}, Lorg/apache/xml/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object p1

    :cond_3a
    return-object v1
.end method

.method public greylist getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .registers 8

    .line 1250
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    move v1, v0

    goto :goto_d

    .line 1255
    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v1

    .line 1257
    :goto_d
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    .line 1259
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    .line 1260
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 1261
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v3

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 1263
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v1, p0, v0, p1}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 1267
    :cond_2e
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v2

    if-eq v0, v2, :cond_6c

    const/4 v1, 0x0

    move v3, v0

    .line 1278
    :cond_36
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v4

    .line 1280
    invoke-direct {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1282
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v4

    if-ne v0, v3, :cond_4c

    .line 1286
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    .line 1289
    :cond_4c
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 1292
    :cond_55
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNextNodeIdentity(I)I

    move-result v2

    if-eq v0, v2, :cond_61

    .line 1293
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v4

    if-ge v4, p1, :cond_36

    :cond_61
    if-lez v1, :cond_89

    .line 1297
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p1, p0, v3, v1}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0

    :cond_6c
    if-eq v1, v3, :cond_89

    .line 1302
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    if-gez p1, :cond_7c

    neg-int p1, p1

    .line 1307
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 1309
    :cond_7c
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 1313
    :cond_89
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {p0}, Lorg/apache/xml/utils/XMLStringFactory;->emptystr()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0
.end method

.method public greylist getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1084
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    if-nez v0, :cond_5

    goto :goto_43

    .line 1087
    :cond_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_43

    .line 1091
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_40

    .line 1093
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1095
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_43

    .line 1110
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_3f

    .line 1114
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3f
    return-object p1

    :cond_40
    add-int/lit8 v1, v1, 0x4

    goto :goto_a

    .line 1085
    :cond_43
    :goto_43
    const-string p0, ""

    return-object p0
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2109
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->characters([CII)V

    return-void
.end method

.method public whitelist test-api internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public greylist isAttributeSpecified(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isWhitespace(I)Z
    .registers 4

    .line 1325
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    goto :goto_c

    .line 1330
    :cond_8
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    .line 1332
    :goto_c
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1334
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    .line 1335
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 1336
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 1338
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result p0

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public greylist migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
    .registers 7

    .line 953
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->migrateTo(Lorg/apache/xml/dtm/DTMManager;)V

    .line 957
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result p1

    .line 958
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_11
    if-ge v1, p1, :cond_27

    .line 962
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    shl-int/lit8 v4, v0, 0x10

    invoke-virtual {v3, v4, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 963
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    invoke-virtual {v3, p0, v0, v2}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    add-int/lit8 v0, v0, 0x1

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    return-void
.end method

.method public greylist needsTwoThreads()Z
    .registers 1

    .line 479
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist nextNode()Z
    .registers 5

    .line 777
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 780
    :cond_6
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    if-eqz v2, :cond_e

    .line 782
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    return v1

    :cond_e
    const/4 v2, 0x1

    .line 787
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->deliverMoreNodes(Z)Ljava/lang/Object;

    move-result-object v0

    .line 796
    instance-of v3, v0, Ljava/lang/Boolean;

    if-nez v3, :cond_2e

    .line 798
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_2b

    .line 802
    instance-of v2, v0, Ljava/lang/Exception;

    if-nez v2, :cond_23

    .line 807
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    return v1

    .line 804
    :cond_23
    new-instance p0, Lorg/apache/xml/utils/WrappedRuntimeException;

    check-cast v0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p0

    .line 800
    :cond_2b
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 814
    :cond_2e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_35

    .line 818
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    :cond_35
    return v2
.end method

.method public whitelist test-api notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2133
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    .line 2135
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 2137
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v8

    .line 2139
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 2140
    invoke-virtual {p1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v6

    iget v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v9, 0x0

    const/4 v4, 0x7

    move-object v3, p0

    .line 2139
    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result p0

    iput p0, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    return-void
.end method

.method public whitelist test-api resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2

    .line 1676
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    .line 1677
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    return-void
.end method

.method public greylist setIDAttribute(Ljava/lang/String;I)V
    .registers 4

    .line 1506
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .line 381
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 382
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 383
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    return-void
.end method

.method public greylist setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method

.method protected greylist setSourceLocation()V
    .registers 3

    .line 974
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    .line 976
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    .line 981
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ne v0, v1, :cond_2c

    return-void

    .line 982
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CODING ERROR in Source Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    .line 983
    invoke-virtual {p0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 984
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setUseSourceLocation(Z)V
    .registers 2

    .line 299
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    return-void
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api startCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 2419
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    return-void
.end method

.method public whitelist test-api startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p1, 0x1

    .line 2351
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1693
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    const/16 v1, 0x9

    .line 1694
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v3, 0x9

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v2, p0

    .line 1693
    invoke-virtual/range {v2 .. v8}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result p0

    .line 1697
    iget-object v0, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/IntStack;->push(I)I

    const/4 p0, -0x1

    .line 1698
    iput p0, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 1700
    iget-object p0, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    iget-object v0, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    .line 1876
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    .line 1878
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    const/4 v8, 0x1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v8}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 1879
    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    if-eqz v1, :cond_23

    .line 1881
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    goto :goto_24

    :cond_23
    move v5, v9

    .line 1883
    :goto_24
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 1884
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v1

    iget v4, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v6, 0x1

    move v2, v3

    move v3, v1

    const/4 v1, 0x1

    .line 1883
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v3

    .line 1886
    iget-boolean v1, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_indexing:Z

    if-eqz v1, :cond_3b

    .line 1887
    invoke-virtual {v0, v2, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->indexNode(II)V

    .line 1890
    :cond_3b
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 1892
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v10

    .line 1893
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v11

    .line 1896
    iget-boolean v1, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    const/4 v12, 0x0

    const/16 v13, 0xd

    const/4 v4, -0x1

    if-nez v1, :cond_6d

    .line 1901
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    const-string v2, "xml"

    invoke-virtual {v1, v12, v2, v13}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1902
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    const-string v5, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    const/16 v1, 0xd

    const/4 v6, 0x0

    .line 1903
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v4

    .line 1905
    iput-boolean v8, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    :cond_6d
    :goto_6d
    if-ge v10, v11, :cond_9c

    .line 1910
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7a

    goto :goto_99

    .line 1915
    :cond_7a
    iget-object v2, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1917
    iget-object v5, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v5, v12, v1, v13}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1919
    iget-object v5, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    move v2, v1

    const/16 v1, 0xd

    const/4 v6, 0x0

    .line 1921
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v1

    move v4, v1

    :goto_99
    add-int/lit8 v10, v10, 0x2

    goto :goto_6d

    .line 1925
    :cond_9c
    invoke-interface {v7}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v10

    move v11, v9

    :goto_a1
    const/4 v1, 0x2

    if-ge v11, v10, :cond_116

    .line 1929
    invoke-interface {v7, v11}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    .line 1930
    invoke-interface {v7, v11}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    .line 1931
    invoke-interface {v7, v11}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 1933
    invoke-virtual {v0, v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1937
    invoke-interface {v7, v11}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v5, :cond_d3

    .line 1939
    const-string v15, "xmlns"

    .line 1940
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ca

    const-string v15, "xmlns:"

    .line 1941
    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d3

    .line 1943
    :cond_ca
    invoke-virtual {v0, v12}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->declAlreadyDeclared(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    goto :goto_112

    :cond_d1
    move v1, v13

    goto :goto_e2

    .line 1952
    :cond_d3
    invoke-interface {v7, v11}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v15

    const-string v8, "ID"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e2

    .line 1953
    invoke-virtual {v0, v6, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setIDAttribute(Ljava/lang/String;I)V

    :cond_e2
    :goto_e2
    if-nez v6, :cond_e6

    .line 1959
    const-string v6, ""

    .line 1961
    :cond_e6
    iget-object v8, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v8, v6}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v6

    if-eqz v12, :cond_105

    .line 1967
    iget-object v8, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v8, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    .line 1969
    iget-object v8, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v8

    .line 1971
    iget-object v12, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v12, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 1972
    iget-object v5, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    neg-int v6, v8

    :cond_105
    move v5, v6

    .line 1977
    iget-object v6, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v6, v2, v14, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v6, 0x0

    .line 1978
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v1

    move v4, v1

    :goto_112
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto :goto_a1

    :cond_116
    const/4 v2, -0x1

    if-eq v2, v4, :cond_11e

    .line 1983
    iget-object v5, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v2, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 1985
    :cond_11e
    iget-object v4, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    if-eqz v4, :cond_13a

    .line 1987
    invoke-virtual {v0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v3

    invoke-interface {v4, v3, v0}, Lorg/apache/xml/dtm/DTMWSFilter;->getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S

    move-result v3

    const/4 v4, 0x3

    if-ne v4, v3, :cond_132

    .line 1989
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getShouldStripWhitespace()Z

    move-result v8

    goto :goto_137

    :cond_132
    if-ne v1, v3, :cond_136

    const/4 v8, 0x1

    goto :goto_137

    :cond_136
    move v8, v9

    .line 1992
    :goto_137
    invoke-virtual {v0, v8}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->pushShouldStripWhitespace(Z)V

    .line 1995
    :cond_13a
    iput v2, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 1997
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method public whitelist test-api startEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_4

    .line 1757
    const-string p1, ""

    .line 1758
    :cond_4
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1759
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public whitelist test-api unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1631
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 1633
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    .line 1639
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v0

    .line 1638
    invoke-static {p3, v0}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_28

    .line 1647
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1650
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {p2, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1653
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {p2, p4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1656
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :catch_28
    move-exception p0

    .line 1643
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public whitelist test-api warning(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2186
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
