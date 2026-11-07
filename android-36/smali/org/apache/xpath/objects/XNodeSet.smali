.class public Lorg/apache/xpath/objects/XNodeSet;
.super Lorg/apache/xpath/axes/NodeSequence;
.source "XNodeSet.java"


# static fields
.field static final greylist S_EQ:Lorg/apache/xpath/objects/EqualComparator;

.field static final greylist S_GT:Lorg/apache/xpath/objects/GreaterThanComparator;

.field static final greylist S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

.field static final greylist S_LT:Lorg/apache/xpath/objects/LessThanComparator;

.field static final greylist S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator;

.field static final greylist S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator;

.field static final whitelist serialVersionUID:J = 0x1a9717d4870bd173L


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 444
    new-instance v0, Lorg/apache/xpath/objects/LessThanComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/LessThanComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LT:Lorg/apache/xpath/objects/LessThanComparator;

    .line 447
    new-instance v0, Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/LessThanOrEqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    .line 450
    new-instance v0, Lorg/apache/xpath/objects/GreaterThanComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/GreaterThanComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GT:Lorg/apache/xpath/objects/GreaterThanComparator;

    .line 453
    new-instance v0, Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    .line 457
    new-instance v0, Lorg/apache/xpath/objects/EqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/EqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_EQ:Lorg/apache/xpath/objects/EqualComparator;

    .line 460
    new-instance v0, Lorg/apache/xpath/objects/NotEqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/NotEqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator;

    return-void
.end method

.method protected constructor greylist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(ILorg/apache/xml/dtm/DTMManager;)V
    .registers 4

    .line 108
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-direct {v0, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;-><init>(Ljava/lang/Object;)V

    .line 109
    iput-object p2, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    const/4 p2, -0x1

    if-eq p2, p1, :cond_18

    .line 113
    iget-object p2, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast p2, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p2, p1}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    const/4 p1, 0x1

    .line 114
    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    return-void

    :cond_18
    const/4 p1, 0x0

    .line 117
    iput p1, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    .line 56
    instance-of v0, p1, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v0, :cond_28

    .line 58
    check-cast p1, Lorg/apache/xpath/objects/XNodeSet;

    .line 59
    iget-object v0, p1, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 60
    iget-object v0, p1, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 61
    iget v0, p1, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 64
    invoke-virtual {p1}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    .line 68
    :cond_20
    invoke-virtual {p1}, Lorg/apache/xpath/axes/NodeSequence;->getIteratorCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setObject(Ljava/lang/Object;)V

    return-void

    .line 71
    :cond_28
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .registers 3

    const/4 v0, -0x1

    .line 97
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xpath/objects/XNodeSet;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    .line 82
    iget-object v0, p1, Lorg/apache/xpath/axes/NodeSequence;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 83
    iget-object v0, p1, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 84
    iget v0, p1, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_last:I

    .line 85
    invoke-virtual {p1}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1, v0}, Lorg/apache/xpath/axes/NodeSequence;->setShouldCacheNodes(Z)V

    .line 87
    :cond_1a
    iget-object p1, p1, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/NodeSequence;->setObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public greylist appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 2

    .line 266
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/XString;

    .line 267
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V

    return-void
.end method

.method public greylist bool()Z
    .registers 3

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->item(I)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    return v0
.end method

