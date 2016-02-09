.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBase;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 0
    .param p1, "mgr"    # Lorg/apache/xml/dtm/DTMManager;
    .param p2, "source"    # Ljavax/xml/transform/Source;
    .param p3, "dtmIdentity"    # I
    .param p4, "whiteSpaceFilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p5, "xstringfactory"    # Lorg/apache/xml/utils/XMLStringFactory;
    .param p6, "doIndexing"    # Z

    #@0
    .prologue
    .line 61
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    #@3
    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .locals 0
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
    .line 89
    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    #@3
    .line 87
    return-void
.end method


# virtual methods
.method public getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;
    .locals 6
    .param p1, "axis"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 106
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@5
    if-nez v1, :cond_1

    #@7
    .line 108
    invoke-static {}, Lorg/apache/xml/dtm/Axis;->getNamesLength()I

    #@a
    move-result v1

    #@b
    new-array v1, v1, [Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@d
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@f
    .line 109
    const/4 v0, 0x0

    #@10
    .line 119
    :cond_0
    packed-switch p1, :pswitch_data_0

    #@13
    .line 184
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    #@15
    const-string/jumbo v2, "ER_UNKNOWN_AXIS_TYPE"

    #@18
    new-array v3, v3, [Ljava/lang/Object;

    #@1a
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    aput-object v4, v3, v5

    #@20
    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 113
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@2a
    aget-object v0, v1, p1

    #@2c
    .line 115
    .local v0, "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    if-eqz v0, :cond_0

    #@2e
    .line 116
    return-object v0

    #@2f
    .line 122
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_0
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;

    #@31
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;)V

    #@34
    .line 187
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :goto_0
    if-nez v0, :cond_2

    #@36
    .line 188
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    #@38
    const-string/jumbo v2, "ER_AXIS_TRAVERSER_NOT_SUPPORTED"

    #@3b
    new-array v3, v3, [Ljava/lang/Object;

    #@3d
    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    aput-object v4, v3, v5

    #@43
    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v1

    #@4b
    .line 125
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_1
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;

    #@4d
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;)V

    #@50
    .line 126
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@51
    .line 128
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_2
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;

    #@53
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;)V

    #@56
    .line 129
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@57
    .line 131
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_3
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;

    #@59
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;)V

    #@5c
    .line 132
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@5d
    .line 134
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_4
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;

    #@5f
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;)V

    #@62
    .line 135
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@63
    .line 137
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_5
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;

    #@65
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;)V

    #@68
    .line 138
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@69
    .line 140
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_6
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;

    #@6b
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;)V

    #@6e
    .line 141
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@6f
    .line 143
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_7
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;

    #@71
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;)V

    #@74
    .line 144
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@75
    .line 146
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_8
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;

    #@77
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;)V

    #@7a
    .line 147
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@7b
    .line 149
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_9
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;

    #@7d
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;)V

    #@80
    .line 150
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@81
    .line 152
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_a
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;

    #@83
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;)V

    #@86
    .line 153
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@87
    .line 155
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_b
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;

    #@89
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;)V

    #@8c
    .line 156
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@8d
    .line 158
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;

    #@8f
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;)V

    #@92
    .line 159
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@93
    .line 161
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_d
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;

    #@95
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;)V

    #@98
    .line 162
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@99
    .line 164
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_e
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;

    #@9b
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;)V

    #@9e
    .line 165
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@9f
    .line 167
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_f
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;

    #@a1
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;)V

    #@a4
    .line 168
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@a5
    .line 170
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_10
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;

    #@a7
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;)V

    #@aa
    .line 171
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@ab
    .line 173
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_11
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;

    #@ad
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;)V

    #@b0
    .line 174
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_0

    #@b1
    .line 176
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_12
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;

    #@b3
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;)V

    #@b6
    .line 177
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto/16 :goto_0

    #@b8
    .line 179
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_13
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;

    #@ba
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;)V

    #@bd
    .line 180
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto/16 :goto_0

    #@bf
    .line 182
    .end local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :pswitch_14
    return-object v2

    #@c0
    .line 192
    .restart local v0    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@c2
    aput-object v0, v1, p1

    #@c4
    .line 194
    return-object v0

    #@c5
    .line 119
    nop

    #@c6
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
