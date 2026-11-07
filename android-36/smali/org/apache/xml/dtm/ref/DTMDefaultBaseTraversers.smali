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
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;
    }
.end annotation


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .registers 7

    .line 61
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .registers 10

    .line 89
    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    return-void
.end method


# virtual methods
.method public greylist getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;
    .registers 4

    .line 106
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    if-nez v0, :cond_d

    .line 108
    invoke-static {}, Lorg/apache/xml/dtm/Axis;->getNamesLength()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xml/dtm/DTMAxisTraverser;

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    goto :goto_12

    .line 113
    :cond_d
    aget-object v0, v0, p1

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    :goto_12
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_ac

    .line 184
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_UNKNOWN_AXIS_TYPE"

    invoke-static {v0, p1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2a
    return-object v0

    .line 179
    :pswitch_2b
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto/16 :goto_a6

    .line 176
    :pswitch_32
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto/16 :goto_a6

    .line 173
    :pswitch_39
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto/16 :goto_a6

    .line 164
    :pswitch_40
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto/16 :goto_a6

    .line 170
    :pswitch_47
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 167
    :pswitch_4d
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 161
    :pswitch_53
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 158
    :pswitch_59
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 155
    :pswitch_5f
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 152
    :pswitch_65
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 146
    :pswitch_6b
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 149
    :pswitch_71
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 143
    :pswitch_77
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 140
    :pswitch_7d
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 137
    :pswitch_83
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 134
    :pswitch_89
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 131
    :pswitch_8f
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 128
    :pswitch_95
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 125
    :pswitch_9b
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    goto :goto_a6

    .line 122
    :pswitch_a1
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;

    invoke-direct {v1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers-IA;)V

    .line 192
    :goto_a6
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    aput-object v1, p0, p1

    return-object v1

    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_9b
        :pswitch_95
        :pswitch_8f
        :pswitch_89
        :pswitch_83
        :pswitch_7d
        :pswitch_77
        :pswitch_71
        :pswitch_6b
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
        :pswitch_40
        :pswitch_39
        :pswitch_32
        :pswitch_2b
        :pswitch_2a
    .end packed-switch
.end method
