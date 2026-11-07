.class public Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.source "DOM2DTM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;
    }
.end annotation


# static fields
.field static final greylist JJK_DEBUG:Z = false

.field static final greylist JJK_NEWCODE:Z = true

.field static final greylist NAMESPACE_DECL_NS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private greylist m_last_kid:I

.field private greylist m_last_parent:I

.field protected greylist m_nodes:Ljava/util/Vector;

.field private transient greylist m_nodesAreProcessed:Z

.field private transient greylist m_pos:Lorg/w3c/dom/Node;

.field greylist m_processedFirstElement:Z

.field private transient greylist m_root:Lorg/w3c/dom/Node;

.field greylist m_walker:Lorg/apache/xml/utils/TreeWalker;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/dom/DOMSource;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .registers 8

    .line 123
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    const/4 p3, -0x1

    .line 82
    iput p3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    .line 91
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    .line 104
    new-instance p4, Ljava/util/Vector;

    invoke-direct {p4}, Ljava/util/Vector;-><init>()V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    .line 1702
    new-instance p4, Lorg/apache/xml/utils/TreeWalker;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_walker:Lorg/apache/xml/utils/TreeWalker;

    .line 127
    invoke-virtual {p2}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    iput-object p2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    .line 129
    iput p3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    iput p3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    .line 130
    invoke-virtual {p0, p2, p3, p3, p3}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result p2

    iput p2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    .line 143
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p2

    const/4 p4, 0x1

    if-ne p4, p2, :cond_5e

    .line 145
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p2

    if-nez p2, :cond_3f

    move p4, p1

    goto :goto_43

    .line 146
    :cond_3f
    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result p4

    :goto_43
    if-lez p4, :cond_5e

    move p5, p1

    move p6, p3

    :goto_47
    if-ge p5, p4, :cond_59

    .line 155
    invoke-interface {p2, p5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p6, p3}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result p6

    .line 156
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p3, p6}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_47

    .line 160
    :cond_59
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p2, p3, p6}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 167
    :cond_5e
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    return-void
.end method

