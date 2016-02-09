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
.field private static final DDFNameTag:Ljava/lang/String; = "DDFName"

.field public static final MgmtTreeTag:Ljava/lang/String; = "MgmtTree"

.field private static final NodeNameTag:Ljava/lang/String; = "NodeName"

.field private static final NodeTag:Ljava/lang/String; = "Node"

.field private static final PathTag:Ljava/lang/String; = "Path"

.field private static final RTPropTag:Ljava/lang/String; = "RTProperties"

.field private static final TypeTag:Ljava/lang/String; = "Type"

.field private static final ValueTag:Ljava/lang/String; = "Value"


# instance fields
.field private final mDtdRev:Ljava/lang/String;

.field private final mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

.field private final mUrn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V
    .locals 7
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
    const/4 v6, 0x0

    #@1
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 29
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    #@7
    move-result-object v4

    #@8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .line 31
    .local v2, "children":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v3, 0x0

    #@d
    .line 33
    .local v3, "dtdRev":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@19
    .line 35
    .local v0, "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    const-string/jumbo v5, "VerDTD"

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_0

    #@26
    .line 36
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 37
    .local v3, "dtdRev":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@2d
    .line 42
    .end local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v3    # "dtdRev":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    #@2f
    .line 43
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    #@31
    .line 45
    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@33
    const-string/jumbo v5, "MgmtTree"

    #@36
    invoke-direct {v4, v6, v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    #@39
    iput-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@3b
    .line 47
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getChildren()Ljava/util/List;

    #@3e
    move-result-object v4

    #@3f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v1

    #@43
    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_2

    #@49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@4f
    .line 48
    .restart local v0    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@51
    invoke-static {v4, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    #@54
    goto :goto_0

    #@55
    .line 28
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
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mUrn:Ljava/lang/String;

    #@5
    .line 54
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    #@7
    .line 55
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@9
    .line 52
    return-void
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
    .line 89
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
    .line 90
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
    .line 92
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    #@34
    const/16 v17, 0x3

    #@36
    move/from16 v0, v17

    #@38
    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    #@3b
    .line 93
    .local v4, "checkMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v8, 0x0

    #@3c
    .line 94
    .local v8, "context":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    #@3e
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    #@41
    .line 95
    .local v16, "values":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;>;"
    new-instance v7, Ljava/util/ArrayList;

    #@43
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@46
    .line 97
    .local v7, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/omadm/XMLNode;>;"
    const/4 v9, 0x0

    #@47
    .line 99
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
    .line 100
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
    .line 102
    .local v13, "old":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@6a
    move-result-object v17

    #@6b
    const-string/jumbo v18, "NodeName"

    #@6e
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v17

    #@72
    if-eqz v17, :cond_3

    #@74
    .line 103
    if-eqz v9, :cond_2

    #@76
    .line 104
    new-instance v17, Ljava/io/IOException;

    #@78
    const-string/jumbo v18, "NodeName not expected"

    #@7b
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v17

    #@7f
    .line 105
    :cond_2
    new-instance v9, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;

    #@81
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    #@84
    move-result-object v17

    #@85
    const/16 v18, 0x0

    #@87
    move-object/from16 v0, v17

    #@89
    move-object/from16 v1, v18

    #@8b
    invoke-direct {v9, v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;-><init>(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;)V

    #@8e
    .local v9, "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    goto :goto_0

    #@8f
    .line 107
    .end local v9    # "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@92
    move-result-object v17

    #@93
    const-string/jumbo v18, "Path"

    #@96
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v17

    #@9a
    if-eqz v17, :cond_6

    #@9c
    .line 108
    if-eqz v9, :cond_4

    #@9e
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    #@a1
    move-result-object v17

    #@a2
    if-eqz v17, :cond_5

    #@a4
    .line 109
    :cond_4
    new-instance v17, Ljava/io/IOException;

    #@a6
    const-string/jumbo v18, "Path not expected"

    #@a9
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ac
    throw v17

    #@ad
    .line 110
    :cond_5
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    #@b0
    move-result-object v17

    #@b1
    move-object/from16 v0, v17

    #@b3
    invoke-static {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->-wrap0(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V

    #@b6
    goto :goto_0

    #@b7
    .line 112
    :cond_6
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@ba
    move-result-object v17

    #@bb
    const-string/jumbo v18, "Value"

    #@be
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v17

    #@c2
    if-eqz v17, :cond_a

    #@c4
    .line 113
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@c7
    move-result v17

    #@c8
    if-nez v17, :cond_7

    #@ca
    .line 114
    new-instance v17, Ljava/io/IOException;

    #@cc
    const-string/jumbo v18, "Value in constructed node"

    #@cf
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d2
    throw v17

    #@d3
    .line 115
    :cond_7
    if-eqz v9, :cond_8

    #@d5
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getValue()Ljava/lang/String;

    #@d8
    move-result-object v17

    #@d9
    if-eqz v17, :cond_9

    #@db
    .line 116
    :cond_8
    new-instance v17, Ljava/io/IOException;

    #@dd
    const-string/jumbo v18, "Value not expected"

    #@e0
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e3
    throw v17

    #@e4
    .line 117
    :cond_9
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    #@e7
    move-result-object v17

    #@e8
    move-object/from16 v0, v17

    #@ea
    invoke-static {v9, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->-wrap1(Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;Ljava/lang/String;)V

    #@ed
    .line 118
    move-object/from16 v0, v16

    #@ef
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f2
    .line 119
    const/4 v9, 0x0

    #@f3
    .local v9, "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    goto/16 :goto_0

    #@f5
    .line 121
    .end local v9    # "curValue":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    :cond_a
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@f8
    move-result-object v17

    #@f9
    const-string/jumbo v18, "RTProperties"

    #@fc
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ff
    move-result v17

    #@100
    if-eqz v17, :cond_c

    #@102
    .line 122
    if-eqz v13, :cond_b

    #@104
    .line 123
    new-instance v17, Ljava/io/IOException;

    #@106
    const-string/jumbo v18, "Duplicate RTProperties"

    #@109
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10c
    throw v17

    #@10d
    .line 124
    :cond_b
    const-string/jumbo v17, "Type"

    #@110
    move-object/from16 v0, v17

    #@112
    invoke-static {v5, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@115
    move-result-object v15

    #@116
    .line 125
    .local v15, "typeNode":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    const-string/jumbo v17, "DDFName"

    #@119
    move-object/from16 v0, v17

    #@11b
    invoke-static {v15, v0}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->getNextNode(Lcom/android/server/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@11e
    move-result-object v10

    #@11f
    .line 126
    .local v10, "ddfName":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    #@122
    move-result-object v8

    #@123
    .line 127
    .local v8, "context":Ljava/lang/String;
    if-nez v8, :cond_1

    #@125
    .line 128
    new-instance v17, Ljava/io/IOException;

    #@127
    const-string/jumbo v18, "No text in DDFName"

    #@12a
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12d
    throw v17

    #@12e
    .line 130
    .end local v8    # "context":Ljava/lang/String;
    .end local v10    # "ddfName":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v15    # "typeNode":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_c
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@131
    move-result-object v17

    #@132
    const-string/jumbo v18, "Node"

    #@135
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@138
    move-result v17

    #@139
    if-eqz v17, :cond_1

    #@13b
    .line 131
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    #@13e
    move-result v17

    #@13f
    if-nez v17, :cond_d

    #@141
    .line 132
    new-instance v17, Ljava/io/IOException;

    #@143
    new-instance v18, Ljava/lang/StringBuilder;

    #@145
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@148
    const-string/jumbo v19, "Scalar node "

    #@14b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v18

    #@14f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getText()Ljava/lang/String;

    #@152
    move-result-object v19

    #@153
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v18

    #@157
    const-string/jumbo v19, " has Node child"

    #@15a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v18

    #@15e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@161
    move-result-object v18

    #@162
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@165
    throw v17

    #@166
    .line 133
    :cond_d
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@169
    goto/16 :goto_0

    #@16b
    .line 138
    .end local v5    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v13    # "old":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    #@16e
    move-result v17

    #@16f
    if-eqz v17, :cond_10

    #@171
    .line 139
    if-nez v9, :cond_f

    #@173
    .line 140
    new-instance v17, Ljava/io/IOException;

    #@175
    const-string/jumbo v18, "Missing name"

    #@178
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17b
    throw v17

    #@17c
    .line 142
    :cond_f
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getName()Ljava/lang/String;

    #@17f
    move-result-object v17

    #@180
    .line 143
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    #@183
    move-result-object v18

    #@184
    const/16 v19, 0x0

    #@186
    .line 142
    move-object/from16 v0, p0

    #@188
    move-object/from16 v1, v17

    #@18a
    move-object/from16 v2, v19

    #@18c
    move-object/from16 v3, v18

    #@18e
    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@191
    move-result-object v14

    #@192
    .line 145
    .local v14, "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@195
    move-result-object v6

    #@196
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@199
    move-result v17

    #@19a
    if-eqz v17, :cond_12

    #@19c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19f
    move-result-object v5

    #@1a0
    check-cast v5, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;

    #@1a2
    .line 146
    .restart local v5    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    invoke-static {v14, v5}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->buildNode(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/omadm/XMLNode;)V

    #@1a5
    goto :goto_1

    #@1a6
    .line 149
    .end local v5    # "child":Lcom/android/server/wifi/hotspot2/omadm/XMLNode;
    .end local v14    # "subNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_10
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    #@1a9
    move-result v17

    #@1aa
    if-nez v17, :cond_11

    #@1ac
    .line 150
    new-instance v17, Ljava/io/IOException;

    #@1ae
    const-string/jumbo v18, "Got both sub nodes and value(s)"

    #@1b1
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1b4
    throw v17

    #@1b5
    .line 152
    :cond_11
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b8
    move-result-object v12

    #@1b9
    .local v12, "nodeData$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@1bc
    move-result v17

    #@1bd
    if-eqz v17, :cond_12

    #@1bf
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c2
    move-result-object v11

    #@1c3
    check-cast v11, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;

    #@1c5
    .line 153
    .local v11, "nodeData":Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getName()Ljava/lang/String;

    #@1c8
    move-result-object v17

    #@1c9
    .line 154
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getValue()Ljava/lang/String;

    #@1cc
    move-result-object v18

    #@1cd
    invoke-virtual {v11}, Lcom/android/server/wifi/hotspot2/omadm/MOTree$NodeData;->getPath()Ljava/lang/String;

    #@1d0
    move-result-object v19

    #@1d1
    .line 153
    move-object/from16 v0, p0

    #@1d3
    move-object/from16 v1, v17

    #@1d5
    move-object/from16 v2, v18

    #@1d7
    move-object/from16 v3, v19

    #@1d9
    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@1dc
    goto :goto_2

    #@1dd
    .line 88
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
    .line 160
    if-nez p0, :cond_0

    #@2
    .line 161
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
    .line 162
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
    .line 163
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
    .line 164
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
    .line 165
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
    .line 166
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
    .line 167
    const-string/jumbo v3, "\' instead of \'"

    #@88
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    .line 167
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/XMLNode;->getTag()Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v2

    #@94
    .line 167
    const-string/jumbo v3, "\'"

    #@97
    .line 166
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
    .line 168
    :cond_2
    return-object v0
.end method

.method public static unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/MOTree;
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 200
    const/4 v2, 0x1

    #@1
    .line 201
    .local v2, "strip":Z
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 203
    .local v3, "tree":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@9
    move-result v0

    #@a
    .line 204
    .local v0, "octet":I
    if-gez v0, :cond_1

    #@c
    .line 205
    const/4 v6, 0x0

    #@d
    return-object v6

    #@e
    .line 206
    :cond_1
    const/16 v6, 0x20

    #@10
    if-le v0, v6, :cond_2

    #@12
    .line 207
    int-to-char v6, v0

    #@13
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 208
    const/4 v2, 0x0

    #@17
    goto :goto_0

    #@18
    .line 209
    :cond_2
    if-nez v2, :cond_0

    #@1a
    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v6

    #@1e
    const-string/jumbo v7, "tree"

    #@21
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v6

    #@25
    if-nez v6, :cond_3

    #@27
    .line 214
    new-instance v6, Ljava/io/IOException;

    #@29
    new-instance v7, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v8, "Not a tree: "

    #@31
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v7

    #@39
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v7

    #@3d
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@40
    throw v6

    #@41
    .line 217
    :cond_3
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->deserializeString(Ljava/io/InputStream;)Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    .line 218
    .local v5, "version":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->readURN(Ljava/io/InputStream;)Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    .line 220
    .local v4, "urn":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@4c
    move-result-object v1

    #@4d
    .line 222
    .local v1, "root":Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    new-instance v6, Lcom/android/server/wifi/hotspot2/omadm/MOTree;

    #@4f
    invoke-direct {v6, v4, v5, v1}, Lcom/android/server/wifi/hotspot2/omadm/MOTree;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    #@52
    return-object v6
.end method


# virtual methods
.method public getDtdRev()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRoot()Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@2
    return-object v0
.end method

.method public getUrn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 172
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
    .line 193
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
    .line 194
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mDtdRev:Ljava/lang/String;

    #@f
    invoke-static {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    #@12
    .line 195
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
    .line 196
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@2b
    invoke-virtual {v0, p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->marshal(Ljava/io/OutputStream;I)V

    #@2e
    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 186
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
    .line 187
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/MOTree;->mRoot:Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    return-object v1
.end method
