.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
    }
.end annotation


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .registers 7

    .line 56
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .registers 10

    .line 84
    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    return-void
.end method


# virtual methods
.method public greylist getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3

    const/16 v0, 0x13

    if-eq p1, v0, :cond_74

    packed-switch p1, :pswitch_data_7a

    packed-switch p1, :pswitch_data_8e

    .line 226
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    .line 228
    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 226
    const-string v0, "ER_ITERATOR_AXIS_NOT_IMPLEMENTED"

    invoke-static {v0, p1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :pswitch_1e
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    .line 217
    :pswitch_24
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    .line 211
    :pswitch_2a
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    .line 194
    :pswitch_30
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    .line 220
    :pswitch_36
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    .line 214
    :pswitch_3c
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    .line 208
    :pswitch_42
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    .line 205
    :pswitch_48
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 202
    :pswitch_52
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    .line 191
    :pswitch_58
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    .line 200
    :pswitch_5e
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    .line 198
    :pswitch_64
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 196
    :pswitch_6e
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    .line 223
    :cond_74
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    return-object p1

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_64
        :pswitch_5e
        :pswitch_58
        :pswitch_52
        :pswitch_48
        :pswitch_42
        :pswitch_3c
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x9
        :pswitch_36
        :pswitch_30
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
    .end packed-switch
.end method

.method public greylist getTypedAxisIterator(II)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 4

    const/16 v0, 0x13

    if-eq p1, v0, :cond_78

    packed-switch p1, :pswitch_data_7e

    packed-switch p1, :pswitch_data_92

    .line 159
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    .line 161
    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 159
    const-string p2, "ER_TYPED_ITERATOR_AXIS_NOT_IMPLEMENTED"

    invoke-static {p2, p1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :pswitch_1e
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1

    .line 150
    :pswitch_24
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1

    .line 144
    :pswitch_2a
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1

    .line 127
    :pswitch_30
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;

    invoke-direct {p1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {p1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->setNodeType(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 153
    :pswitch_3a
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1

    .line 147
    :pswitch_40
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1

    .line 141
    :pswitch_46
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1

    .line 138
    :pswitch_4c
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 135
    :pswitch_56
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1

    .line 124
    :pswitch_5c
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1

    .line 133
    :pswitch_62
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1

    .line 131
    :pswitch_68
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    .line 129
    :pswitch_72
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1

    .line 156
    :cond_78
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    return-object p1

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_72
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_4c
        :pswitch_46
        :pswitch_40
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x9
        :pswitch_3a
        :pswitch_30
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
    .end packed-switch
.end method
