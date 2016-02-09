.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;
    }
.end annotation


# static fields
.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field private static final EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

.field protected static final TEXT_LENGTH_BITS:I = 0xa

.field protected static final TEXT_LENGTH_MAX:I = 0x3ff

.field protected static final TEXT_OFFSET_BITS:I = 0x15

.field protected static final TEXT_OFFSET_MAX:I = 0x1fffff


# instance fields
.field protected m_MASK:I

.field protected m_SHIFT:I

.field protected m_blocksize:I

.field protected m_buildIdIndex:Z

.field private m_exptype_map:[[I

.field private m_exptype_map0:[I

.field protected m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

.field private m_firstch_map:[[I

.field private m_firstch_map0:[I

.field private m_maxNodeIndex:I

.field private m_nextsib_map:[[I

.field private m_nextsib_map0:[I

.field private m_parent_map:[[I

.field private m_parent_map0:[I

.field private m_valueIndex:I

.field protected m_values:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1840
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    #@2
    const-string/jumbo v1, ""

    #@5
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    #@a
    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 11
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;
    .param p2, "source"    # Ljavax/xml/transform/Source;
    .param p3, "dtmIdentity"    # I
    .param p4, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p5, "xstringfactory"    # Lorg/apache/xml/utils/XMLStringFactory;
    .param p6, "doIndexing"    # Z

    #@0
    .prologue
    .line 1852
    const/16 v7, 0x200

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v10, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move v3, p3

    #@9
    move-object v4, p4

    #@a
    move-object/from16 v5, p5

    #@c
    move/from16 v6, p6

    #@e
    .line 1851
    invoke-direct/range {v0 .. v10}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZZ)V

    #@11
    .line 1848
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZZ)V
    .locals 12
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;
    .param p2, "source"    # Ljavax/xml/transform/Source;
    .param p3, "dtmIdentity"    # I
    .param p4, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p5, "xstringfactory"    # Lorg/apache/xml/utils/XMLStringFactory;
    .param p6, "doIndexing"    # Z
    .param p7, "blocksize"    # I
    .param p8, "usePrevsib"    # Z
    .param p9, "buildIdIndex"    # Z
    .param p10, "newNameTable"    # Z

    #@0
    .prologue
    move-object v1, p0

    #@1
    move-object v2, p1

    #@2
    move-object v3, p2

    #@3
    move v4, p3

    #@4
    move-object/from16 v5, p4

    #@6
    move-object/from16 v6, p5

    #@8
    move/from16 v7, p6

    #@a
    move/from16 v8, p7

    #@c
    move/from16 v9, p8

    #@e
    move/from16 v10, p10

    #@10
    .line 1868
    invoke-direct/range {v1 .. v10}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    #@13
    .line 1805
    const/4 v1, 0x0

    #@14
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    #@16
    .line 1834
    const/4 v1, 0x1

    #@17
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    #@19
    .line 1873
    const/4 v11, 0x0

    #@1a
    .local v11, "shift":I
    :goto_0
    ushr-int/lit8 p7, p7, 0x1

    #@1c
    if-eqz p7, :cond_0

    #@1e
    add-int/lit8 v11, v11, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1875
    :cond_0
    const/4 v1, 0x1

    #@22
    shl-int/2addr v1, v11

    #@23
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    #@25
    .line 1876
    iput v11, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    #@27
    .line 1877
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    #@29
    add-int/lit8 v1, v1, -0x1

    #@2b
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    #@2d
    .line 1879
    move/from16 v0, p9

    #@2f
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    #@31
    .line 1884
    new-instance v1, Ljava/util/Vector;

    #@33
    const/16 v2, 0x20

    #@35
    const/16 v3, 0x200

    #@37
    invoke-direct {v1, v2, v3}, Ljava/util/Vector;-><init>(II)V

    #@3a
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@3c
    .line 1886
    const/high16 v1, 0x10000

    #@3e
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    #@40
    .line 1889
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@42
    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    #@45
    move-result-object v1

    #@46
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    #@48
    .line 1890
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@4a
    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    #@4d
    move-result-object v1

    #@4e
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map0:[I

    #@50
    .line 1891
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@52
    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    #@55
    move-result-object v1

    #@56
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map0:[I

    #@58
    .line 1892
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@5a
    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    #@5d
    move-result-object v1

    #@5e
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map0:[I

    #@60
    .line 1865
    return-void
.end method


# virtual methods
.method public final _exptype(I)I
    .locals 1
    .param p1, "identity"    # I

    #@0
    .prologue
    .line 1903
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final _exptype2(I)I
    .locals 2
    .param p1, "identity"    # I

    #@0
    .prologue
    .line 1926
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 1927
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    #@6
    aget v0, v0, p1

    #@8
    return v0

    #@9
    .line 1929
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    #@b
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    #@d
    ushr-int v1, p1, v1

    #@f
    aget-object v0, v0, v1

    #@11
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    #@13
    and-int/2addr v1, p1

    #@14
    aget v0, v0, v1

    #@16
    return v0
.end method

.method public final _exptype2Type(I)I
    .locals 1
    .param p1, "exptype"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 2033
    if-eq v0, p1, :cond_0

    #@3
    .line 2034
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@5
    aget-object v0, v0, p1

    #@7
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 2036
    :cond_0
    return v0
.end method

.method public final _firstch2(I)I
    .locals 2
    .param p1, "identity"    # I

    #@0
    .prologue
    .line 1958
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 1959
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map0:[I

    #@6
    aget v0, v0, p1

    #@8
    return v0

    #@9
    .line 1961
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map:[[I

    #@b
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    #@d
    ushr-int v1, p1, v1

    #@f
    aget-object v0, v0, v1

    #@11
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    #@13
    and-int/2addr v1, p1

    #@14
    aget v0, v0, v1

    #@16
    return v0
.end method

.method public final _nextsib2(I)I
    .locals 2
    .param p1, "identity"    # I

    #@0
    .prologue
    .line 1942
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 1943
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map0:[I

    #@6
    aget v0, v0, p1

    #@8
    return v0

    #@9
    .line 1945
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map:[[I

    #@b
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    #@d
    ushr-int v1, p1, v1

    #@f
    aget-object v0, v0, v1

    #@11
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    #@13
    and-int/2addr v1, p1

    #@14
    aget v0, v0, v1

    #@16
    return v0
.end method

.method public final _parent2(I)I
    .locals 2
    .param p1, "identity"    # I

    #@0
    .prologue
    .line 1974
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 1975
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map0:[I

    #@6
    aget v0, v0, p1

    #@8
    return v0

    #@9
    .line 1977
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map:[[I

    #@b
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    #@d
    ushr-int v1, p1, v1

    #@f
    aget-object v0, v0, v1

    #@11
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    #@13
    and-int/2addr v1, p1

    #@14
    aget v0, v0, v1

    #@16
    return v0
.end method

.method public final _type2(I)I
    .locals 4
    .param p1, "identity"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1990
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    #@3
    if-ge p1, v1, :cond_0

    #@5
    .line 1991
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    #@7
    aget v0, v1, p1

    #@9
    .line 1995
    .local v0, "eType":I
    :goto_0
    if-eq v3, v0, :cond_1

    #@b
    .line 1996
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@d
    aget-object v1, v1, v0

    #@f
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 1993
    .end local v0    # "eType":I
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    #@16
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    #@18
    ushr-int v2, p1, v2

    #@1a
    aget-object v1, v1, v2

    #@1c
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    #@1e
    and-int/2addr v2, p1

    #@1f
    aget v0, v1, v2

    #@21
    .restart local v0    # "eType":I
    goto :goto_0

    #@22
    .line 1998
    :cond_1
    return v3
.end method

.method protected final addNode(IIIIIZ)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "expandedTypeID"    # I
    .param p3, "parentIndex"    # I
    .param p4, "previousSibling"    # I
    .param p5, "dataOrPrefix"    # I
    .param p6, "canHaveFirstChild"    # Z

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 2339
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_size:I

    #@3
    add-int/lit8 v1, v0, 0x1

    #@5
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_size:I

    #@7
    .line 2343
    .local v0, "nodeIndex":I
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 2345
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNewDTMID(I)V

    #@e
    .line 2346
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    #@10
    const/high16 v2, 0x10000

    #@12
    add-int/2addr v1, v2

    #@13
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    #@15
    .line 2349
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@17
    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@1a
    .line 2350
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1c
    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@1f
    .line 2351
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@21
    invoke-virtual {v1, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@24
    .line 2352
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@26
    invoke-virtual {v1, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@29
    .line 2353
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2b
    invoke-virtual {v1, p5}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@2e
    .line 2355
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@30
    if-eqz v1, :cond_1

    #@32
    .line 2356
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@34
    invoke-virtual {v1, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@37
    .line 2359
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_locator:Lorg/xml/sax/Locator;

    #@39
    if-eqz v1, :cond_2

    #@3b
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_useSourceLocationProperty:Z

    #@3d
    if-eqz v1, :cond_2

    #@3f
    .line 2360
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->setSourceLocation()V

    #@42
    .line 2367
    :cond_2
    sparse-switch p1, :sswitch_data_0

    #@45
    .line 2375
    if-eq v3, p4, :cond_4

    #@47
    .line 2376
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@49
    invoke-virtual {v1, v0, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@4c
    .line 2384
    :cond_3
    :goto_0
    :sswitch_0
    return v0

    #@4d
    .line 2370
    :sswitch_1
    invoke-virtual {p0, p3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->declareNamespaceInContext(II)V

    #@50
    goto :goto_0

    #@51
    .line 2378
    :cond_4
    if-eq v3, p3, :cond_3

    #@53
    .line 2379
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@55
    invoke-virtual {v1, v0, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@58
    goto :goto_0

    #@59
    .line 2367
    nop

    #@5a
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method protected final charactersFlush()V
    .locals 10

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    const/4 v6, 0x0

    #@2
    .line 2394
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    #@4
    if-ltz v0, :cond_2

    #@6
    .line 2396
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@8
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    #@b
    move-result v0

    #@c
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    #@e
    sub-int v9, v0, v1

    #@10
    .line 2397
    .local v9, "length":I
    const/4 v8, 0x0

    #@11
    .line 2399
    .local v8, "doStrip":Z
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getShouldStripWhitespace()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_0

    #@17
    .line 2401
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@19
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    #@1b
    invoke-virtual {v0, v1, v9}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    #@1e
    move-result v8

    #@1f
    .line 2404
    .end local v8    # "doStrip":Z
    :cond_0
    if-eqz v8, :cond_3

    #@21
    .line 2405
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@23
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    #@25
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    #@28
    .line 2434
    :cond_1
    :goto_0
    const/4 v0, -0x1

    #@29
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    #@2b
    .line 2435
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_coalescedTextType:I

    #@2d
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textType:I

    #@2f
    .line 2391
    .end local v9    # "length":I
    :cond_2
    return-void

    #@30
    .line 2409
    .restart local v9    # "length":I
    :cond_3
    if-lez v9, :cond_1

    #@32
    .line 2413
    const/16 v0, 0x3ff

    #@34
    if-gt v9, v0, :cond_4

    #@36
    .line 2414
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    #@38
    const v1, 0x1fffff

    #@3b
    if-gt v0, v1, :cond_4

    #@3d
    .line 2415
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_coalescedTextType:I

    #@3f
    .line 2416
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@41
    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@44
    move-result v3

    #@45
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    #@47
    .line 2417
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    #@49
    shl-int/lit8 v0, v0, 0xa

    #@4b
    add-int v5, v9, v0

    #@4d
    move-object v0, p0

    #@4e
    .line 2415
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    #@51
    move-result v0

    #@52
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    #@54
    goto :goto_0

    #@55
    .line 2423
    :cond_4
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@57
    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@5a
    move-result v7

    #@5b
    .line 2424
    .local v7, "dataIndex":I
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_coalescedTextType:I

    #@5d
    .line 2425
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@5f
    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@62
    move-result v3

    #@63
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    #@65
    neg-int v5, v7

    #@66
    move-object v0, p0

    #@67
    .line 2424
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    #@6a
    move-result v0

    #@6b
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    #@6d
    .line 2427
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@6f
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    #@71
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@74
    .line 2428
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@76
    invoke-virtual {v0, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@79
    goto :goto_0
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
    .line 2261
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_insideDTD:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2262
    return-void

    #@7
    .line 2264
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    #@a
    .line 2268
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@c
    new-instance v2, Ljava/lang/String;

    #@e
    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@11
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@14
    .line 2269
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    #@16
    add-int/lit8 v0, v5, 0x1

    #@18
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    #@1a
    .line 2272
    .local v5, "dataIndex":I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@1c
    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@1f
    move-result v3

    #@20
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    #@22
    const/4 v6, 0x0

    #@23
    move-object v0, p0

    #@24
    move v2, v1

    #@25
    .line 2271
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    #@28
    move-result v0

    #@29
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    #@2b
    .line 2258
    return-void
.end method

.method protected final copyAttribute(IILorg/apache/xml/serializer/SerializationHandler;)V
    .locals 14
    .param p1, "nodeID"    # I
    .param p2, "exptype"    # I
    .param p3, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 3356
    iget-object v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@2
    aget-object v3, v12, p2

    #@4
    .line 3357
    .local v3, "extType":Lorg/apache/xml/dtm/ref/ExtendedType;
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    #@7
    move-result-object v10

    #@8
    .line 3358
    .local v10, "uri":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    .line 3360
    .local v4, "localName":Ljava/lang/String;
    const/4 v7, 0x0

    #@d
    .line 3361
    .local v7, "prefix":Ljava/lang/String;
    const/4 v9, 0x0

    #@e
    .line 3362
    .local v9, "qname":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    #@11
    move-result v2

    #@12
    .line 3363
    .local v2, "dataIndex":I
    move v11, v2

    #@13
    .line 3364
    .local v11, "valueIndex":I
    if-gtz v2, :cond_0

    #@15
    .line 3365
    iget-object v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@17
    neg-int v13, v2

    #@18
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@1b
    move-result v8

    #@1c
    .line 3366
    .local v8, "prefixIndex":I
    iget-object v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1e
    neg-int v13, v2

    #@1f
    add-int/lit8 v13, v13, 0x1

    #@21
    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@24
    move-result v11

    #@25
    .line 3367
    iget-object v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@27
    invoke-virtual {v12, v8}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@2a
    move-result-object v9

    #@2b
    .line 3368
    .local v9, "qname":Ljava/lang/String;
    const/16 v12, 0x3a

    #@2d
    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    #@30
    move-result v1

    #@31
    .line 3369
    .local v1, "colonIndex":I
    if-lez v1, :cond_0

    #@33
    .line 3370
    const/4 v12, 0x0

    #@34
    invoke-virtual {v9, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@37
    move-result-object v7

    #@38
    .line 3373
    .end local v1    # "colonIndex":I
    .end local v7    # "prefix":Ljava/lang/String;
    .end local v8    # "prefixIndex":I
    .end local v9    # "qname":Ljava/lang/String;
    :cond_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@3b
    move-result v12

    #@3c
    if-eqz v12, :cond_1

    #@3e
    .line 3374
    move-object/from16 v0, p3

    #@40
    invoke-interface {v0, v7, v10}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    #@43
    .line 3377
    :cond_1
    if-eqz v7, :cond_2

    #@45
    move-object v5, v9

    #@46
    .line 3378
    .local v5, "nodeName":Ljava/lang/String;
    :goto_0
    iget-object v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@48
    invoke-virtual {v12, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@4b
    move-result-object v6

    #@4c
    check-cast v6, Ljava/lang/String;

    #@4e
    .line 3380
    .local v6, "nodeValue":Ljava/lang/String;
    move-object/from16 v0, p3

    #@50
    invoke-interface {v0, v5, v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    #@53
    .line 3346
    return-void

    #@54
    .line 3377
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "nodeValue":Ljava/lang/String;
    :cond_2
    move-object v5, v4

    #@55
    .restart local v5    # "nodeName":Ljava/lang/String;
    goto :goto_0
.end method

.method protected final copyAttributes(ILorg/apache/xml/serializer/SerializationHandler;)V
    .locals 3
    .param p1, "nodeID"    # I
    .param p2, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 3329
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getFirstAttributeIdentity(I)I

    #@3
    move-result v0

    #@4
    .local v0, "current":I
    :goto_0
    const/4 v2, -0x1

    #@5
    if-eq v0, v2, :cond_0

    #@7
    .line 3330
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@a
    move-result v1

    #@b
    .line 3331
    .local v1, "eType":I
    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->copyAttribute(IILorg/apache/xml/serializer/SerializationHandler;)V

    #@e
    .line 3329
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getNextAttributeIdentity(I)I

    #@11
    move-result v0

    #@12
    goto :goto_0

    #@13
    .line 3327
    .end local v1    # "eType":I
    :cond_0
    return-void
.end method

.method protected final copyElement(IILorg/apache/xml/serializer/SerializationHandler;)Ljava/lang/String;
    .locals 9
    .param p1, "nodeID"    # I
    .param p2, "exptype"    # I
    .param p3, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3196
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@3
    aget-object v0, v7, p2

    #@5
    .line 3197
    .local v0, "extType":Lorg/apache/xml/dtm/ref/ExtendedType;
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    #@8
    move-result-object v6

    #@9
    .line 3198
    .local v6, "uri":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 3200
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@10
    move-result v7

    #@11
    if-nez v7, :cond_0

    #@13
    .line 3201
    invoke-interface {p3, v1}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;)V

    #@16
    .line 3202
    return-object v1

    #@17
    .line 3205
    :cond_0
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@19
    invoke-virtual {v7, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@1c
    move-result v5

    #@1d
    .line 3207
    .local v5, "qnameIndex":I
    if-nez v5, :cond_1

    #@1f
    .line 3208
    invoke-interface {p3, v1}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;)V

    #@22
    .line 3209
    const-string/jumbo v7, ""

    #@25
    invoke-interface {p3, v7, v6}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 3210
    return-object v1

    #@29
    .line 3213
    :cond_1
    if-gez v5, :cond_2

    #@2b
    .line 3214
    neg-int v5, v5

    #@2c
    .line 3215
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2e
    invoke-virtual {v7, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@31
    move-result v5

    #@32
    .line 3218
    :cond_2
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@34
    invoke-virtual {v7, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 3219
    .local v4, "qName":Ljava/lang/String;
    invoke-interface {p3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;)V

    #@3b
    .line 3220
    const/16 v7, 0x3a

    #@3d
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    #@40
    move-result v3

    #@41
    .line 3222
    .local v3, "prefixIndex":I
    if-lez v3, :cond_3

    #@43
    .line 3223
    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    .line 3228
    :goto_0
    invoke-interface {p3, v2, v6}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 3229
    return-object v4

    #@4b
    .line 3226
    :cond_3
    const/4 v2, 0x0

    #@4c
    .local v2, "prefix":Ljava/lang/String;
    goto :goto_0
.end method

.method protected final copyNS(ILorg/apache/xml/serializer/SerializationHandler;Z)V
    .locals 10
    .param p1, "nodeID"    # I
    .param p2, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .param p3, "inScope"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 3251
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@4
    if-eqz v7, :cond_0

    #@6
    .line 3252
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@8
    invoke-virtual {v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@b
    move-result v7

    #@c
    if-ne v7, v9, :cond_0

    #@e
    .line 3253
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_namespaceDeclSets:Ljava/util/Vector;

    #@10
    if-eqz v7, :cond_0

    #@12
    .line 3254
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_namespaceDeclSets:Ljava/util/Vector;

    #@14
    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@17
    move-result-object v7

    #@18
    check-cast v7, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1a
    invoke-virtual {v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@1d
    move-result v7

    #@1e
    if-ne v7, v9, :cond_0

    #@20
    .line 3256
    return-void

    #@21
    .line 3258
    :cond_0
    const/4 v5, 0x0

    #@22
    .line 3262
    .local v5, "nsContext":Lorg/apache/xml/utils/SuballocatedIntVector;
    if-eqz p3, :cond_4

    #@24
    .line 3263
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    #@27
    move-result-object v5

    #@28
    .line 3264
    .local v5, "nsContext":Lorg/apache/xml/utils/SuballocatedIntVector;
    if-eqz v5, :cond_1

    #@2a
    invoke-virtual {v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@2d
    move-result v7

    #@2e
    if-ge v7, v9, :cond_2

    #@30
    .line 3265
    :cond_1
    return-void

    #@31
    .line 3267
    :cond_2
    invoke-virtual {v5, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@34
    move-result v7

    #@35
    invoke-virtual {p0, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@38
    move-result v2

    #@39
    .line 3272
    .end local v5    # "nsContext":Lorg/apache/xml/utils/SuballocatedIntVector;
    .local v2, "nextNSNode":I
    :goto_0
    const/4 v6, 0x1

    #@3a
    .line 3273
    .local v6, "nsIndex":I
    :goto_1
    const/4 v7, -0x1

    #@3b
    if-eq v2, v7, :cond_7

    #@3d
    .line 3275
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@40
    move-result v1

    #@41
    .line 3276
    .local v1, "eType":I
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@43
    aget-object v7, v7, v1

    #@45
    invoke-virtual {v7}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    .line 3279
    .local v3, "nodeName":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@4b
    invoke-virtual {v7, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@4e
    move-result v0

    #@4f
    .line 3281
    .local v0, "dataIndex":I
    if-gez v0, :cond_3

    #@51
    .line 3282
    neg-int v0, v0

    #@52
    .line 3283
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@54
    add-int/lit8 v8, v0, 0x1

    #@56
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@59
    move-result v0

    #@5a
    .line 3286
    :cond_3
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@5c
    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5f
    move-result-object v4

    #@60
    check-cast v4, Ljava/lang/String;

    #@62
    .line 3288
    .local v4, "nodeValue":Ljava/lang/String;
    invoke-interface {p2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    #@65
    .line 3290
    if-eqz p3, :cond_6

    #@67
    .line 3291
    invoke-virtual {v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@6a
    move-result v7

    #@6b
    if-ge v6, v7, :cond_5

    #@6d
    .line 3292
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@70
    move-result v7

    #@71
    invoke-virtual {p0, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@74
    move-result v2

    #@75
    .line 3293
    add-int/lit8 v6, v6, 0x1

    #@77
    goto :goto_1

    #@78
    .line 3270
    .end local v0    # "dataIndex":I
    .end local v1    # "eType":I
    .end local v2    # "nextNSNode":I
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "nodeValue":Ljava/lang/String;
    .end local v6    # "nsIndex":I
    .local v5, "nsContext":Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getNextNamespaceNode2(I)I

    #@7b
    move-result v2

    #@7c
    .restart local v2    # "nextNSNode":I
    goto :goto_0

    #@7d
    .line 3296
    .end local v5    # "nsContext":Lorg/apache/xml/utils/SuballocatedIntVector;
    .restart local v0    # "dataIndex":I
    .restart local v1    # "eType":I
    .restart local v3    # "nodeName":Ljava/lang/String;
    .restart local v4    # "nodeValue":Ljava/lang/String;
    .restart local v6    # "nsIndex":I
    :cond_5
    return-void

    #@7e
    .line 3299
    :cond_6
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getNextNamespaceNode2(I)I

    #@81
    move-result v2

    #@82
    goto :goto_1

    #@83
    .line 3243
    .end local v0    # "dataIndex":I
    .end local v1    # "eType":I
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "nodeValue":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method protected final copyTextNode(ILorg/apache/xml/serializer/SerializationHandler;)V
    .locals 5
    .param p1, "nodeID"    # I
    .param p2, "handler"    # Lorg/apache/xml/serializer/SerializationHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 3171
    const/4 v1, -0x1

    #@1
    if-eq p1, v1, :cond_0

    #@3
    .line 3172
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@5
    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@8
    move-result v0

    #@9
    .line 3173
    .local v0, "dataIndex":I
    if-ltz v0, :cond_1

    #@b
    .line 3174
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@d
    .line 3175
    ushr-int/lit8 v2, v0, 0xa

    #@f
    .line 3176
    and-int/lit16 v3, v0, 0x3ff

    #@11
    .line 3174
    invoke-virtual {v1, p2, v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    #@14
    .line 3169
    .end local v0    # "dataIndex":I
    :cond_0
    :goto_0
    return-void

    #@15
    .line 3178
    .restart local v0    # "dataIndex":I
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@17
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@19
    neg-int v3, v0

    #@1a
    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@1d
    move-result v2

    #@1e
    .line 3179
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@20
    neg-int v4, v0

    #@21
    add-int/lit8 v4, v4, 0x1

    #@23
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@26
    move-result v3

    #@27
    .line 3178
    invoke-virtual {v1, p2, v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    #@2a
    goto :goto_0
.end method

.method public final dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 11
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
    .line 3018
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@3
    move-result v1

    #@4
    .line 3020
    .local v1, "identity":I
    const/4 v7, -0x1

    #@5
    if-ne v1, v7, :cond_0

    #@7
    .line 3021
    return-void

    #@8
    .line 3023
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@b
    move-result v6

    #@c
    .line 3025
    .local v6, "type":I
    const/4 v7, 0x1

    #@d
    if-eq v6, v7, :cond_1

    #@f
    const/16 v7, 0x9

    #@11
    if-ne v6, v7, :cond_a

    #@13
    .line 3027
    :cond_1
    move v4, v1

    #@14
    .line 3028
    .local v4, "startNode":I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    #@17
    move-result v1

    #@18
    .line 3029
    const/4 v7, -0x1

    #@19
    if-eq v7, v1, :cond_6

    #@1b
    .line 3031
    const/4 v3, -0x1

    #@1c
    .line 3032
    .local v3, "offset":I
    const/4 v2, 0x0

    #@1d
    .line 3036
    .local v2, "length":I
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@20
    move-result v6

    #@21
    .line 3038
    const/4 v7, 0x3

    #@22
    if-eq v6, v7, :cond_3

    #@24
    const/4 v7, 0x4

    #@25
    if-ne v6, v7, :cond_5

    #@27
    .line 3040
    :cond_3
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@29
    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@2c
    move-result v0

    #@2d
    .line 3042
    .local v0, "dataIndex":I
    if-ltz v0, :cond_7

    #@2f
    .line 3044
    const/4 v7, -0x1

    #@30
    if-ne v7, v3, :cond_4

    #@32
    .line 3046
    ushr-int/lit8 v3, v0, 0xa

    #@34
    .line 3049
    :cond_4
    and-int/lit16 v7, v0, 0x3ff

    #@36
    add-int/2addr v2, v7

    #@37
    .line 3062
    .end local v0    # "dataIndex":I
    :cond_5
    :goto_0
    add-int/lit8 v1, v1, 0x1

    #@39
    .line 3063
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@3c
    move-result v7

    #@3d
    if-ge v7, v4, :cond_2

    #@3f
    .line 3065
    if-lez v2, :cond_6

    #@41
    .line 3067
    if-eqz p3, :cond_9

    #@43
    .line 3068
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@45
    invoke-virtual {v7, p2, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    #@48
    .line 3015
    .end local v2    # "length":I
    .end local v3    # "offset":I
    .end local v4    # "startNode":I
    :cond_6
    :goto_1
    return-void

    #@49
    .line 3053
    .restart local v0    # "dataIndex":I
    .restart local v2    # "length":I
    .restart local v3    # "offset":I
    .restart local v4    # "startNode":I
    :cond_7
    const/4 v7, -0x1

    #@4a
    if-ne v7, v3, :cond_8

    #@4c
    .line 3055
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@4e
    neg-int v8, v0

    #@4f
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@52
    move-result v3

    #@53
    .line 3058
    :cond_8
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@55
    neg-int v8, v0

    #@56
    add-int/lit8 v8, v8, 0x1

    #@58
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@5b
    move-result v7

    #@5c
    add-int/2addr v2, v7

    #@5d
    goto :goto_0

    #@5e
    .line 3070
    .end local v0    # "dataIndex":I
    :cond_9
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@60
    invoke-virtual {v7, p2, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    #@63
    goto :goto_1

    #@64
    .line 3074
    .end local v2    # "length":I
    .end local v3    # "offset":I
    .end local v4    # "startNode":I
    :cond_a
    const/4 v7, 0x3

    #@65
    if-eq v7, v6, :cond_b

    #@67
    const/4 v7, 0x4

    #@68
    if-ne v7, v6, :cond_f

    #@6a
    .line 3076
    :cond_b
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@6c
    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@6f
    move-result v0

    #@70
    .line 3078
    .restart local v0    # "dataIndex":I
    if-ltz v0, :cond_d

    #@72
    .line 3080
    if-eqz p3, :cond_c

    #@74
    .line 3081
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@76
    ushr-int/lit8 v8, v0, 0xa

    #@78
    .line 3082
    and-int/lit16 v9, v0, 0x3ff

    #@7a
    .line 3081
    invoke-virtual {v7, p2, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    #@7d
    goto :goto_1

    #@7e
    .line 3084
    :cond_c
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@80
    ushr-int/lit8 v8, v0, 0xa

    #@82
    .line 3085
    and-int/lit16 v9, v0, 0x3ff

    #@84
    .line 3084
    invoke-virtual {v7, p2, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    #@87
    goto :goto_1

    #@88
    .line 3089
    :cond_d
    if-eqz p3, :cond_e

    #@8a
    .line 3090
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@8c
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@8e
    neg-int v9, v0

    #@8f
    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@92
    move-result v8

    #@93
    .line 3091
    iget-object v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@95
    neg-int v10, v0

    #@96
    add-int/lit8 v10, v10, 0x1

    #@98
    invoke-virtual {v9, v10}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@9b
    move-result v9

    #@9c
    .line 3090
    invoke-virtual {v7, p2, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    #@9f
    goto :goto_1

    #@a0
    .line 3093
    :cond_e
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@a2
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@a4
    neg-int v9, v0

    #@a5
    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@a8
    move-result v8

    #@a9
    .line 3094
    iget-object v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@ab
    neg-int v10, v0

    #@ac
    add-int/lit8 v10, v10, 0x1

    #@ae
    invoke-virtual {v9, v10}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@b1
    move-result v9

    #@b2
    .line 3093
    invoke-virtual {v7, p2, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    #@b5
    goto :goto_1

    #@b6
    .line 3099
    .end local v0    # "dataIndex":I
    :cond_f
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@b8
    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@bb
    move-result v0

    #@bc
    .line 3101
    .restart local v0    # "dataIndex":I
    if-gez v0, :cond_10

    #@be
    .line 3103
    neg-int v0, v0

    #@bf
    .line 3104
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@c1
    add-int/lit8 v8, v0, 0x1

    #@c3
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@c6
    move-result v0

    #@c7
    .line 3107
    :cond_10
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@c9
    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@cc
    move-result-object v5

    #@cd
    check-cast v5, Ljava/lang/String;

    #@cf
    .line 3109
    .local v5, "str":Ljava/lang/String;
    if-eqz p3, :cond_11

    #@d1
    .line 3110
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    #@d4
    move-result-object v7

    #@d5
    .line 3111
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@d8
    move-result v8

    #@d9
    const/4 v9, 0x0

    #@da
    .line 3110
    invoke-static {v7, v9, v8, p2}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V

    #@dd
    goto/16 :goto_1

    #@df
    .line 3113
    :cond_11
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    #@e2
    move-result-object v7

    #@e3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@e6
    move-result v8

    #@e7
    const/4 v9, 0x0

    #@e8
    invoke-interface {p2, v7, v9, v8}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@eb
    goto/16 :goto_1
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 2304
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->endDocument()V

    #@4
    .line 2308
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@6
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@9
    .line 2309
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@b
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@e
    .line 2310
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@10
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@13
    .line 2311
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@15
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@18
    .line 2314
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@1a
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExtendedTypes()[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@20
    .line 2315
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@22
    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    #@28
    .line 2316
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2a
    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map:[[I

    #@30
    .line 2317
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@32
    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map:[[I

    #@38
    .line 2318
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@3a
    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map:[[I

    #@40
    .line 2302
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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
    .line 2229
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    #@3
    .line 2233
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@5
    const/4 v2, 0x1

    #@6
    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    #@9
    .line 2236
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@b
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@e
    move-result v0

    #@f
    .line 2237
    .local v0, "topContextIndex":I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    #@11
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@14
    move-result v1

    #@15
    if-eq v0, v1, :cond_0

    #@17
    .line 2238
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    #@19
    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    #@1c
    .line 2241
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@1e
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->pop()I

    #@21
    move-result v1

    #@22
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    #@24
    .line 2243
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->popShouldStripWhitespace()V

    #@27
    .line 2227
    return-void
.end method

.method public final getExpandedTypeID2(I)I
    .locals 3
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 2009
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@4
    move-result v0

    #@5
    .line 2013
    .local v0, "nodeID":I
    if-eq v0, v1, :cond_1

    #@7
    .line 2014
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 2015
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    #@d
    aget v1, v1, v0

    #@f
    return v1

    #@10
    .line 2017
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    #@12
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    #@14
    ushr-int v2, v0, v2

    #@16
    aget-object v1, v1, v2

    #@18
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    #@1a
    and-int/2addr v2, v0

    #@1b
    aget v1, v1, v2

    #@1d
    return v1

    #@1e
    .line 2020
    :cond_1
    return v1
.end method

.method public final getFirstAttribute(I)I
    .locals 4
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 2483
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@4
    move-result v0

    #@5
    .line 2485
    .local v0, "nodeID":I
    if-ne v0, v3, :cond_0

    #@7
    .line 2486
    return v3

    #@8
    .line 2488
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@b
    move-result v1

    #@c
    .line 2490
    .local v1, "type":I
    const/4 v2, 0x1

    #@d
    if-ne v2, v1, :cond_3

    #@f
    .line 2495
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@11
    .line 2497
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@14
    move-result v1

    #@15
    .line 2499
    const/4 v2, 0x2

    #@16
    if-ne v1, v2, :cond_2

    #@18
    .line 2501
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@1b
    move-result v2

    #@1c
    return v2

    #@1d
    .line 2503
    :cond_2
    const/16 v2, 0xd

    #@1f
    if-eq v2, v1, :cond_1

    #@21
    .line 2510
    :cond_3
    return v3
.end method

.method protected getFirstAttributeIdentity(I)I
    .locals 3
    .param p1, "identity"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 2522
    if-ne p1, v2, :cond_0

    #@3
    .line 2523
    return v2

    #@4
    .line 2525
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@7
    move-result v0

    #@8
    .line 2527
    .local v0, "type":I
    const/4 v1, 0x1

    #@9
    if-ne v1, v0, :cond_3

    #@b
    .line 2532
    :cond_1
    add-int/lit8 p1, p1, 0x1

    #@d
    .line 2535
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@10
    move-result v0

    #@11
    .line 2537
    const/4 v1, 0x2

    #@12
    if-ne v0, v1, :cond_2

    #@14
    .line 2539
    return p1

    #@15
    .line 2541
    :cond_2
    const/16 v1, 0xd

    #@17
    if-eq v1, v0, :cond_1

    #@19
    .line 2548
    :cond_3
    return v2
.end method

.method public getIdForNamespace(Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2049
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 2050
    .local v0, "index":I
    if-gez v0, :cond_0

    #@8
    .line 2052
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@a
    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@d
    .line 2053
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    #@f
    add-int/lit8 v2, v1, 0x1

    #@11
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    #@13
    return v1

    #@14
    .line 2056
    :cond_0
    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 4
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 2639
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@3
    move-result v2

    #@4
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype(I)I

    #@7
    move-result v1

    #@8
    .line 2641
    .local v1, "expType":I
    const/4 v2, 0x7

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 2643
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@e
    move-result v2

    #@f
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    #@12
    move-result v0

    #@13
    .line 2644
    .local v0, "dataIndex":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@15
    neg-int v3, v0

    #@16
    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@19
    move-result v0

    #@1a
    .line 2645
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@1c
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    return-object v2

    #@21
    .line 2648
    .end local v0    # "dataIndex":I
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@23
    invoke-virtual {v2, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2
.end method

.method protected getNextAttributeIdentity(I)I
    .locals 2
    .param p1, "identity"    # I

    #@0
    .prologue
    .line 2566
    :cond_0
    add-int/lit8 p1, p1, 0x1

    #@2
    .line 2567
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@5
    move-result v0

    #@6
    .line 2569
    .local v0, "type":I
    const/4 v1, 0x2

    #@7
    if-ne v0, v1, :cond_1

    #@9
    .line 2570
    return p1

    #@a
    .line 2571
    :cond_1
    const/16 v1, 0xd

    #@c
    if-eq v0, v1, :cond_0

    #@e
    .line 2576
    const/4 v1, -0x1

    #@f
    return v1
.end method

.method protected final getNextNamespaceNode2(I)I
    .locals 2
    .param p1, "baseID"    # I

    #@0
    .prologue
    .line 3312
    :cond_0
    add-int/lit8 p1, p1, 0x1

    #@2
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@5
    move-result v0

    #@6
    .local v0, "type":I
    const/4 v1, 0x2

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 3314
    const/16 v1, 0xd

    #@b
    if-ne v0, v1, :cond_1

    #@d
    .line 3315
    return p1

    #@e
    .line 3317
    :cond_1
    const/4 v1, -0x1

    #@f
    return v1
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 9
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 2710
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@3
    move-result v4

    #@4
    .line 2711
    .local v4, "nodeID":I
    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@7
    move-result v1

    #@8
    .line 2713
    .local v1, "eType":I
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@a
    aget-object v2, v7, v1

    #@c
    .line 2714
    .local v2, "extType":Lorg/apache/xml/dtm/ref/ExtendedType;
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@13
    move-result v7

    #@14
    if-nez v7, :cond_4

    #@16
    .line 2716
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    #@19
    move-result v6

    #@1a
    .line 2718
    .local v6, "type":I
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 2719
    .local v3, "localName":Ljava/lang/String;
    const/16 v7, 0xd

    #@20
    if-ne v6, v7, :cond_1

    #@22
    .line 2721
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@25
    move-result v7

    #@26
    if-nez v7, :cond_0

    #@28
    .line 2722
    const-string/jumbo v7, "xmlns"

    #@2b
    return-object v7

    #@2c
    .line 2724
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v8, "xmlns:"

    #@34
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    return-object v7

    #@41
    .line 2726
    :cond_1
    const/4 v7, 0x7

    #@42
    if-ne v6, v7, :cond_2

    #@44
    .line 2728
    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    #@47
    move-result v0

    #@48
    .line 2729
    .local v0, "dataIndex":I
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@4a
    neg-int v8, v0

    #@4b
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@4e
    move-result v0

    #@4f
    .line 2730
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@51
    invoke-virtual {v7, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@54
    move-result-object v7

    #@55
    return-object v7

    #@56
    .line 2732
    .end local v0    # "dataIndex":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@59
    move-result v7

    #@5a
    if-nez v7, :cond_3

    #@5c
    .line 2734
    invoke-virtual {p0, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getFixedNames(I)Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    return-object v7

    #@61
    .line 2737
    :cond_3
    return-object v3

    #@62
    .line 2741
    .end local v3    # "localName":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_4
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@64
    invoke-virtual {v7, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@67
    move-result v5

    #@68
    .line 2743
    .local v5, "qnameIndex":I
    if-nez v5, :cond_5

    #@6a
    .line 2744
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    #@6d
    move-result-object v7

    #@6e
    return-object v7

    #@6f
    .line 2746
    :cond_5
    if-gez v5, :cond_6

    #@71
    .line 2748
    neg-int v5, v5

    #@72
    .line 2749
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@74
    invoke-virtual {v7, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@77
    move-result v5

    #@78
    .line 2752
    :cond_6
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@7a
    invoke-virtual {v7, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@7d
    move-result-object v7

    #@7e
    return-object v7
.end method

.method public final getNodeNameX(I)Ljava/lang/String;
    .locals 7
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 2663
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@3
    move-result v3

    #@4
    .line 2664
    .local v3, "nodeID":I
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@7
    move-result v1

    #@8
    .line 2666
    .local v1, "eType":I
    const/4 v5, 0x7

    #@9
    if-ne v1, v5, :cond_0

    #@b
    .line 2668
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    #@e
    move-result v0

    #@f
    .line 2669
    .local v0, "dataIndex":I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@11
    neg-int v6, v0

    #@12
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@15
    move-result v0

    #@16
    .line 2670
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@18
    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    return-object v5

    #@1d
    .line 2673
    .end local v0    # "dataIndex":I
    :cond_0
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@1f
    aget-object v2, v5, v1

    #@21
    .line 2675
    .local v2, "extType":Lorg/apache/xml/dtm/ref/ExtendedType;
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@28
    move-result v5

    #@29
    if-nez v5, :cond_1

    #@2b
    .line 2677
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    return-object v5

    #@30
    .line 2681
    :cond_1
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@32
    invoke-virtual {v5, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@35
    move-result v4

    #@36
    .line 2683
    .local v4, "qnameIndex":I
    if-nez v4, :cond_2

    #@38
    .line 2684
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    return-object v5

    #@3d
    .line 2686
    :cond_2
    if-gez v4, :cond_3

    #@3f
    .line 2688
    neg-int v4, v4

    #@40
    .line 2689
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@42
    invoke-virtual {v5, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@45
    move-result v4

    #@46
    .line 2692
    :cond_3
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@48
    invoke-virtual {v5, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    return-object v5
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 7
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 3129
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@3
    move-result v1

    #@4
    .line 3130
    .local v1, "identity":I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@7
    move-result v2

    #@8
    .line 3132
    .local v2, "type":I
    const/4 v3, 0x3

    #@9
    if-eq v2, v3, :cond_0

    #@b
    const/4 v3, 0x4

    #@c
    if-ne v2, v3, :cond_2

    #@e
    .line 3134
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    #@11
    move-result v0

    #@12
    .line 3135
    .local v0, "dataIndex":I
    if-lez v0, :cond_1

    #@14
    .line 3137
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@16
    ushr-int/lit8 v4, v0, 0xa

    #@18
    .line 3138
    and-int/lit16 v5, v0, 0x3ff

    #@1a
    .line 3137
    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 3142
    :cond_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@21
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@23
    neg-int v5, v0

    #@24
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@27
    move-result v4

    #@28
    .line 3143
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2a
    neg-int v6, v0

    #@2b
    add-int/lit8 v6, v6, 0x1

    #@2d
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@30
    move-result v5

    #@31
    .line 3142
    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    return-object v3

    #@36
    .line 3146
    .end local v0    # "dataIndex":I
    :cond_2
    const/4 v3, 0x1

    #@37
    if-eq v3, v2, :cond_3

    #@39
    const/16 v3, 0xb

    #@3b
    if-ne v3, v2, :cond_4

    #@3d
    .line 3149
    :cond_3
    const/4 v3, 0x0

    #@3e
    return-object v3

    #@3f
    .line 3147
    :cond_4
    const/16 v3, 0x9

    #@41
    if-eq v3, v2, :cond_3

    #@43
    .line 3153
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@45
    invoke-virtual {v3, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@48
    move-result v0

    #@49
    .line 3155
    .restart local v0    # "dataIndex":I
    if-gez v0, :cond_5

    #@4b
    .line 3157
    neg-int v0, v0

    #@4c
    .line 3158
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@4e
    add-int/lit8 v4, v0, 0x1

    #@50
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@53
    move-result v0

    #@54
    .line 3161
    :cond_5
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@56
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@59
    move-result-object v3

    #@5a
    check-cast v3, Ljava/lang/String;

    #@5c
    return-object v3
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 2976
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    #@5
    move-result v0

    #@6
    .line 2977
    .local v0, "child":I
    if-ne v0, v4, :cond_0

    #@8
    const-string/jumbo v2, ""

    #@b
    return-object v2

    #@c
    .line 2980
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@f
    move-result v2

    #@10
    const/4 v3, 0x3

    #@11
    if-ne v2, v3, :cond_2

    #@13
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    #@16
    move-result v2

    #@17
    if-ne v2, v4, :cond_2

    #@19
    .line 2982
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1b
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@1e
    move-result v1

    #@1f
    .line 2983
    .local v1, "dataIndex":I
    if-ltz v1, :cond_1

    #@21
    .line 2984
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@23
    ushr-int/lit8 v3, v1, 0xa

    #@25
    and-int/lit16 v4, v1, 0x3ff

    #@27
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    return-object v2

    #@2c
    .line 2986
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@2e
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@30
    neg-int v4, v1

    #@31
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@34
    move-result v3

    #@35
    .line 2987
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@37
    neg-int v5, v1

    #@38
    add-int/lit8 v5, v5, 0x1

    #@3a
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@3d
    move-result v4

    #@3e
    .line 2986
    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    return-object v2

    #@43
    .line 2990
    .end local v1    # "dataIndex":I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    #@46
    move-result v2

    #@47
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getStringValueX(I)Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    return-object v2
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .locals 11
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v10, 0x4

    #@1
    const/4 v9, 0x3

    #@2
    const/4 v8, -0x1

    #@3
    .line 2775
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@6
    move-result v1

    #@7
    .line 2776
    .local v1, "identity":I
    if-ne v1, v8, :cond_0

    #@9
    .line 2777
    sget-object v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    #@b
    return-object v6

    #@c
    .line 2779
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@f
    move-result v5

    #@10
    .line 2781
    .local v5, "type":I
    const/4 v6, 0x1

    #@11
    if-eq v5, v6, :cond_1

    #@13
    const/16 v6, 0x9

    #@15
    if-ne v5, v6, :cond_b

    #@17
    .line 2783
    :cond_1
    move v4, v1

    #@18
    .line 2784
    .local v4, "startNode":I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    #@1b
    move-result v1

    #@1c
    .line 2785
    if-eq v8, v1, :cond_a

    #@1e
    .line 2787
    const/4 v3, -0x1

    #@1f
    .line 2788
    .local v3, "offset":I
    const/4 v2, 0x0

    #@20
    .line 2792
    .local v2, "length":I
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@23
    move-result v5

    #@24
    .line 2794
    if-eq v5, v9, :cond_3

    #@26
    if-ne v5, v10, :cond_5

    #@28
    .line 2796
    :cond_3
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2a
    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@2d
    move-result v0

    #@2e
    .line 2797
    .local v0, "dataIndex":I
    if-ltz v0, :cond_6

    #@30
    .line 2799
    if-ne v8, v3, :cond_4

    #@32
    .line 2801
    ushr-int/lit8 v3, v0, 0xa

    #@34
    .line 2804
    :cond_4
    and-int/lit16 v6, v0, 0x3ff

    #@36
    add-int/2addr v2, v6

    #@37
    .line 2817
    .end local v0    # "dataIndex":I
    :cond_5
    :goto_0
    add-int/lit8 v1, v1, 0x1

    #@39
    .line 2818
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@3c
    move-result v6

    #@3d
    if-ge v6, v4, :cond_2

    #@3f
    .line 2820
    if-lez v2, :cond_9

    #@41
    .line 2822
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@43
    if-eqz v6, :cond_8

    #@45
    .line 2823
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@47
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@49
    invoke-virtual {v6, v7, v3, v2}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    #@4c
    move-result-object v6

    #@4d
    return-object v6

    #@4e
    .line 2808
    .restart local v0    # "dataIndex":I
    :cond_6
    if-ne v8, v3, :cond_7

    #@50
    .line 2810
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@52
    neg-int v7, v0

    #@53
    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@56
    move-result v3

    #@57
    .line 2813
    :cond_7
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@59
    neg-int v7, v0

    #@5a
    add-int/lit8 v7, v7, 0x1

    #@5c
    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@5f
    move-result v6

    #@60
    add-int/2addr v2, v6

    #@61
    goto :goto_0

    #@62
    .line 2825
    .end local v0    # "dataIndex":I
    :cond_8
    new-instance v6, Lorg/apache/xml/utils/XMLStringDefault;

    #@64
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@66
    invoke-virtual {v7, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@69
    move-result-object v7

    #@6a
    invoke-direct {v6, v7}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@6d
    return-object v6

    #@6e
    .line 2828
    :cond_9
    sget-object v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    #@70
    return-object v6

    #@71
    .line 2831
    .end local v2    # "length":I
    .end local v3    # "offset":I
    :cond_a
    sget-object v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    #@73
    return-object v6

    #@74
    .line 2833
    .end local v4    # "startNode":I
    :cond_b
    if-eq v9, v5, :cond_c

    #@76
    if-ne v10, v5, :cond_10

    #@78
    .line 2835
    :cond_c
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@7a
    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@7d
    move-result v0

    #@7e
    .line 2836
    .restart local v0    # "dataIndex":I
    if-ltz v0, :cond_e

    #@80
    .line 2838
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@82
    if-eqz v6, :cond_d

    #@84
    .line 2839
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@86
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@88
    ushr-int/lit8 v8, v0, 0xa

    #@8a
    .line 2840
    and-int/lit16 v9, v0, 0x3ff

    #@8c
    .line 2839
    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    #@8f
    move-result-object v6

    #@90
    return-object v6

    #@91
    .line 2842
    :cond_d
    new-instance v6, Lorg/apache/xml/utils/XMLStringDefault;

    #@93
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@95
    ushr-int/lit8 v8, v0, 0xa

    #@97
    .line 2843
    and-int/lit16 v9, v0, 0x3ff

    #@99
    .line 2842
    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@9c
    move-result-object v7

    #@9d
    invoke-direct {v6, v7}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@a0
    return-object v6

    #@a1
    .line 2847
    :cond_e
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@a3
    if-eqz v6, :cond_f

    #@a5
    .line 2848
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@a7
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@a9
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@ab
    neg-int v9, v0

    #@ac
    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@af
    move-result v8

    #@b0
    .line 2849
    iget-object v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@b2
    neg-int v10, v0

    #@b3
    add-int/lit8 v10, v10, 0x1

    #@b5
    invoke-virtual {v9, v10}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@b8
    move-result v9

    #@b9
    .line 2848
    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    #@bc
    move-result-object v6

    #@bd
    return-object v6

    #@be
    .line 2851
    :cond_f
    new-instance v6, Lorg/apache/xml/utils/XMLStringDefault;

    #@c0
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@c2
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@c4
    neg-int v9, v0

    #@c5
    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@c8
    move-result v8

    #@c9
    .line 2852
    iget-object v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@cb
    neg-int v10, v0

    #@cc
    add-int/lit8 v10, v10, 0x1

    #@ce
    invoke-virtual {v9, v10}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@d1
    move-result v9

    #@d2
    .line 2851
    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@d5
    move-result-object v7

    #@d6
    invoke-direct {v6, v7}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@d9
    return-object v6

    #@da
    .line 2857
    .end local v0    # "dataIndex":I
    :cond_10
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@dc
    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@df
    move-result v0

    #@e0
    .line 2859
    .restart local v0    # "dataIndex":I
    if-gez v0, :cond_11

    #@e2
    .line 2861
    neg-int v0, v0

    #@e3
    .line 2862
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@e5
    add-int/lit8 v7, v0, 0x1

    #@e7
    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@ea
    move-result v0

    #@eb
    .line 2865
    :cond_11
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@ed
    if-eqz v6, :cond_12

    #@ef
    .line 2866
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@f1
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@f3
    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f6
    move-result-object v6

    #@f7
    check-cast v6, Ljava/lang/String;

    #@f9
    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    #@fc
    move-result-object v6

    #@fd
    return-object v6

    #@fe
    .line 2868
    :cond_12
    new-instance v7, Lorg/apache/xml/utils/XMLStringDefault;

    #@100
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@102
    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@105
    move-result-object v6

    #@106
    check-cast v6, Ljava/lang/String;

    #@108
    invoke-direct {v7, v6}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    #@10b
    return-object v7
.end method

.method public final getStringValueX(I)Ljava/lang/String;
    .locals 11
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v10, 0x4

    #@1
    const/4 v9, 0x3

    #@2
    const/4 v8, -0x1

    #@3
    .line 2888
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@6
    move-result v1

    #@7
    .line 2889
    .local v1, "identity":I
    if-ne v1, v8, :cond_0

    #@9
    .line 2890
    const-string/jumbo v6, ""

    #@c
    return-object v6

    #@d
    .line 2892
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@10
    move-result v5

    #@11
    .line 2894
    .local v5, "type":I
    const/4 v6, 0x1

    #@12
    if-eq v5, v6, :cond_1

    #@14
    const/16 v6, 0x9

    #@16
    if-ne v5, v6, :cond_a

    #@18
    .line 2896
    :cond_1
    move v4, v1

    #@19
    .line 2897
    .local v4, "startNode":I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    #@1c
    move-result v1

    #@1d
    .line 2898
    if-eq v8, v1, :cond_9

    #@1f
    .line 2900
    const/4 v3, -0x1

    #@20
    .line 2901
    .local v3, "offset":I
    const/4 v2, 0x0

    #@21
    .line 2905
    .local v2, "length":I
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@24
    move-result v5

    #@25
    .line 2907
    if-eq v5, v9, :cond_3

    #@27
    if-ne v5, v10, :cond_5

    #@29
    .line 2909
    :cond_3
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2b
    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@2e
    move-result v0

    #@2f
    .line 2910
    .local v0, "dataIndex":I
    if-ltz v0, :cond_6

    #@31
    .line 2912
    if-ne v8, v3, :cond_4

    #@33
    .line 2914
    ushr-int/lit8 v3, v0, 0xa

    #@35
    .line 2917
    :cond_4
    and-int/lit16 v6, v0, 0x3ff

    #@37
    add-int/2addr v2, v6

    #@38
    .line 2930
    .end local v0    # "dataIndex":I
    :cond_5
    :goto_0
    add-int/lit8 v1, v1, 0x1

    #@3a
    .line 2931
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    #@3d
    move-result v6

    #@3e
    if-ge v6, v4, :cond_2

    #@40
    .line 2933
    if-lez v2, :cond_8

    #@42
    .line 2935
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@44
    invoke-virtual {v6, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    return-object v6

    #@49
    .line 2921
    .restart local v0    # "dataIndex":I
    :cond_6
    if-ne v8, v3, :cond_7

    #@4b
    .line 2923
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@4d
    neg-int v7, v0

    #@4e
    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@51
    move-result v3

    #@52
    .line 2926
    :cond_7
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@54
    neg-int v7, v0

    #@55
    add-int/lit8 v7, v7, 0x1

    #@57
    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@5a
    move-result v6

    #@5b
    add-int/2addr v2, v6

    #@5c
    goto :goto_0

    #@5d
    .line 2938
    .end local v0    # "dataIndex":I
    :cond_8
    const-string/jumbo v6, ""

    #@60
    return-object v6

    #@61
    .line 2941
    .end local v2    # "length":I
    .end local v3    # "offset":I
    :cond_9
    const-string/jumbo v6, ""

    #@64
    return-object v6

    #@65
    .line 2943
    .end local v4    # "startNode":I
    :cond_a
    if-eq v9, v5, :cond_b

    #@67
    if-ne v10, v5, :cond_d

    #@69
    .line 2945
    :cond_b
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@6b
    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@6e
    move-result v0

    #@6f
    .line 2946
    .restart local v0    # "dataIndex":I
    if-ltz v0, :cond_c

    #@71
    .line 2948
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@73
    ushr-int/lit8 v7, v0, 0xa

    #@75
    .line 2949
    and-int/lit16 v8, v0, 0x3ff

    #@77
    .line 2948
    invoke-virtual {v6, v7, v8}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    return-object v6

    #@7c
    .line 2953
    :cond_c
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@7e
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@80
    neg-int v8, v0

    #@81
    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@84
    move-result v7

    #@85
    .line 2954
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@87
    neg-int v9, v0

    #@88
    add-int/lit8 v9, v9, 0x1

    #@8a
    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@8d
    move-result v8

    #@8e
    .line 2953
    invoke-virtual {v6, v7, v8}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    #@91
    move-result-object v6

    #@92
    return-object v6

    #@93
    .line 2959
    .end local v0    # "dataIndex":I
    :cond_d
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@95
    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@98
    move-result v0

    #@99
    .line 2961
    .restart local v0    # "dataIndex":I
    if-gez v0, :cond_e

    #@9b
    .line 2963
    neg-int v0, v0

    #@9c
    .line 2964
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@9e
    add-int/lit8 v7, v0, 0x1

    #@a0
    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@a3
    move-result v0

    #@a4
    .line 2967
    :cond_e
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@a6
    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@a9
    move-result-object v6

    #@aa
    check-cast v6, Ljava/lang/String;

    #@ac
    return-object v6
.end method

.method protected final getTypedAttribute(II)I
    .locals 5
    .param p1, "nodeHandle"    # I
    .param p2, "attType"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 2593
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    #@4
    move-result v1

    #@5
    .line 2595
    .local v1, "nodeID":I
    if-ne v1, v4, :cond_0

    #@7
    .line 2596
    return v4

    #@8
    .line 2598
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    #@b
    move-result v2

    #@c
    .line 2600
    .local v2, "type":I
    const/4 v3, 0x1

    #@d
    if-ne v3, v2, :cond_4

    #@f
    .line 2605
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@11
    .line 2606
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    #@14
    move-result v0

    #@15
    .line 2608
    .local v0, "expType":I
    if-eq v0, v4, :cond_2

    #@17
    .line 2609
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@19
    aget-object v3, v3, v0

    #@1b
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    #@1e
    move-result v2

    #@1f
    .line 2613
    const/4 v3, 0x2

    #@20
    if-ne v2, v3, :cond_3

    #@22
    .line 2615
    if-ne v0, p2, :cond_1

    #@24
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@27
    move-result v3

    #@28
    return v3

    #@29
    .line 2611
    :cond_2
    return v4

    #@2a
    .line 2617
    :cond_3
    const/16 v3, 0xd

    #@2c
    if-eq v3, v2, :cond_1

    #@2e
    .line 2624
    .end local v0    # "expType":I
    :cond_4
    return v4
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
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
    .line 2459
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    #@4
    .line 2461
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@6
    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@9
    move-result v7

    #@a
    .line 2464
    .local v7, "dataIndex":I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@c
    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@f
    move-result v3

    #@10
    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    #@12
    .line 2465
    neg-int v5, v7

    #@13
    const/4 v6, 0x0

    #@14
    move-object v0, p0

    #@15
    move v2, v1

    #@16
    .line 2462
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    #@1c
    .line 2467
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1e
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@20
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@23
    move-result v1

    #@24
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@27
    .line 2468
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@29
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@2c
    .line 2469
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2e
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    #@30
    add-int/lit8 v2, v1, 0x1

    #@32
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    #@34
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@37
    .line 2456
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
    .line 2287
    const/4 v5, 0x0

    #@4
    const/4 v6, 0x1

    #@5
    move-object v0, p0

    #@6
    move v2, v1

    #@7
    move v4, v3

    #@8
    .line 2285
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    #@b
    move-result v7

    #@c
    .line 2289
    .local v7, "doc":I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@e
    invoke-virtual {v0, v7}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@11
    .line 2290
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    #@13
    .line 2292
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@15
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    #@17
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@1e
    .line 2282
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
    .line 2086
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    #@3
    .line 2088
    move-object/from16 v0, p0

    #@5
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

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
    .line 2090
    .local v5, "exName":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    #@13
    move-result v3

    #@14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    #@17
    move-result v4

    #@18
    if-eq v3, v4, :cond_2

    #@1a
    .line 2091
    move-object/from16 v0, p0

    #@1c
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@1e
    move-object/from16 v0, p3

    #@20
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@23
    move-result v8

    #@24
    .line 2093
    .local v8, "prefixIndex":I
    :goto_0
    const/4 v4, 0x1

    #@25
    .line 2094
    move-object/from16 v0, p0

    #@27
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@29
    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@2c
    move-result v6

    #@2d
    move-object/from16 v0, p0

    #@2f
    iget v7, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    #@31
    const/4 v9, 0x1

    #@32
    move-object/from16 v3, p0

    #@34
    .line 2093
    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    #@37
    move-result v12

    #@38
    .line 2096
    .local v12, "elemNode":I
    move-object/from16 v0, p0

    #@3a
    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_indexing:Z

    #@3c
    if-eqz v3, :cond_0

    #@3e
    .line 2097
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v5, v12}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->indexNode(II)V

    #@43
    .line 2099
    :cond_0
    move-object/from16 v0, p0

    #@45
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@47
    invoke-virtual {v3, v12}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@4a
    .line 2101
    move-object/from16 v0, p0

    #@4c
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@4e
    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@51
    move-result v26

    #@52
    .line 2102
    .local v26, "startDecls":I
    move-object/from16 v0, p0

    #@54
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    #@56
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@59
    move-result v23

    #@5a
    .line 2105
    .local v23, "nDecls":I
    move-object/from16 v0, p0

    #@5c
    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_pastFirstElement:Z

    #@5e
    if-nez v3, :cond_1

    #@60
    .line 2108
    const-string/jumbo v24, "xml"

    #@63
    .line 2109
    .local v24, "prefix":Ljava/lang/String;
    const-string/jumbo v20, "http://www.w3.org/XML/1998/namespace"

    #@66
    .line 2110
    .local v20, "declURL":Ljava/lang/String;
    move-object/from16 v0, p0

    #@68
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@6a
    const/16 v4, 0xd

    #@6c
    const/4 v6, 0x0

    #@6d
    move-object/from16 v0, v24

    #@6f
    invoke-virtual {v3, v6, v0, v4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    #@72
    move-result v5

    #@73
    .line 2111
    move-object/from16 v0, p0

    #@75
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@77
    move-object/from16 v0, v20

    #@79
    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@7c
    .line 2112
    move-object/from16 v0, p0

    #@7e
    iget v14, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    #@80
    add-int/lit8 v3, v14, 0x1

    #@82
    move-object/from16 v0, p0

    #@84
    iput v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    #@86
    .line 2113
    .local v14, "val":I
    const/16 v10, 0xd

    #@88
    .line 2114
    const/4 v13, -0x1

    #@89
    const/4 v15, 0x0

    #@8a
    move-object/from16 v9, p0

    #@8c
    move v11, v5

    #@8d
    .line 2113
    invoke-virtual/range {v9 .. v15}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    #@90
    .line 2115
    const/4 v3, 0x1

    #@91
    move-object/from16 v0, p0

    #@93
    iput-boolean v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_pastFirstElement:Z

    #@95
    .line 2118
    .end local v14    # "val":I
    .end local v20    # "declURL":Ljava/lang/String;
    .end local v24    # "prefix":Ljava/lang/String;
    :cond_1
    move/from16 v21, v26

    #@97
    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    #@99
    move/from16 v1, v23

    #@9b
    if-ge v0, v1, :cond_4

    #@9d
    .line 2120
    move-object/from16 v0, p0

    #@9f
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    #@a1
    move/from16 v0, v21

    #@a3
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@a6
    move-result-object v24

    #@a7
    check-cast v24, Ljava/lang/String;

    #@a9
    .line 2122
    .restart local v24    # "prefix":Ljava/lang/String;
    if-nez v24, :cond_3

    #@ab
    .line 2118
    :goto_2
    add-int/lit8 v21, v21, 0x2

    #@ad
    goto :goto_1

    #@ae
    .line 2091
    .end local v8    # "prefixIndex":I
    .end local v12    # "elemNode":I
    .end local v21    # "i":I
    .end local v23    # "nDecls":I
    .end local v24    # "prefix":Ljava/lang/String;
    .end local v26    # "startDecls":I
    :cond_2
    const/4 v8, 0x0

    #@af
    .restart local v8    # "prefixIndex":I
    goto/16 :goto_0

    #@b1
    .line 2125
    .restart local v12    # "elemNode":I
    .restart local v21    # "i":I
    .restart local v23    # "nDecls":I
    .restart local v24    # "prefix":Ljava/lang/String;
    .restart local v26    # "startDecls":I
    :cond_3
    move-object/from16 v0, p0

    #@b3
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    #@b5
    add-int/lit8 v4, v21, 0x1

    #@b7
    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@ba
    move-result-object v20

    #@bb
    check-cast v20, Ljava/lang/String;

    #@bd
    .line 2127
    .restart local v20    # "declURL":Ljava/lang/String;
    move-object/from16 v0, p0

    #@bf
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@c1
    const/16 v4, 0xd

    #@c3
    const/4 v6, 0x0

    #@c4
    move-object/from16 v0, v24

    #@c6
    invoke-virtual {v3, v6, v0, v4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    #@c9
    move-result v5

    #@ca
    .line 2129
    move-object/from16 v0, p0

    #@cc
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@ce
    move-object/from16 v0, v20

    #@d0
    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@d3
    .line 2130
    move-object/from16 v0, p0

    #@d5
    iget v14, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    #@d7
    add-int/lit8 v3, v14, 0x1

    #@d9
    move-object/from16 v0, p0

    #@db
    iput v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    #@dd
    .line 2132
    .restart local v14    # "val":I
    const/16 v10, 0xd

    #@df
    const/4 v13, -0x1

    #@e0
    const/4 v15, 0x0

    #@e1
    move-object/from16 v9, p0

    #@e3
    move v11, v5

    #@e4
    invoke-virtual/range {v9 .. v15}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    #@e7
    goto :goto_2

    #@e8
    .line 2135
    .end local v14    # "val":I
    .end local v20    # "declURL":Ljava/lang/String;
    .end local v24    # "prefix":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    #@eb
    move-result v22

    #@ec
    .line 2137
    .local v22, "n":I
    const/16 v21, 0x0

    #@ee
    :goto_3
    move/from16 v0, v21

    #@f0
    move/from16 v1, v22

    #@f2
    if-ge v0, v1, :cond_b

    #@f4
    .line 2139
    move-object/from16 v0, p4

    #@f6
    move/from16 v1, v21

    #@f8
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    #@fb
    move-result-object v18

    #@fc
    .line 2140
    .local v18, "attrUri":Ljava/lang/String;
    move-object/from16 v0, p4

    #@fe
    move/from16 v1, v21

    #@100
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    #@103
    move-result-object v17

    #@104
    .line 2141
    .local v17, "attrQName":Ljava/lang/String;
    move-object/from16 v0, p4

    #@106
    move/from16 v1, v21

    #@108
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    #@10b
    move-result-object v27

    #@10c
    .line 2145
    .local v27, "valString":Ljava/lang/String;
    move-object/from16 v0, p4

    #@10e
    move/from16 v1, v21

    #@110
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    #@113
    move-result-object v16

    #@114
    .line 2147
    .local v16, "attrLocalName":Ljava/lang/String;
    if-eqz v17, :cond_a

    #@116
    .line 2148
    const-string/jumbo v3, "xmlns"

    #@119
    move-object/from16 v0, v17

    #@11b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11e
    move-result v3

    #@11f
    if-nez v3, :cond_5

    #@121
    .line 2149
    const-string/jumbo v3, "xmlns:"

    #@124
    move-object/from16 v0, v17

    #@126
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@129
    move-result v3

    #@12a
    .line 2147
    if-eqz v3, :cond_a

    #@12c
    .line 2151
    :cond_5
    move-object/from16 v0, p0

    #@12e
    move-object/from16 v1, v17

    #@130
    move-object/from16 v2, v18

    #@132
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@135
    move-result-object v24

    #@136
    .line 2152
    .restart local v24    # "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    #@138
    move-object/from16 v1, v24

    #@13a
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->declAlreadyDeclared(Ljava/lang/String;)Z

    #@13d
    move-result v3

    #@13e
    if-eqz v3, :cond_6

    #@140
    .line 2137
    .end local v24    # "prefix":Ljava/lang/String;
    :goto_4
    add-int/lit8 v21, v21, 0x1

    #@142
    goto :goto_3

    #@143
    .line 2155
    .restart local v24    # "prefix":Ljava/lang/String;
    :cond_6
    const/16 v10, 0xd

    #@145
    .line 2167
    .end local v24    # "prefix":Ljava/lang/String;
    .local v10, "nodeType":I
    :cond_7
    :goto_5
    if-nez v27, :cond_8

    #@147
    .line 2168
    const-string/jumbo v27, ""

    #@14a
    .line 2170
    :cond_8
    move-object/from16 v0, p0

    #@14c
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    #@14e
    move-object/from16 v0, v27

    #@150
    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@153
    .line 2171
    move-object/from16 v0, p0

    #@155
    iget v14, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    #@157
    add-int/lit8 v3, v14, 0x1

    #@159
    move-object/from16 v0, p0

    #@15b
    iput v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    #@15d
    .line 2173
    .restart local v14    # "val":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@160
    move-result v3

    #@161
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    #@164
    move-result v4

    #@165
    if-eq v3, v4, :cond_9

    #@167
    .line 2176
    move-object/from16 v0, p0

    #@169
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@16b
    move-object/from16 v0, v17

    #@16d
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@170
    move-result v8

    #@171
    .line 2178
    move-object/from16 v0, p0

    #@173
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@175
    invoke-virtual {v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@178
    move-result v19

    #@179
    .line 2180
    .local v19, "dataIndex":I
    move-object/from16 v0, p0

    #@17b
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@17d
    invoke-virtual {v3, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@180
    .line 2181
    move-object/from16 v0, p0

    #@182
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@184
    invoke-virtual {v3, v14}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@187
    .line 2183
    move/from16 v0, v19

    #@189
    neg-int v14, v0

    #@18a
    .line 2186
    .end local v19    # "dataIndex":I
    :cond_9
    move-object/from16 v0, p0

    #@18c
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@18e
    move-object/from16 v0, v18

    #@190
    move-object/from16 v1, v16

    #@192
    invoke-virtual {v3, v0, v1, v10}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    #@195
    move-result v5

    #@196
    .line 2187
    const/4 v13, -0x1

    #@197
    .line 2188
    const/4 v15, 0x0

    #@198
    move-object/from16 v9, p0

    #@19a
    move v11, v5

    #@19b
    .line 2187
    invoke-virtual/range {v9 .. v15}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    #@19e
    goto :goto_4

    #@19f
    .line 2159
    .end local v10    # "nodeType":I
    .end local v14    # "val":I
    :cond_a
    const/4 v10, 0x2

    #@1a0
    .line 2161
    .restart local v10    # "nodeType":I
    move-object/from16 v0, p0

    #@1a2
    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    #@1a4
    if-eqz v3, :cond_7

    #@1a6
    move-object/from16 v0, p4

    #@1a8
    move/from16 v1, v21

    #@1aa
    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    #@1ad
    move-result-object v3

    #@1ae
    const-string/jumbo v4, "ID"

    #@1b1
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1b4
    move-result v3

    #@1b5
    if-eqz v3, :cond_7

    #@1b7
    .line 2162
    move-object/from16 v0, p0

    #@1b9
    move-object/from16 v1, v27

    #@1bb
    invoke-virtual {v0, v1, v12}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->setIDAttribute(Ljava/lang/String;I)V

    #@1be
    goto :goto_5

    #@1bf
    .line 2191
    .end local v10    # "nodeType":I
    .end local v16    # "attrLocalName":Ljava/lang/String;
    .end local v17    # "attrQName":Ljava/lang/String;
    .end local v18    # "attrUri":Ljava/lang/String;
    .end local v27    # "valString":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    #@1c1
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    #@1c3
    if-eqz v3, :cond_c

    #@1c5
    .line 2193
    move-object/from16 v0, p0

    #@1c7
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    #@1c9
    move-object/from16 v0, p0

    #@1cb
    invoke-virtual {v0, v12}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    #@1ce
    move-result v4

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    invoke-interface {v3, v4, v0}, Lorg/apache/xml/dtm/DTMWSFilter;->getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S

    #@1d4
    move-result v28

    #@1d5
    .line 2194
    .local v28, "wsv":S
    const/4 v3, 0x3

    #@1d6
    move/from16 v0, v28

    #@1d8
    if-ne v3, v0, :cond_d

    #@1da
    .line 2195
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getShouldStripWhitespace()Z

    #@1dd
    move-result v25

    #@1de
    .line 2198
    :goto_6
    move-object/from16 v0, p0

    #@1e0
    move/from16 v1, v25

    #@1e2
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->pushShouldStripWhitespace(Z)V

    #@1e5
    .line 2201
    .end local v28    # "wsv":S
    :cond_c
    const/4 v3, -0x1

    #@1e6
    move-object/from16 v0, p0

    #@1e8
    iput v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    #@1ea
    .line 2203
    move-object/from16 v0, p0

    #@1ec
    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    iget-object v4, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    #@1f2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@1f5
    move-result v4

    #@1f6
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@1f9
    .line 2083
    return-void

    #@1fa
    .line 2196
    .restart local v28    # "wsv":S
    :cond_d
    const/4 v3, 0x2

    #@1fb
    move/from16 v0, v28

    #@1fd
    if-ne v3, v0, :cond_e

    #@1ff
    const/16 v25, 0x1

    #@201
    .local v25, "shouldStrip":Z
    goto :goto_6

    #@202
    .end local v25    # "shouldStrip":Z
    :cond_e
    const/16 v25, 0x0

    #@204
    .restart local v25    # "shouldStrip":Z
    goto :goto_6
.end method
