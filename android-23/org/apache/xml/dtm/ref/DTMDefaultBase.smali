.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBase;
.super Ljava/lang/Object;
.source "DTMDefaultBase.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTM;


# static fields
.field public static final DEFAULT_BLOCKSIZE:I = 0x200

.field public static final DEFAULT_NUMBLOCKS:I = 0x20

.field public static final DEFAULT_NUMBLOCKS_SMALL:I = 0x4

.field static final JJK_DEBUG:Z = false

.field protected static final NOTPROCESSED:I = -0x2

.field public static final ROOTNODE:I


# instance fields
.field protected m_documentBaseURI:Ljava/lang/String;

.field protected m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_elemIndexes:[[[I

.field protected m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field protected m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_indexing:Z

.field public m_mgr:Lorg/apache/xml/dtm/DTMManager;

.field protected m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

.field protected m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_namespaceDeclSets:Ljava/util/Vector;

.field private m_namespaceLists:Ljava/util/Vector;

.field protected m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_shouldStripWS:Z

.field protected m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

.field protected m_size:I

.field protected m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

.field protected m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

.field protected m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;


# direct methods
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
    .line 172
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
    .line 171
    invoke-direct/range {v0 .. v9}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    #@f
    .line 169
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
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 58
    iput v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@7
    .line 76
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    #@9
    .line 80
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@b
    .line 117
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@d
    .line 138
    iput-boolean v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    #@f
    .line 1246
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceLists:Ljava/util/Vector;

    #@11
    .line 199
    const/16 v2, 0x40

    #@13
    if-gt p7, v2, :cond_4

    #@15
    .line 201
    const/4 v0, 0x4

    #@16
    .line 202
    .local v0, "numblocks":I
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@18
    const/4 v3, 0x4

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-direct {v2, v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    #@1d
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1f
    .line 210
    :goto_0
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@21
    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    #@24
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@26
    .line 211
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@28
    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    #@2b
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2d
    .line 212
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2f
    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    #@32
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@34
    .line 213
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@36
    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    #@39
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@3b
    .line 218
    if-eqz p8, :cond_0

    #@3d
    .line 219
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@3f
    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    #@42
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@44
    .line 221
    :cond_0
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    #@46
    .line 222
    instance-of v2, p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@48
    if-eqz v2, :cond_1

    #@4a
    .line 223
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@4c
    .end local p1    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@4e
    .line 225
    :cond_1
    if-eqz p2, :cond_2

    #@50
    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    :cond_2
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    #@56
    .line 226
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@58
    invoke-virtual {v1, p3, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@5b
    .line 227
    iput-object p4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    #@5d
    .line 228
    iput-object p5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@5f
    .line 229
    iput-boolean p6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_indexing:Z

    #@61
    .line 231
    if-eqz p6, :cond_5

    #@63
    .line 233
    new-instance v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@65
    invoke-direct {v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    #@68
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@6a
    .line 242
    :goto_1
    if-eqz p4, :cond_3

    #@6c
    .line 244
    new-instance v1, Lorg/apache/xml/utils/BoolStack;

    #@6e
    invoke-direct {v1}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    #@71
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    #@73
    .line 246
    invoke-virtual {p0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->pushShouldStripWhitespace(Z)V

    #@76
    .line 194
    :cond_3
    return-void

    #@77
    .line 206
    .end local v0    # "numblocks":I
    .restart local p1    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    :cond_4
    const/16 v0, 0x20

    #@79
    .line 207
    .restart local v0    # "numblocks":I
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@7b
    const/16 v3, 0x20

    #@7d
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    #@80
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@82
    goto :goto_0

    #@83
    .line 239
    .end local p1    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    :cond_5
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@85
    invoke-virtual {v1, p0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getExpandedNameTable(Lorg/apache/xml/dtm/DTM;)Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@88
    move-result-object v1

    #@89
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@8b
    goto :goto_1
.end method


# virtual methods
.method protected _exptype(I)I
    .locals 2
    .param p1, "identity"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 479
    if-ne p1, v1, :cond_0

    #@3
    .line 480
    return v1

    #@4
    .line 484
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@6
    if-lt p1, v0, :cond_1

    #@8
    .line 486
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@10
    if-lt p1, v0, :cond_0

    #@12
    .line 487
    return v1

    #@13
    .line 489
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@15
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@18
    move-result v0

    #@19
    return v0
.end method

.method protected _firstch(I)I
    .locals 5
    .param p1, "identity"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, -0x2

    #@2
    .line 526
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@4
    if-lt p1, v2, :cond_2

    #@6
    const/4 v0, -0x2

    #@7
    .line 531
    .local v0, "info":I
    :cond_0
    :goto_0
    if-ne v0, v3, :cond_4

    #@9
    .line 533
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    #@c
    move-result v1

    #@d
    .line 535
    .local v1, "isMore":Z
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@f
    if-lt p1, v2, :cond_1

    #@11
    if-eqz v1, :cond_3

    #@13
    .line 539
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@15
    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@18
    move-result v0

    #@19
    .line 540
    if-ne v0, v3, :cond_0

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 541
    return v4

    #@1e
    .line 526
    .end local v0    # "info":I
    .end local v1    # "isMore":Z
    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@20
    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@23
    move-result v0

    #@24
    .restart local v0    # "info":I
    goto :goto_0

    #@25
    .line 536
    .restart local v1    # "isMore":Z
    :cond_3
    return v4

    #@26
    .line 545
    .end local v1    # "isMore":Z
    :cond_4
    return v0
.end method

.method protected _level(I)I
    .locals 4
    .param p1, "identity"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 502
    :cond_0
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@3
    if-lt p1, v2, :cond_1

    #@5
    .line 504
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    #@8
    move-result v1

    #@9
    .line 505
    .local v1, "isMore":Z
    if-nez v1, :cond_0

    #@b
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@d
    if-lt p1, v2, :cond_0

    #@f
    .line 506
    return v3

    #@10
    .line 509
    .end local v1    # "isMore":Z
    :cond_1
    const/4 v0, 0x0

    #@11
    .line 510
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    #@14
    move-result p1

    #@15
    if-eq v3, p1, :cond_2

    #@17
    .line 511
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 512
    :cond_2
    return v0
.end method

.method protected _nextsib(I)I
    .locals 5
    .param p1, "identity"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v3, -0x2

    #@2
    .line 558
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@4
    if-lt p1, v2, :cond_2

    #@6
    const/4 v0, -0x2

    #@7
    .line 563
    .local v0, "info":I
    :cond_0
    :goto_0
    if-ne v0, v3, :cond_4

    #@9
    .line 565
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    #@c
    move-result v1

    #@d
    .line 567
    .local v1, "isMore":Z
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@f
    if-lt p1, v2, :cond_1

    #@11
    if-eqz v1, :cond_3

    #@13
    .line 571
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@15
    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@18
    move-result v0

    #@19
    .line 572
    if-ne v0, v3, :cond_0

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 573
    return v4

    #@1e
    .line 558
    .end local v0    # "info":I
    .end local v1    # "isMore":Z
    :cond_2
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@20
    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@23
    move-result v0

    #@24
    .restart local v0    # "info":I
    goto :goto_0

    #@25
    .line 568
    .restart local v1    # "isMore":Z
    :cond_3
    return v4

    #@26
    .line 577
    .end local v1    # "isMore":Z
    :cond_4
    return v0
.end method

.method protected _parent(I)I
    .locals 2
    .param p1, "identity"    # I

    #@0
    .prologue
    .line 617
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@2
    if-ge p1, v1, :cond_0

    #@4
    .line 618
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@6
    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 625
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    #@e
    move-result v0

    #@f
    .line 627
    .local v0, "isMore":Z
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@11
    if-lt p1, v1, :cond_1

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 629
    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@17
    if-ge p1, v1, :cond_0

    #@19
    .line 630
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1b
    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@1e
    move-result v1

    #@1f
    return v1

    #@20
    .line 628
    :cond_2
    const/4 v1, -0x1

    #@21
    return v1
.end method

.method protected _prevsib(I)I
    .locals 2
    .param p1, "identity"    # I

    #@0
    .prologue
    .line 590
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@2
    if-ge p1, v1, :cond_0

    #@4
    .line 591
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@6
    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 598
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    #@e
    move-result v0

    #@f
    .line 600
    .local v0, "isMore":Z
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@11
    if-lt p1, v1, :cond_1

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 602
    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@17
    if-ge p1, v1, :cond_0

    #@19
    .line 603
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1b
    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@1e
    move-result v1

    #@1f
    return v1

    #@20
    .line 601
    :cond_2
    const/4 v1, -0x1

    #@21
    return v1
.end method

.method protected _type(I)S
    .locals 2
    .param p1, "identity"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 462
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    #@4
    move-result v0

    #@5
    .line 464
    .local v0, "info":I
    if-eq v1, v0, :cond_0

    #@7
    .line 465
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@9
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 467
    :cond_0
    return v1
.end method

.method public appendChild(IZZ)V
    .locals 2
    .param p1, "newChild"    # I
    .param p2, "clone"    # Z
    .param p3, "cloneDepth"    # Z

    #@0
    .prologue
    .line 2237
    const-string/jumbo v0, "ER_METHOD_NOT_SUPPORTED"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    #@b
    .line 2235
    return-void
.end method

.method public appendTextChild(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2251
    const-string/jumbo v0, "ER_METHOD_NOT_SUPPORTED"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    #@b
    .line 2249
    return-void
.end method

.method protected declareNamespaceInContext(II)V
    .locals 9
    .param p1, "elementNodeIndex"    # I
    .param p2, "namespaceNodeIndex"    # I

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    .line 1264
    const/4 v5, 0x0

    #@3
    .line 1265
    .local v5, "nsList":Lorg/apache/xml/utils/SuballocatedIntVector;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    #@5
    if-nez v6, :cond_1

    #@7
    .line 1269
    new-instance v6, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@9
    invoke-direct {v6, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    #@c
    iput-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@e
    .line 1270
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@10
    invoke-virtual {v6, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@13
    .line 1271
    new-instance v6, Ljava/util/Vector;

    #@15
    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    #@18
    iput-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    #@1a
    .line 1272
    new-instance v5, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1c
    .end local v5    # "nsList":Lorg/apache/xml/utils/SuballocatedIntVector;
    invoke-direct {v5, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    #@1f
    .line 1273
    .local v5, "nsList":Lorg/apache/xml/utils/SuballocatedIntVector;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    #@21
    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@24
    .line 1286
    .end local v5    # "nsList":Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_0
    :goto_0
    if-nez v5, :cond_4

    #@26
    .line 1288
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@28
    invoke-virtual {v6, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@2b
    .line 1291
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    #@2e
    move-result v6

    #@2f
    invoke-virtual {p0, v6}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    #@32
    move-result-object v1

    #@33
    .line 1293
    .local v1, "inherited":Lorg/apache/xml/utils/SuballocatedIntVector;
    if-eqz v1, :cond_2

    #@35
    .line 1297
    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@38
    move-result v2

    #@39
    .line 1301
    .local v2, "isize":I
    new-instance v5, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@3b
    add-int/lit8 v6, v2, 0x10

    #@3d
    const/16 v7, 0x800

    #@3f
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@42
    move-result v6

    #@43
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    #@46
    move-result v6

    #@47
    invoke-direct {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    #@4a
    .line 1304
    .restart local v5    # "nsList":Lorg/apache/xml/utils/SuballocatedIntVector;
    const/4 v0, 0x0

    #@4b
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    #@4d
    .line 1306
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@50
    move-result v6

    #@51
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@54
    .line 1304
    add-int/lit8 v0, v0, 0x1

    #@56
    goto :goto_1

    #@57
    .line 1279
    .end local v0    # "i":I
    .end local v1    # "inherited":Lorg/apache/xml/utils/SuballocatedIntVector;
    .end local v2    # "isize":I
    .local v5, "nsList":Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_1
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@59
    invoke-virtual {v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@5c
    move-result v6

    #@5d
    add-int/lit8 v3, v6, -0x1

    #@5f
    .line 1281
    .local v3, "last":I
    if-ltz v3, :cond_0

    #@61
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@63
    invoke-virtual {v6, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@66
    move-result v6

    #@67
    if-ne p1, v6, :cond_0

    #@69
    .line 1283
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    #@6b
    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@6e
    move-result-object v5

    #@6f
    .end local v5    # "nsList":Lorg/apache/xml/utils/SuballocatedIntVector;
    check-cast v5, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@71
    .local v5, "nsList":Lorg/apache/xml/utils/SuballocatedIntVector;
    goto :goto_0

    #@72
    .line 1309
    .end local v3    # "last":I
    .end local v5    # "nsList":Lorg/apache/xml/utils/SuballocatedIntVector;
    .restart local v1    # "inherited":Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_2
    new-instance v5, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@74
    invoke-direct {v5, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    #@77
    .line 1312
    .restart local v5    # "nsList":Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_3
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    #@79
    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@7c
    .line 1319
    .end local v1    # "inherited":Lorg/apache/xml/utils/SuballocatedIntVector;
    .end local v5    # "nsList":Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_4
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    #@7f
    move-result v4

    #@80
    .line 1321
    .local v4, "newEType":I
    invoke-virtual {v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@83
    move-result v6

    #@84
    add-int/lit8 v0, v6, -0x1

    #@86
    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_6

    #@88
    .line 1323
    invoke-virtual {v5, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@8b
    move-result v6

    #@8c
    invoke-virtual {p0, v6}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    #@8f
    move-result v6

    #@90
    if-ne v4, v6, :cond_5

    #@92
    .line 1325
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@95
    move-result v6

    #@96
    invoke-virtual {v5, v6, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@99
    .line 1326
    return-void

    #@9a
    .line 1321
    :cond_5
    add-int/lit8 v0, v0, -0x1

    #@9c
    goto :goto_2

    #@9d
    .line 1329
    :cond_6
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@a0
    move-result v6

    #@a1
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    #@a4
    .line 1262
    return-void
.end method

.method public abstract dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public documentRegistration()V
    .locals 0

    #@0
    .prologue
    .line 2322
    return-void
.end method

.method public documentRelease()V
    .locals 0

    #@0
    .prologue
    .line 2331
    return-void
.end method

.method public dumpDTM(Ljava/io/OutputStream;)V
    .locals 19
    .param p1, "os"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 641
    if-nez p1, :cond_0

    #@2
    .line 643
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@4
    new-instance v16, Ljava/lang/StringBuilder;

    #@6
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v17, "DTMDump"

    #@c
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v16

    #@10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    #@13
    move-result v17

    #@14
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v16

    #@18
    const-string/jumbo v17, ".txt"

    #@1b
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v16

    #@1f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v16

    #@23
    move-object/from16 v0, v16

    #@25
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@28
    .line 644
    .local v2, "f":Ljava/io/File;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    new-instance v17, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v18, "Dumping... "

    #@32
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v17

    #@36
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@39
    move-result-object v18

    #@3a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v17

    #@3e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v17

    #@42
    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@45
    .line 645
    new-instance v10, Ljava/io/FileOutputStream;

    #@47
    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@4a
    .end local p1    # "os":Ljava/io/OutputStream;
    .local v10, "os":Ljava/io/OutputStream;
    move-object/from16 p1, v10

    #@4c
    .line 647
    .end local v2    # "f":Ljava/io/File;
    .end local v10    # "os":Ljava/io/OutputStream;
    .restart local p1    # "os":Ljava/io/OutputStream;
    :cond_0
    new-instance v13, Ljava/io/PrintStream;

    #@4e
    move-object/from16 v0, p1

    #@50
    invoke-direct {v13, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@53
    .line 649
    .local v13, "ps":Ljava/io/PrintStream;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    #@56
    move-result v16

    #@57
    if-nez v16, :cond_1

    #@59
    .line 651
    move-object/from16 v0, p0

    #@5b
    iget v8, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    #@5d
    .line 653
    .local v8, "nRecords":I
    new-instance v16, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v17, "Total nodes: "

    #@65
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v16

    #@69
    move-object/from16 v0, v16

    #@6b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v16

    #@6f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v16

    #@73
    move-object/from16 v0, v16

    #@75
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@78
    .line 655
    const/4 v5, 0x0

    #@79
    .local v5, "index":I
    :goto_0
    if-ge v5, v8, :cond_b

    #@7b
    .line 657
    move-object/from16 v0, p0

    #@7d
    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@80
    move-result v4

    #@81
    .line 658
    .local v4, "i":I
    new-instance v16, Ljava/lang/StringBuilder;

    #@83
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v17, "=========== index="

    #@89
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v16

    #@8d
    move-object/from16 v0, v16

    #@8f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v16

    #@93
    const-string/jumbo v17, " handle="

    #@96
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v16

    #@9a
    move-object/from16 v0, v16

    #@9c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v16

    #@a0
    const-string/jumbo v17, " ==========="

    #@a3
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v16

    #@a7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v16

    #@ab
    move-object/from16 v0, v16

    #@ad
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b0
    .line 659
    new-instance v16, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v17, "NodeName: "

    #@b8
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v16

    #@bc
    move-object/from16 v0, p0

    #@be
    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeName(I)Ljava/lang/String;

    #@c1
    move-result-object v17

    #@c2
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v16

    #@c6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v16

    #@ca
    move-object/from16 v0, v16

    #@cc
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@cf
    .line 660
    new-instance v16, Ljava/lang/StringBuilder;

    #@d1
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@d4
    const-string/jumbo v17, "NodeNameX: "

    #@d7
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v16

    #@db
    move-object/from16 v0, p0

    #@dd
    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeNameX(I)Ljava/lang/String;

    #@e0
    move-result-object v17

    #@e1
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v16

    #@e5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v16

    #@e9
    move-object/from16 v0, v16

    #@eb
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ee
    .line 661
    new-instance v16, Ljava/lang/StringBuilder;

    #@f0
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@f3
    const-string/jumbo v17, "LocalName: "

    #@f6
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v16

    #@fa
    move-object/from16 v0, p0

    #@fc
    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getLocalName(I)Ljava/lang/String;

    #@ff
    move-result-object v17

    #@100
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v16

    #@104
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v16

    #@108
    move-object/from16 v0, v16

    #@10a
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10d
    .line 662
    new-instance v16, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string/jumbo v17, "NamespaceURI: "

    #@115
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v16

    #@119
    move-object/from16 v0, p0

    #@11b
    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNamespaceURI(I)Ljava/lang/String;

    #@11e
    move-result-object v17

    #@11f
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v16

    #@123
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v16

    #@127
    move-object/from16 v0, v16

    #@129
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@12c
    .line 663
    new-instance v16, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    const-string/jumbo v17, "Prefix: "

    #@134
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v16

    #@138
    move-object/from16 v0, p0

    #@13a
    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getPrefix(I)Ljava/lang/String;

    #@13d
    move-result-object v17

    #@13e
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v16

    #@142
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@145
    move-result-object v16

    #@146
    move-object/from16 v0, v16

    #@148
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@14b
    .line 665
    move-object/from16 v0, p0

    #@14d
    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    #@150
    move-result v1

    #@151
    .line 667
    .local v1, "exTypeID":I
    new-instance v16, Ljava/lang/StringBuilder;

    #@153
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@156
    const-string/jumbo v17, "Expanded Type ID: "

    #@159
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v16

    #@15d
    .line 668
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@160
    move-result-object v17

    #@161
    .line 667
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v16

    #@165
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@168
    move-result-object v16

    #@169
    move-object/from16 v0, v16

    #@16b
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@16e
    .line 670
    move-object/from16 v0, p0

    #@170
    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    #@173
    move-result v14

    #@174
    .line 673
    .local v14, "type":I
    packed-switch v14, :pswitch_data_0

    #@177
    .line 718
    :pswitch_0
    const-string/jumbo v15, "Unknown!"

    #@17a
    .line 722
    .local v15, "typestring":Ljava/lang/String;
    :goto_1
    new-instance v16, Ljava/lang/StringBuilder;

    #@17c
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@17f
    const-string/jumbo v17, "Type: "

    #@182
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v16

    #@186
    move-object/from16 v0, v16

    #@188
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v16

    #@18c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18f
    move-result-object v16

    #@190
    move-object/from16 v0, v16

    #@192
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@195
    .line 724
    move-object/from16 v0, p0

    #@197
    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    #@19a
    move-result v3

    #@19b
    .line 726
    .local v3, "firstChild":I
    const/16 v16, -0x1

    #@19d
    move/from16 v0, v16

    #@19f
    if-ne v0, v3, :cond_3

    #@1a1
    .line 727
    const-string/jumbo v16, "First child: DTM.NULL"

    #@1a4
    move-object/from16 v0, v16

    #@1a6
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a9
    .line 733
    :goto_2
    move-object/from16 v0, p0

    #@1ab
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1ad
    move-object/from16 v16, v0

    #@1af
    if-eqz v16, :cond_2

    #@1b1
    .line 735
    move-object/from16 v0, p0

    #@1b3
    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_prevsib(I)I

    #@1b6
    move-result v12

    #@1b7
    .line 737
    .local v12, "prevSibling":I
    const/16 v16, -0x1

    #@1b9
    move/from16 v0, v16

    #@1bb
    if-ne v0, v12, :cond_5

    #@1bd
    .line 738
    const-string/jumbo v16, "Prev sibling: DTM.NULL"

    #@1c0
    move-object/from16 v0, v16

    #@1c2
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1c5
    .line 745
    .end local v12    # "prevSibling":I
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    #@1c7
    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    #@1ca
    move-result v9

    #@1cb
    .line 747
    .local v9, "nextSibling":I
    const/16 v16, -0x1

    #@1cd
    move/from16 v0, v16

    #@1cf
    if-ne v0, v9, :cond_7

    #@1d1
    .line 748
    const-string/jumbo v16, "Next sibling: DTM.NULL"

    #@1d4
    move-object/from16 v0, v16

    #@1d6
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d9
    .line 754
    :goto_4
    move-object/from16 v0, p0

    #@1db
    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    #@1de
    move-result v11

    #@1df
    .line 756
    .local v11, "parent":I
    const/16 v16, -0x1

    #@1e1
    move/from16 v0, v16

    #@1e3
    if-ne v0, v11, :cond_9

    #@1e5
    .line 757
    const-string/jumbo v16, "Parent: DTM.NULL"

    #@1e8
    move-object/from16 v0, v16

    #@1ea
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1ed
    .line 763
    :goto_5
    move-object/from16 v0, p0

    #@1ef
    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_level(I)I

    #@1f2
    move-result v7

    #@1f3
    .line 765
    .local v7, "level":I
    new-instance v16, Ljava/lang/StringBuilder;

    #@1f5
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@1f8
    const-string/jumbo v17, "Level: "

    #@1fb
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fe
    move-result-object v16

    #@1ff
    move-object/from16 v0, v16

    #@201
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@204
    move-result-object v16

    #@205
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@208
    move-result-object v16

    #@209
    move-object/from16 v0, v16

    #@20b
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20e
    .line 766
    new-instance v16, Ljava/lang/StringBuilder;

    #@210
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@213
    const-string/jumbo v17, "Node Value: "

    #@216
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@219
    move-result-object v16

    #@21a
    move-object/from16 v0, p0

    #@21c
    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeValue(I)Ljava/lang/String;

    #@21f
    move-result-object v17

    #@220
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@223
    move-result-object v16

    #@224
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@227
    move-result-object v16

    #@228
    move-object/from16 v0, v16

    #@22a
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22d
    .line 767
    new-instance v16, Ljava/lang/StringBuilder;

    #@22f
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@232
    const-string/jumbo v17, "String Value: "

    #@235
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    move-result-object v16

    #@239
    move-object/from16 v0, p0

    #@23b
    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@23e
    move-result-object v17

    #@23f
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@242
    move-result-object v16

    #@243
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@246
    move-result-object v16

    #@247
    move-object/from16 v0, v16

    #@249
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24c
    .line 655
    add-int/lit8 v5, v5, 0x1

    #@24e
    goto/16 :goto_0

    #@250
    .line 676
    .end local v3    # "firstChild":I
    .end local v7    # "level":I
    .end local v9    # "nextSibling":I
    .end local v11    # "parent":I
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v15, "ATTRIBUTE_NODE"

    #@253
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@255
    .line 679
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v15, "CDATA_SECTION_NODE"

    #@258
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@25a
    .line 682
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v15, "COMMENT_NODE"

    #@25d
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@25f
    .line 685
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v15, "DOCUMENT_FRAGMENT_NODE"

    #@262
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@264
    .line 688
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v15, "DOCUMENT_NODE"

    #@267
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@269
    .line 691
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v15, "DOCUMENT_NODE"

    #@26c
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@26e
    .line 694
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v15, "ELEMENT_NODE"

    #@271
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@273
    .line 697
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v15, "ENTITY_NODE"

    #@276
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@278
    .line 700
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v15, "ENTITY_REFERENCE_NODE"

    #@27b
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@27d
    .line 703
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v15, "NAMESPACE_NODE"

    #@280
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@282
    .line 706
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v15, "NOTATION_NODE"

    #@285
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@287
    .line 709
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v15, "NULL"

    #@28a
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@28c
    .line 712
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v15, "PROCESSING_INSTRUCTION_NODE"

    #@28f
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@291
    .line 715
    .end local v15    # "typestring":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v15, "TEXT_NODE"

    #@294
    .restart local v15    # "typestring":Ljava/lang/String;
    goto/16 :goto_1

    #@296
    .line 728
    .restart local v3    # "firstChild":I
    :cond_3
    const/16 v16, -0x2

    #@298
    move/from16 v0, v16

    #@29a
    if-ne v0, v3, :cond_4

    #@29c
    .line 729
    const-string/jumbo v16, "First child: NOTPROCESSED"

    #@29f
    move-object/from16 v0, v16

    #@2a1
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a4
    goto/16 :goto_2

    #@2a6
    .line 771
    .end local v1    # "exTypeID":I
    .end local v3    # "firstChild":I
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v8    # "nRecords":I
    .end local v13    # "ps":Ljava/io/PrintStream;
    .end local v14    # "type":I
    .end local v15    # "typestring":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@2a7
    .line 772
    .local v6, "ioe":Ljava/io/IOException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a9
    move-object/from16 v0, v16

    #@2ab
    invoke-virtual {v6, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    #@2ae
    .line 773
    new-instance v16, Ljava/lang/RuntimeException;

    #@2b0
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@2b3
    move-result-object v17

    #@2b4
    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b7
    throw v16

    #@2b8
    .line 731
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v1    # "exTypeID":I
    .restart local v3    # "firstChild":I
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    .restart local v8    # "nRecords":I
    .restart local v13    # "ps":Ljava/io/PrintStream;
    .restart local v14    # "type":I
    .restart local v15    # "typestring":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v16, Ljava/lang/StringBuilder;

    #@2ba
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@2bd
    const-string/jumbo v17, "First child: "

    #@2c0
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c3
    move-result-object v16

    #@2c4
    move-object/from16 v0, v16

    #@2c6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c9
    move-result-object v16

    #@2ca
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2cd
    move-result-object v16

    #@2ce
    move-object/from16 v0, v16

    #@2d0
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d3
    goto/16 :goto_2

    #@2d5
    .line 739
    .restart local v12    # "prevSibling":I
    :cond_5
    const/16 v16, -0x2

    #@2d7
    move/from16 v0, v16

    #@2d9
    if-ne v0, v12, :cond_6

    #@2db
    .line 740
    const-string/jumbo v16, "Prev sibling: NOTPROCESSED"

    #@2de
    move-object/from16 v0, v16

    #@2e0
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2e3
    goto/16 :goto_3

    #@2e5
    .line 742
    :cond_6
    new-instance v16, Ljava/lang/StringBuilder;

    #@2e7
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@2ea
    const-string/jumbo v17, "Prev sibling: "

    #@2ed
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f0
    move-result-object v16

    #@2f1
    move-object/from16 v0, v16

    #@2f3
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f6
    move-result-object v16

    #@2f7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2fa
    move-result-object v16

    #@2fb
    move-object/from16 v0, v16

    #@2fd
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@300
    goto/16 :goto_3

    #@302
    .line 749
    .end local v12    # "prevSibling":I
    .restart local v9    # "nextSibling":I
    :cond_7
    const/16 v16, -0x2

    #@304
    move/from16 v0, v16

    #@306
    if-ne v0, v9, :cond_8

    #@308
    .line 750
    const-string/jumbo v16, "Next sibling: NOTPROCESSED"

    #@30b
    move-object/from16 v0, v16

    #@30d
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@310
    goto/16 :goto_4

    #@312
    .line 752
    :cond_8
    new-instance v16, Ljava/lang/StringBuilder;

    #@314
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@317
    const-string/jumbo v17, "Next sibling: "

    #@31a
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31d
    move-result-object v16

    #@31e
    move-object/from16 v0, v16

    #@320
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@323
    move-result-object v16

    #@324
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@327
    move-result-object v16

    #@328
    move-object/from16 v0, v16

    #@32a
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32d
    goto/16 :goto_4

    #@32f
    .line 758
    .restart local v11    # "parent":I
    :cond_9
    const/16 v16, -0x2

    #@331
    move/from16 v0, v16

    #@333
    if-ne v0, v11, :cond_a

    #@335
    .line 759
    const-string/jumbo v16, "Parent: NOTPROCESSED"

    #@338
    move-object/from16 v0, v16

    #@33a
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@33d
    goto/16 :goto_5

    #@33f
    .line 761
    :cond_a
    new-instance v16, Ljava/lang/StringBuilder;

    #@341
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@344
    const-string/jumbo v17, "Parent: "

    #@347
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34a
    move-result-object v16

    #@34b
    move-object/from16 v0, v16

    #@34d
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@350
    move-result-object v16

    #@351
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@354
    move-result-object v16

    #@355
    move-object/from16 v0, v16

    #@357
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@35a
    goto/16 :goto_5

    #@35c
    .line 637
    .end local v1    # "exTypeID":I
    .end local v3    # "firstChild":I
    .end local v4    # "i":I
    .end local v9    # "nextSibling":I
    .end local v11    # "parent":I
    .end local v14    # "type":I
    .end local v15    # "typestring":Ljava/lang/String;
    :cond_b
    return-void

    #@35d
    .line 673
    nop

    #@35e
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_e
        :pswitch_2
        :pswitch_9
        :pswitch_8
        :pswitch_d
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public dumpNode(I)Ljava/lang/String;
    .locals 4
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 792
    const/4 v2, -0x1

    #@1
    if-ne p1, v2, :cond_0

    #@3
    .line 793
    const-string/jumbo v2, "[null]"

    #@6
    return-object v2

    #@7
    .line 796
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    #@a
    move-result v2

    #@b
    packed-switch v2, :pswitch_data_0

    #@e
    .line 841
    :pswitch_0
    const-string/jumbo v1, "Unknown!"

    #@11
    .line 845
    .local v1, "typestring":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@16
    .line 846
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v3, "["

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    const-string/jumbo v3, ": "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 847
    const-string/jumbo v3, "(0x"

    #@34
    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 847
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    #@3b
    move-result v3

    #@3c
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 847
    const-string/jumbo v3, ") "

    #@47
    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    .line 848
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeNameX(I)Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    .line 848
    const-string/jumbo v3, " {"

    #@56
    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    .line 848
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNamespaceURI(I)Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    .line 848
    const-string/jumbo v3, "}"

    #@65
    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    .line 849
    const-string/jumbo v3, "=\""

    #@6c
    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    .line 849
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeValue(I)Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    .line 849
    const-string/jumbo v3, "\"]"

    #@7b
    .line 846
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@86
    .line 850
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@89
    move-result-object v2

    #@8a
    return-object v2

    #@8b
    .line 799
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "ATTR"

    #@8e
    .restart local v1    # "typestring":Ljava/lang/String;
    goto :goto_0

    #@8f
    .line 802
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v1, "CDATA"

    #@92
    .restart local v1    # "typestring":Ljava/lang/String;
    goto/16 :goto_0

    #@94
    .line 805
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v1, "COMMENT"

    #@97
    .restart local v1    # "typestring":Ljava/lang/String;
    goto/16 :goto_0

    #@99
    .line 808
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v1, "DOC_FRAG"

    #@9c
    .restart local v1    # "typestring":Ljava/lang/String;
    goto/16 :goto_0

    #@9e
    .line 811
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v1, "DOC"

    #@a1
    .restart local v1    # "typestring":Ljava/lang/String;
    goto/16 :goto_0

    #@a3
    .line 814
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v1, "DOC_TYPE"

    #@a6
    .restart local v1    # "typestring":Ljava/lang/String;
    goto/16 :goto_0

    #@a8
    .line 817
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v1, "ELEMENT"

    #@ab
    .restart local v1    # "typestring":Ljava/lang/String;
    goto/16 :goto_0

    #@ad
    .line 820
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v1, "ENTITY"

    #@b0
    .restart local v1    # "typestring":Ljava/lang/String;
    goto/16 :goto_0

    #@b2
    .line 823
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v1, "ENT_REF"

    #@b5
    .restart local v1    # "typestring":Ljava/lang/String;
    goto/16 :goto_0

    #@b7
    .line 826
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v1, "NAMESPACE"

    #@ba
    .restart local v1    # "typestring":Ljava/lang/String;
    goto/16 :goto_0

    #@bc
    .line 829
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v1, "NOTATION"

    #@bf
    .restart local v1    # "typestring":Ljava/lang/String;
    goto/16 :goto_0

    #@c1
    .line 832
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v1, "null"

    #@c4
    .restart local v1    # "typestring":Ljava/lang/String;
    goto/16 :goto_0

    #@c6
    .line 835
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v1, "PI"

    #@c9
    .restart local v1    # "typestring":Ljava/lang/String;
    goto/16 :goto_0

    #@cb
    .line 838
    .end local v1    # "typestring":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v1, "TEXT"

    #@ce
    .restart local v1    # "typestring":Ljava/lang/String;
    goto/16 :goto_0

    #@d0
    .line 796
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_e
        :pswitch_2
        :pswitch_9
        :pswitch_8
        :pswitch_d
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method protected ensureSizeOfIndex(II)V
    .locals 8
    .param p1, "namespaceID"    # I
    .param p2, "LocalNameID"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 259
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    #@3
    if-nez v5, :cond_3

    #@5
    .line 261
    add-int/lit8 v5, p1, 0x14

    #@7
    new-array v5, v5, [[[I

    #@9
    iput-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    #@b
    .line 272
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    #@d
    aget-object v4, v5, p1

    #@f
    .line 274
    .local v4, "localNameIndex":[[I
    if-nez v4, :cond_4

    #@11
    .line 276
    add-int/lit8 v5, p2, 0x64

    #@13
    new-array v4, v5, [[I

    #@15
    .line 277
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    #@17
    aput-object v4, v5, p1

    #@19
    .line 290
    :cond_1
    :goto_1
    aget-object v0, v4, p2

    #@1b
    .line 292
    .local v0, "elemHandles":[I
    if-nez v0, :cond_5

    #@1d
    .line 294
    const/16 v5, 0x80

    #@1f
    new-array v0, v5, [I

    #@21
    .line 295
    aput-object v0, v4, p2

    #@23
    .line 296
    const/4 v5, 0x1

    #@24
    aput v5, v0, v7

    #@26
    .line 256
    :cond_2
    :goto_2
    return-void

    #@27
    .line 263
    .end local v0    # "elemHandles":[I
    .end local v4    # "localNameIndex":[[I
    :cond_3
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    #@29
    array-length v5, v5

    #@2a
    if-gt v5, p1, :cond_0

    #@2c
    .line 265
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    #@2e
    .line 267
    .local v3, "indexes":[[[I
    add-int/lit8 v5, p1, 0x14

    #@30
    new-array v5, v5, [[[I

    #@32
    iput-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    #@34
    .line 269
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    #@36
    array-length v6, v3

    #@37
    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3a
    goto :goto_0

    #@3b
    .line 279
    .end local v3    # "indexes":[[[I
    .restart local v4    # "localNameIndex":[[I
    :cond_4
    array-length v5, v4

    #@3c
    if-gt v5, p2, :cond_1

    #@3e
    .line 281
    move-object v2, v4

    #@3f
    .line 283
    .local v2, "indexes":[[I
    add-int/lit8 v5, p2, 0x64

    #@41
    new-array v4, v5, [[I

    #@43
    .line 285
    array-length v5, v2

    #@44
    invoke-static {v2, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@47
    .line 287
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    #@49
    aput-object v4, v5, p1

    #@4b
    goto :goto_1

    #@4c
    .line 298
    .end local v2    # "indexes":[[I
    .restart local v0    # "elemHandles":[I
    :cond_5
    array-length v5, v0

    #@4d
    aget v6, v0, v7

    #@4f
    add-int/lit8 v6, v6, 0x1

    #@51
    if-gt v5, v6, :cond_2

    #@53
    .line 300
    move-object v1, v0

    #@54
    .line 302
    .local v1, "indexes":[I
    aget v5, v0, v7

    #@56
    add-int/lit16 v5, v5, 0x400

    #@58
    new-array v0, v5, [I

    #@5a
    .line 304
    array-length v5, v1

    #@5b
    invoke-static {v1, v7, v0, v7, v5}, Ljava/lang/System;->arraycopy([II[III)V

    #@5e
    .line 306
    aput-object v0, v4, p2

    #@60
    goto :goto_2
.end method

.method protected error(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2261
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    #@2
    invoke-direct {v0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@5
    throw v0
.end method

.method findElementFromIndex(III)I
    .locals 6
    .param p1, "nsIndex"    # I
    .param p2, "lnIndex"    # I
    .param p3, "firstPotential"    # I

    #@0
    .prologue
    .line 388
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    #@2
    .line 390
    .local v1, "indexes":[[[I
    if-eqz v1, :cond_0

    #@4
    array-length v4, v1

    #@5
    if-ge p1, v4, :cond_0

    #@7
    .line 392
    aget-object v2, v1, p1

    #@9
    .line 394
    .local v2, "lnIndexs":[[I
    if-eqz v2, :cond_0

    #@b
    array-length v4, v2

    #@c
    if-ge p2, v4, :cond_0

    #@e
    .line 396
    aget-object v0, v2, p2

    #@10
    .line 398
    .local v0, "elems":[I
    if-eqz v0, :cond_0

    #@12
    .line 400
    const/4 v4, 0x0

    #@13
    aget v4, v0, v4

    #@15
    const/4 v5, 0x1

    #@16
    invoke-virtual {p0, v0, v5, v4, p3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findGTE([IIII)I

    #@19
    move-result v3

    #@1a
    .line 402
    .local v3, "pos":I
    const/4 v4, -0x1

    #@1b
    if-le v3, v4, :cond_0

    #@1d
    .line 404
    aget v4, v0, v3

    #@1f
    return v4

    #@20
    .line 410
    .end local v0    # "elems":[I
    .end local v2    # "lnIndexs":[[I
    .end local v3    # "pos":I
    :cond_0
    const/4 v4, -0x2

    #@21
    return v4
.end method

.method protected findGTE([IIII)I
    .locals 6
    .param p1, "list"    # [I
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "value"    # I

    #@0
    .prologue
    .line 354
    move v3, p2

    #@1
    .line 355
    .local v3, "low":I
    add-int/lit8 v5, p3, -0x1

    #@3
    add-int v2, p2, v5

    #@5
    .line 356
    .local v2, "high":I
    move v1, v2

    #@6
    .line 358
    .local v1, "end":I
    :goto_0
    if-gt v3, v2, :cond_2

    #@8
    .line 360
    add-int v5, v3, v2

    #@a
    div-int/lit8 v4, v5, 0x2

    #@c
    .line 361
    .local v4, "mid":I
    aget v0, p1, v4

    #@e
    .line 363
    .local v0, "c":I
    if-le v0, p4, :cond_0

    #@10
    .line 364
    add-int/lit8 v2, v4, -0x1

    #@12
    goto :goto_0

    #@13
    .line 365
    :cond_0
    if-ge v0, p4, :cond_1

    #@15
    .line 366
    add-int/lit8 v3, v4, 0x1

    #@17
    goto :goto_0

    #@18
    .line 368
    :cond_1
    return v4

    #@19
    .line 371
    .end local v0    # "c":I
    .end local v4    # "mid":I
    :cond_2
    if-gt v3, v1, :cond_3

    #@1b
    aget v5, p1, v3

    #@1d
    if-le v5, p4, :cond_3

    #@1f
    .end local v3    # "low":I
    :goto_1
    return v3

    #@20
    .restart local v3    # "low":I
    :cond_3
    const/4 v3, -0x1

    #@21
    goto :goto_1
.end method

.method protected findInSortedSuballocatedIntVector(Lorg/apache/xml/utils/SuballocatedIntVector;I)I
    .locals 5
    .param p1, "vector"    # Lorg/apache/xml/utils/SuballocatedIntVector;
    .param p2, "lookfor"    # I

    #@0
    .prologue
    .line 1418
    const/4 v1, 0x0

    #@1
    .line 1419
    .local v1, "i":I
    if-eqz p1, :cond_3

    #@3
    .line 1420
    const/4 v0, 0x0

    #@4
    .line 1421
    .local v0, "first":I
    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@7
    move-result v4

    #@8
    add-int/lit8 v2, v4, -0x1

    #@a
    .line 1423
    .local v2, "last":I
    :goto_0
    if-gt v0, v2, :cond_2

    #@c
    .line 1424
    add-int v4, v0, v2

    #@e
    div-int/lit8 v1, v4, 0x2

    #@10
    .line 1425
    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@13
    move-result v4

    #@14
    sub-int v3, p2, v4

    #@16
    .line 1426
    .local v3, "test":I
    if-nez v3, :cond_0

    #@18
    .line 1427
    return v1

    #@19
    .line 1429
    :cond_0
    if-gez v3, :cond_1

    #@1b
    .line 1430
    add-int/lit8 v2, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1433
    :cond_1
    add-int/lit8 v0, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1437
    .end local v3    # "test":I
    :cond_2
    if-le v0, v1, :cond_3

    #@23
    .line 1438
    move v1, v0

    #@24
    .line 1442
    .end local v0    # "first":I
    .end local v2    # "last":I
    :cond_3
    rsub-int/lit8 v4, v1, -0x1

    #@26
    return v4
.end method

.method protected findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;
    .locals 11
    .param p1, "elementNodeIndex"    # I

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1341
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@4
    if-eqz v7, :cond_7

    #@6
    .line 1345
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@8
    invoke-virtual {p0, v7, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findInSortedSuballocatedIntVector(Lorg/apache/xml/utils/SuballocatedIntVector;I)I

    #@b
    move-result v6

    #@c
    .line 1347
    .local v6, "wouldBeAt":I
    if-ltz v6, :cond_0

    #@e
    .line 1348
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    #@10
    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@13
    move-result-object v7

    #@14
    check-cast v7, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@16
    return-object v7

    #@17
    .line 1349
    :cond_0
    if-ne v6, v10, :cond_1

    #@19
    .line 1350
    return-object v9

    #@1a
    .line 1354
    :cond_1
    rsub-int/lit8 v6, v6, -0x1

    #@1c
    .line 1357
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1e
    add-int/lit8 v6, v6, -0x1

    #@20
    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@23
    move-result v1

    #@24
    .line 1358
    .local v1, "candidate":I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    #@27
    move-result v0

    #@28
    .line 1363
    .local v0, "ancestor":I
    if-nez v6, :cond_5

    #@2a
    if-ge v1, v0, :cond_5

    #@2c
    .line 1364
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@2f
    move-result v7

    #@30
    invoke-virtual {p0, v7}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    #@33
    move-result v3

    #@34
    .line 1365
    .local v3, "rootHandle":I
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@37
    move-result v4

    #@38
    .line 1368
    .local v4, "rootID":I
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    #@3b
    move-result v7

    #@3c
    const/16 v8, 0x9

    #@3e
    if-ne v7, v8, :cond_3

    #@40
    .line 1369
    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    #@43
    move-result v2

    #@44
    .line 1370
    .local v2, "ch":I
    if-eq v2, v10, :cond_2

    #@46
    move v5, v2

    #@47
    .line 1375
    .end local v2    # "ch":I
    .local v5, "uppermostNSCandidateID":I
    :goto_0
    if-ne v1, v5, :cond_5

    #@49
    .line 1376
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    #@4b
    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@4e
    move-result-object v7

    #@4f
    check-cast v7, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@51
    return-object v7

    #@52
    .line 1370
    .end local v5    # "uppermostNSCandidateID":I
    .restart local v2    # "ch":I
    :cond_2
    move v5, v4

    #@53
    .restart local v5    # "uppermostNSCandidateID":I
    goto :goto_0

    #@54
    .line 1372
    .end local v2    # "ch":I
    .end local v5    # "uppermostNSCandidateID":I
    :cond_3
    move v5, v4

    #@55
    .restart local v5    # "uppermostNSCandidateID":I
    goto :goto_0

    #@56
    .line 1390
    .end local v3    # "rootHandle":I
    .end local v4    # "rootID":I
    .end local v5    # "uppermostNSCandidateID":I
    :cond_4
    if-lez v6, :cond_7

    #@58
    .line 1392
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@5a
    add-int/lit8 v6, v6, -0x1

    #@5c
    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@5f
    move-result v1

    #@60
    .line 1380
    :cond_5
    if-ltz v6, :cond_7

    #@62
    if-lez v0, :cond_7

    #@64
    .line 1382
    if-ne v1, v0, :cond_6

    #@66
    .line 1384
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    #@68
    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@6b
    move-result-object v7

    #@6c
    check-cast v7, Lorg/apache/xml/utils/SuballocatedIntVector;

    #@6e
    return-object v7

    #@6f
    .line 1385
    :cond_6
    if-ge v1, v0, :cond_4

    #@71
    .line 1388
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    #@74
    move-result v0

    #@75
    .line 1389
    if-ge v1, v0, :cond_5

    #@77
    goto :goto_1

    #@78
    .line 1399
    .end local v0    # "ancestor":I
    .end local v1    # "candidate":I
    .end local v6    # "wouldBeAt":I
    :cond_7
    return-object v9
.end method

.method public abstract getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2368
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    #@3
    if-nez v0, :cond_0

    #@5
    return-object v1

    #@6
    .line 2369
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@8
    return-object v0
.end method

.method public getDocument()I
    .locals 2

    #@0
    .prologue
    .line 1579
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getDocumentAllDeclarationsProcessed()Z
    .locals 1

    #@0
    .prologue
    .line 2006
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getDocumentBaseURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1920
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDocumentEncoding(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1959
    const-string/jumbo v0, "UTF-8"

    #@3
    return-object v0
.end method

.method public getDocumentRoot(I)I
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1613
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getManager()Lorg/apache/xml/dtm/DTMManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getDocumentStandalone(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1974
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDocumentSystemIdentifier(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1944
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
.end method

.method public abstract getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
.end method

.method public getDocumentVersion(I)Ljava/lang/String;
    .locals 1
    .param p1, "documentHandle"    # I

    #@0
    .prologue
    .line 1989
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getElementById(Ljava/lang/String;)I
.end method

.method public getExpandedTypeID(I)I
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 1682
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@4
    move-result v0

    #@5
    .line 1683
    .local v0, "id":I
    if-ne v0, v1, :cond_0

    #@7
    .line 1684
    return v1

    #@8
    .line 1685
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "type"    # I

    #@0
    .prologue
    .line 1707
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@2
    .line 1709
    .local v0, "ent":Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    #@5
    move-result v1

    #@6
    return v1
.end method

.method public getFirstAttribute(I)I
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1061
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@3
    move-result v0

    #@4
    .line 1063
    .local v0, "nodeID":I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getFirstAttributeIdentity(I)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@b
    move-result v1

    #@c
    return v1
.end method

.method protected getFirstAttributeIdentity(I)I
    .locals 3
    .param p1, "identity"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 1073
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    #@4
    move-result v0

    #@5
    .line 1075
    .local v0, "type":I
    const/4 v1, 0x1

    #@6
    if-ne v1, v0, :cond_2

    #@8
    .line 1078
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    #@b
    move-result p1

    #@c
    if-eq v2, p1, :cond_2

    #@e
    .line 1082
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    #@11
    move-result v0

    #@12
    .line 1084
    const/4 v1, 0x2

    #@13
    if-ne v0, v1, :cond_1

    #@15
    .line 1086
    return p1

    #@16
    .line 1088
    :cond_1
    const/16 v1, 0xd

    #@18
    if-eq v1, v0, :cond_0

    #@1a
    .line 1095
    :cond_2
    return v2
.end method

.method public getFirstChild(I)I
    .locals 3
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 972
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@3
    move-result v1

    #@4
    .line 973
    .local v1, "identity":I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    #@7
    move-result v0

    #@8
    .line 975
    .local v0, "firstChild":I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@b
    move-result v2

    #@c
    return v2
.end method

.method public getFirstNamespaceNode(IZ)I
    .locals 6
    .param p1, "nodeHandle"    # I
    .param p2, "inScope"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    .line 1461
    if-eqz p2, :cond_3

    #@4
    .line 1463
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@7
    move-result v0

    #@8
    .line 1464
    .local v0, "identity":I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    #@b
    move-result v3

    #@c
    if-ne v3, v5, :cond_2

    #@e
    .line 1466
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    #@11
    move-result-object v1

    #@12
    .line 1467
    .local v1, "nsContext":Lorg/apache/xml/utils/SuballocatedIntVector;
    if-eqz v1, :cond_0

    #@14
    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@17
    move-result v3

    #@18
    if-ge v3, v5, :cond_1

    #@1a
    .line 1468
    :cond_0
    return v4

    #@1b
    .line 1470
    :cond_1
    const/4 v3, 0x0

    #@1c
    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@1f
    move-result v3

    #@20
    return v3

    #@21
    .line 1473
    .end local v1    # "nsContext":Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_2
    return v4

    #@22
    .line 1483
    .end local v0    # "identity":I
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@25
    move-result v0

    #@26
    .line 1484
    .restart local v0    # "identity":I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    #@29
    move-result v3

    #@2a
    if-ne v3, v5, :cond_7

    #@2c
    .line 1486
    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    #@2f
    move-result v0

    #@30
    if-eq v4, v0, :cond_6

    #@32
    .line 1488
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    #@35
    move-result v2

    #@36
    .line 1489
    .local v2, "type":I
    const/16 v3, 0xd

    #@38
    if-ne v2, v3, :cond_5

    #@3a
    .line 1490
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@3d
    move-result v3

    #@3e
    return v3

    #@3f
    .line 1491
    :cond_5
    const/4 v3, 0x2

    #@40
    if-eq v3, v2, :cond_4

    #@42
    .line 1494
    .end local v2    # "type":I
    :cond_6
    return v4

    #@43
    .line 1497
    :cond_7
    return v4
.end method

.method public getLastChild(I)I
    .locals 4
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1025
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@3
    move-result v1

    #@4
    .line 1026
    .local v1, "identity":I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    #@7
    move-result v0

    #@8
    .line 1027
    .local v0, "child":I
    const/4 v2, -0x1

    #@9
    .line 1029
    .local v2, "lastChild":I
    :goto_0
    const/4 v3, -0x1

    #@a
    if-eq v0, v3, :cond_0

    #@c
    .line 1031
    move v2, v0

    #@d
    .line 1032
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    #@10
    move-result v0

    #@11
    goto :goto_0

    #@12
    .line 1035
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@15
    move-result v3

    #@16
    return v3
.end method

.method public getLevel(I)S
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1852
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@3
    move-result v0

    #@4
    .line 1853
    .local v0, "identity":I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_level(I)I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, 0x1

    #@a
    int-to-short v1, v1

    #@b
    return v1
.end method

.method public abstract getLocalName(I)Ljava/lang/String;
.end method

.method public getLocalNameFromExpandedNameID(I)Ljava/lang/String;
    .locals 1
    .param p1, "expandedNameID"    # I

    #@0
    .prologue
    .line 1720
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    #@0
    .prologue
    .line 2357
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    #@2
    return-object v0
.end method

.method public getNamespaceFromExpandedNameID(I)Ljava/lang/String;
    .locals 1
    .param p1, "expandedNameID"    # I

    #@0
    .prologue
    .line 1732
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespace(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNamespaceType(I)I
    .locals 3
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1743
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@3
    move-result v1

    #@4
    .line 1744
    .local v1, "identity":I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    #@7
    move-result v0

    #@8
    .line 1746
    .local v0, "expandedNameID":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@a
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    #@d
    move-result v2

    #@e
    return v2
.end method

.method public abstract getNamespaceURI(I)Ljava/lang/String;
.end method

.method public getNextAttribute(I)I
    .locals 3
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1211
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@3
    move-result v0

    #@4
    .line 1213
    .local v0, "nodeID":I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    #@7
    move-result v1

    #@8
    const/4 v2, 0x2

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 1214
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextAttributeIdentity(I)I

    #@e
    move-result v1

    #@f
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 1217
    :cond_0
    const/4 v1, -0x1

    #@15
    return v1
.end method

.method protected getNextAttributeIdentity(I)I
    .locals 3
    .param p1, "identity"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 1232
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    #@4
    move-result p1

    #@5
    if-eq v2, p1, :cond_2

    #@7
    .line 1233
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    #@a
    move-result v0

    #@b
    .line 1235
    .local v0, "type":I
    const/4 v1, 0x2

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 1236
    return p1

    #@f
    .line 1237
    :cond_1
    const/16 v1, 0xd

    #@11
    if-eq v0, v1, :cond_0

    #@13
    .line 1242
    .end local v0    # "type":I
    :cond_2
    return v2
.end method

.method public getNextNamespaceNode(IIZ)I
    .locals 6
    .param p1, "baseHandle"    # I
    .param p2, "nodeHandle"    # I
    .param p3, "inScope"    # Z

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 1514
    if-eqz p3, :cond_3

    #@3
    .line 1521
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@6
    move-result v4

    #@7
    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    #@a
    move-result-object v2

    #@b
    .line 1523
    .local v2, "nsContext":Lorg/apache/xml/utils/SuballocatedIntVector;
    if-nez v2, :cond_0

    #@d
    .line 1524
    return v5

    #@e
    .line 1525
    :cond_0
    invoke-virtual {v2, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(I)I

    #@11
    move-result v4

    #@12
    add-int/lit8 v0, v4, 0x1

    #@14
    .line 1526
    .local v0, "i":I
    if-lez v0, :cond_1

    #@16
    invoke-virtual {v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@19
    move-result v4

    #@1a
    if-ne v0, v4, :cond_2

    #@1c
    .line 1527
    :cond_1
    return v5

    #@1d
    .line 1529
    :cond_2
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@20
    move-result v4

    #@21
    return v4

    #@22
    .line 1534
    .end local v0    # "i":I
    .end local v2    # "nsContext":Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_3
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@25
    move-result v1

    #@26
    .line 1535
    .local v1, "identity":I
    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    #@29
    move-result v1

    #@2a
    if-eq v5, v1, :cond_6

    #@2c
    .line 1537
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    #@2f
    move-result v3

    #@30
    .line 1538
    .local v3, "type":I
    const/16 v4, 0xd

    #@32
    if-ne v3, v4, :cond_5

    #@34
    .line 1540
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@37
    move-result v4

    #@38
    return v4

    #@39
    .line 1542
    :cond_5
    const/4 v4, 0x2

    #@3a
    if-eq v3, v4, :cond_4

    #@3c
    .line 1548
    .end local v3    # "type":I
    :cond_6
    return v5
.end method

.method protected abstract getNextNodeIdentity(I)I
.end method

.method public getNextSibling(I)I
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 1140
    if-ne p1, v0, :cond_0

    #@3
    .line 1141
    return v0

    #@4
    .line 1142
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 2218
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    #@5
    return-object v0
.end method

.method public getNodeHandle(I)I
    .locals 1
    .param p1, "nodeId"    # I

    #@0
    .prologue
    .line 1887
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getNodeIdent(I)I
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1870
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public abstract getNodeName(I)Ljava/lang/String;
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1772
    const-string/jumbo v0, "ER_METHOD_NOT_SUPPORTED"

    #@4
    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    #@b
    .line 1774
    return-object v1
.end method

.method public getNodeType(I)S
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 1836
    if-ne p1, v0, :cond_0

    #@3
    .line 1837
    return v0

    #@4
    .line 1838
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@6
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    #@d
    move-result v1

    #@e
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public abstract getNodeValue(I)Ljava/lang/String;
.end method

.method protected abstract getNumberOfNodes()I
.end method

.method public getOwnerDocument(I)I
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1597
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    #@3
    move-result v0

    #@4
    const/16 v1, 0x9

    #@6
    if-ne v1, v0, :cond_0

    #@8
    .line 1598
    const/4 v0, -0x1

    #@9
    return v0

    #@a
    .line 1600
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getParent(I)I
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1561
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@3
    move-result v0

    #@4
    .line 1563
    .local v0, "identity":I
    if-lez v0, :cond_0

    #@6
    .line 1564
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 1566
    :cond_0
    const/4 v1, -0x1

    #@10
    return v1
.end method

.method public abstract getPrefix(I)Ljava/lang/String;
.end method

.method public getPreviousSibling(I)I
    .locals 5
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 1178
    if-ne p1, v4, :cond_0

    #@3
    .line 1179
    return v4

    #@4
    .line 1181
    :cond_0
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 1182
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@b
    move-result v4

    #@c
    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_prevsib(I)I

    #@f
    move-result v4

    #@10
    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@13
    move-result v4

    #@14
    return v4

    #@15
    .line 1188
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@18
    move-result v1

    #@19
    .line 1189
    .local v1, "nodeID":I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    #@1c
    move-result v2

    #@1d
    .line 1190
    .local v2, "parent":I
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    #@20
    move-result v0

    #@21
    .line 1191
    .local v0, "node":I
    const/4 v3, -0x1

    #@22
    .line 1192
    .local v3, "result":I
    :goto_0
    if-eq v0, v1, :cond_2

    #@24
    .line 1194
    move v3, v0

    #@25
    .line 1195
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    #@28
    move-result v0

    #@29
    goto :goto_0

    #@2a
    .line 1197
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@2d
    move-result v4

    #@2e
    return v4
.end method

.method protected getShouldStripWhitespace()Z
    .locals 1

    #@0
    .prologue
    .line 2272
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    #@2
    return v0
.end method

.method public abstract getStringValue(I)Lorg/apache/xml/utils/XMLString;
.end method

.method public getStringValueChunk(II[I)[C
    .locals 2
    .param p1, "nodeHandle"    # I
    .param p2, "chunkIndex"    # I
    .param p3, "startAndLen"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1666
    const-string/jumbo v0, "ER_METHOD_NOT_SUPPORTED"

    #@4
    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    #@b
    .line 1668
    return-object v1
.end method

.method public getStringValueChunkCount(I)I
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1643
    const-string/jumbo v0, "ER_METHOD_NOT_SUPPORTED"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    #@b
    .line 1645
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method protected getTypedAttribute(II)I
    .locals 4
    .param p1, "nodeHandle"    # I
    .param p2, "attType"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1108
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    #@4
    move-result v1

    #@5
    .line 1109
    .local v1, "type":I
    const/4 v2, 0x1

    #@6
    if-ne v2, v1, :cond_2

    #@8
    .line 1110
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@b
    move-result v0

    #@c
    .line 1112
    .local v0, "identity":I
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    #@f
    move-result v0

    #@10
    if-eq v3, v0, :cond_2

    #@12
    .line 1114
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    #@15
    move-result v1

    #@16
    .line 1116
    const/4 v2, 0x2

    #@17
    if-ne v1, v2, :cond_1

    #@19
    .line 1118
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    #@1c
    move-result v2

    #@1d
    if-ne v2, p2, :cond_0

    #@1f
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 1120
    :cond_1
    const/16 v2, 0xd

    #@26
    if-eq v2, v1, :cond_0

    #@28
    .line 1127
    .end local v0    # "identity":I
    :cond_2
    return v3
.end method

.method public getTypedFirstChild(II)I
    .locals 5
    .param p1, "nodeHandle"    # I
    .param p2, "nodeType"    # I

    #@0
    .prologue
    const/16 v4, 0xe

    #@2
    const/4 v3, -0x1

    #@3
    .line 990
    if-ge p2, v4, :cond_2

    #@5
    .line 991
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@8
    move-result v2

    #@9
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    #@c
    move-result v1

    #@d
    .local v1, "firstChild":I
    :goto_0
    if-eq v1, v3, :cond_4

    #@f
    .line 994
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    #@12
    move-result v0

    #@13
    .line 995
    .local v0, "eType":I
    if-eq v0, p2, :cond_0

    #@15
    .line 996
    if-lt v0, v4, :cond_1

    #@17
    .line 997
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@19
    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    #@1c
    move-result v2

    #@1d
    if-ne v2, p2, :cond_1

    #@1f
    .line 998
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 993
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    #@27
    move-result v1

    #@28
    goto :goto_0

    #@29
    .line 1002
    .end local v0    # "eType":I
    .end local v1    # "firstChild":I
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@2c
    move-result v2

    #@2d
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    #@30
    move-result v1

    #@31
    .restart local v1    # "firstChild":I
    :goto_1
    if-eq v1, v3, :cond_4

    #@33
    .line 1005
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    #@36
    move-result v2

    #@37
    if-ne v2, p2, :cond_3

    #@39
    .line 1006
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@3c
    move-result v2

    #@3d
    return v2

    #@3e
    .line 1004
    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    #@41
    move-result v1

    #@42
    goto :goto_1

    #@43
    .line 1010
    :cond_4
    return v3
.end method

.method public getTypedNextSibling(II)I
    .locals 4
    .param p1, "nodeHandle"    # I
    .param p2, "nodeType"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 1155
    if-ne p1, v2, :cond_0

    #@3
    .line 1156
    return v2

    #@4
    .line 1157
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@7
    move-result v1

    #@8
    .line 1159
    .local v1, "node":I
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    #@b
    move-result v1

    #@c
    if-eq v1, v2, :cond_2

    #@e
    .line 1160
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    #@11
    move-result v0

    #@12
    .local v0, "eType":I
    if-eq v0, p2, :cond_2

    #@14
    .line 1161
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@16
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    #@19
    move-result v3

    #@1a
    if-ne v3, p2, :cond_1

    #@1c
    .line 1164
    .end local v0    # "eType":I
    :cond_2
    if-ne v1, v2, :cond_3

    #@1e
    :goto_0
    return v2

    #@1f
    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    #@22
    move-result v2

    #@23
    goto :goto_0
.end method

.method public abstract getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public hasChildNodes(I)Z
    .locals 3
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 882
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@3
    move-result v1

    #@4
    .line 883
    .local v1, "identity":I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    #@7
    move-result v0

    #@8
    .line 885
    .local v0, "firstChild":I
    const/4 v2, -0x1

    #@9
    if-eq v0, v2, :cond_0

    #@b
    const/4 v2, 0x1

    #@c
    :goto_0
    return v2

    #@d
    :cond_0
    const/4 v2, 0x0

    #@e
    goto :goto_0
.end method

.method protected indexNode(II)V
    .locals 7
    .param p1, "expandedTypeID"    # I
    .param p2, "identity"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 320
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@3
    .line 321
    .local v0, "ent":Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    #@6
    move-result v4

    #@7
    .line 323
    .local v4, "type":S
    const/4 v5, 0x1

    #@8
    if-ne v5, v4, :cond_0

    #@a
    .line 325
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    #@d
    move-result v3

    #@e
    .line 326
    .local v3, "namespaceID":I
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    #@11
    move-result v2

    #@12
    .line 328
    .local v2, "localNameID":I
    invoke-virtual {p0, v3, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->ensureSizeOfIndex(II)V

    #@15
    .line 330
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    #@17
    aget-object v5, v5, v3

    #@19
    aget-object v1, v5, v2

    #@1b
    .line 332
    .local v1, "index":[I
    aget v5, v1, v6

    #@1d
    aput p2, v1, v5

    #@1f
    .line 334
    aget v5, v1, v6

    #@21
    add-int/lit8 v5, v5, 0x1

    #@23
    aput v5, v1, v6

    #@25
    .line 317
    .end local v1    # "index":[I
    .end local v2    # "localNameID":I
    .end local v3    # "namespaceID":I
    :cond_0
    return-void
.end method

.method public abstract isAttributeSpecified(I)Z
.end method

.method public isCharacterElementContentWhitespace(I)Z
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 2142
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isDocumentAllDeclarationsProcessed(I)Z
    .locals 1
    .param p1, "documentHandle"    # I

    #@0
    .prologue
    .line 2159
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isNodeAfter(II)Z
    .locals 4
    .param p1, "nodeHandle1"    # I
    .param p2, "nodeHandle2"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 2116
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@5
    move-result v0

    #@6
    .line 2117
    .local v0, "index1":I
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    #@9
    move-result v1

    #@a
    .line 2119
    .local v1, "index2":I
    if-eq v0, v3, :cond_0

    #@c
    if-eq v1, v3, :cond_0

    #@e
    if-gt v0, v1, :cond_0

    #@10
    const/4 v2, 0x1

    #@11
    :cond_0
    return v2
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1908
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final makeNodeHandle(I)I
    .locals 2
    .param p1, "nodeIdentity"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 904
    if-ne v0, p1, :cond_0

    #@3
    return v0

    #@4
    .line 909
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@6
    ushr-int/lit8 v1, p1, 0x10

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@b
    move-result v0

    #@c
    .line 910
    const v1, 0xffff

    #@f
    and-int/2addr v1, p1

    #@10
    .line 909
    add-int/2addr v0, v1

    #@11
    return v0
.end method

.method public final makeNodeIdentity(I)I
    .locals 6
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const v5, 0xffff

    #@3
    const/4 v2, -0x1

    #@4
    .line 931
    if-ne v2, p1, :cond_0

    #@6
    return v2

    #@7
    .line 933
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@9
    if-eqz v3, :cond_2

    #@b
    .line 939
    ushr-int/lit8 v1, p1, 0x10

    #@d
    .line 945
    .local v1, "whichDTMindex":I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@f
    iget-object v3, v3, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    #@11
    aget-object v3, v3, v1

    #@13
    if-eq v3, p0, :cond_1

    #@15
    .line 946
    return v2

    #@16
    .line 949
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@18
    iget-object v2, v2, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    #@1a
    aget v2, v2, v1

    #@1c
    .line 950
    and-int v3, p1, v5

    #@1e
    .line 949
    or-int/2addr v2, v3

    #@1f
    .line 948
    return v2

    #@20
    .line 953
    .end local v1    # "whichDTMindex":I
    :cond_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@22
    const/high16 v4, -0x10000

    #@24
    and-int/2addr v4, p1

    #@25
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(I)I

    #@28
    move-result v0

    #@29
    .line 954
    .local v0, "whichDTMid":I
    if-ne v0, v2, :cond_3

    #@2b
    :goto_0
    return v2

    #@2c
    .line 956
    :cond_3
    shl-int/lit8 v2, v0, 0x10

    #@2e
    .line 957
    and-int v3, p1, v5

    #@30
    .line 956
    add-int/2addr v2, v3

    #@31
    goto :goto_0
.end method

.method public migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 1
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;

    #@0
    .prologue
    .line 2344
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    #@2
    .line 2345
    instance-of v0, p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2346
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@8
    .end local p1    # "mgr":Lorg/apache/xml/dtm/DTMManager;
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@a
    .line 2342
    :cond_0
    return-void
.end method

.method protected abstract nextNode()Z
.end method

.method protected popShouldStripWhitespace()V
    .locals 1

    #@0
    .prologue
    .line 2297
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2298
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    #@6
    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->popAndTop()Z

    #@9
    move-result v0

    #@a
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    #@c
    .line 2295
    :cond_0
    return-void
.end method

.method protected pushShouldStripWhitespace(Z)V
    .locals 1
    .param p1, "shouldStrip"    # Z

    #@0
    .prologue
    .line 2284
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    #@2
    .line 2286
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2287
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    #@8
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    #@b
    .line 2281
    :cond_0
    return-void
.end method

.method public setDocumentBaseURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseURI"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1930
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    #@2
    .line 1928
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z

    #@0
    .prologue
    .line 863
    return-void
.end method

.method protected setShouldStripWhitespace(Z)V
    .locals 1
    .param p1, "shouldStrip"    # Z

    #@0
    .prologue
    .line 2311
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    #@2
    .line 2313
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2314
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    #@8
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/BoolStack;->setTop(Z)V

    #@b
    .line 2308
    :cond_0
    return-void
.end method

.method public supportsPreStripping()Z
    .locals 1

    #@0
    .prologue
    .line 2094
    const/4 v0, 0x1

    #@1
    return v0
.end method
