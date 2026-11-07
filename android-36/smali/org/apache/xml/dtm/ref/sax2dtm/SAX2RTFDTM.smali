.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
.source "SAX2RTFDTM.java"


# static fields
.field private static final greylist DEBUG:Z = false


# instance fields
.field private greylist m_currentDocumentNode:I

.field greylist m_emptyCharsCount:I

.field greylist m_emptyDataCount:I

.field greylist m_emptyDataQNCount:I

.field greylist m_emptyNSDeclSetCount:I

.field greylist m_emptyNSDeclSetElemsCount:I

.field greylist m_emptyNodeCount:I

.field greylist mark_char_size:Lorg/apache/xml/utils/IntStack;

.field greylist mark_data_size:Lorg/apache/xml/utils/IntStack;

.field greylist mark_doq_size:Lorg/apache/xml/utils/IntStack;

.field greylist mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

.field greylist mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

.field greylist mark_size:Lorg/apache/xml/utils/IntStack;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .registers 7

    .line 126
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    .line 71
    new-instance p1, Lorg/apache/xml/utils/IntStack;

    invoke-direct {p1}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    .line 73
    new-instance p1, Lorg/apache/xml/utils/IntStack;

    invoke-direct {p1}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    .line 75
    new-instance p1, Lorg/apache/xml/utils/IntStack;

    invoke-direct {p1}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    .line 77
    new-instance p1, Lorg/apache/xml/utils/IntStack;

    invoke-direct {p1}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    .line 83
    new-instance p1, Lorg/apache/xml/utils/IntStack;

    invoke-direct {p1}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    .line 89
    new-instance p1, Lorg/apache/xml/utils/IntStack;

    invoke-direct {p1}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    const/4 p1, 0x0

    .line 132
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    const/4 p2, 0x0

    .line 134
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    .line 135
    iget-boolean p3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p3, :cond_40

    new-instance p3, Lorg/apache/xml/utils/IntVector;

    invoke-direct {p3}, Lorg/apache/xml/utils/IntVector;-><init>()V

    goto :goto_41

    :cond_40
    move-object p3, p2

    :goto_41
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    .line 136
    iget-boolean p3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz p3, :cond_4c

    new-instance p2, Lorg/apache/xml/utils/IntVector;

    invoke-direct {p2}, Lorg/apache/xml/utils/IntVector;-><init>()V

    :cond_4c
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    .line 141
    iget p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNodeCount:I

    .line 142
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    if-nez p2, :cond_58

    move p2, p1

    goto :goto_5c

    .line 143
    :cond_58
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    :goto_5c
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetCount:I

    .line 144
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-nez p2, :cond_63

    goto :goto_67

    .line 145
    :cond_63
    invoke-virtual {p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result p1

    :goto_67
    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetElemsCount:I

    .line 146
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result p1

    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataCount:I

    .line 147
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {p1}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result p1

    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyCharsCount:I

    .line 148
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result p1

    iput p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataQNCount:I

    return-void
.end method


# virtual methods
.method protected greylist _documentRoot(I)I
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 203
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v1

    :goto_8
    move v2, v1

    move v1, p1

    move p1, v2

    if-eq p1, v0, :cond_12

    .line 205
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v1

    goto :goto_8

    :cond_12
    return v1
.end method

.method public whitelist test-api endDocument()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    .line 251
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 253
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1d

    .line 254
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 256
    :cond_1d
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    if-eq v2, v0, :cond_26

    .line 257
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v2, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_26
    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 260
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    .line 261
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    .line 263
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    return-void
.end method

.method public greylist getDocument()I
    .registers 2

    .line 166
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0
.end method

.method public greylist getDocumentRoot(I)I
    .registers 4

    .line 182
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    :goto_4
    const/4 v0, -0x1

    if-eq p1, v0, :cond_19

    .line 183
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_14

    .line 184
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    .line 182
    :cond_14
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    goto :goto_4

    :cond_19
    return v0
.end method

.method public greylist isTreeIncomplete()Z
    .registers 1

    .line 360
    iget-boolean p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public greylist popRewindMark()Z
    .registers 4

    .line 326
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->empty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 328
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNodeCount:I

    goto :goto_11

    :cond_b
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v1

    :goto_11
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    .line 329
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 330
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 331
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 332
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 333
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    const/4 v1, 0x0

    .line 335
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    if-eqz v0, :cond_3c

    .line 337
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetCount:I

    goto :goto_42

    :cond_3c
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v1

    .line 338
    :goto_42
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    if-eqz v2, :cond_49

    .line 339
    invoke-virtual {v2, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_49
    if-eqz v0, :cond_4e

    .line 342
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetElemsCount:I

    goto :goto_54

    :cond_4e
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v1

    .line 343
    :goto_54
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v2, :cond_5b

    .line 344
    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 348
    :cond_5b
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v0, :cond_62

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataCount:I

    goto :goto_68

    :cond_62
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v2

    :goto_68
    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 349
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v0, :cond_72

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyCharsCount:I

    goto :goto_78

    :cond_72
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v2

    :goto_78
    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 350
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v0, :cond_82

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataQNCount:I

    goto :goto_88

    :cond_82
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v0

    :goto_88
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 353
    iget p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-nez p0, :cond_91

    const/4 p0, 0x1

    return p0

    :cond_91
    const/4 p0, 0x0

    return p0
.end method

.method public greylist pushRewindMark()V
    .registers 4

    .line 280
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_indexing:Z

    if-nez v0, :cond_4f

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    if-nez v0, :cond_4f

    .line 285
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 286
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_1c

    .line 288
    :cond_18
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 286
    :goto_1c
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 289
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-nez v1, :cond_26

    goto :goto_2a

    .line 291
    :cond_26
    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v2

    .line 289
    :goto_2a
    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 294
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 295
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 296
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void

    .line 281
    :cond_4f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Coding error; Don\'t try to mark/rewind an indexed DTM"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    .line 227
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    .line 228
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    .line 229
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 231
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    .line 232
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->startDocument()V

    return-void
.end method
