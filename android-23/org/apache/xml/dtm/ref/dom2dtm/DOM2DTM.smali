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
.field static final JJK_DEBUG:Z = false

.field static final JJK_NEWCODE:Z = true

.field static final NAMESPACE_DECL_NS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private m_last_kid:I

.field private m_last_parent:I

.field protected m_nodes:Ljava/util/Vector;

.field private transient m_nodesAreProcessed:Z

.field private transient m_pos:Lorg/w3c/dom/Node;

.field m_processedFirstElement:Z

.field private transient m_root:Lorg/w3c/dom/Node;

.field m_walker:Lorg/apache/xml/utils/TreeWalker;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/dom/DOMSource;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 9
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;
    .param p2, "domSource"    # Ljavax/xml/transform/dom/DOMSource;
    .param p3, "dtmIdentity"    # I
    .param p4, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p5, "xstringfactory"    # Lorg/apache/xml/utils/XMLStringFactory;
    .param p6, "doIndexing"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, -0x1

    #@3
    .line 123
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    #@6
    .line 79
    iput v8, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    #@8
    .line 82
    iput v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@a
    .line 91
    iput-boolean v8, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    #@c
    .line 104
    new-instance v4, Ljava/util/Vector;

    #@e
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #@11
    iput-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    #@13
    .line 1702
    new-instance v4, Lorg/apache/xml/utils/TreeWalker;

    #@15
    invoke-direct {v4, v5}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    #@18
    iput-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_walker:Lorg/apache/xml/utils/TreeWalker;

    #@1a
    .line 127
    invoke-virtual {p2}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    #@1d
    move-result-object v4

    #@1e
    iput-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@20
    iput-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    #@22
    .line 129
    iput v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@24
    iput v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    #@26
    .line 130
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@28
    iget v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    #@2a
    iget v6, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@2c
    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    #@2f
    move-result v4

    #@30
    iput v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@32
    .line 143
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@34
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    #@37
    move-result v4

    #@38
    const/4 v5, 0x1

    #@39
    if-ne v5, v4, :cond_2

    #@3b
    .line 145
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@3d
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@40
    move-result-object v1

    #@41
    .line 146
    .local v1, "attrs":Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_0

    #@43
    const/4 v2, 0x0

    #@44
    .line 147
    .local v2, "attrsize":I
    :goto_0
    if-lez v2, :cond_2

    #@46
    .line 149
    const/4 v0, -0x1

    #@47
    .line 150
    .local v0, "attrIndex":I
    const/4 v3, 0x0

    #@48
    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    #@4a
    .line 155
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {p0, v4, v8, v0, v7}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    #@51
    move-result v0

    #@52
    .line 156
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@54
    invoke-virtual {v4, v7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@57
    .line 150
    add-int/lit8 v3, v3, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 146
    .end local v0    # "attrIndex":I
    .end local v2    # "attrsize":I
    .end local v3    # "i":I
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@5d
    move-result v2

    #@5e
    .restart local v2    # "attrsize":I
    goto :goto_0

    #@5f
    .line 160
    .restart local v0    # "attrIndex":I
    .restart local v3    # "i":I
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@61
    invoke-virtual {v4, v7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@64
    .line 167
    .end local v0    # "attrIndex":I
    .end local v1    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "attrsize":I
    .end local v3    # "i":I
    :cond_2
    iput-boolean v8, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    #@66
    .line 121
    return-void
.end method

.method protected static dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V
    .locals 5
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1661
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    #@4
    move-result v2

    #@5
    packed-switch v2, :pswitch_data_0

    #@8
    .line 1658
    .end local p1    # "ch":Lorg/xml/sax/ContentHandler;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@9
    .line 1667
    .restart local p1    # "ch":Lorg/xml/sax/ContentHandler;
    :pswitch_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@c
    move-result-object v0

    #@d
    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v0, :cond_0

    #@f
    .line 1670
    add-int/lit8 v2, p2, 0x1

    #@11
    invoke-static {v0, p1, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    #@14
    .line 1668
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@17
    move-result-object v0

    #@18
    goto :goto_1

    #@19
    .line 1676
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :pswitch_2
    if-nez p2, :cond_0

    #@1b
    .line 1683
    :pswitch_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 1684
    .local v1, "str":Ljava/lang/String;
    instance-of v2, p1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 1686
    check-cast p1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    #@25
    .end local p1    # "ch":Lorg/xml/sax/ContentHandler;
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;->characters(Lorg/w3c/dom/Node;)V

    #@28
    goto :goto_0

    #@29
    .line 1690
    .restart local p1    # "ch":Lorg/xml/sax/ContentHandler;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@30
    move-result v3

    #@31
    invoke-interface {p1, v2, v4, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    #@34
    goto :goto_0

    #@35
    .line 1661
    nop

    #@36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getHandleFromNode(Lorg/w3c/dom/Node;)I
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 666
    if-eqz p1, :cond_3

    #@2
    .line 668
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    #@4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@7
    move-result v2

    #@8
    .line 670
    .local v2, "len":I
    const/4 v0, 0x0

    #@9
    .line 673
    .local v0, "i":I
    :cond_0
    :goto_0
    if-ge v0, v2, :cond_2

    #@b
    .line 675
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    #@d
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    if-ne v3, p1, :cond_1

    #@13
    .line 676
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    #@16
    move-result v3

    #@17
    return v3

    #@18
    .line 673
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 679
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->nextNode()Z

    #@1e
    move-result v1

    #@1f
    .line 681
    .local v1, "isMore":Z
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    #@21
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@24
    move-result v2

    #@25
    .line 684
    if-nez v1, :cond_0

    #@27
    if-lt v0, v2, :cond_0

    #@29
    .line 687
    .end local v0    # "i":I
    .end local v1    # "isMore":Z
    .end local v2    # "len":I
    :cond_3
    const/4 v3, -0x1

    #@2a
    return v3
.end method

.method protected static getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 2
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "buf"    # Lorg/apache/xml/utils/FastStringBuffer;

    #@0
    .prologue
    .line 919
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    #@3
    move-result v1

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 916
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    #@8
    .line 925
    :pswitch_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@b
    move-result-object v0

    #@c
    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v0, :cond_0

    #@e
    .line 928
    invoke-static {v0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    #@11
    .line 926
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@14
    move-result-object v0

    #@15
    goto :goto_1

    #@16
    .line 935
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :pswitch_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@1d
    goto :goto_0

    #@1e
    .line 919
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isSpace(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 1591
    invoke-static {p0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v3, 0x5

    #@1
    .line 1190
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@4
    move-result-object v1

    #@5
    .line 1191
    .local v1, "p":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    #@7
    .line 1194
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@a
    move-result-object p1

    #@b
    .line 1195
    :goto_0
    if-eqz p1, :cond_0

    #@d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@10
    move-result v2

    #@11
    if-ne v3, v2, :cond_0

    #@13
    .line 1198
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@16
    move-result-object v1

    #@17
    .line 1199
    if-eqz v1, :cond_1

    #@19
    .line 1203
    :cond_0
    move-object p1, v1

    #@1a
    .line 1204
    :goto_1
    if-eqz p1, :cond_3

    #@1c
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@1f
    move-result v2

    #@20
    if-ne v3, v2, :cond_3

    #@22
    .line 1207
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 1208
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@2b
    move-result-object p1

    #@2c
    goto :goto_1

    #@2d
    .line 1196
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@30
    move-result-object p1

    #@31
    goto :goto_0

    #@32
    .line 1210
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@35
    move-result-object p1

    #@36
    goto :goto_1

    #@37
    .line 1212
    :cond_3
    if-eqz p1, :cond_4

    #@39
    .line 1215
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@3c
    move-result v0

    #@3d
    .line 1216
    .local v0, "ntype":I
    const/4 v2, 0x3

    #@3e
    if-eq v2, v0, :cond_4

    #@40
    const/4 v2, 0x4

    #@41
    if-eq v2, v0, :cond_4

    #@43
    .line 1217
    const/4 p1, 0x0

    #@44
    .line 1219
    .end local v0    # "ntype":I
    .end local p1    # "n":Lorg/w3c/dom/Node;
    :cond_4
    return-object p1
.end method


# virtual methods
.method protected addNode(Lorg/w3c/dom/Node;III)I
    .locals 13
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "parentIndex"    # I
    .param p3, "previousSibling"    # I
    .param p4, "forceNodeType"    # I

    #@0
    .prologue
    .line 185
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    #@2
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    #@5
    move-result v8

    #@6
    .line 188
    .local v8, "nodeIndex":I
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@8
    invoke-virtual {v11}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    #@b
    move-result v11

    #@c
    ushr-int/lit8 v12, v8, 0x10

    #@e
    if-ne v11, v12, :cond_0

    #@10
    .line 192
    :try_start_0
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    #@12
    if-nez v11, :cond_9

    #@14
    .line 193
    new-instance v11, Ljava/lang/ClassCastException;

    #@16
    invoke-direct {v11}, Ljava/lang/ClassCastException;-><init>()V

    #@19
    throw v11
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 202
    :catch_0
    move-exception v1

    #@1b
    .line 206
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v11, "ER_NO_DTMIDS_AVAIL"

    #@1e
    const/4 v12, 0x0

    #@1f
    invoke-static {v11, v12}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@22
    move-result-object v11

    #@23
    invoke-virtual {p0, v11}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->error(Ljava/lang/String;)V

    #@26
    .line 210
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_0
    :goto_0
    iget v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_size:I

    #@28
    add-int/lit8 v11, v11, 0x1

    #@2a
    iput v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_size:I

    #@2c
    .line 214
    const/4 v11, -0x1

    #@2d
    move/from16 v0, p4

    #@2f
    if-ne v11, v0, :cond_a

    #@31
    .line 215
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@34
    move-result v10

    #@35
    .line 236
    .local v10, "type":I
    :goto_1
    const/4 v11, 0x2

    #@36
    if-ne v11, v10, :cond_2

    #@38
    .line 238
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    .line 240
    .local v7, "name":Ljava/lang/String;
    const-string/jumbo v11, "xmlns:"

    #@3f
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@42
    move-result v11

    #@43
    if-nez v11, :cond_1

    #@45
    const-string/jumbo v11, "xmlns"

    #@48
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v11

    #@4c
    if-eqz v11, :cond_2

    #@4e
    .line 242
    :cond_1
    const/16 v10, 0xd

    #@50
    .line 246
    .end local v7    # "name":Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    #@52
    invoke-virtual {v11, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@55
    .line 248
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@57
    const/4 v12, -0x2

    #@58
    invoke-virtual {v11, v12, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@5b
    .line 249
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@5d
    const/4 v12, -0x2

    #@5e
    invoke-virtual {v11, v12, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@61
    .line 250
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@63
    move/from16 v0, p3

    #@65
    invoke-virtual {v11, v0, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@68
    .line 251
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@6a
    invoke-virtual {v11, p2, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@6d
    .line 253
    const/4 v11, -0x1

    #@6e
    if-eq v11, p2, :cond_3

    #@70
    .line 254
    const/4 v11, 0x2

    #@71
    if-eq v10, v11, :cond_3

    #@73
    .line 255
    const/16 v11, 0xd

    #@75
    if-eq v10, v11, :cond_3

    #@77
    .line 258
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@79
    invoke-virtual {v11, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@7c
    move-result v11

    #@7d
    const/4 v12, -0x2

    #@7e
    if-ne v12, v11, :cond_3

    #@80
    .line 259
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@82
    invoke-virtual {v11, v8, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@85
    .line 262
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@88
    move-result-object v9

    #@89
    .line 267
    .local v9, "nsURI":Ljava/lang/String;
    const/4 v11, 0x7

    #@8a
    if-ne v10, v11, :cond_b

    #@8c
    .line 268
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@8f
    move-result-object v5

    #@90
    .line 272
    .local v5, "localName":Ljava/lang/String;
    :goto_2
    const/4 v11, 0x1

    #@91
    if-eq v10, v11, :cond_4

    #@93
    const/4 v11, 0x2

    #@94
    if-ne v10, v11, :cond_5

    #@96
    .line 273
    :cond_4
    if-nez v5, :cond_5

    #@98
    .line 274
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    .line 276
    :cond_5
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@9e
    .line 286
    .local v2, "exnt":Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@a1
    move-result-object v11

    #@a2
    if-nez v11, :cond_6

    #@a4
    .line 287
    const/4 v11, 0x1

    #@a5
    if-eq v10, v11, :cond_6

    #@a7
    const/4 v11, 0x2

    #@a8
    if-ne v10, v11, :cond_6

    #@aa
    .line 292
    :cond_6
    if-eqz v5, :cond_c

    #@ac
    .line 293
    invoke-virtual {v2, v9, v5, v10}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    #@af
    move-result v3

    #@b0
    .line 296
    .local v3, "expandedNameID":I
    :goto_3
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@b2
    invoke-virtual {v11, v3, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@b5
    .line 298
    invoke-virtual {p0, v3, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->indexNode(II)V

    #@b8
    .line 300
    const/4 v11, -0x1

    #@b9
    move/from16 v0, p3

    #@bb
    if-eq v11, v0, :cond_7

    #@bd
    .line 301
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@bf
    move/from16 v0, p3

    #@c1
    invoke-virtual {v11, v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@c4
    .line 305
    :cond_7
    const/16 v11, 0xd

    #@c6
    if-ne v10, v11, :cond_8

    #@c8
    .line 306
    invoke-virtual {p0, p2, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->declareNamespaceInContext(II)V

    #@cb
    .line 308
    :cond_8
    return v8

    #@cc
    .line 196
    .end local v2    # "exnt":Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    .end local v3    # "expandedNameID":I
    .end local v5    # "localName":Ljava/lang/String;
    .end local v9    # "nsURI":Ljava/lang/String;
    .end local v10    # "type":I
    :cond_9
    :try_start_1
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    #@ce
    check-cast v6, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    #@d0
    .line 197
    .local v6, "mgrD":Lorg/apache/xml/dtm/ref/DTMManagerDefault;
    invoke-virtual {v6}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    #@d3
    move-result v4

    #@d4
    .line 198
    .local v4, "id":I
    invoke-virtual {v6, p0, v4, v8}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    #@d7
    .line 199
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@d9
    shl-int/lit8 v12, v4, 0x10

    #@db
    invoke-virtual {v11, v12}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    #@de
    goto/16 :goto_0

    #@e0
    .line 217
    .end local v4    # "id":I
    .end local v6    # "mgrD":Lorg/apache/xml/dtm/ref/DTMManagerDefault;
    :cond_a
    move/from16 v10, p4

    #@e2
    .restart local v10    # "type":I
    goto/16 :goto_1

    #@e4
    .line 269
    .restart local v9    # "nsURI":Ljava/lang/String;
    :cond_b
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@e7
    move-result-object v5

    #@e8
    .restart local v5    # "localName":Ljava/lang/String;
    goto :goto_2

    #@e9
    .line 294
    .restart local v2    # "exnt":Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    :cond_c
    invoke-virtual {v2, v10}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    #@ec
    move-result v3

    #@ed
    .restart local v3    # "expandedNameID":I
    goto :goto_3
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 5
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
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1612
    if-eqz p3, :cond_1

    #@4
    .line 1614
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@7
    move-result-object v1

    #@8
    .line 1615
    .local v1, "str":Lorg/apache/xml/utils/XMLString;
    invoke-interface {v1, v3, v3, v4}, Lorg/apache/xml/utils/XMLString;->fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;

    #@b
    move-result-object v1

    #@c
    .line 1616
    invoke-interface {v1, p2}, Lorg/apache/xml/utils/XMLString;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    #@f
    .line 1610
    .end local v1    # "str":Lorg/apache/xml/utils/XMLString;
    :cond_0
    return-void

    #@10
    .line 1620
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    #@13
    move-result v2

    #@14
    .line 1621
    .local v2, "type":I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@17
    move-result-object v0

    #@18
    .line 1622
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-static {v0, p2, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    #@1b
    .line 1625
    const/4 v3, 0x3

    #@1c
    if-eq v3, v2, :cond_2

    #@1e
    const/4 v3, 0x4

    #@1f
    if-ne v3, v2, :cond_0

    #@21
    .line 1627
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@24
    move-result-object v0

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 1629
    invoke-static {v0, p2, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    #@2a
    goto :goto_0
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .locals 5
    .param p1, "nodeHandle"    # I
    .param p2, "ch"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1715
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_walker:Lorg/apache/xml/utils/TreeWalker;

    #@3
    .line 1716
    .local v2, "treeWalker":Lorg/apache/xml/utils/TreeWalker;
    invoke-virtual {v2}, Lorg/apache/xml/utils/TreeWalker;->getContentHandler()Lorg/xml/sax/ContentHandler;

    #@6
    move-result-object v1

    #@7
    .line 1718
    .local v1, "prevCH":Lorg/xml/sax/ContentHandler;
    if-eqz v1, :cond_0

    #@9
    .line 1720
    new-instance v2, Lorg/apache/xml/utils/TreeWalker;

    #@b
    .end local v2    # "treeWalker":Lorg/apache/xml/utils/TreeWalker;
    invoke-direct {v2, v4}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    #@e
    .line 1722
    .restart local v2    # "treeWalker":Lorg/apache/xml/utils/TreeWalker;
    :cond_0
    invoke-virtual {v2, p2}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@11
    .line 1726
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@14
    move-result-object v0

    #@15
    .line 1727
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/TreeWalker;->traverseFragment(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1731
    invoke-virtual {v2, v4}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@1b
    .line 1713
    return-void

    #@1c
    .line 1730
    .end local v0    # "node":Lorg/w3c/dom/Node;
    :catchall_0
    move-exception v3

    #@1d
    .line 1731
    invoke-virtual {v2, v4}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    #@20
    .line 1730
    throw v3
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "nodeHandle"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 756
    if-nez p2, :cond_0

    #@3
    .line 757
    const-string/jumbo p2, ""

    #@6
    .line 759
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    #@9
    move-result v4

    #@a
    .line 761
    .local v4, "type":I
    const/4 v5, 0x1

    #@b
    if-ne v5, v4, :cond_4

    #@d
    .line 765
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    #@10
    move-result v0

    #@11
    .line 767
    .local v0, "identity":I
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNextNodeIdentity(I)I

    #@14
    move-result v0

    #@15
    if-eq v6, v0, :cond_4

    #@17
    .line 770
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->_type(I)S

    #@1a
    move-result v4

    #@1b
    .line 779
    const/4 v5, 0x2

    #@1c
    if-eq v4, v5, :cond_2

    #@1e
    const/16 v5, 0xd

    #@20
    if-ne v4, v5, :cond_4

    #@22
    .line 781
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->lookupNode(I)Lorg/w3c/dom/Node;

    #@25
    move-result-object v1

    #@26
    .line 782
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 784
    .local v3, "nodeuri":Ljava/lang/String;
    if-nez v3, :cond_3

    #@2c
    .line 785
    const-string/jumbo v3, ""

    #@2f
    .line 787
    :cond_3
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 789
    .local v2, "nodelocalname":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_1

    #@39
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_1

    #@3f
    .line 790
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    #@42
    move-result v5

    #@43
    return v5

    #@44
    .line 800
    .end local v0    # "identity":I
    .end local v1    # "node":Lorg/w3c/dom/Node;
    .end local v2    # "nodelocalname":Ljava/lang/String;
    .end local v3    # "nodeuri":Ljava/lang/String;
    :cond_4
    return v6
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 1506
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    #@0
    .prologue
    .line 1545
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 1

    #@0
    .prologue
    .line 1567
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1310
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    #@6
    move-result v2

    #@7
    const/16 v3, 0x9

    #@9
    if-ne v2, v3, :cond_0

    #@b
    .line 1311
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@d
    check-cast v0, Lorg/w3c/dom/Document;

    #@f
    .line 1315
    .local v0, "doc":Lorg/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_1

    #@11
    .line 1317
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    #@14
    move-result-object v1

    #@15
    .line 1319
    .local v1, "dtd":Lorg/w3c/dom/DocumentType;
    if-eqz v1, :cond_1

    #@17
    .line 1321
    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    return-object v2

    #@1c
    .line 1313
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "dtd":Lorg/w3c/dom/DocumentType;
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@1e
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@21
    move-result-object v0

    #@22
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    goto :goto_0

    #@23
    .line 1325
    :cond_1
    return-object v4
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1279
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    #@6
    move-result v2

    #@7
    const/16 v3, 0x9

    #@9
    if-ne v2, v3, :cond_0

    #@b
    .line 1280
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@d
    check-cast v0, Lorg/w3c/dom/Document;

    #@f
    .line 1284
    .local v0, "doc":Lorg/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_1

    #@11
    .line 1286
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    #@14
    move-result-object v1

    #@15
    .line 1288
    .local v1, "dtd":Lorg/w3c/dom/DocumentType;
    if-eqz v1, :cond_1

    #@17
    .line 1290
    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    return-object v2

    #@1c
    .line 1282
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "dtd":Lorg/w3c/dom/DocumentType;
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@1e
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@21
    move-result-object v0

    #@22
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    goto :goto_0

    #@23
    .line 1294
    :cond_1
    return-object v4
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 8
    .param p1, "elementId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 1348
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@3
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    #@6
    move-result v5

    #@7
    const/16 v6, 0x9

    #@9
    if-ne v5, v6, :cond_2

    #@b
    .line 1349
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@d
    check-cast v0, Lorg/w3c/dom/Document;

    #@f
    .line 1351
    .local v0, "doc":Lorg/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_3

    #@11
    .line 1353
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@14
    move-result-object v1

    #@15
    .line 1354
    .local v1, "elem":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_3

    #@17
    .line 1356
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    #@1a
    move-result v2

    #@1b
    .line 1358
    .local v2, "elemHandle":I
    if-ne v7, v2, :cond_1

    #@1d
    .line 1360
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    #@1f
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    #@22
    move-result v5

    #@23
    add-int/lit8 v3, v5, -0x1

    #@25
    .line 1361
    .local v3, "identity":I
    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNextNodeIdentity(I)I

    #@28
    move-result v3

    #@29
    if-eq v7, v3, :cond_1

    #@2b
    .line 1363
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@2e
    move-result-object v4

    #@2f
    .line 1364
    .local v4, "node":Lorg/w3c/dom/Node;
    if-ne v4, v1, :cond_0

    #@31
    .line 1366
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    #@34
    move-result v2

    #@35
    .line 1372
    .end local v3    # "identity":I
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_1
    return v2

    #@36
    .line 1349
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "elem":Lorg/w3c/dom/Node;
    .end local v2    # "elemHandle":I
    :cond_2
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@38
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@3b
    move-result-object v0

    #@3c
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    goto :goto_0

    #@3d
    .line 1376
    :cond_3
    return v7
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    #@0
    .prologue
    .line 1534
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    #@0
    .prologue
    .line 1556
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHandleOfNode(Lorg/w3c/dom/Node;)I
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/16 v3, 0x9

    #@2
    .line 705
    if-eqz p1, :cond_2

    #@4
    .line 710
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@6
    if-eq v1, p1, :cond_0

    #@8
    .line 711
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@a
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@d
    move-result v1

    #@e
    if-ne v1, v3, :cond_1

    #@10
    .line 712
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@12
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@15
    move-result-object v2

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 722
    :cond_0
    move-object v0, p1

    #@19
    .local v0, "cursor":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_2

    #@1b
    .line 729
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@1d
    if-ne v0, v1, :cond_3

    #@1f
    .line 731
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    #@22
    move-result v1

    #@23
    return v1

    #@24
    .line 713
    .end local v0    # "cursor":Lorg/w3c/dom/Node;
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@26
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@29
    move-result v1

    #@2a
    if-eq v1, v3, :cond_2

    #@2c
    .line 714
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@2e
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@31
    move-result-object v1

    #@32
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@35
    move-result-object v2

    #@36
    if-eq v1, v2, :cond_0

    #@38
    .line 736
    :cond_2
    const/4 v1, -0x1

    #@39
    return v1

    #@3a
    .line 725
    .restart local v0    # "cursor":Lorg/w3c/dom/Node;
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    #@3d
    move-result v1

    #@3e
    const/4 v2, 0x2

    #@3f
    if-eq v1, v2, :cond_4

    #@41
    .line 726
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@44
    move-result-object v0

    #@45
    goto :goto_0

    #@46
    .line 727
    :cond_4
    check-cast v0, Lorg/w3c/dom/Attr;

    #@48
    .end local v0    # "cursor":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    #@4b
    move-result-object v0

    #@4c
    .restart local v0    # "cursor":Lorg/w3c/dom/Node;
    goto :goto_0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    #@0
    .prologue
    .line 1522
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 8
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1026
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    #@5
    move-result v0

    #@6
    .line 1027
    .local v0, "id":I
    const/4 v5, -0x1

    #@7
    if-ne v5, v0, :cond_0

    #@9
    return-object v7

    #@a
    .line 1028
    :cond_0
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    #@c
    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lorg/w3c/dom/Node;

    #@12
    .line 1029
    .local v3, "newnode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 1030
    .local v2, "newname":Ljava/lang/String;
    if-nez v2, :cond_1

    #@18
    .line 1033
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    .line 1034
    .local v4, "qname":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v5

    #@20
    const/16 v6, 0x23

    #@22
    if-ne v6, v5, :cond_2

    #@24
    .line 1038
    const-string/jumbo v2, ""

    #@27
    .line 1046
    .end local v4    # "qname":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    #@28
    .line 1042
    .restart local v4    # "qname":Ljava/lang/String;
    :cond_2
    const/16 v5, 0x3a

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    #@2d
    move-result v1

    #@2e
    .line 1043
    .local v1, "index":I
    if-gez v1, :cond_3

    #@30
    move-object v2, v4

    #@31
    goto :goto_0

    #@32
    :cond_3
    add-int/lit8 v5, v1, 0x1

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    goto :goto_0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 3
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 1146
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    #@3
    move-result v0

    #@4
    .line 1147
    .local v0, "id":I
    const/4 v2, -0x1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    const/4 v2, 0x0

    #@8
    return-object v2

    #@9
    .line 1148
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    #@b
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lorg/w3c/dom/Node;

    #@11
    .line 1149
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    return-object v2
.end method

.method protected getNextNodeIdentity(I)I
    .locals 1
    .param p1, "identity"    # I

    #@0
    .prologue
    .line 634
    add-int/lit8 p1, p1, 0x1

    #@2
    .line 636
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    #@4
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_0

    #@a
    .line 638
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->nextNode()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 639
    const/4 p1, -0x1

    #@11
    .line 642
    :cond_0
    return p1
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 607
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    #@3
    move-result v0

    #@4
    .line 609
    .local v0, "identity":I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    #@6
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lorg/w3c/dom/Node;

    #@c
    return-object v1
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 958
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@3
    move-result-object v0

    #@4
    .line 961
    .local v0, "node":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 4
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 976
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    #@3
    move-result v2

    #@4
    .line 978
    .local v2, "type":S
    sparse-switch v2, :sswitch_data_0

    #@7
    .line 1008
    const-string/jumbo v0, ""

    #@a
    .line 1011
    .local v0, "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    #@b
    .line 982
    .end local v0    # "name":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@e
    move-result-object v1

    #@f
    .line 985
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 986
    .restart local v0    # "name":Ljava/lang/String;
    const-string/jumbo v3, "xmlns:"

    #@16
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 988
    invoke-static {v0}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    goto :goto_0

    #@21
    .line 990
    :cond_1
    const-string/jumbo v3, "xmlns"

    #@24
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_0

    #@2a
    .line 992
    const-string/jumbo v0, ""

    #@2d
    goto :goto_0

    #@2e
    .line 1001
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :sswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@31
    move-result-object v1

    #@32
    .line 1004
    .restart local v1    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    #@37
    .line 978
    nop

    #@38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x5 -> :sswitch_1
        0x7 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 7
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 1236
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    #@4
    move-result v6

    #@5
    invoke-virtual {p0, v6}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->_exptype(I)I

    #@8
    move-result v4

    #@9
    .line 1237
    .local v4, "type":I
    if-eq v5, v4, :cond_0

    #@b
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    #@e
    move-result v4

    #@f
    .line 1239
    :goto_0
    const/4 v5, 0x3

    #@10
    if-eq v5, v4, :cond_1

    #@12
    const/4 v5, 0x4

    #@13
    if-eq v5, v4, :cond_1

    #@15
    .line 1240
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@18
    move-result-object v5

    #@19
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    return-object v5

    #@1e
    :cond_0
    move v4, v5

    #@1f
    .line 1237
    goto :goto_0

    #@20
    .line 1249
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@23
    move-result-object v2

    #@24
    .line 1250
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-direct {p0, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@27
    move-result-object v1

    #@28
    .line 1251
    .local v1, "n":Lorg/w3c/dom/Node;
    if-nez v1, :cond_2

    #@2a
    .line 1252
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    return-object v5

    #@2f
    .line 1254
    :cond_2
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    #@32
    move-result-object v0

    #@33
    .line 1255
    .local v0, "buf":Lorg/apache/xml/utils/FastStringBuffer;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@3a
    .line 1256
    :goto_1
    if-eqz v1, :cond_3

    #@3c
    .line 1258
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@43
    .line 1259
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@46
    move-result-object v1

    #@47
    goto :goto_1

    #@48
    .line 1261
    :cond_3
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    #@4b
    move-result v5

    #@4c
    if-lez v5, :cond_4

    #@4e
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    .line 1262
    .local v3, "s":Ljava/lang/String;
    :goto_2
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@55
    .line 1263
    return-object v3

    #@56
    .line 1261
    .end local v3    # "s":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, ""

    #@59
    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_2
.end method

.method public getNumberOfNodes()I
    .locals 1

    #@0
    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 7
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/16 v6, 0x3a

    #@2
    const/4 v5, 0x0

    #@3
    .line 1097
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    #@6
    move-result v4

    #@7
    .line 1099
    .local v4, "type":S
    sparse-switch v4, :sswitch_data_0

    #@a
    .line 1125
    const-string/jumbo v2, ""

    #@d
    .line 1128
    .local v2, "prefix":Ljava/lang/String;
    :goto_0
    return-object v2

    #@e
    .line 1103
    .end local v2    # "prefix":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@11
    move-result-object v1

    #@12
    .line 1106
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 1107
    .local v3, "qname":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    #@19
    move-result v0

    #@1a
    .line 1109
    .local v0, "index":I
    if-gez v0, :cond_0

    #@1c
    const-string/jumbo v2, ""

    #@1f
    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@20
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v0, 0x1

    #@22
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@27
    .line 1115
    .end local v0    # "index":I
    .end local v1    # "node":Lorg/w3c/dom/Node;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "qname":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@2a
    move-result-object v1

    #@2b
    .line 1118
    .restart local v1    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    .line 1119
    .restart local v3    # "qname":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    #@32
    move-result v0

    #@33
    .line 1121
    .restart local v0    # "index":I
    if-gez v0, :cond_1

    #@35
    const-string/jumbo v2, ""

    #@38
    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@39
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    #@3e
    .line 1099
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .locals 1
    .param p1, "node"    # I

    #@0
    .prologue
    .line 1761
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .locals 6
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 815
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    #@3
    move-result v3

    #@4
    .line 816
    .local v3, "type":I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@7
    move-result-object v1

    #@8
    .line 819
    .local v1, "node":Lorg/w3c/dom/Node;
    const/4 v4, 0x1

    #@9
    if-eq v4, v3, :cond_0

    #@b
    const/16 v4, 0x9

    #@d
    if-ne v4, v3, :cond_1

    #@f
    .line 822
    :cond_0
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    #@12
    move-result-object v0

    #@13
    .line 827
    .local v0, "buf":Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_0
    invoke-static {v1, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    #@16
    .line 829
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    #@19
    move-result v4

    #@1a
    if-lez v4, :cond_3

    #@1c
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result-object v2

    #@20
    .line 833
    .local v2, "s":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@23
    .line 836
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@25
    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    #@28
    move-result-object v4

    #@29
    return-object v4

    #@2a
    .line 820
    .end local v0    # "buf":Lorg/apache/xml/utils/FastStringBuffer;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    const/16 v4, 0xb

    #@2c
    if-eq v4, v3, :cond_0

    #@2e
    .line 838
    const/4 v4, 0x3

    #@2f
    if-eq v4, v3, :cond_2

    #@31
    const/4 v4, 0x4

    #@32
    if-ne v4, v3, :cond_6

    #@34
    .line 847
    :cond_2
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    #@37
    move-result-object v0

    #@38
    .line 848
    .restart local v0    # "buf":Lorg/apache/xml/utils/FastStringBuffer;
    :goto_1
    if-eqz v1, :cond_4

    #@3a
    .line 850
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@41
    .line 851
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@44
    move-result-object v1

    #@45
    goto :goto_1

    #@46
    .line 829
    :cond_3
    :try_start_1
    const-string/jumbo v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0

    #@4a
    .line 832
    .end local v2    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@4b
    .line 833
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@4e
    .line 832
    throw v4

    #@4f
    .line 853
    :cond_4
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    #@52
    move-result v4

    #@53
    if-lez v4, :cond_5

    #@55
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 854
    .restart local v2    # "s":Ljava/lang/String;
    :goto_2
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@5c
    .line 855
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@5e
    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    #@61
    move-result-object v4

    #@62
    return-object v4

    #@63
    .line 853
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, ""

    #@66
    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_2

    #@67
    .line 858
    .end local v0    # "buf":Lorg/apache/xml/utils/FastStringBuffer;
    .end local v2    # "s":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    #@69
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    #@70
    move-result-object v4

    #@71
    return-object v4
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1416
    const-string/jumbo v5, ""

    #@3
    .line 1417
    .local v5, "url":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@5
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    #@8
    move-result v6

    #@9
    const/16 v7, 0x9

    #@b
    if-ne v6, v7, :cond_0

    #@d
    .line 1418
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@f
    check-cast v0, Lorg/w3c/dom/Document;

    #@11
    .line 1420
    .local v0, "doc":Lorg/w3c/dom/Document;
    :goto_0
    if-eqz v0, :cond_3

    #@13
    .line 1422
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    #@16
    move-result-object v1

    #@17
    .line 1424
    .local v1, "doctype":Lorg/w3c/dom/DocumentType;
    if-eqz v1, :cond_3

    #@19
    .line 1426
    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    #@1c
    move-result-object v2

    #@1d
    .line 1427
    .local v2, "entities":Lorg/w3c/dom/NamedNodeMap;
    if-nez v2, :cond_1

    #@1f
    .line 1428
    return-object v5

    #@20
    .line 1418
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "doctype":Lorg/w3c/dom/DocumentType;
    .end local v2    # "entities":Lorg/w3c/dom/NamedNodeMap;
    :cond_0
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    #@22
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@25
    move-result-object v0

    #@26
    .restart local v0    # "doc":Lorg/w3c/dom/Document;
    goto :goto_0

    #@27
    .line 1429
    .restart local v1    # "doctype":Lorg/w3c/dom/DocumentType;
    .restart local v2    # "entities":Lorg/w3c/dom/NamedNodeMap;
    :cond_1
    invoke-interface {v2, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Lorg/w3c/dom/Entity;

    #@2d
    .line 1430
    .local v3, "entity":Lorg/w3c/dom/Entity;
    if-nez v3, :cond_2

    #@2f
    .line 1431
    return-object v5

    #@30
    .line 1433
    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    .line 1435
    .local v4, "notationName":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@36
    .line 1446
    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    .line 1448
    if-nez v5, :cond_3

    #@3c
    .line 1450
    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    .line 1461
    .end local v1    # "doctype":Lorg/w3c/dom/DocumentType;
    .end local v2    # "entities":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "entity":Lorg/w3c/dom/Entity;
    .end local v4    # "notationName":Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method public isAttributeSpecified(I)Z
    .locals 3
    .param p1, "attributeHandle"    # I

    #@0
    .prologue
    .line 1475
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    #@3
    move-result v1

    #@4
    .line 1477
    .local v1, "type":I
    const/4 v2, 0x2

    #@5
    if-ne v2, v1, :cond_0

    #@7
    .line 1479
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lorg/w3c/dom/Attr;

    #@d
    .line 1480
    .local v0, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getSpecified()Z

    #@10
    move-result v2

    #@11
    return v2

    #@12
    .line 1482
    .end local v0    # "attr":Lorg/w3c/dom/Attr;
    :cond_0
    const/4 v2, 0x0

    #@13
    return v2
.end method

.method public isWhitespace(I)Z
    .locals 6
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 870
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    #@4
    move-result v3

    #@5
    .line 871
    .local v3, "type":I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@8
    move-result-object v2

    #@9
    .line 872
    .local v2, "node":Lorg/w3c/dom/Node;
    const/4 v4, 0x3

    #@a
    if-eq v4, v3, :cond_0

    #@c
    const/4 v4, 0x4

    #@d
    if-ne v4, v3, :cond_2

    #@f
    .line 881
    :cond_0
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    #@12
    move-result-object v1

    #@13
    .line 882
    .local v1, "buf":Lorg/apache/xml/utils/FastStringBuffer;
    :goto_0
    if-eqz v2, :cond_1

    #@15
    .line 884
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v1, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@1c
    .line 885
    invoke-direct {p0, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@1f
    move-result-object v2

    #@20
    goto :goto_0

    #@21
    .line 887
    :cond_1
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    #@24
    move-result v4

    #@25
    invoke-virtual {v1, v5, v4}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    #@28
    move-result v0

    #@29
    .line 888
    .local v0, "b":Z
    invoke-static {v1}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@2c
    .line 889
    return v0

    #@2d
    .line 891
    .end local v0    # "b":Z
    .end local v1    # "buf":Lorg/apache/xml/utils/FastStringBuffer;
    :cond_2
    return v5
.end method

.method protected lookupNode(I)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "nodeIdentity"    # I

    #@0
    .prologue
    .line 621
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/w3c/dom/Node;

    #@8
    return-object v0
.end method

.method public needsTwoThreads()Z
    .locals 1

    #@0
    .prologue
    .line 1577
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected nextNode()Z
    .locals 23

    #@0
    .prologue
    .line 334
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    #@4
    move/from16 v18, v0

    #@6
    if-eqz v18, :cond_0

    #@8
    .line 335
    const/16 v18, 0x0

    #@a
    return v18

    #@b
    .line 339
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-object v14, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    #@f
    .line 340
    .local v14, "pos":Lorg/w3c/dom/Node;
    const/4 v11, 0x0

    #@10
    .line 341
    .local v11, "next":Lorg/w3c/dom/Node;
    const/4 v13, -0x1

    #@11
    .line 347
    .end local v11    # "next":Lorg/w3c/dom/Node;
    .local v13, "nexttype":I
    :cond_1
    invoke-interface {v14}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    #@14
    move-result v18

    #@15
    if-eqz v18, :cond_8

    #@17
    .line 349
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@1a
    move-result-object v11

    #@1b
    .line 353
    .local v11, "next":Lorg/w3c/dom/Node;
    if-eqz v11, :cond_2

    #@1d
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    #@20
    move-result v18

    #@21
    const/16 v19, 0xa

    #@23
    move/from16 v0, v19

    #@25
    move/from16 v1, v18

    #@27
    if-ne v0, v1, :cond_2

    #@29
    .line 354
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@2c
    move-result-object v11

    #@2d
    .line 358
    :cond_2
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    #@30
    move-result v18

    #@31
    const/16 v19, 0x5

    #@33
    move/from16 v0, v19

    #@35
    move/from16 v1, v18

    #@37
    if-eq v0, v1, :cond_3

    #@39
    .line 360
    move-object/from16 v0, p0

    #@3b
    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@3d
    move/from16 v18, v0

    #@3f
    move/from16 v0, v18

    #@41
    move-object/from16 v1, p0

    #@43
    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    #@45
    .line 361
    const/16 v18, -0x1

    #@47
    move/from16 v0, v18

    #@49
    move-object/from16 v1, p0

    #@4b
    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@4d
    .line 363
    move-object/from16 v0, p0

    #@4f
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    #@51
    move-object/from16 v18, v0

    #@53
    if-eqz v18, :cond_3

    #@55
    .line 366
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    #@59
    move-object/from16 v18, v0

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    #@5f
    move/from16 v19, v0

    #@61
    move-object/from16 v0, p0

    #@63
    move/from16 v1, v19

    #@65
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    #@68
    move-result v19

    #@69
    move-object/from16 v0, v18

    #@6b
    move/from16 v1, v19

    #@6d
    move-object/from16 v2, p0

    #@6f
    invoke-interface {v0, v1, v2}, Lorg/apache/xml/dtm/DTMWSFilter;->getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S

    #@72
    move-result v17

    #@73
    .line 367
    .local v17, "wsv":S
    const/16 v18, 0x3

    #@75
    move/from16 v0, v18

    #@77
    move/from16 v1, v17

    #@79
    if-ne v0, v1, :cond_6

    #@7b
    .line 368
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getShouldStripWhitespace()Z

    #@7e
    move-result v15

    #@7f
    .line 370
    :goto_0
    move-object/from16 v0, p0

    #@81
    invoke-virtual {v0, v15}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->pushShouldStripWhitespace(Z)V

    #@84
    .line 433
    .end local v11    # "next":Lorg/w3c/dom/Node;
    .end local v17    # "wsv":S
    :cond_3
    :goto_1
    if-eqz v11, :cond_4

    #@86
    .line 434
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    #@89
    move-result v13

    #@8a
    .line 441
    :cond_4
    const/16 v18, 0x5

    #@8c
    move/from16 v0, v18

    #@8e
    if-ne v0, v13, :cond_5

    #@90
    .line 442
    move-object v14, v11

    #@91
    .line 444
    :cond_5
    const/16 v18, 0x5

    #@93
    move/from16 v0, v18

    #@95
    if-eq v0, v13, :cond_1

    #@97
    .line 447
    if-nez v11, :cond_10

    #@99
    .line 449
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@9d
    move-object/from16 v18, v0

    #@9f
    const/16 v19, -0x1

    #@a1
    const/16 v20, 0x0

    #@a3
    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@a6
    .line 450
    const/16 v18, 0x1

    #@a8
    move/from16 v0, v18

    #@aa
    move-object/from16 v1, p0

    #@ac
    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    #@ae
    .line 451
    const/16 v18, 0x0

    #@b0
    move-object/from16 v0, v18

    #@b2
    move-object/from16 v1, p0

    #@b4
    iput-object v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    #@b6
    .line 460
    const/16 v18, 0x0

    #@b8
    return v18

    #@b9
    .line 369
    .restart local v11    # "next":Lorg/w3c/dom/Node;
    .restart local v17    # "wsv":S
    :cond_6
    const/16 v18, 0x2

    #@bb
    move/from16 v0, v18

    #@bd
    move/from16 v1, v17

    #@bf
    if-ne v0, v1, :cond_7

    #@c1
    const/4 v15, 0x1

    #@c2
    .local v15, "shouldStrip":Z
    goto :goto_0

    #@c3
    .end local v15    # "shouldStrip":Z
    :cond_7
    const/4 v15, 0x0

    #@c4
    .restart local v15    # "shouldStrip":Z
    goto :goto_0

    #@c5
    .line 378
    .end local v11    # "next":Lorg/w3c/dom/Node;
    .end local v15    # "shouldStrip":Z
    .end local v17    # "wsv":S
    :cond_8
    move-object/from16 v0, p0

    #@c7
    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@c9
    move/from16 v18, v0

    #@cb
    const/16 v19, -0x1

    #@cd
    move/from16 v0, v18

    #@cf
    move/from16 v1, v19

    #@d1
    if-eq v0, v1, :cond_9

    #@d3
    .line 382
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@d7
    move-object/from16 v18, v0

    #@d9
    move-object/from16 v0, p0

    #@db
    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@dd
    move/from16 v19, v0

    #@df
    invoke-virtual/range {v18 .. v19}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@e2
    move-result v18

    #@e3
    const/16 v19, -0x2

    #@e5
    move/from16 v0, v18

    #@e7
    move/from16 v1, v19

    #@e9
    if-ne v0, v1, :cond_9

    #@eb
    .line 383
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@ef
    move-object/from16 v18, v0

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@f5
    move/from16 v19, v0

    #@f7
    const/16 v20, -0x1

    #@f9
    move-object/from16 v0, v18

    #@fb
    move/from16 v1, v20

    #@fd
    move/from16 v2, v19

    #@ff
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@102
    .line 386
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    #@104
    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    #@106
    move/from16 v18, v0

    #@108
    const/16 v19, -0x1

    #@10a
    move/from16 v0, v18

    #@10c
    move/from16 v1, v19

    #@10e
    if-eq v0, v1, :cond_b

    #@110
    .line 390
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@113
    move-result-object v11

    #@114
    .line 391
    .restart local v11    # "next":Lorg/w3c/dom/Node;
    if-eqz v11, :cond_a

    #@116
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    #@119
    move-result v18

    #@11a
    const/16 v19, 0xa

    #@11c
    move/from16 v0, v19

    #@11e
    move/from16 v1, v18

    #@120
    if-ne v0, v1, :cond_a

    #@122
    .line 392
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@125
    move-result-object v11

    #@126
    .line 394
    :cond_a
    if-eqz v11, :cond_c

    #@128
    .line 429
    .end local v11    # "next":Lorg/w3c/dom/Node;
    :cond_b
    move-object/from16 v0, p0

    #@12a
    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    #@12c
    move/from16 v18, v0

    #@12e
    const/16 v19, -0x1

    #@130
    move/from16 v0, v18

    #@132
    move/from16 v1, v19

    #@134
    if-ne v0, v1, :cond_3

    #@136
    .line 430
    const/4 v11, 0x0

    #@137
    .local v11, "next":Lorg/w3c/dom/Node;
    goto/16 :goto_1

    #@139
    .line 398
    .local v11, "next":Lorg/w3c/dom/Node;
    :cond_c
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@13c
    move-result-object v14

    #@13d
    .line 399
    if-nez v14, :cond_d

    #@13f
    .line 412
    :cond_d
    if-eqz v14, :cond_e

    #@141
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    #@144
    move-result v18

    #@145
    const/16 v19, 0x5

    #@147
    move/from16 v0, v19

    #@149
    move/from16 v1, v18

    #@14b
    if-eq v0, v1, :cond_9

    #@14d
    .line 420
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->popShouldStripWhitespace()V

    #@150
    .line 422
    move-object/from16 v0, p0

    #@152
    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@154
    move/from16 v18, v0

    #@156
    const/16 v19, -0x1

    #@158
    move/from16 v0, v18

    #@15a
    move/from16 v1, v19

    #@15c
    if-ne v0, v1, :cond_f

    #@15e
    .line 423
    move-object/from16 v0, p0

    #@160
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@162
    move-object/from16 v18, v0

    #@164
    move-object/from16 v0, p0

    #@166
    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    #@168
    move/from16 v19, v0

    #@16a
    const/16 v20, -0x1

    #@16c
    move-object/from16 v0, v18

    #@16e
    move/from16 v1, v20

    #@170
    move/from16 v2, v19

    #@172
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@175
    .line 426
    :goto_3
    move-object/from16 v0, p0

    #@177
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@179
    move-object/from16 v18, v0

    #@17b
    move-object/from16 v0, p0

    #@17d
    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    #@17f
    move/from16 v19, v0

    #@181
    move/from16 v0, v19

    #@183
    move-object/from16 v1, p0

    #@185
    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@187
    invoke-virtual/range {v18 .. v19}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    #@18a
    move-result v18

    #@18b
    move/from16 v0, v18

    #@18d
    move-object/from16 v1, p0

    #@18f
    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    #@191
    goto/16 :goto_2

    #@193
    .line 425
    :cond_f
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@197
    move-object/from16 v18, v0

    #@199
    move-object/from16 v0, p0

    #@19b
    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@19d
    move/from16 v19, v0

    #@19f
    const/16 v20, -0x1

    #@1a1
    move-object/from16 v0, v18

    #@1a3
    move/from16 v1, v20

    #@1a5
    move/from16 v2, v19

    #@1a7
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@1aa
    goto :goto_3

    #@1ab
    .line 478
    .end local v11    # "next":Lorg/w3c/dom/Node;
    :cond_10
    const/16 v16, 0x0

    #@1ad
    .line 479
    .local v16, "suppressNode":Z
    const/4 v9, 0x0

    #@1ae
    .line 481
    .local v9, "lastTextNode":Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    #@1b1
    move-result v13

    #@1b2
    .line 484
    const/16 v18, 0x3

    #@1b4
    move/from16 v0, v18

    #@1b6
    if-eq v0, v13, :cond_11

    #@1b8
    const/16 v18, 0x4

    #@1ba
    move/from16 v0, v18

    #@1bc
    if-ne v0, v13, :cond_14

    #@1be
    .line 487
    :cond_11
    move-object/from16 v0, p0

    #@1c0
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    #@1c2
    move-object/from16 v18, v0

    #@1c4
    if-eqz v18, :cond_13

    #@1c6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getShouldStripWhitespace()Z

    #@1c9
    move-result v16

    #@1ca
    .line 491
    .end local v16    # "suppressNode":Z
    :goto_4
    move-object v10, v11

    #@1cb
    .line 492
    .end local v9    # "lastTextNode":Lorg/w3c/dom/Node;
    .local v10, "n":Lorg/w3c/dom/Node;
    :goto_5
    if-eqz v10, :cond_15

    #@1cd
    .line 494
    move-object v9, v10

    #@1ce
    .line 496
    .local v9, "lastTextNode":Lorg/w3c/dom/Node;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    #@1d1
    move-result v18

    #@1d2
    const/16 v19, 0x3

    #@1d4
    move/from16 v0, v19

    #@1d6
    move/from16 v1, v18

    #@1d8
    if-ne v0, v1, :cond_12

    #@1da
    .line 497
    const/4 v13, 0x3

    #@1db
    .line 501
    :cond_12
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@1de
    move-result-object v18

    #@1df
    invoke-static/range {v18 .. v18}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(Ljava/lang/String;)Z

    #@1e2
    move-result v18

    #@1e3
    .line 500
    and-int v16, v16, v18

    #@1e5
    .line 503
    .local v16, "suppressNode":Z
    move-object/from16 v0, p0

    #@1e7
    invoke-direct {v0, v10}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@1ea
    move-result-object v10

    #@1eb
    goto :goto_5

    #@1ec
    .line 487
    .end local v10    # "n":Lorg/w3c/dom/Node;
    .local v9, "lastTextNode":Lorg/w3c/dom/Node;
    .local v16, "suppressNode":Z
    :cond_13
    const/16 v16, 0x0

    #@1ee
    goto :goto_4

    #@1ef
    .line 512
    :cond_14
    const/16 v18, 0x7

    #@1f1
    move/from16 v0, v18

    #@1f3
    if-ne v0, v13, :cond_15

    #@1f5
    .line 514
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@1f8
    move-result-object v18

    #@1f9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@1fc
    move-result-object v18

    #@1fd
    const-string/jumbo v19, "xml"

    #@200
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@203
    move-result v16

    #@204
    .line 518
    .end local v9    # "lastTextNode":Lorg/w3c/dom/Node;
    .end local v16    # "suppressNode":Z
    :cond_15
    if-nez v16, :cond_1a

    #@206
    .line 523
    move-object/from16 v0, p0

    #@208
    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    #@20a
    move/from16 v18, v0

    #@20c
    move-object/from16 v0, p0

    #@20e
    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@210
    move/from16 v19, v0

    #@212
    move-object/from16 v0, p0

    #@214
    move/from16 v1, v18

    #@216
    move/from16 v2, v19

    #@218
    invoke-virtual {v0, v11, v1, v2, v13}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    #@21b
    move-result v12

    #@21c
    .line 526
    .local v12, "nextindex":I
    move-object/from16 v0, p0

    #@21e
    iput v12, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    #@220
    .line 528
    const/16 v18, 0x1

    #@222
    move/from16 v0, v18

    #@224
    if-ne v0, v13, :cond_1a

    #@226
    .line 530
    const/4 v5, -0x1

    #@227
    .line 533
    .local v5, "attrIndex":I
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@22a
    move-result-object v6

    #@22b
    .line 534
    .local v6, "attrs":Lorg/w3c/dom/NamedNodeMap;
    if-nez v6, :cond_17

    #@22d
    const/4 v7, 0x0

    #@22e
    .line 535
    .local v7, "attrsize":I
    :goto_6
    if-lez v7, :cond_18

    #@230
    .line 537
    const/4 v8, 0x0

    #@231
    .local v8, "i":I
    :goto_7
    if-ge v8, v7, :cond_18

    #@233
    .line 542
    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@236
    move-result-object v18

    #@237
    .line 543
    const/16 v19, -0x1

    #@239
    .line 542
    move-object/from16 v0, p0

    #@23b
    move-object/from16 v1, v18

    #@23d
    move/from16 v2, v19

    #@23f
    invoke-virtual {v0, v1, v12, v5, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    #@242
    move-result v5

    #@243
    .line 544
    move-object/from16 v0, p0

    #@245
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@247
    move-object/from16 v18, v0

    #@249
    const/16 v19, -0x1

    #@24b
    move-object/from16 v0, v18

    #@24d
    move/from16 v1, v19

    #@24f
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@252
    .line 555
    move-object/from16 v0, p0

    #@254
    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    #@256
    move/from16 v18, v0

    #@258
    if-nez v18, :cond_16

    #@25a
    .line 556
    const-string/jumbo v18, "xmlns:xml"

    #@25d
    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@260
    move-result-object v19

    #@261
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@264
    move-result-object v19

    #@265
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@268
    move-result v18

    #@269
    .line 555
    if-eqz v18, :cond_16

    #@26b
    .line 557
    const/16 v18, 0x1

    #@26d
    move/from16 v0, v18

    #@26f
    move-object/from16 v1, p0

    #@271
    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    #@273
    .line 537
    :cond_16
    add-int/lit8 v8, v8, 0x1

    #@275
    goto :goto_7

    #@276
    .line 534
    .end local v7    # "attrsize":I
    .end local v8    # "i":I
    :cond_17
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@279
    move-result v7

    #@27a
    .restart local v7    # "attrsize":I
    goto :goto_6

    #@27b
    .line 562
    :cond_18
    move-object/from16 v0, p0

    #@27d
    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    #@27f
    move/from16 v18, v0

    #@281
    if-nez v18, :cond_19

    #@283
    .line 570
    new-instance v20, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;

    #@285
    move-object/from16 v18, v11

    #@287
    .line 571
    check-cast v18, Lorg/w3c/dom/Element;

    #@289
    const-string/jumbo v21, "xml"

    #@28c
    const-string/jumbo v22, "http://www.w3.org/XML/1998/namespace"

    #@28f
    .line 572
    const/16 v19, -0x1

    #@291
    move/from16 v0, v19

    #@293
    if-ne v5, v0, :cond_1d

    #@295
    move/from16 v19, v12

    #@297
    :goto_8
    add-int/lit8 v19, v19, 0x1

    #@299
    move-object/from16 v0, p0

    #@29b
    move/from16 v1, v19

    #@29d
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    #@2a0
    move-result v19

    #@2a1
    .line 570
    move-object/from16 v0, v20

    #@2a3
    move-object/from16 v1, v18

    #@2a5
    move-object/from16 v2, v21

    #@2a7
    move-object/from16 v3, v22

    #@2a9
    move/from16 v4, v19

    #@2ab
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)V

    #@2ae
    .line 574
    const/16 v18, -0x1

    #@2b0
    .line 570
    move-object/from16 v0, p0

    #@2b2
    move-object/from16 v1, v20

    #@2b4
    move/from16 v2, v18

    #@2b6
    invoke-virtual {v0, v1, v12, v5, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    #@2b9
    move-result v5

    #@2ba
    .line 575
    move-object/from16 v0, p0

    #@2bc
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2be
    move-object/from16 v18, v0

    #@2c0
    const/16 v19, -0x1

    #@2c2
    move-object/from16 v0, v18

    #@2c4
    move/from16 v1, v19

    #@2c6
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@2c9
    .line 576
    const/16 v18, 0x1

    #@2cb
    move/from16 v0, v18

    #@2cd
    move-object/from16 v1, p0

    #@2cf
    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    #@2d1
    .line 578
    :cond_19
    const/16 v18, -0x1

    #@2d3
    move/from16 v0, v18

    #@2d5
    if-eq v5, v0, :cond_1a

    #@2d7
    .line 579
    move-object/from16 v0, p0

    #@2d9
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    #@2db
    move-object/from16 v18, v0

    #@2dd
    const/16 v19, -0x1

    #@2df
    move-object/from16 v0, v18

    #@2e1
    move/from16 v1, v19

    #@2e3
    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    #@2e6
    .line 584
    .end local v5    # "attrIndex":I
    .end local v6    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v7    # "attrsize":I
    .end local v12    # "nextindex":I
    :cond_1a
    const/16 v18, 0x3

    #@2e8
    move/from16 v0, v18

    #@2ea
    if-eq v0, v13, :cond_1b

    #@2ec
    const/16 v18, 0x4

    #@2ee
    move/from16 v0, v18

    #@2f0
    if-ne v0, v13, :cond_1c

    #@2f2
    .line 588
    :cond_1b
    move-object v11, v9

    #@2f3
    .line 592
    :cond_1c
    move-object/from16 v0, p0

    #@2f5
    iput-object v11, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    #@2f7
    .line 593
    const/16 v18, 0x1

    #@2f9
    return v18

    #@2fa
    .restart local v5    # "attrIndex":I
    .restart local v6    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .restart local v7    # "attrsize":I
    .restart local v12    # "nextindex":I
    :cond_1d
    move/from16 v19, v5

    #@2fc
    .line 572
    goto :goto_8
.end method

.method public setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .locals 0
    .param p1, "source"    # Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    #@0
    .prologue
    .line 1491
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1748
    return-void
.end method