.method public greylist boolWithSideEffects()Z
    .registers 2

    .line 200
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public greylist compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 477
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v0, :cond_5d

    .line 494
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 495
    check-cast p1, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p1

    const/4 v1, 0x0

    move v5, v4

    .line 499
    :cond_16
    :goto_16
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v6

    if-eq v2, v6, :cond_56

    .line 501
    invoke-virtual {p0, v6}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    if-nez v1, :cond_3f

    .line 507
    :goto_22
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v7

    if-eq v2, v7, :cond_16

    .line 509
    invoke-virtual {p0, v7}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    .line 511
    invoke-virtual {p2, v6, v7}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v8

    if-eqz v8, :cond_34

    :goto_32
    move v5, v3

    goto :goto_16

    :cond_34
    if-nez v1, :cond_3b

    .line 519
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 521
    :cond_3b
    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_22

    .line 526
    :cond_3f
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v7

    move v8, v4

    :goto_44
    if-ge v8, v7, :cond_16

    .line 530
    invoke-virtual {v1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xml/utils/XMLString;

    invoke-virtual {p2, v6, v9}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v9

    if-eqz v9, :cond_53

    goto :goto_32

    :cond_53
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    .line 539
    :cond_56
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    .line 540
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    return v5

    :cond_5d
    if-ne v3, v0, :cond_73

    .line 551
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->bool()Z

    move-result p0

    if-eqz p0, :cond_68

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_6a

    :cond_68
    const-wide/16 v0, 0x0

    .line 552
    :goto_6a
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p0

    .line 554
    invoke-virtual {p2, v0, v1, p0, p1}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    move-result p0

    return p0

    :cond_73
    const/4 v1, 0x2

    if-ne v1, v0, :cond_94

    .line 566
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 567
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v5

    .line 570
    :cond_7e
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result p1

    if-eq v2, p1, :cond_8f

    .line 572
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v7

    .line 574
    invoke-virtual {p2, v7, v8, v5, v6}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    move-result p1

    if-eqz p1, :cond_7e

    goto :goto_90

    :cond_8f
    move v3, v4

    .line 581
    :goto_90
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    return v3

    :cond_94
    const/4 v1, 0x5

    if-ne v1, v0, :cond_b5

    .line 585
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p1

    .line 586
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 589
    :cond_9f
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    if-eq v2, v1, :cond_b0

    .line 591
    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    .line 593
    invoke-virtual {p2, v1, p1}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v1

    if-eqz v1, :cond_9f

    goto :goto_b1

    :cond_b0
    move v3, v4

    .line 600
    :goto_b1
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    return v3

    :cond_b5
    const/4 v1, 0x3

    if-ne v1, v0, :cond_d6

    .line 611
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object p1

    .line 612
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 615
    :cond_c0
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    if-eq v2, v1, :cond_d1

    .line 617
    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    .line 618
    invoke-virtual {p2, v1, p1}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v1

    if-eqz v1, :cond_c0

    goto :goto_d2

    :cond_d1
    move v3, v4

    .line 625
    :goto_d2
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    return v3

    .line 629
    :cond_d6
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->num()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p0

    invoke-virtual {p2, v0, v1, p0, p1}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    move-result p0

    return p0
.end method

.method public greylist dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->item(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    .line 243
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, v1, p1, v0}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    :cond_11
    return-void
.end method

.method public greylist equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 3

    .line 705
    :try_start_0
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_EQ:Lorg/apache/xpath/objects/EqualComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result p0
    :try_end_6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception p0

    .line 709
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist getFresh()Lorg/apache/xpath/objects/XObject;
    .registers 2

    .line 409
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 410
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/XObject;
    :try_end_c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    return-object p0

    :catch_d
    move-exception p0

    .line 416
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getNumberFromNode(I)D
    .registers 2

    .line 150
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    .line 151
    invoke-interface {p0}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method public greylist getStringFromNode(I)Lorg/apache/xml/utils/XMLString;
    .registers 3

    const/4 v0, -0x1

    if-eq v0, p1, :cond_e

    .line 217
    iget-object p0, p0, Lorg/apache/xpath/axes/NodeSequence;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 221
    :cond_e
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0
.end method

.method public greylist getType()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public greylist getTypeString()Ljava/lang/String;
    .registers 1

    .line 138
    const-string p0, "#NODESET"

    return-object p0
.end method

.method public greylist greaterThan(Lorg/apache/xpath/objects/XObject;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 674
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GT:Lorg/apache/xpath/objects/GreaterThanComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result p0

    return p0
.end method

.method public greylist greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 689
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result p0

    return p0
.end method

.method public greylist iter()Lorg/apache/xml/dtm/DTMIterator;
    .registers 2

    .line 389
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 390
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_a} :catch_b

    :cond_a
    return-object p0

    :catch_b
    move-exception p0

    .line 396
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist iterRaw()Lorg/apache/xml/dtm/DTMIterator;
    .registers 1

    .line 0
    return-object p0
.end method

.method public greylist lessThan(Lorg/apache/xpath/objects/XObject;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 646
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LT:Lorg/apache/xpath/objects/LessThanComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result p0

    return p0
.end method

.method public greylist lessThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 660
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result p0

    return p0
.end method

.method public greylist mutableNodeset()Lorg/apache/xpath/NodeSetDTM;
    .registers 3

    .line 429
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/xpath/NodeSetDTM;

    if-eqz v1, :cond_9

    .line 431
    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    return-object v0

    .line 435
    :cond_9
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 436
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->setObject(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 437
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->setCurrentPos(I)V

    return-object v0
.end method

.method public greylist nodelist()Lorg/w3c/dom/NodeList;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 346
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeList;

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMNodeList;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 351
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMNodeList;->getDTMIterator()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/objects/XNodeSet;

    .line 352
    invoke-virtual {v1}, Lorg/apache/xpath/axes/NodeSequence;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/NodeSequence;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    return-object v0
.end method

.method public greylist nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 334
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    return-object v0
.end method

.method public greylist notEquals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 724
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result p0

    return p0
.end method

.method public greylist num()D
    .registers 3

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->item(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 164
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public greylist numWithSideEffects()D
    .registers 3

    .line 176
    invoke-virtual {p0}, Lorg/apache/xpath/axes/NodeSequence;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 178
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v0

    return-wide v0

    :cond_c
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public greylist object()Ljava/lang/Object;
    .registers 2

    .line 291
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    return-object v0
.end method

.method public greylist release(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist str()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->item(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 280
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const-string p0, ""

    return-object p0
.end method

.method public greylist xstr()Lorg/apache/xml/utils/XMLString;
    .registers 3

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;->item(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 256
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0

    :cond_d
    sget-object p0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    return-object p0
.end method
