.class public Lcom/android/server/wifi/hotspot2/omadm/MOTree;
.super Ljava/lang/Object;
.source "MOTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    }
.end annotation


# static fields
.field public static final DDFNameTag:Ljava/lang/String; = "DDFName"

.field public static final MgmtTreeTag:Ljava/lang/String; = "MgmtTree"

.field public static final NodeNameTag:Ljava/lang/String; = "NodeName"

.field public static final NodeTag:Ljava/lang/String; = "Node"

.field public static final PathTag:Ljava/lang/String; = "Path"

.field public static final RTPropTag:Ljava/lang/String; = "RTProperties"

.field public static final TypeTag:Ljava/lang/String; = "Type"

.field public static final ValueTag:Ljava/lang/String; = "Value"


# instance fields
.field private final mDtdRev:Ljava/lang/String;

.field private final mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

.field private final mUrn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V
    .locals 6
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p2, "urn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    #@6
    move-result-object v4

    #@7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .line 30
    .local v2, "children":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v3, 0x0

    #@c
    .line 32
    .local v3, "dtdRev":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@18
    .line 34
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, "VerDTD"

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_0

    #@25
    .line 35
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 36
    .local v3, "dtdRev":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@2c
    .line 41
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v3    # "dtdRev":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    #@2e
    .line 42
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    #@30
    .line 44
    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;

    #@32
    invoke-direct {v4, p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;-><init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V

    #@35
    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@37
    .line 46
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    #@3a
    move-result-object v4

    #@3b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e
    move-result-object v1

    #@3f
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_2

    #@45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@4b
    .line 47
    .restart local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@4d
    invoke-static {v4, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    #@50
    goto :goto_0

    #@51
    .line 27
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V
    .locals 0
    .param p1, "urn"    # Ljava/lang/String;
    .param p2, "rev"    # Ljava/lang/String;
    .param p3, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    #@5
    .line 53
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    #@7
    .line 54
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@9
    .line 51
    return-void
.end method

.method public static buildMgmtTree(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 2
    .param p0, "urn"    # Ljava/lang/String;
    .param p1, "rev"    # Ljava/lang/String;
    .param p2, "root"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@0
    .prologue
    .line 67
    const-string/jumbo v1, "urn:wfa:mo:hotspot2dot0-perprovidersubscription:1.0"

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 72
    :cond_0
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;

    #@b
    const-string/jumbo v1, "1.2"

    #@e
    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/ManagementTreeRoot;-><init>(Ljava/lang/String;)V

    #@11
    .line 73
    .local v0, "realRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    #@14
    .line 74
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@16
    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    #@19
    return-object v1

    #@1a
    .line 67
    .end local v0    # "realRoot":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    :cond_1
    const-string/jumbo v1, "urn:oma:mo:oma-dm-devinfo:1.0"

    #@1d
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_0

    #@23
    const-string/jumbo v1, "urn:oma:mo:oma-dm-devdetail:1.0"

    #@26
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    if-nez v1, :cond_0

    #@2c
    const-string/jumbo v1, "urn:wfa:mo-ext:hotspot2dot0-devdetail-ext:1.0"

    #@2f
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v1

    #@33
    if-nez v1, :cond_0

    #@35
    .line 76
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@37
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    #@3a
    return-object v1
.end method

.method private static buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V
    .locals 20
    .param p0, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@3
    move-result-object v17

    #@4
    const-string/jumbo v18, "Node"

    #@7
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v17

    #@b
    if-nez v17, :cond_0

    #@d
    .line 123
    new-instance v17, Ljava/io/IOException;

    #@f
    new-instance v18, Ljava/lang/StringBuilder;

    #@11
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v19, "Node is a \'"

    #@17
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v18

    #@1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@1e
    move-result-object v19

    #@1f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v18

    #@23
    const-string/jumbo v19, "\' instead of a \'Node\'"

    #@26
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v18

    #@2a
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v18

    #@2e
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@31
    throw v17

    #@32
    .line 125
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    #@34
    const/16 v17, 0x3

    #@36
    move/from16 v0, v17

    #@38
    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    #@3b
    .line 126
    .local v4, "checkMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v8, 0x0

    #@3c
    .line 127
    .local v8, "context":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    #@3e
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@41
    .line 128
    .local v16, "values":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;>;"
    new-instance v7, Ljava/util/ArrayList;

    #@43
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@46
    .line 130
    .local v7, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v9, 0x0

    #@47
    .line 132
    .local v9, "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    #@4a
    move-result-object v17

    #@4b
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v6

    #@4f
    .end local v8    # "context":Ljava/lang/String;
    .end local v9    # "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    .local v6, "child$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v17

    #@53
    if-eqz v17, :cond_e

    #@55
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v5

    #@59
    check-cast v5, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@5b
    .line 133
    .local v5, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@5e
    move-result-object v17

    #@5f
    move-object/from16 v0, v17

    #@61
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    move-result-object v13

    #@65
    check-cast v13, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@67
    .line 135
    .local v13, "old":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@6a
    move-result-object v17

    #@6b
    const-string/jumbo v18, "NodeName"

    #@6e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v18

    #@72
    if-eqz v18, :cond_2

    #@74
    .line 137
    if-eqz v9, :cond_7

    #@76
    .line 138
    new-instance v17, Ljava/io/IOException;

    #@78
    const-string/jumbo v18, "NodeName not expected"

    #@7b
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v17

    #@7f
    .line 135
    :cond_2
    const-string/jumbo v18, "Path"

    #@82
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v18

    #@86
    if-eqz v18, :cond_4

    #@88
    .line 143
    if-eqz v9, :cond_3

    #@8a
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    #@8d
    move-result-object v17

    #@8e
    if-eqz v17, :cond_8

    #@90
    .line 144
    :cond_3
    new-instance v17, Ljava/io/IOException;

    #@92
    const-string/jumbo v18, "Path not expected"

    #@95
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@98
    throw v17

    #@99
    .line 135
    :cond_4
    const-string/jumbo v18, "Value"

    #@9c
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result v18

    #@a0
    if-eqz v18, :cond_5

    #@a2
    .line 149
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@a5
    move-result v17

    #@a6
    if-nez v17, :cond_9

    #@a8
    .line 150
    new-instance v17, Ljava/io/IOException;

    #@aa
    const-string/jumbo v18, "Value in constructed node"

    #@ad
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b0
    throw v17

    #@b1
    .line 135
    :cond_5
    const-string/jumbo v18, "RTProperties"

    #@b4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b7
    move-result v18

    #@b8
    if-eqz v18, :cond_6

    #@ba
    .line 159
    if-eqz v13, :cond_c

    #@bc
    .line 160
    new-instance v17, Ljava/io/IOException;

    #@be
    const-string/jumbo v18, "Duplicate RTProperties"

    #@c1
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c4
    throw v17

    #@c5
    .line 135
    :cond_6
    const-string/jumbo v18, "Node"

    #@c8
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result v17

    #@cc
    if-eqz v17, :cond_1

    #@ce
    .line 169
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    #@d1
    move-result v17

    #@d2
    if-nez v17, :cond_d

    #@d4
    .line 170
    new-instance v17, Ljava/io/IOException;

    #@d6
    new-instance v18, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v19, "Scalar node "

    #@de
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v18

    #@e2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    #@e5
    move-result-object v19

    #@e6
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v18

    #@ea
    const-string/jumbo v19, " has Node child"

    #@ed
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v18

    #@f1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v18

    #@f5
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f8
    throw v17

    #@f9
    .line 139
    :cond_7
    new-instance v9, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;

    #@fb
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    #@fe
    move-result-object v17

    #@ff
    const/16 v18, 0x0

    #@101
    move-object/from16 v0, v17

    #@103
    move-object/from16 v1, v18

    #@105
    invoke-direct {v9, v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;-><init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;)V

    #@108
    .line 141
    .local v9, "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    goto/16 :goto_0

    #@10a
    .line 145
    .end local v9    # "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    :cond_8
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    #@10d
    move-result-object v17

    #@10e
    move-object/from16 v0, v17

    #@110
    invoke-static {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->-wrap0(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V

    #@113
    goto/16 :goto_0

    #@115
    .line 151
    :cond_9
    if-eqz v9, :cond_a

    #@117
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getValue()Ljava/lang/String;

    #@11a
    move-result-object v17

    #@11b
    if-eqz v17, :cond_b

    #@11d
    .line 152
    :cond_a
    new-instance v17, Ljava/io/IOException;

    #@11f
    const-string/jumbo v18, "Value not expected"

    #@122
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@125
    throw v17

    #@126
    .line 153
    :cond_b
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    #@129
    move-result-object v17

    #@12a
    move-object/from16 v0, v17

    #@12c
    invoke-static {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->-wrap1(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V

    #@12f
    .line 154
    move-object/from16 v0, v16

    #@131
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@134
    .line 155
    const/4 v9, 0x0

    #@135
    .line 157
    .local v9, "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    goto/16 :goto_0

    #@137
    .line 161
    .end local v9    # "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    :cond_c
    const-string/jumbo v17, "Type"

    #@13a
    move-object/from16 v0, v17

    #@13c
    invoke-static {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@13f
    move-result-object v15

    #@140
    .line 162
    .local v15, "typeNode":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    const-string/jumbo v17, "DDFName"

    #@143
    move-object/from16 v0, v17

    #@145
    invoke-static {v15, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@148
    move-result-object v10

    #@149
    .line 163
    .local v10, "ddfName":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    #@14c
    move-result-object v8

    #@14d
    .line 164
    .local v8, "context":Ljava/lang/String;
    if-nez v8, :cond_1

    #@14f
    .line 165
    new-instance v17, Ljava/io/IOException;

    #@151
    const-string/jumbo v18, "No text in DDFName"

    #@154
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@157
    throw v17

    #@158
    .line 171
    .end local v8    # "context":Ljava/lang/String;
    .end local v10    # "ddfName":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v15    # "typeNode":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_d
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15b
    goto/16 :goto_0

    #@15d
    .line 177
    .end local v5    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v13    # "old":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    #@160
    move-result v17

    #@161
    if-eqz v17, :cond_10

    #@163
    .line 178
    if-nez v9, :cond_f

    #@165
    .line 179
    new-instance v17, Ljava/io/IOException;

    #@167
    const-string/jumbo v18, "Missing name"

    #@16a
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@16d
    throw v17

    #@16e
    .line 181
    :cond_f
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getName()Ljava/lang/String;

    #@171
    move-result-object v17

    #@172
    .line 182
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    #@175
    move-result-object v18

    #@176
    const/16 v19, 0x0

    #@178
    .line 181
    move-object/from16 v0, p0

    #@17a
    move-object/from16 v1, v17

    #@17c
    move-object/from16 v2, v19

    #@17e
    move-object/from16 v3, v18

    #@180
    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@183
    move-result-object v14

    #@184
    .line 184
    .local v14, "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@187
    move-result-object v6

    #@188
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@18b
    move-result v17

    #@18c
    if-eqz v17, :cond_12

    #@18e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@191
    move-result-object v5

    #@192
    check-cast v5, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@194
    .line 185
    .restart local v5    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-static {v14, v5}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    #@197
    goto :goto_1

    #@198
    .line 188
    .end local v5    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v14    # "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_10
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@19b
    move-result v17

    #@19c
    if-nez v17, :cond_11

    #@19e
    .line 189
    new-instance v17, Ljava/io/IOException;

    #@1a0
    const-string/jumbo v18, "Got both sub nodes and value(s)"

    #@1a3
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a6
    throw v17

    #@1a7
    .line 191
    :cond_11
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1aa
    move-result-object v12

    #@1ab
    .local v12, "nodeData$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@1ae
    move-result v17

    #@1af
    if-eqz v17, :cond_12

    #@1b1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b4
    move-result-object v11

    #@1b5
    check-cast v11, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;

    #@1b7
    .line 192
    .local v11, "nodeData":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getName()Ljava/lang/String;

    #@1ba
    move-result-object v17

    #@1bb
    .line 193
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getValue()Ljava/lang/String;

    #@1be
    move-result-object v18

    #@1bf
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    #@1c2
    move-result-object v19

    #@1c3
    .line 192
    move-object/from16 v0, p0

    #@1c5
    move-object/from16 v1, v17

    #@1c7
    move-object/from16 v2, v18

    #@1c9
    move-object/from16 v3, v19

    #@1cb
    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1ce
    goto :goto_2

    #@1cf
    .line 121
    .end local v11    # "nodeData":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    .end local v12    # "nodeData$iterator":Ljava/util/Iterator;
    :cond_12
    return-void
.end method

.method private static getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .locals 4
    .param p0, "node"    # Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    if-nez p0, :cond_0

    #@2
    .line 200
    new-instance v1, Ljava/io/IOException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "No node for "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@23
    move-result v1

    #@24
    const/4 v2, 0x1

    #@25
    if-eq v1, v2, :cond_1

    #@27
    .line 202
    new-instance v1, Ljava/io/IOException;

    #@29
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v3, "Expected "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    const-string/jumbo v3, " to have exactly one child"

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v1

    #@4c
    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    #@4f
    move-result-object v1

    #@50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@53
    move-result-object v1

    #@54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@5a
    .line 204
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v1

    #@62
    if-nez v1, :cond_2

    #@64
    .line 205
    new-instance v1, Ljava/io/IOException;

    #@66
    new-instance v2, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v3, "Expected "

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    const-string/jumbo v3, " to have child \'"

    #@7d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    .line 206
    const-string/jumbo v3, "\' instead of \'"

    #@88
    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    .line 206
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    .line 206
    const-string/jumbo v3, "\'"

    #@97
    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v1

    #@a3
    .line 207
    :cond_2
    return-object v0
.end method

.method public static hasMgmtTreeTag(Ljava/lang/String;)Z
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 81
    const/4 v2, 0x0

    #@2
    .local v2, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-ge v2, v0, :cond_1

    #@8
    .line 82
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v6

    #@c
    .line 83
    .local v6, "ch":C
    const/16 v0, 0x20

    #@e
    if-le v6, v0, :cond_0

    #@10
    .line 84
    const-string/jumbo v3, "<MgmtTree>"

    #@13
    .line 85
    const-string/jumbo v0, "MgmtTree"

    #@16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@19
    move-result v0

    #@1a
    add-int/lit8 v5, v0, 0x2

    #@1c
    .line 84
    const/4 v1, 0x1

    #@1d
    move-object v0, p0

    #@1e
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@21
    move-result v0

    #@22
    return v0

    #@23
    .line 81
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 88
    .end local v6    # "ch":C
    :cond_1
    return v4
.end method

.method public static unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    const/4 v3, 0x1

    #@1
    .line 240
    .local v3, "strip":Z
    new-instance v4, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 242
    .local v4, "tree":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@9
    move-result v1

    #@a
    .line 243
    .local v1, "octet":I
    if-gez v1, :cond_1

    #@c
    .line 244
    new-instance v7, Ljava/io/FileNotFoundException;

    #@e
    invoke-direct {v7}, Ljava/io/FileNotFoundException;-><init>()V

    #@11
    throw v7

    #@12
    .line 245
    :cond_1
    const/16 v7, 0x20

    #@14
    if-le v1, v7, :cond_2

    #@16
    .line 246
    int-to-char v7, v1

    #@17
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 247
    const/4 v3, 0x0

    #@1b
    goto :goto_0

    #@1c
    .line 248
    :cond_2
    if-nez v3, :cond_0

    #@1e
    .line 252
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v7

    #@22
    const-string/jumbo v8, "tree"

    #@25
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v7

    #@29
    if-nez v7, :cond_3

    #@2b
    .line 253
    new-instance v7, Ljava/io/IOException;

    #@2d
    new-instance v8, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v9, "Not a tree: "

    #@35
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v8

    #@39
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v8

    #@3d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v8

    #@41
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v7

    #@45
    .line 256
    :cond_3
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->deserializeString(Ljava/io/InputStream;)Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    .line 257
    .local v6, "version":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@4c
    move-result v0

    #@4d
    .line 258
    .local v0, "next":I
    const/16 v7, 0x28

    #@4f
    if-eq v0, v7, :cond_4

    #@51
    .line 259
    new-instance v7, Ljava/io/IOException;

    #@53
    const-string/jumbo v8, "Expected URN in tree definition"

    #@56
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@59
    throw v7

    #@5a
    .line 261
    :cond_4
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->readURN(Ljava/io/InputStream;)Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    .line 263
    .local v5, "urn":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@61
    move-result-object v2

    #@62
    .line 265
    .local v2, "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    new-instance v7, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@64
    invoke-direct {v7, v5, v6, v2}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    #@67
    return-object v7
.end method


# virtual methods
.method public getDtdRev()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@2
    return-object v0
.end method

.method public getUrn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public marshal(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 232
    const-string/jumbo v0, "tree "

    #@4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@d
    .line 233
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    #@f
    invoke-static {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    #@12
    .line 234
    const-string/jumbo v0, "(%s)\n"

    #@15
    const/4 v1, 0x1

    #@16
    new-array v1, v1, [Ljava/lang/Object;

    #@18
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    #@1a
    aput-object v2, v1, v3

    #@1c
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    #@29
    .line 235
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@2b
    invoke-virtual {v0, p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->marshal(Ljava/io/OutputStream;I)V

    #@2e
    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 225
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "MO Tree v"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, ", urn "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, ")\n"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 226
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    return-object v1
.end method

.method public toXml()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 270
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@7
    invoke-virtual {v1, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->toXml(Ljava/lang/StringBuilder;)V

    #@a
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method
