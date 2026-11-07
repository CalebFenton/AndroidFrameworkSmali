.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;
    }
.end annotation


# static fields
.field private static final greylist EMPTY_STR:Ljava/lang/String; = ""

.field private static final greylist EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

.field protected static final greylist TEXT_LENGTH_BITS:I = 0xa

.field protected static final greylist TEXT_LENGTH_MAX:I = 0x3ff

.field protected static final greylist TEXT_OFFSET_BITS:I = 0x15

.field protected static final greylist TEXT_OFFSET_MAX:I = 0x1fffff


# instance fields
.field protected greylist m_MASK:I

.field protected greylist m_SHIFT:I

.field protected greylist m_blocksize:I

.field protected greylist m_buildIdIndex:Z

.field private greylist m_exptype_map:[[I

.field private greylist m_exptype_map0:[I

.field protected greylist m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

.field private greylist m_firstch_map:[[I

.field private greylist m_firstch_map0:[I

.field private greylist m_maxNodeIndex:I

.field private greylist m_nextsib_map:[[I

.field private greylist m_nextsib_map0:[I

.field private greylist m_parent_map:[[I

.field private greylist m_parent_map0:[I

.field private greylist m_valueIndex:I

.field protected greylist m_values:Ljava/util/Vector;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 1840
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .registers 18

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v7, 0x200

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 1851
    invoke-direct/range {v0 .. v10}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZZ)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZZ)V
    .registers 21

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    .line 1868
    invoke-direct/range {v0 .. v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    const/4 p1, 0x0

    .line 1805
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    const/4 p2, 0x1

    .line 1834
    iput-boolean p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    move/from16 p3, p7

    :goto_19
    ushr-int/2addr p3, p2

    if-eqz p3, :cond_1f

    add-int/lit8 p1, p1, 0x1

    goto :goto_19

    :cond_1f
    shl-int p3, p2, p1

    .line 1875
    iput p3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    .line 1876
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    sub-int/2addr p3, p2

    .line 1877
    iput p3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    move/from16 p1, p9

    .line 1879
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    .line 1884
    new-instance p1, Ljava/util/Vector;

    const/16 p2, 0x20

    const/16 p3, 0x200

    invoke-direct {p1, p2, p3}, Ljava/util/Vector;-><init>(II)V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    const/high16 p1, 0x10000

    .line 1886
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    .line 1889
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    .line 1890
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map0:[I

    .line 1891
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map0:[I

    .line 1892
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map0:[I

    return-void
.end method


# virtual methods
.method public final greylist _exptype(I)I
    .registers 2

    .line 1903
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public final greylist _exptype2(I)I
    .registers 4

    .line 1926
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_9

    .line 1927
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    aget p0, p0, p1

    return p0

    .line 1929
    :cond_9
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public final greylist _exptype2Type(I)I
    .registers 3

    const/4 v0, -0x1

    if-eq v0, p1, :cond_c

    .line 2034
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result p0

    return p0

    :cond_c
    return v0
.end method

.method public final greylist _firstch2(I)I
    .registers 4

    .line 1958
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_9

    .line 1959
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map0:[I

    aget p0, p0, p1

    return p0

    .line 1961
    :cond_9
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public final greylist _nextsib2(I)I
    .registers 4

    .line 1942
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_9

    .line 1943
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map0:[I

    aget p0, p0, p1

    return p0

    .line 1945
    :cond_9
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public final greylist _parent2(I)I
    .registers 4

    .line 1974
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_9

    .line 1975
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map0:[I

    aget p0, p0, p1

    return p0

    .line 1977
    :cond_9
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public final greylist _type2(I)I
    .registers 4

    .line 1990
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_9

    .line 1991
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    aget p1, v0, p1

    goto :goto_16

    .line 1993
    :cond_9
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr p1, v1

    aget p1, v0, p1

    :goto_16
    const/4 v0, -0x1

    if-eq v0, p1, :cond_22

    .line 1996
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result p0

    return p0

    :cond_22
    return v0
.end method

.method protected final greylist addNode(IIIIIZ)I
    .registers 9

    .line 2339
    iget p6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    add-int/lit8 v0, p6, 0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    .line 2343
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    if-ne p6, v0, :cond_14

    .line 2345
    invoke-virtual {p0, p6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNewDTMID(I)V

    .line 2346
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    .line 2349
    :cond_14
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2350
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2351
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2352
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2353
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p2, p5}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2355
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz p2, :cond_35

    .line 2356
    invoke-virtual {p2, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2359
    :cond_35
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    if-eqz p2, :cond_40

    iget-boolean p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p2, :cond_40

    .line 2360
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setSourceLocation()V

    :cond_40
    const/4 p2, 0x2

    if-eq p1, p2, :cond_5a

    const/16 p2, 0xd

    if-eq p1, p2, :cond_57

    if-eq v1, p4, :cond_4f

    .line 2376
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p6, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    return p6

    :cond_4f
    if-eq v1, p3, :cond_5a

    .line 2379
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p6, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    return p6

    .line 2370
    :cond_57
    invoke-virtual {p0, p3, p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->declareNamespaceInContext(II)V

    :cond_5a
    return p6
.end method

.method protected final greylist charactersFlush()V
    .registers 11

    .line 2394
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    if-ltz v0, :cond_7e

    .line 2396
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    sub-int/2addr v0, v1

    .line 2399
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getShouldStripWhitespace()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2401
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v1, v2, v0}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_28

    .line 2405
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    :cond_26
    move-object v1, p0

    goto :goto_76

    :cond_28
    if-lez v0, :cond_26

    const/16 v1, 0x3ff

    if-gt v0, v1, :cond_50

    .line 2413
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    const v2, 0x1fffff

    if-gt v1, v2, :cond_50

    .line 2415
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 2416
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v6

    iget v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    shl-int/lit8 v1, v1, 0xa

    add-int v8, v0, v1

    const/4 v9, 0x0

    const/4 v5, 0x3

    move-object v3, p0

    .line 2415
    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result p0

    move-object v1, v3

    iput p0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    goto :goto_76

    :cond_50
    move-object v1, p0

    .line 2423
    iget-object p0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result p0

    .line 2424
    iget v2, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iget-object v3, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 2425
    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v4

    iget v5, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    neg-int v6, p0

    const/4 v7, 0x0

    const/4 v3, 0x3

    .line 2424
    invoke-virtual/range {v1 .. v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result p0

    iput p0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 2427
    iget-object p0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v2, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {p0, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2428
    iget-object p0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    :goto_76
    const/4 p0, -0x1

    .line 2434
    iput p0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    const/4 p0, 0x3

    .line 2435
    iput p0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iput p0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    :cond_7e
    return-void
.end method

.method public whitelist test-api comment([CII)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2261
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    if-eqz v0, :cond_5

    return-void

    .line 2264
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    .line 2268
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2269
    iget v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 p1, v7, 0x1

    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    .line 2271
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 2272
    invoke-virtual {p1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v5

    iget v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v8, 0x0

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v2, p0

    .line 2271
    invoke-virtual/range {v2 .. v8}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result p0

    iput p0, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    return-void
.end method

.method protected final greylist copyAttribute(IILorg/apache/xml/serializer/SerializationHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3356
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object p2, v0, p2

    .line 3357
    invoke-virtual {p2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 3358
    invoke-virtual {p2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p2

    .line 3362
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    const/4 v1, 0x0

    if-gtz p1, :cond_36

    .line 3365
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    .line 3366
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 3367
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, v2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    .line 3368
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_37

    const/4 v1, 0x0

    .line 3370
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    :cond_36
    move-object v2, v1

    .line 3373
    :cond_37
    :goto_37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_40

    .line 3374
    invoke-interface {p3, v1, v0}, Lorg/apache/xml/serializer/ExtendedContentHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    if-eqz v1, :cond_43

    move-object p2, v2

    .line 3378
    :cond_43
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3380
    invoke-interface {p3, p2, p0}, Lorg/apache/xml/serializer/ExtendedContentHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final greylist copyAttributes(ILorg/apache/xml/serializer/SerializationHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3329
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getFirstAttributeIdentity(I)I

    move-result p1

    :goto_4
    const/4 v0, -0x1

    if-eq p1, v0, :cond_13

    .line 3330
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    .line 3331
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->copyAttribute(IILorg/apache/xml/serializer/SerializationHandler;)V

    .line 3329
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getNextAttributeIdentity(I)I

    move-result p1

    goto :goto_4

    :cond_13
    return-void
.end method

.method protected final greylist copyElement(IILorg/apache/xml/serializer/SerializationHandler;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3196
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object p2, v0, p2

    .line 3197
    invoke-virtual {p2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 3198
    invoke-virtual {p2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p2

    .line 3200
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    .line 3201
    invoke-interface {p3, p2}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startElement(Ljava/lang/String;)V

    return-object p2

    .line 3205
    :cond_16
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-nez p1, :cond_27

    .line 3208
    invoke-interface {p3, p2}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startElement(Ljava/lang/String;)V

    .line 3209
    const-string p0, ""

    invoke-interface {p3, p0, v0}, Lorg/apache/xml/serializer/ExtendedContentHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_27
    if-gez p1, :cond_30

    neg-int p1, p1

    .line 3215
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p2, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 3218
    :cond_30
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    .line 3219
    invoke-interface {p3, p0}, Lorg/apache/xml/serializer/ExtendedContentHandler;->startElement(Ljava/lang/String;)V

    const/16 p1, 0x3a

    .line 3220
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_47

    const/4 p2, 0x0

    .line 3223
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_48

    :cond_47
    const/4 p1, 0x0

    .line 3228
    :goto_48
    invoke-interface {p3, p1, v0}, Lorg/apache/xml/serializer/ExtendedContentHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected final greylist copyNS(ILorg/apache/xml/serializer/SerializationHandler;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3251
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 3252
    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    if-ne v0, v2, :cond_1d

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    if-eqz v0, :cond_1d

    .line 3254
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 3255
    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    if-ne v0, v2, :cond_1d

    goto :goto_7d

    :cond_1d
    if-eqz p3, :cond_35

    .line 3263
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object p1

    if-eqz p1, :cond_7d

    .line 3264
    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    if-ge v0, v2, :cond_2c

    goto :goto_7d

    .line 3267
    :cond_2c
    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    goto :goto_3a

    .line 3270
    :cond_35
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getNextNamespaceNode2(I)I

    move-result v0

    const/4 p1, 0x0

    :goto_3a
    move v1, v2

    :goto_3b
    const/4 v3, -0x1

    if-eq v0, v3, :cond_7d

    .line 3275
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v3

    .line 3276
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 3279
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    if-gez v4, :cond_5a

    neg-int v4, v4

    .line 3283
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr v4, v2

    invoke-virtual {v5, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    .line 3286
    :cond_5a
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3288
    invoke-interface {p2, v3, v4}, Lorg/apache/xml/serializer/ExtendedContentHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_78

    .line 3291
    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7d

    .line 3292
    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 3299
    :cond_78
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getNextNamespaceNode2(I)I

    move-result v0

    goto :goto_3b

    :cond_7d
    :goto_7d
    return-void
.end method

.method protected final greylist copyTextNode(ILorg/apache/xml/serializer/SerializationHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_29

    .line 3172
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-ltz p1, :cond_15

    .line 3174
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {p0, p2, v0, p1}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    return-void

    .line 3178
    :cond_15
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 p1, p1, 0x1

    .line 3179
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    .line 3178
    invoke-virtual {v0, p2, v1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    :cond_29
    return-void
.end method

.method public final greylist dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3018
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    goto/16 :goto_e0

    .line 3023
    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_98

    const/16 v6, 0x9

    if-ne v1, v6, :cond_19

    goto/16 :goto_98

    :cond_19
    if-eq v3, v1, :cond_50

    if-ne v2, v1, :cond_1e

    goto :goto_50

    .line 3099
    :cond_1e
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-gez p1, :cond_2e

    neg-int p1, p1

    .line 3104
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v5

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 3107
    :cond_2e
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p3, :cond_44

    .line 3110
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 3111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 3110
    invoke-static {p1, v4, p0, p2}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V

    return-void

    .line 3113
    :cond_44
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {p2, p1, v4, p0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void

    .line 3076
    :cond_50
    :goto_50
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-ltz p1, :cond_6e

    if-eqz p3, :cond_64

    .line 3081
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 p3, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {p0, p2, p3, p1}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    return-void

    .line 3084
    :cond_64
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 p3, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {p0, p2, p3, p1}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    return-void

    :cond_6e
    if-eqz p3, :cond_84

    .line 3090
    iget-object p3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v5

    .line 3091
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    .line 3090
    invoke-virtual {p3, p2, v0, p0}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    return-void

    .line 3093
    :cond_84
    iget-object p3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v5

    .line 3094
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    .line 3093
    invoke-virtual {p3, p2, v0, p0}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    return-void

    .line 3028
    :cond_98
    :goto_98
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v1

    if-eq v0, v1, :cond_e0

    move v6, v0

    .line 3036
    :cond_9f
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v7

    if-eq v7, v3, :cond_a7

    if-ne v7, v2, :cond_c9

    .line 3040
    :cond_a7
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    if-ltz v7, :cond_b7

    if-ne v0, v6, :cond_b3

    ushr-int/lit8 v6, v7, 0xa

    :cond_b3
    and-int/lit16 v7, v7, 0x3ff

    :goto_b5
    add-int/2addr v4, v7

    goto :goto_c9

    :cond_b7
    if-ne v0, v6, :cond_c0

    .line 3055
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v8, v7

    invoke-virtual {v6, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    .line 3058
    :cond_c0
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v7, v7

    add-int/2addr v7, v5

    invoke-virtual {v8, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    goto :goto_b5

    :cond_c9
    :goto_c9
    add-int/lit8 v1, v1, 0x1

    .line 3063
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v7

    if-ge v7, p1, :cond_9f

    if-lez v4, :cond_e0

    if-eqz p3, :cond_db

    .line 3068
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p0, p2, v6, v4}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    return-void

    .line 3070
    :cond_db
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p0, p2, v6, v4}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    :cond_e0
    :goto_e0
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2304
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->endDocument()V

    .line 2308
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2309
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2310
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2311
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2314
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExtendedTypes()[Lorg/apache/xml/dtm/ref/ExtendedType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    .line 2315
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    .line 2316
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map:[[I

    .line 2317
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map:[[I

    .line 2318
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map:[[I

    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2229
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    .line 2233
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    .line 2236
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result p1

    .line 2237
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    if-eq p1, p2, :cond_1c

    .line 2238
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->setSize(I)V

    .line 2241
    :cond_1c
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p1}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result p1

    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 2243
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->popShouldStripWhitespace()V

    return-void
.end method

.method public final greylist getExpandedTypeID2(I)I
    .registers 4

    .line 2009
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1e

    .line 2014
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_10

    .line 2015
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    aget p0, p0, p1

    return p0

    .line 2017
    :cond_10
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr p0, p1

    aget p0, v0, p0

    return p0

    :cond_1e
    return v0
.end method

.method public final greylist getFirstAttribute(I)I
    .registers 6

    .line 2483
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    return v0

    .line 2488
    :cond_8
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_20

    :cond_f
    add-int/2addr p1, v2

    .line 2497
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1c

    .line 2501
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_1c
    const/16 v3, 0xd

    if-eq v3, v1, :cond_f

    :cond_20
    return v0
.end method

.method protected greylist getFirstAttributeIdentity(I)I
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 2525
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_18

    :cond_b
    add-int/2addr p1, v2

    .line 2535
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_14

    return p1

    :cond_14
    const/16 v3, 0xd

    if-eq v3, v1, :cond_b

    :cond_18
    return v0
.end method

.method public greylist getIdForNamespace(Ljava/lang/String;)I
    .registers 3

    .line 2049
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_14

    .line 2052
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2053
    iget p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    return p1

    :cond_14
    return v0
.end method

.method public greylist getLocalName(I)Ljava/lang/String;
    .registers 4

    .line 2639
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_21

    .line 2643
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    .line 2644
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 2645
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2648
    :cond_21
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected greylist getNextAttributeIdentity(I)I
    .registers 4

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2567
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    return p1

    :cond_a
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/4 p0, -0x1

    return p0
.end method

.method protected final greylist getNextNamespaceNode2(I)I
    .registers 4

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 3312
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    goto :goto_0

    :cond_a
    const/16 p0, 0xd

    if-ne v0, p0, :cond_f

    return p1

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getNodeName(I)Ljava/lang/String;
    .registers 5

    .line 2710
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 2711
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    .line 2713
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v1, v0

    .line 2714
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5e

    .line 2716
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v1

    .line 2718
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3d

    .line 2721
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2b

    .line 2722
    const-string p0, "xmlns"

    return-object p0

    .line 2724
    :cond_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "xmlns:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    const/4 v2, 0x7

    if-ne v1, v2, :cond_52

    .line 2728
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    .line 2729
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 2730
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2732
    :cond_52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_5d

    .line 2734
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getFixedNames(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5d
    return-object v0

    .line 2741
    :cond_5e
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-nez p1, :cond_6b

    .line 2744
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6b
    if-gez p1, :cond_74

    neg-int p1, p1

    .line 2749
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 2752
    :cond_74
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final greylist getNodeNameX(I)Ljava/lang/String;
    .registers 4

    .line 2663
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 2664
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1d

    .line 2668
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    .line 2669
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 2670
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2673
    :cond_1d
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v1, v0

    .line 2675
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_30

    .line 2677
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2681
    :cond_30
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-nez p1, :cond_3d

    .line 2684
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    if-gez p1, :cond_46

    neg-int p1, p1

    .line 2689
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 2692
    :cond_46
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNodeValue(I)Ljava/lang/String;
    .registers 5

    .line 3129
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 3130
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_36

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    goto :goto_36

    :cond_10
    if-eq v2, v0, :cond_34

    const/16 v1, 0xb

    if-eq v1, v0, :cond_34

    const/16 v1, 0x9

    if-ne v1, v0, :cond_1b

    goto :goto_34

    .line 3153
    :cond_1b
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-gez p1, :cond_2b

    neg-int p1, p1

    .line 3158
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 3161
    :cond_2b
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return-object p0

    .line 3134
    :cond_36
    :goto_36
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result p1

    if-lez p1, :cond_47

    .line 3137
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3142
    :cond_47
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v2

    .line 3143
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    .line 3142
    invoke-virtual {v0, v1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getStringValue()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 2976
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 2977
    const-string p0, ""

    return-object p0

    .line 2980
    :cond_b
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_41

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v2

    if-ne v2, v1, :cond_41

    .line 2982
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ltz v0, :cond_2b

    .line 2984
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v1, v0, 0xa

    and-int/lit16 v0, v0, 0x3ff

    invoke-virtual {p0, v1, v0}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2986
    :cond_2b
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v0, v0

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v0, v0, 0x1

    .line 2987
    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    .line 2986
    invoke-virtual {v1, v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2990
    :cond_41
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocument()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .registers 11

    .line 2775
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 2777
    sget-object p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    return-object p0

    .line 2779
    :cond_a
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v1, v4, :cond_a7

    const/16 v5, 0x9

    if-ne v1, v5, :cond_19

    goto/16 :goto_a7

    :cond_19
    if-eq v3, v1, :cond_4d

    if-ne v2, v1, :cond_1e

    goto :goto_4d

    .line 2857
    :cond_1e
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-gez p1, :cond_2e

    neg-int p1, p1

    .line 2862
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v4

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 2865
    :cond_2e
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    if-eqz v0, :cond_3f

    .line 2866
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 2868
    :cond_3f
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2835
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-ltz p1, :cond_74

    .line 2838
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    if-eqz v0, :cond_64

    .line 2839
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v1, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {v0, p0, v1, p1}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 2842
    :cond_64
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v1, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {p0, v1, p1}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2847
    :cond_74
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    if-eqz v0, :cond_8d

    .line 2848
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v4

    .line 2849
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    .line 2848
    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 2851
    :cond_8d
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v4

    .line 2852
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    .line 2851
    invoke-virtual {v1, v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2784
    :cond_a7
    :goto_a7
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v1

    if-eq v0, v1, :cond_fd

    const/4 v5, 0x0

    move v6, v0

    .line 2792
    :cond_af
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v7

    if-eq v7, v3, :cond_b7

    if-ne v7, v2, :cond_d9

    .line 2796
    :cond_b7
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    if-ltz v7, :cond_c7

    if-ne v0, v6, :cond_c3

    ushr-int/lit8 v6, v7, 0xa

    :cond_c3
    and-int/lit16 v7, v7, 0x3ff

    :goto_c5
    add-int/2addr v5, v7

    goto :goto_d9

    :cond_c7
    if-ne v0, v6, :cond_d0

    .line 2810
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v8, v7

    invoke-virtual {v6, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    .line 2813
    :cond_d0
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v7, v7

    add-int/2addr v7, v4

    invoke-virtual {v8, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    goto :goto_c5

    :cond_d9
    :goto_d9
    add-int/lit8 v1, v1, 0x1

    .line 2818
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v7

    if-ge v7, p1, :cond_af

    if-lez v5, :cond_fa

    .line 2822
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    if-eqz p1, :cond_ee

    .line 2823
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p1, p0, v6, v5}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 2825
    :cond_ee
    new-instance p1, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p0, v6, v5}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 2828
    :cond_fa
    sget-object p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    return-object p0

    .line 2831
    :cond_fd
    sget-object p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    return-object p0
.end method

.method public final greylist getStringValueX(I)Ljava/lang/String;
    .registers 12

    .line 2888
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 2889
    const-string v0, ""

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    return-object v0

    .line 2892
    :cond_a
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v5, :cond_5e

    const/16 v6, 0x9

    if-ne v2, v6, :cond_18

    goto :goto_5e

    :cond_18
    if-eq v4, v2, :cond_36

    if-ne v3, v2, :cond_1d

    goto :goto_36

    .line 2959
    :cond_1d
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-gez p1, :cond_2d

    neg-int p1, p1

    .line 2964
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v5

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    .line 2967
    :cond_2d
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 2945
    :cond_36
    :goto_36
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p1

    if-ltz p1, :cond_49

    .line 2948
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v0, p1, 0xa

    and-int/lit16 p1, p1, 0x3ff

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2953
    :cond_49
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int p1, p1

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/2addr p1, v5

    .line 2954
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    .line 2953
    invoke-virtual {v0, v1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2897
    :cond_5e
    :goto_5e
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v2

    if-eq v1, v2, :cond_a1

    const/4 v6, 0x0

    move v7, v1

    .line 2905
    :cond_66
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v8

    if-eq v8, v4, :cond_6e

    if-ne v8, v3, :cond_90

    .line 2909
    :cond_6e
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v8, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    if-ltz v8, :cond_7e

    if-ne v1, v7, :cond_7a

    ushr-int/lit8 v7, v8, 0xa

    :cond_7a
    and-int/lit16 v8, v8, 0x3ff

    :goto_7c
    add-int/2addr v6, v8

    goto :goto_90

    :cond_7e
    if-ne v1, v7, :cond_87

    .line 2923
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v9, v8

    invoke-virtual {v7, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    .line 2926
    :cond_87
    iget-object v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v8, v8

    add-int/2addr v8, v5

    invoke-virtual {v9, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    goto :goto_7c

    :cond_90
    :goto_90
    add-int/lit8 v2, v2, 0x1

    .line 2931
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v8

    if-ge v8, p1, :cond_66

    if-lez v6, :cond_a1

    .line 2935
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p0, v7, v6}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a1
    return-object v0
.end method

.method protected final greylist getTypedAttribute(II)I
    .registers 8

    .line 2593
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    return v0

    .line 2598
    :cond_8
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2d

    :cond_f
    add-int/2addr p1, v2

    .line 2606
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    if-eq v1, v0, :cond_2d

    .line 2609
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    if-ne v1, p2, :cond_f

    .line 2615
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_28
    const/16 v1, 0xd

    if-eq v1, v3, :cond_f

    nop

    :cond_2d
    return v0
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2459
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    .line 2461
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    .line 2462
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 2464
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v5

    iget v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    neg-int v7, v0

    const/4 v8, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x7

    move-object v2, p0

    .line 2462
    invoke-virtual/range {v2 .. v8}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result p0

    iput p0, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 2467
    iget-object p0, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget-object v0, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2468
    iget-object p0, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2469
    iget-object p0, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget p1, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 p2, p1, 0x1

    iput p2, v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    return-void
.end method

.method public whitelist test-api startDocument()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v1, 0x9

    const/16 v2, 0x9

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    .line 2285
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result p0

    .line 2289
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1, p0}, Lorg/apache/xml/utils/IntStack;->push(I)I

    const/4 p0, -0x1

    .line 2290
    iput p0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 2292
    iget-object p0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v7, p4

    .line 2086
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    .line 2088
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1, v2, v3, v8}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 2090
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x0

    if-eq v1, v3, :cond_25

    .line 2091
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    goto :goto_26

    :cond_25
    move v5, v9

    .line 2093
    :goto_26
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 2094
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v6, 0x1

    const/4 v1, 0x1

    move-object v0, p0

    .line 2093
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v3

    .line 2096
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_indexing:Z

    if-eqz v1, :cond_3c

    .line 2097
    invoke-virtual {p0, v2, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->indexNode(II)V

    .line 2099
    :cond_3c
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 2101
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v10

    .line 2102
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v11

    .line 2105
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    const/4 v12, 0x0

    const/16 v13, 0xd

    if-nez v1, :cond_73

    .line 2110
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    const-string v2, "xml"

    invoke-virtual {v1, v12, v2, v13}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 2111
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2112
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/16 v1, 0xd

    move-object v0, p0

    .line 2113
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    .line 2115
    iput-boolean v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    :cond_73
    :goto_73
    if-ge v10, v11, :cond_a7

    .line 2120
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_80

    goto :goto_a4

    .line 2125
    :cond_80
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v4, v10, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2127
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v12, v1, v13}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 2129
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2130
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v2, v5, 0x1

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    const/4 v4, -0x1

    const/4 v6, 0x0

    move v2, v1

    const/16 v1, 0xd

    move-object v0, p0

    .line 2132
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    :goto_a4
    add-int/lit8 v10, v10, 0x2

    goto :goto_73

    .line 2135
    :cond_a7
    invoke-interface {v7}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v10

    move v11, v9

    :goto_ac
    const/4 v1, 0x2

    if-ge v11, v10, :cond_131

    .line 2139
    invoke-interface {v7, v11}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    .line 2140
    invoke-interface {v7, v11}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    .line 2141
    invoke-interface {v7, v11}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 2145
    invoke-interface {v7, v11}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_de

    .line 2147
    const-string v12, "xmlns"

    .line 2148
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d1

    const-string v12, "xmlns:"

    .line 2149
    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_de

    .line 2151
    :cond_d1
    invoke-virtual {p0, v4, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2152
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->declAlreadyDeclared(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dc

    goto :goto_12d

    :cond_dc
    move v1, v13

    goto :goto_f1

    .line 2161
    :cond_de
    iget-boolean v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    if-eqz v12, :cond_f1

    invoke-interface {v7, v11}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v12

    const-string v14, "ID"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f1

    .line 2162
    invoke-virtual {p0, v5, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setIDAttribute(Ljava/lang/String;I)V

    :cond_f1
    :goto_f1
    if-nez v5, :cond_f5

    .line 2168
    const-string v5, ""

    .line 2170
    :cond_f5
    iget-object v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v12, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2171
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v12, v5, 0x1

    iput v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    .line 2173
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-eq v12, v14, :cond_121

    .line 2176
    iget-object v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v12, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v4

    .line 2178
    iget-object v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v12}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v12

    .line 2180
    iget-object v14, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v14, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2181
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    neg-int v5, v12

    .line 2186
    :cond_121
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v2, v6, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    .line 2187
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    :goto_12d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_ac

    .line 2191
    :cond_131
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    if-eqz v2, :cond_14c

    .line 2193
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v3

    invoke-interface {v2, v3, p0}, Lorg/apache/xml/dtm/DTMWSFilter;->getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S

    move-result v2

    const/4 v3, 0x3

    if-ne v3, v2, :cond_145

    .line 2195
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getShouldStripWhitespace()Z

    move-result v8

    goto :goto_149

    :cond_145
    if-ne v1, v2, :cond_148

    goto :goto_149

    :cond_148
    move v8, v9

    .line 2198
    :goto_149
    invoke-virtual {p0, v8}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->pushShouldStripWhitespace(Z)V

    :cond_14c
    const/4 v1, -0x1

    .line 2201
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 2203
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method