.method protected static greylist dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1661
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_23

    const/4 v2, 0x3

    if-eq v0, v2, :cond_23

    const/4 v2, 0x4

    if-eq v0, v2, :cond_23

    const/4 v2, 0x7

    if-eq v0, v2, :cond_20

    const/16 v2, 0x8

    if-eq v0, v2, :cond_20

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3e

    const/16 v2, 0xb

    if-eq v0, v2, :cond_3e

    goto :goto_4e

    :cond_20
    if-eqz p2, :cond_23

    goto :goto_4e

    .line 1683
    :cond_23
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    .line 1684
    instance-of v0, p1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    if-eqz v0, :cond_31

    .line 1686
    check-cast p1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;->characters(Lorg/w3c/dom/Node;)V

    return-void

    .line 1690
    :cond_31
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-interface {p1, p0, v0, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void

    .line 1667
    :cond_3e
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_42
    if-eqz p0, :cond_4e

    add-int/lit8 v0, p2, 0x1

    .line 1670
    invoke-static {p0, p1, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    .line 1668
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_42

    :cond_4e
    :goto_4e
    return-void
.end method

.method private greylist getHandleFromNode(Lorg/w3c/dom/Node;)I
    .registers 5

    if-eqz p1, :cond_2c

    .line 668
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    .line 675
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_18

    .line 676
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 679
    :cond_1b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->nextNode()Z

    move-result v0

    .line 681
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v0, :cond_2a

    if-lt v1, v2, :cond_2a

    goto :goto_2c

    :cond_2a
    move v0, v2

    goto :goto_9

    :cond_2c
    :goto_2c
    const/4 p0, -0x1

    return p0
.end method

.method protected static greylist getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 4

    .line 919
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    const/16 v1, 0x9

    if-eq v0, v1, :cond_21

    const/16 v1, 0xb

    if-eq v0, v1, :cond_21

    goto :goto_2f

    .line 935
    :cond_19
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void

    .line 925
    :cond_21
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_25
    if-eqz p0, :cond_2f

    .line 928
    invoke-static {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 926
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_25

    :cond_2f
    :goto_2f
    return-void
.end method

.method private static greylist isSpace(C)Z
    .registers 1

    .line 1591
    invoke-static {p0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result p0

    return p0
.end method

.method private greylist logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4

    .line 1190
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_1f

    .line 1194
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_b
    if-eqz p1, :cond_1f

    .line 1195
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v0, v1, :cond_1f

    .line 1198
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_1a

    goto :goto_1f

    .line 1196
    :cond_1a
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_b

    :cond_1f
    :goto_1f
    if-eqz p0, :cond_37

    .line 1204
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne v0, p1, :cond_37

    .line 1207
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 1208
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1f

    .line 1210
    :cond_32
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_1f

    :cond_37
    if-eqz p0, :cond_44

    .line 1215
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v0, 0x3

    if-eq v0, p1, :cond_44

    const/4 v0, 0x4

    if-eq v0, p1, :cond_44

    const/4 p0, 0x0

    :cond_44
    return-object p0
.end method


# virtual methods
.method protected greylist addNode(Lorg/w3c/dom/Node;III)I
    .registers 12

    .line 185
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 188
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    ushr-int/lit8 v2, v0, 0x10

    if-ne v1, v2, :cond_35

    .line 192
    :try_start_10
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    if-eqz v1, :cond_25

    .line 196
    check-cast v1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    .line 197
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v2

    .line 198
    invoke-virtual {v1, p0, v2, v0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    .line 199
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    goto :goto_35

    .line 193
    :cond_25
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_2b} :catch_2b

    .line 206
    :catch_2b
    const-string v1, "ER_NO_DTMIDS_AVAIL"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    .line 210
    :cond_35
    :goto_35
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    const/4 v1, -0x1

    if-ne v1, p4, :cond_42

    .line 215
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p4

    :cond_42
    const/16 v3, 0xd

    const/4 v4, 0x2

    if-ne v4, p4, :cond_5c

    .line 238
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 240
    const-string v6, "xmlns:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5b

    const-string v6, "xmlns"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    :cond_5b
    move p4, v3

    .line 246
    :cond_5c
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 248
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v6, -0x2

    invoke-virtual {v5, v6, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 249
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v6, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 250
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, p3, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 251
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, p2, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    if-eq v1, p2, :cond_89

    if-eq p4, v4, :cond_89

    if-eq p4, v3, :cond_89

    .line 258
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    if-ne v6, v5, :cond_89

    .line 259
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v0, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 262
    :cond_89
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    if-ne p4, v6, :cond_95

    .line 268
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    goto :goto_99

    .line 269
    :cond_95
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    :goto_99
    if-eq p4, v2, :cond_9d

    if-ne p4, v4, :cond_a3

    :cond_9d
    if-nez v6, :cond_a3

    .line 274
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 276
    :cond_a3
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 286
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    if-eqz v6, :cond_af

    .line 293
    invoke-virtual {v2, v5, v6, p4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    goto :goto_b3

    .line 294
    :cond_af
    invoke-virtual {v2, p4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result p1

    .line 296
    :goto_b3
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2, p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 298
    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->indexNode(II)V

    if-eq v1, p3, :cond_c2

    .line 301
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p1, v0, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_c2
    if-ne p4, v3, :cond_c7

    .line 306
    invoke-virtual {p0, p2, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->declareNamespaceInContext(II)V

    :cond_c7
    return v0
.end method

.method public greylist dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_10

    .line 1614
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    const/4 p1, 0x1

    .line 1615
    invoke-interface {p0, p1, p1, v0}, Lorg/apache/xml/utils/XMLString;->fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    .line 1616
    invoke-interface {p0, p2}, Lorg/apache/xml/utils/XMLString;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    return-void

    .line 1620
    :cond_10
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result p3

    .line 1621
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .line 1622
    invoke-static {p1, p2, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    const/4 v1, 0x3

    if-eq v1, p3, :cond_21

    const/4 v1, 0x4

    if-ne v1, p3, :cond_2b

    .line 1627
    :cond_21
    :goto_21
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 1629
    invoke-static {p1, p2, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    goto :goto_21

    :cond_2b
    return-void
.end method

.method public greylist dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1715
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_walker:Lorg/apache/xml/utils/TreeWalker;

    .line 1716
    invoke-virtual {v0}, Lorg/apache/xml/utils/TreeWalker;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 1720
    new-instance v0, Lorg/apache/xml/utils/TreeWalker;

    invoke-direct {v0, v2}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 1722
    :cond_e
    invoke-virtual {v0, p2}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1726
    :try_start_11
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 1727
    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/TreeWalker;->traverseFragment(Lorg/w3c/dom/Node;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    .line 1731
    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1732
    throw p0
.end method

.method public greylist getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 756
    const-string v0, ""

    if-nez p2, :cond_5

    move-object p2, v0

    .line 759
    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v2, v1, :cond_42

    .line 765
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 767
    :cond_11
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v3, p1, :cond_42

    .line 770
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_22

    const/16 v2, 0xd

    if-ne v1, v2, :cond_42

    .line 781
    :cond_22
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->lookupNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 782
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2d

    move-object v2, v0

    .line 787
    :cond_2d
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 789
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 790
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result p0

    return p0

    :cond_42
    return v3
.end method

.method public greylist getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .registers 3

    .line 1310
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_f

    .line 1311
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Document;

    goto :goto_15

    .line 1313
    :cond_f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    :goto_15
    if-eqz p0, :cond_22

    .line 1317
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 1321
    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .registers 3

    .line 1279
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_f

    .line 1280
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Document;

    goto :goto_15

    .line 1282
    :cond_f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    :goto_15
    if-eqz p0, :cond_22

    .line 1286
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 1290
    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getElementById(Ljava/lang/String;)I
    .registers 6

    .line 1348
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_f

    .line 1349
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    :goto_15
    const/4 v1, -0x1

    if-eqz v0, :cond_3e

    .line 1353
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 1356
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    if-ne v1, v0, :cond_3d

    .line 1360
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1361
    :cond_2c
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNextNodeIdentity(I)I

    move-result v2

    if-eq v1, v2, :cond_3d

    .line 1363
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-ne v3, p1, :cond_2c

    .line 1366
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p0

    return p0

    :cond_3d
    return v0

    :cond_3e
    return v1
.end method

.method public greylist getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getHandleOfNode(Lorg/w3c/dom/Node;)I
    .registers 5

    if-eqz p1, :cond_49

    .line 710
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    if-eq v0, p1, :cond_2a

    .line 711
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    .line 712
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    if-eq v0, v2, :cond_2a

    :cond_16
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    .line 713
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v1, :cond_49

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    .line 714
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-ne v0, v1, :cond_49

    :cond_2a
    move-object v0, p1

    :goto_2b
    if-eqz v0, :cond_49

    .line 729
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_36

    .line 731
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p0

    return p0

    .line 725
    :cond_36
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_42

    .line 726
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_2b

    .line 727
    :cond_42
    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_2b

    :cond_49
    const/4 p0, -0x1

    return p0
.end method

.method public greylist getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getLocalName(I)Ljava/lang/String;
    .registers 3

    .line 1026
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 1028
    :cond_9
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    .line 1029
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_37

    .line 1033
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 1034
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x23

    if-ne v0, p1, :cond_27

    .line 1038
    const-string p0, ""

    return-object p0

    :cond_27
    const/16 p1, 0x3a

    .line 1042
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_30

    return-object p0

    :cond_30
    add-int/lit8 p1, p1, 0x1

    .line 1043
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_37
    return-object p1
.end method

.method public greylist getNamespaceURI(I)Ljava/lang/String;
    .registers 3

    .line 1146
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 1148
    :cond_9
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    .line 1149
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected greylist getNextNodeIdentity(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 636
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_12

    .line 638
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->nextNode()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, -0x1

    return p0

    :cond_12
    return p1
.end method

.method public greylist getNode(I)Lorg/w3c/dom/Node;
    .registers 2

    .line 607
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result p1

    .line 609
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public greylist getNodeName(I)Ljava/lang/String;
    .registers 2

    .line 958
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 961
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNodeNameX(I)Ljava/lang/String;
    .registers 5

    .line 976
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v1, 0x5

    if-eq v0, v1, :cond_36

    const/4 v1, 0x7

    if-eq v0, v1, :cond_36

    const/16 v1, 0xd

    .line 978
    const-string v2, ""

    if-eq v0, v1, :cond_17

    return-object v2

    .line 982
    :cond_17
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 985
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    .line 986
    const-string p1, "xmlns:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 988
    invoke-static {p0}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 990
    :cond_2c
    const-string p1, "xmlns"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    return-object v2

    :cond_35
    return-object p0

    .line 1001
    :cond_36
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 1004
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getNodeValue(I)Ljava/lang/String;
    .registers 4

    .line 1236
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_f

    .line 1237
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v1

    :cond_f
    const/4 v0, 0x3

    if-eq v0, v1, :cond_1e

    const/4 v0, 0x4

    if-eq v0, v1, :cond_1e

    .line 1240
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1249
    :cond_1e
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .line 1250
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 1252
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1254
    :cond_2d
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v1

    .line 1255
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    :goto_38
    if-eqz v0, :cond_46

    .line 1258
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 1259
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_38

    .line 1261
    :cond_46
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_51

    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_53

    :cond_51
    const-string p0, ""

    .line 1262
    :goto_53
    invoke-static {v1}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    return-object p0
.end method

.method public greylist getNumberOfNodes()I
    .registers 1

    .line 316
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public greylist getPrefix(I)Ljava/lang/String;
    .registers 7

    .line 1097
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    const/16 v1, 0x3a

    const/4 v2, 0x1

    .line 1099
    const-string v3, ""

    if-eq v0, v2, :cond_28

    const/4 v4, 0x2

    if-eq v0, v4, :cond_28

    const/16 v4, 0xd

    if-eq v0, v4, :cond_13

    return-object v3

    .line 1103
    :cond_13
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 1106
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    .line 1107
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_22

    return-object v3

    :cond_22
    add-int/2addr p1, v2

    .line 1109
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1115
    :cond_28
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 1118
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    .line 1119
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_37

    return-object v3

    :cond_37
    const/4 v0, 0x0

    .line 1121
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .registers 5

    .line 815
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    .line 816
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p1

    const/4 v1, 0x1

    .line 819
    const-string v2, ""

    if-eq v1, v0, :cond_4e

    const/16 v1, 0x9

    if-eq v1, v0, :cond_4e

    const/16 v1, 0xb

    if-ne v1, v0, :cond_16

    goto :goto_4e

    :cond_16
    const/4 v1, 0x3

    if-eq v1, v0, :cond_28

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1d

    goto :goto_28

    .line 858
    :cond_1d
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 847
    :cond_28
    :goto_28
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    :goto_2c
    if-eqz p1, :cond_3a

    .line 850
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 851
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_2c

    .line 853
    :cond_3a
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_44

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 854
    :cond_44
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 855
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {p0, v2}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 822
    :cond_4e
    :goto_4e
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 827
    :try_start_52
    invoke-static {p1, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 829
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_62

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_60

    goto :goto_62

    :catchall_60
    move-exception p0

    goto :goto_6c

    .line 833
    :cond_62
    :goto_62
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 836
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {p0, v2}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object p0

    return-object p0

    .line 833
    :goto_6c
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 834
    throw p0
.end method

.method public greylist getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1417
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_f

    .line 1418
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast p0, Lorg/w3c/dom/Document;

    goto :goto_15

    :cond_f
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    :goto_15
    if-eqz p0, :cond_3f

    .line 1422
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 1426
    invoke-interface {p0}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    if-nez p0, :cond_24

    goto :goto_3f

    .line 1429
    :cond_24
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Entity;

    if-nez p0, :cond_2d

    goto :goto_3f

    .line 1433
    :cond_2d
    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 1446
    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3e

    .line 1450
    invoke-interface {p0}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3e
    return-object p1

    .line 1428
    :cond_3f
    :goto_3f
    const-string p0, ""

    return-object p0
.end method

.method public greylist isAttributeSpecified(I)Z
    .registers 4

    .line 1475
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_12

    .line 1479
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    .line 1480
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isWhitespace(I)Z
    .registers 5

    .line 870
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v0

    .line 871
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v1, v0, :cond_11

    const/4 v1, 0x4

    if-ne v1, v0, :cond_10

    goto :goto_11

    :cond_10
    return v2

    .line 881
    :cond_11
    :goto_11
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    :goto_15
    if-eqz p1, :cond_23

    .line 884
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 885
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_15

    .line 887
    :cond_23
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result p0

    .line 888
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    return p0
.end method

.method protected greylist lookupNode(I)Lorg/w3c/dom/Node;
    .registers 2

    .line 621
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public greylist needsTwoThreads()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist nextNode()Z
    .registers 18

    move-object/from16 v0, p0

    .line 334
    iget-boolean v1, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    return v2

    .line 339
    :cond_8
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v6, v3

    move v5, v4

    .line 347
    :cond_e
    invoke-interface {v1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v7

    const/16 v8, 0xa

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v7, :cond_52

    .line 349
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_29

    .line 353
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v8, v7, :cond_29

    .line 354
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    .line 358
    :cond_29
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v9, v7, :cond_b0

    .line 360
    iget v7, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    iput v7, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    .line 361
    iput v4, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    .line 363
    iget-object v8, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    if-eqz v8, :cond_b0

    .line 366
    invoke-virtual {v0, v7}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v7

    invoke-interface {v8, v7, v0}, Lorg/apache/xml/dtm/DTMWSFilter;->getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S

    move-result v7

    if-ne v10, v7, :cond_48

    .line 368
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getShouldStripWhitespace()Z

    move-result v7

    goto :goto_4e

    :cond_48
    const/4 v8, 0x2

    if-ne v8, v7, :cond_4d

    move v7, v11

    goto :goto_4e

    :cond_4d
    move v7, v2

    .line 370
    :goto_4e
    invoke-virtual {v0, v7}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->pushShouldStripWhitespace(Z)V

    goto :goto_b0

    .line 378
    :cond_52
    iget v7, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    if-eq v7, v4, :cond_66

    .line 382
    iget-object v12, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v12, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    const/4 v12, -0x2

    if-ne v7, v12, :cond_66

    .line 383
    iget-object v7, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v12, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    invoke-virtual {v7, v4, v12}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 386
    :cond_66
    :goto_66
    iget v7, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    if-eq v7, v4, :cond_ab

    .line 390
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_7a

    .line 391
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v8, v7, :cond_7a

    .line 392
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    :cond_7a
    if-eqz v6, :cond_7d

    goto :goto_ab

    .line 398
    :cond_7d
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_8a

    .line 412
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v9, v7, :cond_8a

    goto :goto_66

    .line 420
    :cond_8a
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->popShouldStripWhitespace()V

    .line 422
    iget v7, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    if-ne v7, v4, :cond_99

    .line 423
    iget-object v7, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v12, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    invoke-virtual {v7, v4, v12}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_9e

    .line 425
    :cond_99
    iget-object v12, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v12, v4, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 426
    :goto_9e
    iget-object v7, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v12, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    iput v12, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    invoke-virtual {v7, v12}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    iput v7, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    goto :goto_66

    .line 429
    :cond_ab
    :goto_ab
    iget v7, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    if-ne v7, v4, :cond_b0

    move-object v6, v3

    :cond_b0
    :goto_b0
    if-eqz v6, :cond_b6

    .line 434
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    :cond_b6
    if-ne v9, v5, :cond_b9

    move-object v1, v6

    :cond_b9
    if-eq v9, v5, :cond_e

    if-nez v6, :cond_c7

    .line 449
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v4, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 450
    iput-boolean v11, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    .line 451
    iput-object v3, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    return v2

    .line 481
    :cond_c7
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    .line 484
    const-string v7, "xml"

    const/4 v8, 0x4

    if-eq v10, v5, :cond_e5

    if-ne v8, v5, :cond_d3

    goto :goto_e5

    :cond_d3
    const/4 v9, 0x7

    if-ne v9, v5, :cond_e3

    .line 514
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_113

    :cond_e3
    move v1, v2

    goto :goto_113

    .line 487
    :cond_e5
    :goto_e5
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    if-eqz v1, :cond_f1

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getShouldStripWhitespace()Z

    move-result v1

    if-eqz v1, :cond_f1

    move v1, v11

    goto :goto_f2

    :cond_f1
    move v1, v2

    :goto_f2
    move v9, v5

    move-object v5, v3

    move-object v3, v6

    :goto_f5
    if-eqz v3, :cond_111

    .line 496
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v10, v5, :cond_fe

    move v9, v10

    .line 501
    :cond_fe
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 503
    invoke-direct {v0, v3}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object/from16 v16, v5

    move-object v5, v3

    move-object/from16 v3, v16

    goto :goto_f5

    :cond_111
    move-object v3, v5

    move v5, v9

    :goto_113
    if-nez v1, :cond_182

    .line 523
    iget v1, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    iget v9, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    invoke-virtual {v0, v6, v1, v9, v5}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v1

    .line 526
    iput v1, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    if-ne v11, v5, :cond_182

    .line 533
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    if-nez v9, :cond_129

    move v12, v2

    goto :goto_12d

    .line 534
    :cond_129
    invoke-interface {v9}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v12

    :goto_12d
    move v13, v4

    if-lez v12, :cond_158

    :goto_130
    if-ge v2, v12, :cond_158

    .line 542
    invoke-interface {v9, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-virtual {v0, v14, v1, v13, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v13

    .line 544
    iget-object v14, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v14, v4, v13}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 555
    iget-boolean v14, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    if-nez v14, :cond_155

    .line 556
    invoke-interface {v9, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "xmlns:xml"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_155

    .line 557
    iput-boolean v11, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    :cond_155
    add-int/lit8 v2, v2, 0x1

    goto :goto_130

    .line 562
    :cond_158
    iget-boolean v2, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    if-nez v2, :cond_17b

    .line 570
    new-instance v2, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;

    move-object v9, v6

    check-cast v9, Lorg/w3c/dom/Element;

    if-ne v13, v4, :cond_165

    move v12, v1

    goto :goto_166

    :cond_165
    move v12, v13

    :goto_166
    add-int/2addr v12, v11

    .line 572
    invoke-virtual {v0, v12}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v12

    const-string v14, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v2, v9, v7, v14, v12}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)V

    .line 570
    invoke-virtual {v0, v2, v1, v13, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v13

    .line 575
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v4, v13}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 576
    iput-boolean v11, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    :cond_17b
    if-eq v13, v4, :cond_182

    .line 579
    iget-object v1, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v4, v13}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_182
    if-eq v10, v5, :cond_186

    if-ne v8, v5, :cond_187

    :cond_186
    move-object v6, v3

    .line 592
    :cond_187
    iput-object v6, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    return v11
.end method

.method public greylist setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .registers 2

    .line 0
    return-void
.end method

.method public greylist setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method
