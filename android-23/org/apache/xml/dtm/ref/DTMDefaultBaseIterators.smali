.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;
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
    .line 56
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    #@3
    .line 54
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
    .line 84
    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    #@3
    .line 82
    return-void
.end method


# virtual methods
.method public getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 6
    .param p1, "axis"    # I

    #@0
    .prologue
    .line 183
    const/4 v0, 0x0

    #@1
    .line 185
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    packed-switch p1, :pswitch_data_0

    #@4
    .line 226
    :pswitch_0
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    #@6
    .line 227
    const-string/jumbo v2, "ER_ITERATOR_AXIS_NOT_IMPLEMENTED"

    #@9
    .line 228
    const/4 v3, 0x1

    #@a
    new-array v3, v3, [Ljava/lang/Object;

    #@c
    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    const/4 v5, 0x0

    #@11
    aput-object v4, v3, v5

    #@13
    .line 226
    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 188
    :pswitch_1
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;

    #@1d
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@20
    .line 233
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :goto_0
    return-object v0

    #@21
    .line 191
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_2
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;

    #@23
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@26
    .line 192
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@27
    .line 194
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_3
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;

    #@29
    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@2c
    return-object v1

    #@2d
    .line 196
    :pswitch_4
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    #@2f
    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@32
    return-object v1

    #@33
    .line 198
    :pswitch_5
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    #@35
    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@38
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@3b
    move-result-object v1

    #@3c
    return-object v1

    #@3d
    .line 200
    :pswitch_6
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;

    #@3f
    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@42
    return-object v1

    #@43
    .line 202
    :pswitch_7
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;

    #@45
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@48
    .line 203
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@49
    .line 205
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_8
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;

    #@4b
    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@4e
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@51
    move-result-object v0

    #@52
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@53
    .line 208
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_9
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;

    #@55
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@58
    .line 209
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@59
    .line 211
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_a
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;

    #@5b
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5e
    .line 212
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@5f
    .line 214
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_b
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;

    #@61
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@64
    .line 215
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@65
    .line 217
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;

    #@67
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@6a
    .line 218
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@6b
    .line 220
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_d
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;

    #@6d
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@70
    .line 221
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@71
    .line 223
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_e
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;

    #@73
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@76
    .line 224
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@77
    .line 185
    nop

    #@78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public getTypedAxisIterator(II)Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 6
    .param p1, "axis"    # I
    .param p2, "type"    # I

    #@0
    .prologue
    .line 102
    const/4 v0, 0x0

    #@1
    .line 118
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    packed-switch p1, :pswitch_data_0

    #@4
    .line 159
    :pswitch_0
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    #@6
    .line 160
    const-string/jumbo v2, "ER_TYPED_ITERATOR_AXIS_NOT_IMPLEMENTED"

    #@9
    .line 161
    const/4 v3, 0x1

    #@a
    new-array v3, v3, [Ljava/lang/Object;

    #@c
    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    const/4 v5, 0x0

    #@11
    aput-object v4, v3, v5

    #@13
    .line 159
    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 121
    :pswitch_1
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;

    #@1d
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    #@20
    .line 167
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :goto_0
    return-object v0

    #@21
    .line 124
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_2
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;

    #@23
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    #@26
    .line 125
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@27
    .line 127
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_3
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;

    #@29
    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@2c
    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->setNodeType(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    #@2f
    move-result-object v1

    #@30
    return-object v1

    #@31
    .line 129
    :pswitch_4
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;

    #@33
    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    #@36
    return-object v1

    #@37
    .line 131
    :pswitch_5
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;

    #@39
    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    #@3c
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@3f
    move-result-object v1

    #@40
    return-object v1

    #@41
    .line 133
    :pswitch_6
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;

    #@43
    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    #@46
    return-object v1

    #@47
    .line 135
    :pswitch_7
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;

    #@49
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    #@4c
    .line 136
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@4d
    .line 138
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_8
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;

    #@4f
    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    #@52
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    #@55
    move-result-object v0

    #@56
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@57
    .line 141
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_9
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;

    #@59
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    #@5c
    .line 142
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@5d
    .line 144
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_a
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;

    #@5f
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    #@62
    .line 145
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@63
    .line 147
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_b
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;

    #@65
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    #@68
    .line 148
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@69
    .line 150
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;

    #@6b
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    #@6e
    .line 151
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@6f
    .line 153
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_d
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;

    #@71
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    #@74
    .line 154
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@75
    .line 156
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    :pswitch_e
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;

    #@77
    .end local v0    # "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    #@7a
    .line 157
    .local v0, "iterator":Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_0

    #@7b
    .line 118
    nop

    #@7c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method
