.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBase;
.super Ljava/lang/Object;
.source "DTMDefaultBase.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTM;


# static fields
.field public static final greylist DEFAULT_BLOCKSIZE:I = 0x200

.field public static final greylist DEFAULT_NUMBLOCKS:I = 0x20

.field public static final greylist DEFAULT_NUMBLOCKS_SMALL:I = 0x4

.field static final greylist JJK_DEBUG:Z = false

.field protected static final greylist NOTPROCESSED:I = -0x2

.field public static final greylist ROOTNODE:I


# instance fields
.field protected greylist m_documentBaseURI:Ljava/lang/String;

.field protected greylist m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected greylist m_elemIndexes:[[[I

.field protected greylist m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field protected greylist m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected greylist m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected greylist m_indexing:Z

.field public greylist m_mgr:Lorg/apache/xml/dtm/DTMManager;

.field protected greylist m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

.field protected greylist m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected greylist m_namespaceDeclSets:Ljava/util/Vector;

.field private greylist m_namespaceLists:Ljava/util/Vector;

.field protected greylist m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected greylist m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected greylist m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected greylist m_shouldStripWS:Z

.field protected greylist m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

.field protected greylist m_size:I

.field protected greylist m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

.field protected greylist m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

.field protected greylist m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;


# direct methods
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

    .line 171
    invoke-direct/range {v0 .. v9}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .registers 14

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p9, 0x0

    .line 58
    iput p9, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    .line 80
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 117
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    .line 138
    iput-boolean p9, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    .line 1246
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceLists:Ljava/util/Vector;

    const/16 v1, 0x40

    if-gt p7, v1, :cond_1f

    .line 202
    new-instance v1, Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    goto :goto_28

    .line 207
    :cond_1f
    new-instance v1, Lorg/apache/xml/utils/SuballocatedIntVector;

    const/16 v3, 0x20

    invoke-direct {v1, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 210
    :goto_28
    new-instance v1, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v1, p7, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 211
    new-instance v1, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v1, p7, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 212
    new-instance v1, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v1, p7, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 213
    new-instance v1, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v1, p7, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz p8, :cond_4d

    .line 219
    new-instance p8, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {p8, p7, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object p8, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 221
    :cond_4d
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    .line 222
    instance-of p7, p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    if-eqz p7, :cond_57

    .line 223
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    :cond_57
    if-eqz p2, :cond_5d

    .line 225
    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    :cond_5d
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    .line 226
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p1, p3, p9}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 227
    iput-object p4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    .line 228
    iput-object p5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    .line 229
    iput-boolean p6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_indexing:Z

    if-eqz p6, :cond_74

    .line 233
    new-instance p1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    goto :goto_7c

    .line 239
    :cond_74
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    invoke-virtual {p1, p0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getExpandedNameTable(Lorg/apache/xml/dtm/DTM;)Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    :goto_7c
    if-eqz p4, :cond_88

    .line 244
    new-instance p1, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {p1}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    .line 246
    invoke-virtual {p0, p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->pushShouldStripWhitespace(Z)V

    :cond_88
    return-void
.end method


# virtual methods
.method protected greylist _exptype(I)I
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 484
    :cond_4
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_13

    .line 486
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_4

    return v0

    .line 489
    :cond_13
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method protected greylist _firstch(I)I
    .registers 6

    .line 526
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v1, -0x2

    if-lt p1, v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    :goto_d
    if-ne v0, v1, :cond_28

    .line 533
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    .line 535
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v3, -0x1

    if-lt p1, v2, :cond_1b

    if-nez v0, :cond_1b

    return v3

    .line 539
    :cond_1b
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    if-ne v2, v1, :cond_26

    if-nez v0, :cond_26

    return v3

    :cond_26
    move v0, v2

    goto :goto_d

    :cond_28
    return v0
.end method

.method protected greylist _level(I)I
    .registers 4

    .line 502
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_10

    .line 504
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v0, :cond_0

    return v1

    :cond_10
    const/4 v0, 0x0

    .line 510
    :goto_11
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    if-eq v1, p1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1a
    return v0
.end method

.method protected greylist _nextsib(I)I
    .registers 6

    .line 558
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v1, -0x2

    if-lt p1, v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    :goto_d
    if-ne v0, v1, :cond_28

    .line 565
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    .line 567
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v3, -0x1

    if-lt p1, v2, :cond_1b

    if-nez v0, :cond_1b

    return v3

    .line 571
    :cond_1b
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    if-ne v2, v1, :cond_26

    if-nez v0, :cond_26

    return v3

    :cond_26
    move v0, v2

    goto :goto_d

    :cond_28
    return v0
.end method

.method protected greylist _parent(I)I
    .registers 4

    .line 617
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v0, :cond_b

    .line 618
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0

    .line 625
    :cond_b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    .line 627
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_17

    if-nez v0, :cond_17

    const/4 p0, -0x1

    return p0

    :cond_17
    if-ge p1, v1, :cond_b

    .line 630
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method protected greylist _prevsib(I)I
    .registers 4

    .line 590
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v0, :cond_b

    .line 591
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0

    .line 598
    :cond_b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    .line 600
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_17

    if-nez v0, :cond_17

    const/4 p0, -0x1

    return p0

    :cond_17
    if-ge p1, v1, :cond_b

    .line 603
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method protected greylist _type(I)S
    .registers 3

    .line 462
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_e

    .line 465
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result p0

    return p0

    :cond_e
    return v0
.end method

.method public greylist appendChild(IZZ)V
    .registers 4

    .line 2237
    const-string p1, "ER_METHOD_NOT_SUPPORTED"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-void
.end method

.method public greylist appendTextChild(Ljava/lang/String;)V
    .registers 3

    .line 2251
    const-string p1, "ER_METHOD_NOT_SUPPORTED"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-void
.end method

.method protected greylist declareNamespaceInContext(II)V
    .registers 8

    .line 1265
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    const/16 v1, 0x20

    if-nez v0, :cond_22

    .line 1269
    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 1270
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 1271
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    .line 1272
    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    .line 1273
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3e

    .line 1279
    :cond_22
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3d

    .line 1281
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    if-ne p1, v2, :cond_3d

    .line 1283
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    if-nez v0, :cond_7e

    .line 1288
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 1291
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 1297
    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    .line 1301
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v3, v0, 0x10

    const/16 v4, 0x800

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    const/4 v1, 0x0

    :goto_65
    if-ge v1, v0, :cond_71

    .line 1306
    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_71
    move-object v0, v2

    goto :goto_79

    .line 1309
    :cond_73
    new-instance p1, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {p1, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    move-object v0, p1

    .line 1312
    :goto_79
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1319
    :cond_7e
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p1

    .line 1321
    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_88
    if-ltz v1, :cond_9f

    .line 1323
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v2

    if-ne p1, v2, :cond_9c

    .line 1325
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    invoke-virtual {v0, p0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    return-void

    :cond_9c
    add-int/lit8 v1, v1, -0x1

    goto :goto_88

    .line 1329
    :cond_9f
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    return-void
.end method

.method public abstract greylist dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract greylist dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public greylist documentRegistration()V
    .registers 1

    .line 0
    return-void
.end method

.method public greylist documentRelease()V
    .registers 1

    .line 0
    return-void
.end method

.method public greylist dumpDTM(Ljava/io/OutputStream;)V
    .registers 10

    if-nez p1, :cond_41

    .line 643
    :try_start_2
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DTMDump"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dumping... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object p1, v0

    .line 647
    :cond_41
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 649
    :goto_46
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_46

    .line 651
    :cond_4d
    iget p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total nodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_64
    if-ge v1, p1, :cond_254

    .line 657
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=========== index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ==========="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NodeName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NodeNameX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NamespaceURI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prefix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getPrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v3

    .line 667
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expanded Type ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 667
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v3
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_123} :catch_255

    .line 673
    const-string v4, "DOCUMENT_NODE"

    packed-switch v3, :pswitch_data_266

    .line 718
    :pswitch_128
    :try_start_128
    const-string v4, "Unknown!"

    goto :goto_14e

    .line 703
    :pswitch_12b
    const-string v4, "NAMESPACE_NODE"

    goto :goto_14e

    .line 706
    :pswitch_12e
    const-string v4, "NOTATION_NODE"

    goto :goto_14e

    .line 685
    :pswitch_131
    const-string v4, "DOCUMENT_FRAGMENT_NODE"

    goto :goto_14e

    .line 682
    :pswitch_134
    const-string v4, "COMMENT_NODE"

    goto :goto_14e

    .line 712
    :pswitch_137
    const-string v4, "PROCESSING_INSTRUCTION_NODE"

    goto :goto_14e

    .line 697
    :pswitch_13a
    const-string v4, "ENTITY_NODE"

    goto :goto_14e

    .line 700
    :pswitch_13d
    const-string v4, "ENTITY_REFERENCE_NODE"

    goto :goto_14e

    .line 679
    :pswitch_140
    const-string v4, "CDATA_SECTION_NODE"

    goto :goto_14e

    .line 715
    :pswitch_143
    const-string v4, "TEXT_NODE"

    goto :goto_14e

    .line 676
    :pswitch_146
    const-string v4, "ATTRIBUTE_NODE"

    goto :goto_14e

    .line 694
    :pswitch_149
    const-string v4, "ELEMENT_NODE"

    goto :goto_14e

    .line 709
    :pswitch_14c
    const-string v4, "NULL"

    .line 722
    :goto_14e
    :pswitch_14e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-ne v5, v3, :cond_170

    .line 727
    const-string v3, "First child: DTM.NULL"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_18c

    :cond_170
    if-ne v4, v3, :cond_178

    .line 729
    const-string v3, "First child: NOTPROCESSED"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_18c

    .line 731
    :cond_178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "First child: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 733
    :goto_18c
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v3, :cond_1b8

    .line 735
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_prevsib(I)I

    move-result v3

    if-ne v5, v3, :cond_19c

    .line 738
    const-string v3, "Prev sibling: DTM.NULL"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1b8

    :cond_19c
    if-ne v4, v3, :cond_1a4

    .line 740
    const-string v3, "Prev sibling: NOTPROCESSED"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1b8

    .line 742
    :cond_1a4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Prev sibling: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 745
    :cond_1b8
    :goto_1b8
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v3

    if-ne v5, v3, :cond_1c4

    .line 748
    const-string v3, "Next sibling: DTM.NULL"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1e0

    :cond_1c4
    if-ne v4, v3, :cond_1cc

    .line 750
    const-string v3, "Next sibling: NOTPROCESSED"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1e0

    .line 752
    :cond_1cc
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next sibling: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 754
    :goto_1e0
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v3

    if-ne v5, v3, :cond_1ec

    .line 757
    const-string v3, "Parent: DTM.NULL"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_208

    :cond_1ec
    if-ne v4, v3, :cond_1f4

    .line 759
    const-string v3, "Parent: NOTPROCESSED"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_208

    .line 761
    :cond_1f4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 763
    :goto_208
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_level(I)I

    move-result v3

    .line 765
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_250
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_250} :catch_255

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_64

    :cond_254
    return-void

    :catch_255
    move-exception p0

    .line 772
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 773
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_266
    .packed-switch -0x1
        :pswitch_14c
        :pswitch_128
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_14e
        :pswitch_14e
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
    .end packed-switch
.end method

.method public greylist dumpNode(I)Ljava/lang/String;
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 793
    const-string p0, "[null]"

    return-object p0

    .line 796
    :cond_6
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    packed-switch v0, :pswitch_data_98

    .line 841
    :pswitch_d
    const-string v0, "Unknown!"

    goto :goto_39

    .line 827
    :pswitch_10
    const-string v0, "NAMESPACE"

    goto :goto_39

    .line 830
    :pswitch_13
    const-string v0, "NOTATION"

    goto :goto_39

    .line 809
    :pswitch_16
    const-string v0, "DOC_FRAG"

    goto :goto_39

    .line 815
    :pswitch_19
    const-string v0, "DOC_TYPE"

    goto :goto_39

    .line 812
    :pswitch_1c
    const-string v0, "DOC"

    goto :goto_39

    .line 806
    :pswitch_1f
    const-string v0, "COMMENT"

    goto :goto_39

    .line 836
    :pswitch_22
    const-string v0, "PI"

    goto :goto_39

    .line 821
    :pswitch_25
    const-string v0, "ENTITY"

    goto :goto_39

    .line 824
    :pswitch_28
    const-string v0, "ENT_REF"

    goto :goto_39

    .line 803
    :pswitch_2b
    const-string v0, "CDATA"

    goto :goto_39

    .line 839
    :pswitch_2e
    const-string v0, "TEXT"

    goto :goto_39

    .line 800
    :pswitch_31
    const-string v0, "ATTR"

    goto :goto_39

    .line 818
    :pswitch_34
    const-string v0, "ELEMENT"

    goto :goto_39

    .line 833
    :pswitch_37
    const-string v0, "null"

    .line 845
    :goto_39
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(0x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 846
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 850
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_98
    .packed-switch -0x1
        :pswitch_37
        :pswitch_d
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method protected greylist ensureSizeOfIndex(II)V
    .registers 7

    .line 259
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    const/4 v1, 0x0

    if-nez v0, :cond_c

    add-int/lit8 v0, p1, 0x14

    .line 261
    new-array v0, v0, [[[I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    goto :goto_19

    .line 263
    :cond_c
    array-length v2, v0

    if-gt v2, p1, :cond_19

    add-int/lit8 v2, p1, 0x14

    .line 267
    new-array v2, v2, [[[I

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    .line 269
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    :cond_19
    :goto_19
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aget-object v2, v0, p1

    if-nez v2, :cond_26

    add-int/lit8 p0, p2, 0x64

    .line 276
    new-array v2, p0, [[I

    .line 277
    aput-object v2, v0, p1

    goto :goto_36

    .line 279
    :cond_26
    array-length v0, v2

    if-gt v0, p2, :cond_36

    add-int/lit8 v0, p2, 0x64

    .line 283
    new-array v0, v0, [[I

    .line 285
    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aput-object v0, p0, p1

    move-object v2, v0

    .line 290
    :cond_36
    :goto_36
    aget-object p0, v2, p2

    if-nez p0, :cond_44

    const/16 p0, 0x80

    .line 294
    new-array p0, p0, [I

    .line 295
    aput-object p0, v2, p2

    const/4 p1, 0x1

    .line 296
    aput p1, p0, v1

    return-void

    .line 298
    :cond_44
    array-length p1, p0

    aget v0, p0, v1

    add-int/lit8 v3, v0, 0x1

    if-gt p1, v3, :cond_55

    add-int/lit16 v0, v0, 0x400

    .line 302
    new-array p1, v0, [I

    .line 304
    array-length v0, p0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    aput-object p1, v2, p2

    :cond_55
    return-void
.end method

.method protected greylist error(Ljava/lang/String;)V
    .registers 2

    .line 2261
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method greylist findElementFromIndex(III)I
    .registers 6

    .line 388
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    if-eqz v0, :cond_20

    .line 390
    array-length v1, v0

    if-ge p1, v1, :cond_20

    .line 392
    aget-object p1, v0, p1

    if-eqz p1, :cond_20

    .line 394
    array-length v0, p1

    if-ge p2, v0, :cond_20

    .line 396
    aget-object p1, p1, p2

    if-eqz p1, :cond_20

    const/4 p2, 0x0

    .line 400
    aget p2, p1, p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findGTE([IIII)I

    move-result p0

    const/4 p2, -0x1

    if-le p0, p2, :cond_20

    .line 404
    aget p0, p1, p0

    return p0

    :cond_20
    const/4 p0, -0x2

    return p0
.end method

.method protected greylist findGTE([IIII)I
    .registers 7

    add-int/lit8 p3, p3, -0x1

    add-int/2addr p3, p2

    move p0, p3

    :goto_4
    if-gt p2, p0, :cond_18

    add-int v0, p2, p0

    .line 360
    div-int/lit8 v0, v0, 0x2

    .line 361
    aget v1, p1, v0

    if-le v1, p4, :cond_11

    add-int/lit8 p0, v0, -0x1

    goto :goto_4

    :cond_11
    if-ge v1, p4, :cond_17

    add-int/lit8 v0, v0, 0x1

    move p2, v0

    goto :goto_4

    :cond_17
    return v0

    :cond_18
    if-gt p2, p3, :cond_1f

    .line 371
    aget p0, p1, p2

    if-le p0, p4, :cond_1f

    return p2

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method protected greylist findInSortedSuballocatedIntVector(Lorg/apache/xml/utils/SuballocatedIntVector;I)I
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_26

    .line 1421
    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    move v0, p0

    :goto_b
    if-gt p0, v1, :cond_22

    add-int v0, p0, v1

    .line 1424
    div-int/lit8 v0, v0, 0x2

    .line 1425
    invoke-virtual {p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    sub-int v2, p2, v2

    if-nez v2, :cond_1a

    return v0

    :cond_1a
    if-gez v2, :cond_1f

    add-int/lit8 v1, v0, -0x1

    goto :goto_b

    :cond_1f
    add-int/lit8 p0, v0, 0x1

    goto :goto_b

    :cond_22
    if-le p0, v0, :cond_25

    goto :goto_26

    :cond_25
    move p0, v0

    :cond_26
    :goto_26
    rsub-int/lit8 p0, p0, -0x1

    return p0
.end method

.method protected greylist findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;
    .registers 9

    .line 1341
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v1, 0x0

    if-eqz v0, :cond_71

    .line 1345
    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findInSortedSuballocatedIntVector(Lorg/apache/xml/utils/SuballocatedIntVector;I)I

    move-result v0

    if-ltz v0, :cond_14

    .line 1348
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/utils/SuballocatedIntVector;

    return-object p0

    :cond_14
    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    return-object v1

    .line 1357
    :cond_18
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    rsub-int/lit8 v0, v0, -0x2

    invoke-virtual {v3, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    .line 1358
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v4

    if-nez v0, :cond_4e

    if-ge v3, v4, :cond_4e

    .line 1364
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result p1

    .line 1365
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v5

    .line 1368
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result p1

    const/16 v6, 0x9

    if-ne p1, v6, :cond_43

    .line 1369
    invoke-virtual {p0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p1

    if-eq p1, v2, :cond_43

    move v5, p1

    :cond_43
    if-ne v3, v5, :cond_4e

    .line 1376
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/utils/SuballocatedIntVector;

    return-object p0

    :cond_4e
    :goto_4e
    if-ltz v0, :cond_71

    if-lez v4, :cond_71

    if-ne v3, v4, :cond_5d

    .line 1384
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/utils/SuballocatedIntVector;

    return-object p0

    :cond_5d
    if-ge v3, v4, :cond_66

    .line 1388
    :cond_5f
    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v4

    if-lt v3, v4, :cond_5f

    goto :goto_4e

    :cond_66
    if-lez v0, :cond_71

    .line 1392
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    goto :goto_4e

    :cond_71
    return-object v1
.end method

.method public abstract greylist getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public greylist getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;
    .registers 2

    .line 2368
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2369
    :cond_6
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    return-object p0
.end method

.method public greylist getDocument()I
    .registers 2

    .line 1579
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public greylist getDocumentAllDeclarationsProcessed()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist getDocumentBaseURI()Ljava/lang/String;
    .registers 1

    .line 1920
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getDocumentEncoding(I)Ljava/lang/String;
    .registers 2

    .line 1959
    const-string p0, "UTF-8"

    return-object p0
.end method

.method public greylist getDocumentRoot(I)I
    .registers 2

    .line 1613
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result p0

    return p0
.end method

.method public greylist getDocumentStandalone(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDocumentSystemIdentifier(I)Ljava/lang/String;
    .registers 2

    .line 1944
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    return-object p0
.end method

.method public abstract greylist getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
.end method

.method public abstract greylist getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
.end method

.method public greylist getDocumentVersion(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract greylist getElementById(Ljava/lang/String;)I
.end method

.method public greylist getExpandedTypeID(I)I
    .registers 3

    .line 1682
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    return v0

    .line 1685
    :cond_8
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p0

    return p0
.end method

.method public greylist getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 1707
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 1709
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public greylist getFirstAttribute(I)I
    .registers 2

    .line 1061
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1063
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getFirstAttributeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method protected greylist getFirstAttributeIdentity(I)I
    .registers 5

    .line 1073
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v1, v0, :cond_1a

    .line 1078
    :cond_8
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v2, p1, :cond_1a

    .line 1082
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    return p1

    :cond_16
    const/16 v1, 0xd

    if-eq v1, v0, :cond_8

    :cond_1a
    return v2
.end method

.method public greylist getFirstChild(I)I
    .registers 2

    .line 972
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 973
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p1

    .line 975
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public greylist getFirstNamespaceNode(IZ)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p2, :cond_22

    .line 1463
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1464
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result p2

    if-ne p2, v0, :cond_21

    .line 1466
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 1467
    invoke-virtual {p0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result p1

    if-ge p1, v0, :cond_1b

    goto :goto_21

    :cond_1b
    const/4 p1, 0x0

    .line 1470
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0

    :cond_21
    :goto_21
    return v1

    .line 1483
    :cond_22
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1484
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result p2

    if-ne p2, v0, :cond_42

    .line 1486
    :cond_2c
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v1, p1, :cond_42

    .line 1488
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result p2

    const/16 v0, 0xd

    if-ne p2, v0, :cond_3f

    .line 1490
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_3f
    const/4 v0, 0x2

    if-eq v0, p2, :cond_2c

    :cond_42
    return v1
.end method

.method public greylist getLastChild(I)I
    .registers 5

    .line 1025
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1026
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p1

    const/4 v0, -0x1

    move v1, v0

    :goto_a
    if-eq p1, v0, :cond_14

    .line 1032
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    move v2, v1

    move v1, p1

    move p1, v2

    goto :goto_a

    .line 1035
    :cond_14
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public greylist getLevel(I)S
    .registers 2

    .line 1852
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1853
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_level(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    return p0
.end method

.method public abstract greylist getLocalName(I)Ljava/lang/String;
.end method

.method public greylist getLocalNameFromExpandedNameID(I)Ljava/lang/String;
    .registers 2

    .line 1720
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getManager()Lorg/apache/xml/dtm/DTMManager;
    .registers 1

    .line 2357
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    return-object p0
.end method

.method public greylist getNamespaceFromExpandedNameID(I)Ljava/lang/String;
    .registers 2

    .line 1732
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespace(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNamespaceType(I)I
    .registers 2

    .line 1743
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1744
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p1

    .line 1746
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result p0

    return p0
.end method

.method public abstract greylist getNamespaceURI(I)Ljava/lang/String;
.end method

.method public greylist getNextAttribute(I)I
    .registers 4

    .line 1211
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1213
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 1214
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextAttributeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method protected greylist getNextAttributeIdentity(I)I
    .registers 5

    .line 1232
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_13

    .line 1233
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    return p1

    :cond_f
    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    :cond_13
    return v0
.end method

.method public greylist getNextNamespaceNode(IIZ)I
    .registers 5

    const/4 v0, -0x1

    if-eqz p3, :cond_23

    .line 1521
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object p0

    if-nez p0, :cond_e

    return v0

    .line 1525
    :cond_e
    invoke-virtual {p0, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_22

    .line 1526
    invoke-virtual {p0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result p2

    if-ne p1, p2, :cond_1d

    goto :goto_22

    .line 1529
    :cond_1d
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    return p0

    :cond_22
    :goto_22
    return v0

    .line 1534
    :cond_23
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1535
    :cond_27
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v0, p1, :cond_3d

    .line 1537
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result p2

    const/16 p3, 0xd

    if-ne p2, p3, :cond_3a

    .line 1540
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_3a
    const/4 p3, 0x2

    if-eq p2, p3, :cond_27

    :cond_3d
    return v0
.end method

.method protected abstract greylist getNextNodeIdentity(I)I
.end method

.method public greylist getNextSibling(I)I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 1142
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public greylist getNode(I)Lorg/w3c/dom/Node;
    .registers 3

    .line 2218
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    invoke-direct {v0, p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    return-object v0
.end method

.method public greylist getNodeHandle(I)I
    .registers 2

    .line 1887
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public greylist getNodeIdent(I)I
    .registers 2

    .line 1870
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p0

    return p0
.end method

.method public abstract greylist getNodeName(I)Ljava/lang/String;
.end method

.method public greylist getNodeNameX(I)Ljava/lang/String;
    .registers 3

    .line 1772
    const-string p1, "ER_METHOD_NOT_SUPPORTED"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getNodeType(I)S
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 1838
    :cond_4
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result p0

    return p0
.end method

.method public abstract greylist getNodeValue(I)Ljava/lang/String;
.end method

.method protected abstract greylist getNumberOfNodes()I
.end method

.method public greylist getOwnerDocument(I)I
    .registers 4

    const/16 v0, 0x9

    .line 1597
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 p0, -0x1

    return p0

    .line 1600
    :cond_a
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result p0

    return p0
.end method

.method public greylist getParent(I)I
    .registers 2

    .line 1561
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    if-lez p1, :cond_f

    .line 1564
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public abstract greylist getPrefix(I)Ljava/lang/String;
.end method

.method public greylist getPreviousSibling(I)I
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 1181
    :cond_4
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v1, :cond_15

    .line 1182
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_prevsib(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    .line 1188
    :cond_15
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1189
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v1

    .line 1190
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v1

    :goto_21
    move v2, v1

    move v1, v0

    move v0, v2

    if-eq v0, p1, :cond_2b

    .line 1195
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    goto :goto_21

    .line 1197
    :cond_2b
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method protected greylist getShouldStripWhitespace()Z
    .registers 1

    .line 2272
    iget-boolean p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    return p0
.end method

.method public abstract greylist getStringValue(I)Lorg/apache/xml/utils/XMLString;
.end method

.method public greylist getStringValueChunk(II[I)[C
    .registers 4

    .line 1666
    const-string p1, "ER_METHOD_NOT_SUPPORTED"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-object p2
.end method

.method public greylist getStringValueChunkCount(I)I
    .registers 3

    .line 1643
    const-string p1, "ER_METHOD_NOT_SUPPORTED"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected greylist getTypedAttribute(II)I
    .registers 6

    .line 1108
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v1, v0, :cond_28

    .line 1110
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1112
    :cond_c
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v2, p1, :cond_28

    .line 1114
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 1118
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v0

    if-ne v0, p2, :cond_c

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_24
    const/16 v1, 0xd

    if-eq v1, v0, :cond_c

    :cond_28
    return v2
.end method

.method public greylist getTypedFirstChild(II)I
    .registers 7

    const/4 v0, -0x1

    const/16 v1, 0xe

    if-ge p2, v1, :cond_2a

    .line 991
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p1

    :goto_d
    if-eq p1, v0, :cond_44

    .line 994
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v2

    if-eq v2, p2, :cond_25

    if-lt v2, v1, :cond_20

    .line 995
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 997
    invoke-virtual {v3, v2}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v2

    if-ne v2, p2, :cond_20

    goto :goto_25

    .line 993
    :cond_20
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p1

    goto :goto_d

    .line 998
    :cond_25
    :goto_25
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    .line 1002
    :cond_2a
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p1

    :goto_32
    if-eq p1, v0, :cond_44

    .line 1005
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v1

    if-ne v1, p2, :cond_3f

    .line 1006
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    .line 1004
    :cond_3f
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p1

    goto :goto_32

    :cond_44
    return v0
.end method

.method public greylist getTypedNextSibling(II)I
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 1157
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 1159
    :goto_8
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result p1

    if-eq p1, v0, :cond_1d

    .line 1160
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v1

    if-eq v1, p2, :cond_1d

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 1161
    invoke-virtual {v2, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v1

    if-eq v1, p2, :cond_1d

    goto :goto_8

    :cond_1d
    if-ne p1, v0, :cond_20

    return v0

    .line 1164
    :cond_20
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public abstract greylist getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public greylist hasChildNodes(I)Z
    .registers 2

    .line 882
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 883
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist indexNode(II)V
    .registers 6

    .line 320
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 321
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_24

    .line 325
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v1

    .line 326
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result p1

    .line 328
    invoke-virtual {p0, v1, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->ensureSizeOfIndex(II)V

    .line 330
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aget-object p0, p0, v1

    aget-object p0, p0, p1

    const/4 p1, 0x0

    .line 332
    aget v0, p0, p1

    aput p2, p0, v0

    .line 334
    aget p2, p0, p1

    add-int/2addr p2, v2

    aput p2, p0, p1

    :cond_24
    return-void
.end method

.method public abstract greylist isAttributeSpecified(I)Z
.end method

.method public greylist isCharacterElementContentWhitespace(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isDocumentAllDeclarationsProcessed(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist isNodeAfter(II)Z
    .registers 3

    .line 2116
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 2117
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p0

    const/4 p2, -0x1

    if-eq p1, p2, :cond_11

    if-eq p0, p2, :cond_11

    if-gt p1, p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final greylist makeNodeHandle(I)I
    .registers 3

    const/4 v0, -0x1

    if-ne v0, p1, :cond_4

    return v0

    .line 909
    :cond_4
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    ushr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result p0

    const v0, 0xffff

    and-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public final greylist makeNodeIdentity(I)I
    .registers 7

    const/4 v0, -0x1

    if-ne v0, p1, :cond_4

    return v0

    .line 933
    :cond_4
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    const v2, 0xffff

    if-eqz v1, :cond_1b

    ushr-int/lit8 v3, p1, 0x10

    .line 945
    iget-object v4, v1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v4, v4, v3

    if-eq v4, p0, :cond_14

    return v0

    .line 948
    :cond_14
    iget-object p0, v1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aget p0, p0, v3

    and-int/2addr p1, v2

    or-int/2addr p0, p1

    return p0

    .line 953
    :cond_1b
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/high16 v1, -0x10000

    and-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(I)I

    move-result p0

    if-ne p0, v0, :cond_27

    return v0

    :cond_27
    shl-int/lit8 p0, p0, 0x10

    and-int/2addr p1, v2

    add-int/2addr p0, p1

    return p0
.end method

.method public greylist migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
    .registers 3

    .line 2344
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    .line 2345
    instance-of v0, p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    if-eqz v0, :cond_a

    .line 2346
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    :cond_a
    return-void
.end method

.method protected abstract greylist nextNode()Z
.end method

.method protected greylist popShouldStripWhitespace()V
    .registers 2

    .line 2297
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    if-eqz v0, :cond_a

    .line 2298
    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->popAndTop()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    :cond_a
    return-void
.end method

.method protected greylist pushShouldStripWhitespace(Z)V
    .registers 2

    .line 2284
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    .line 2286
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    if-eqz p0, :cond_9

    .line 2287
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    :cond_9
    return-void
.end method

.method public greylist setDocumentBaseURI(Ljava/lang/String;)V
    .registers 2

    .line 1930
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    return-void
.end method

.method public greylist setFeature(Ljava/lang/String;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method protected greylist setShouldStripWhitespace(Z)V
    .registers 2

    .line 2311
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    .line 2313
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    if-eqz p0, :cond_9

    .line 2314
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/BoolStack;->setTop(Z)V

    :cond_9
    return-void
.end method

.method public greylist supportsPreStripping()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method
