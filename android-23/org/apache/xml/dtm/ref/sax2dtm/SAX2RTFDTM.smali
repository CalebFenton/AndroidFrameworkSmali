.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
.source "SAX2RTFDTM.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private m_currentDocumentNode:I

.field m_emptyCharsCount:I

.field m_emptyDataCount:I

.field m_emptyDataQNCount:I

.field m_emptyNSDeclSetCount:I

.field m_emptyNSDeclSetElemsCount:I

.field m_emptyNodeCount:I

.field mark_char_size:Lorg/apache/xml/utils/IntStack;

.field mark_data_size:Lorg/apache/xml/utils/IntStack;

.field mark_doq_size:Lorg/apache/xml/utils/IntStack;

.field mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

.field mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

.field mark_size:Lorg/apache/xml/utils/IntStack;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 3
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;
    .param p2, "source"    # Ljavax/xml/transform/Source;
    .param p3, "dtmIdentity"    # I
    .param p4, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p5, "xstringfactory"    # Lorg/apache/xml/utils/XMLStringFactory;
    .param p6, "doIndexing"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 126
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    #@5
    .line 68
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    #@8
    .line 71
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@a
    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@d
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    #@f
    .line 73
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@11
    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@14
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    #@16
    .line 75
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@18
    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@1b
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    #@1d
    .line 77
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@1f
    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@22
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    #@24
    .line 83
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@26
    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@29
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    #@2b
    .line 89
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@2d
    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@30
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    #@32
    .line 132
    iput-boolean v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_useSourceLocationProperty:Z

    #@34
    .line 133
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_useSourceLocationProperty:Z

    #@36
    if-eqz v0, :cond_1

    #@38
    new-instance v0, Lorg/apache/xml/utils/StringVector;

    #@3a
    invoke-direct {v0}, Lorg/apache/xml/utils/StringVector;-><init>()V

    #@3d
    :goto_0
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    #@3f
    .line 135
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_useSourceLocationProperty:Z

    #@41
    if-eqz v0, :cond_2

    #@43
    new-instance v0, Lorg/apache/xml/utils/IntVector;

    #@45
    invoke-direct {v0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    #@48
    :goto_1
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    #@4a
    .line 136
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_useSourceLocationProperty:Z

    #@4c
    if-eqz v0, :cond_0

    #@4e
    new-instance v1, Lorg/apache/xml/utils/IntVector;

    #@50
    invoke-direct {v1}, Lorg/apache/xml/utils/IntVector;-><init>()V

    #@53
    :cond_0
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    #@55
    .line 141
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    #@57
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNodeCount:I

    #@59
    .line 142
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    #@5b
    if-nez v0, :cond_3

    #@5d
    move v0, v2

    #@5e
    :goto_2
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetCount:I

    #@60
    .line 144
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@62
    if-nez v0, :cond_4

    #@64
    :goto_3
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetElemsCount:I

    #@66
    .line 146
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@68
    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@6b
    move-result v0

    #@6c
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataCount:I

    #@6e
    .line 147
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@70
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    #@73
    move-result v0

    #@74
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyCharsCount:I

    #@76
    .line 148
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@78
    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@7b
    move-result v0

    #@7c
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataQNCount:I

    #@7e
    .line 124
    return-void

    #@7f
    :cond_1
    move-object v0, v1

    #@80
    .line 134
    goto :goto_0

    #@81
    :cond_2
    move-object v0, v1

    #@82
    .line 135
    goto :goto_1

    #@83
    .line 143
    :cond_3
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    #@85
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@88
    move-result v0

    #@89
    goto :goto_2

    #@8a
    .line 145
    :cond_4
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@8c
    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@8f
    move-result v2

    #@90
    goto :goto_3
.end method


# virtual methods
.method protected _documentRoot(I)I
    .locals 2
    .param p1, "nodeIdentifier"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 201
    if-ne p1, v1, :cond_0

    #@3
    return v1

    #@4
    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_parent(I)I

    #@7
    move-result v0

    #@8
    .local v0, "parent":I
    :goto_0
    if-eq v0, v1, :cond_1

    #@a
    .line 205
    move p1, v0

    #@b
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_parent(I)I

    #@e
    move-result v0

    #@f
    goto :goto_0

    #@10
    .line 208
    :cond_1
    return p1
.end method

.method public endDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 249
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->charactersFlush()V

    #@5
    .line 251
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@7
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    #@9
    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@c
    .line 253
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@e
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    #@10
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@13
    move-result v0

    #@14
    const/4 v1, -0x2

    #@15
    if-ne v0, v1, :cond_0

    #@17
    .line 254
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@19
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    #@1b
    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@1e
    .line 256
    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_previous:I

    #@20
    if-eq v2, v0, :cond_1

    #@22
    .line 257
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@24
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_previous:I

    #@26
    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@29
    .line 259
    :cond_1
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@2b
    .line 260
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_prefixMappings:Ljava/util/Vector;

    #@2d
    .line 261
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@2f
    .line 263
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    #@31
    .line 264
    const/4 v0, 0x1

    #@32
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_endDocumentOccured:Z

    #@34
    .line 247
    return-void
.end method

.method public getDocument()I
    .locals 1

    #@0
    .prologue
    .line 166
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    #@2
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->makeNodeHandle(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDocumentRoot(I)I
    .locals 4
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 182
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->makeNodeIdentity(I)I

    #@4
    move-result v0

    #@5
    .local v0, "id":I
    :goto_0
    if-eq v0, v3, :cond_1

    #@7
    .line 183
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_type(I)S

    #@a
    move-result v1

    #@b
    const/16 v2, 0x9

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 184
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->makeNodeHandle(I)I

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 182
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_parent(I)I

    #@17
    move-result v0

    #@18
    goto :goto_0

    #@19
    .line 188
    :cond_1
    return v3
.end method

.method public isTreeIncomplete()Z
    .locals 1

    #@0
    .prologue
    .line 360
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_endDocumentOccured:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public popRewindMark()Z
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 326
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    #@4
    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->empty()Z

    #@7
    move-result v2

    #@8
    .line 328
    .local v2, "top":Z
    if-eqz v2, :cond_2

    #@a
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNodeCount:I

    #@c
    :goto_0
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    #@e
    .line 329
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@10
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    #@12
    invoke-virtual {v3, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    #@15
    .line 330
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@17
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    #@19
    invoke-virtual {v3, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    #@1c
    .line 331
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@1e
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    #@20
    invoke-virtual {v3, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    #@23
    .line 332
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@25
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    #@27
    invoke-virtual {v3, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    #@2a
    .line 333
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2c
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    #@2e
    invoke-virtual {v3, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    #@31
    .line 335
    iput-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_elemIndexes:[[[I

    #@33
    .line 337
    if-eqz v2, :cond_3

    #@35
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetCount:I

    #@37
    .line 338
    .local v0, "ds":I
    :goto_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    #@39
    if-eqz v3, :cond_0

    #@3b
    .line 339
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    #@3d
    invoke-virtual {v3, v0}, Ljava/util/Vector;->setSize(I)V

    #@40
    .line 342
    :cond_0
    if-eqz v2, :cond_4

    #@42
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetElemsCount:I

    #@44
    .line 343
    .local v1, "ds1":I
    :goto_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@46
    if-eqz v3, :cond_1

    #@48
    .line 344
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@4a
    invoke-virtual {v3, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    #@4d
    .line 348
    :cond_1
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@4f
    if-eqz v2, :cond_5

    #@51
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataCount:I

    #@53
    :goto_3
    invoke-virtual {v5, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    #@56
    .line 349
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@58
    if-eqz v2, :cond_6

    #@5a
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyCharsCount:I

    #@5c
    :goto_4
    invoke-virtual {v5, v3}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    #@5f
    .line 350
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@61
    if-eqz v2, :cond_7

    #@63
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataQNCount:I

    #@65
    :goto_5
    invoke-virtual {v5, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    #@68
    .line 353
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    #@6a
    if-nez v3, :cond_8

    #@6c
    const/4 v3, 0x1

    #@6d
    :goto_6
    return v3

    #@6e
    .line 328
    .end local v0    # "ds":I
    .end local v1    # "ds1":I
    :cond_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    #@70
    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    #@73
    move-result v3

    #@74
    goto :goto_0

    #@75
    .line 337
    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    #@77
    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    #@7a
    move-result v0

    #@7b
    .restart local v0    # "ds":I
    goto :goto_1

    #@7c
    .line 342
    :cond_4
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    #@7e
    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    #@81
    move-result v1

    #@82
    .restart local v1    # "ds1":I
    goto :goto_2

    #@83
    .line 348
    :cond_5
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    #@85
    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    #@88
    move-result v3

    #@89
    goto :goto_3

    #@8a
    .line 349
    :cond_6
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    #@8c
    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    #@8f
    move-result v3

    #@90
    goto :goto_4

    #@91
    .line 350
    :cond_7
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    #@93
    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    #@96
    move-result v3

    #@97
    goto :goto_5

    #@98
    :cond_8
    move v3, v4

    #@99
    .line 353
    goto :goto_6
.end method

.method public pushRewindMark()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 280
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_indexing:Z

    #@3
    if-nez v0, :cond_0

    #@5
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_elemIndexes:[[[I

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 281
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string/jumbo v1, "Coding error; Don\'t try to mark/rewind an indexed DTM"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 285
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    #@14
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    #@16
    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@19
    .line 286
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    #@1b
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    #@1d
    if-nez v0, :cond_2

    #@1f
    move v0, v1

    #@20
    :goto_0
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@23
    .line 289
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    #@25
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@27
    if-nez v2, :cond_3

    #@29
    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@2c
    .line 294
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    #@2e
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@30
    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@33
    move-result v1

    #@34
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@37
    .line 295
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    #@39
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    #@3b
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    #@3e
    move-result v1

    #@3f
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@42
    .line 296
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    #@44
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@46
    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@49
    move-result v1

    #@4a
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@4d
    .line 278
    return-void

    #@4e
    .line 288
    :cond_2
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    #@50
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@53
    move-result v0

    #@54
    goto :goto_0

    #@55
    .line 291
    :cond_3
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@57
    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@5a
    move-result v1

    #@5b
    goto :goto_1
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_endDocumentOccured:Z

    #@3
    .line 227
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_prefixMappings:Ljava/util/Vector;

    #@a
    .line 228
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@c
    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@f
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    #@11
    .line 229
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@13
    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@16
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    #@18
    .line 231
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    #@1a
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    #@1c
    .line 232
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->startDocument()V

    #@1f
    .line 223
    return-void
.end method
