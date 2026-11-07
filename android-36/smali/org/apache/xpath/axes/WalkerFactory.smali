.class public Lorg/apache/xpath/axes/WalkerFactory;
.super Ljava/lang/Object;
.source "WalkerFactory.java"


# static fields
.field public static final greylist BITMASK_TRAVERSES_OUTSIDE_SUBTREE:I = 0xdf86000

.field public static final greylist BITS_COUNT:I = 0xff

.field public static final greylist BITS_RESERVED:I = 0xf00

.field public static final greylist BIT_ANCESTOR:I = 0x2000

.field public static final greylist BIT_ANCESTOR_OR_SELF:I = 0x4000

.field public static final greylist BIT_ANY_DESCENDANT_FROM_ROOT:I = 0x20000000

.field public static final greylist BIT_ATTRIBUTE:I = 0x8000

.field public static final greylist BIT_BACKWARDS_SELF:I = 0x10000000

.field public static final greylist BIT_CHILD:I = 0x10000

.field public static final greylist BIT_DESCENDANT:I = 0x20000

.field public static final greylist BIT_DESCENDANT_OR_SELF:I = 0x40000

.field public static final greylist BIT_FILTER:I = 0x4000000

.field public static final greylist BIT_FOLLOWING:I = 0x80000

.field public static final greylist BIT_FOLLOWING_SIBLING:I = 0x100000

.field public static final greylist BIT_MATCH_PATTERN:I = -0x80000000

.field public static final greylist BIT_NAMESPACE:I = 0x200000

.field public static final greylist BIT_NODETEST_ANY:I = 0x40000000

.field public static final greylist BIT_PARENT:I = 0x400000

.field public static final greylist BIT_PRECEDING:I = 0x800000

.field public static final greylist BIT_PRECEDING_SIBLING:I = 0x1000000

.field public static final greylist BIT_PREDICATE:I = 0x1000

.field public static final greylist BIT_ROOT:I = 0x8000000

.field public static final greylist BIT_SELF:I = 0x2000000

.field static final greylist DEBUG_ITERATOR_CREATION:Z = false

.field static final greylist DEBUG_PATTERN_CREATION:Z = false

.field static final greylist DEBUG_WALKER_CREATION:Z = false


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist analyze(Lorg/apache/xpath/compiler/Compiler;II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 p2, 0x0

    move v0, p2

    .line 673
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_83

    add-int/lit8 p2, p2, 0x1

    .line 682
    invoke-static {p0, p1, v1}, Lorg/apache/xpath/axes/WalkerFactory;->analyzePredicate(Lorg/apache/xpath/compiler/Compiler;II)Z

    move-result v2

    if-eqz v2, :cond_13

    or-int/lit16 v0, v0, 0x1000

    :cond_13
    packed-switch v1, :pswitch_data_88

    const/high16 v2, 0x8000000

    packed-switch v1, :pswitch_data_94

    .line 755
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_NULL_ERROR_HANDLER"

    invoke-static {p2, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2f
    const/high16 v1, -0x7fc00000

    :goto_31
    or-int/2addr v0, v1

    goto :goto_70

    :pswitch_33
    const v1, -0x7fffe000

    goto :goto_31

    :pswitch_37
    const v1, -0x7fff8000

    goto :goto_31

    :pswitch_3b
    or-int/2addr v0, v2

    goto :goto_70

    :pswitch_3d
    const/high16 v1, 0x200000

    goto :goto_31

    :pswitch_40
    const/high16 v1, 0x2000000

    goto :goto_31

    :pswitch_43
    const/high16 v1, 0x1000000

    goto :goto_31

    :pswitch_46
    const/high16 v1, 0x800000

    goto :goto_31

    :pswitch_49
    const/high16 v1, 0x400000

    goto :goto_31

    :pswitch_4c
    const/high16 v1, 0x100000

    goto :goto_31

    :pswitch_4f
    const/high16 v1, 0x80000

    goto :goto_31

    :pswitch_52
    const/4 v1, 0x2

    if-ne v1, p2, :cond_5a

    if-ne v2, v0, :cond_5a

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    :cond_5a
    const/high16 v1, 0x40000

    goto :goto_31

    :pswitch_5d
    const/high16 v1, 0x20000

    goto :goto_31

    :pswitch_60
    const/high16 v1, 0x10000

    goto :goto_31

    :pswitch_63
    const v1, 0x8000

    goto :goto_31

    :pswitch_67
    or-int/lit16 v0, v0, 0x4000

    goto :goto_70

    :pswitch_6a
    or-int/lit16 v0, v0, 0x2000

    goto :goto_70

    :pswitch_6d
    const/high16 v1, 0x4000000

    goto :goto_31

    :goto_70
    add-int/lit8 v1, p1, 0x3

    .line 759
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/16 v2, 0x409

    if-ne v2, v1, :cond_7d

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 764
    :cond_7d
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextStepPos(I)I

    move-result p1

    if-gez p1, :cond_2

    :cond_83
    and-int/lit16 p0, p2, 0xff

    or-int/2addr p0, v0

    return p0

    nop

    :pswitch_data_88
    .packed-switch 0x16
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x25
        :pswitch_6a
        :pswitch_67
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
    .end packed-switch
.end method

.method static greylist analyzePredicate(Lorg/apache/xpath/compiler/Compiler;II)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_18

    .line 1142
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    goto :goto_a

    .line 1139
    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLength(I)I

    .line 1145
    :goto_a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstPredicateOpPos(I)I

    move-result p1

    .line 1146
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    move-result p0

    if-lez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0

    :pswitch_data_18
    .packed-switch 0x16
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static greylist canCrissCross(I)Z
    .registers 3

    .line 1566
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSelfOnly(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1568
    :cond_8
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDownOnly(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canSkipSubtrees(I)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 1570
    :cond_15
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildrenAndExtraAndSelfOnly(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    .line 1572
    :cond_1c
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendantsAndExtraAndSelfOnly(I)Z

    move-result v0

    if-eqz v0, :cond_23

    return v1

    .line 1574
    :cond_23
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUpOnly(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    return v1

    .line 1576
    :cond_2a
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodesOnly(I)Z

    move-result v0

    if-eqz v0, :cond_31

    return v1

    .line 1578
    :cond_31
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1579
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_49

    .line 1580
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_49

    .line 1581
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canSkipSubtrees(I)Z

    move-result p0

    if-eqz p0, :cond_4b

    :cond_49
    const/4 p0, 0x1

    return p0

    :cond_4b
    return v1
.end method

.method public static greylist canSkipSubtrees(I)Z
    .registers 2

    const/high16 v0, 0x10000

    .line 1560
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method private static greylist createDefaultStepPattern(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/MatchPatternIterator;ILorg/apache/xpath/patterns/StepPattern;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 984
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p2

    .line 988
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    packed-switch p2, :pswitch_data_98

    const/4 p3, 0x4

    const/4 p4, 0x0

    const/4 p5, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/16 v2, 0xb

    const/4 v3, 0x6

    const/16 v4, 0xc

    const/4 v5, 0x7

    const/16 v6, 0xa

    const/4 v7, 0x0

    packed-switch p2, :pswitch_data_a4

    .line 1086
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_NULL_ERROR_HANDLER"

    invoke-static {p2, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1025
    :pswitch_2f
    new-instance v7, Lorg/apache/xpath/patterns/StepPattern;

    const/16 p2, 0x500

    const/16 p3, 0x13

    invoke-direct {v7, p2, p3, p3}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    :goto_38
    move v4, p3

    move v5, v4

    goto/16 :goto_77

    :pswitch_3c
    const/16 p3, 0x9

    :goto_3e
    move v5, p3

    :goto_3f
    move v4, v6

    goto :goto_77

    :pswitch_41
    const/16 p3, 0xd

    goto :goto_38

    :pswitch_44
    move v8, v5

    move v5, v4

    move v4, v8

    goto :goto_77

    :pswitch_48
    move v5, v2

    move v4, v3

    goto :goto_77

    :pswitch_4b
    move v4, v1

    move v5, v6

    goto :goto_77

    :pswitch_4e
    move v4, v2

    move v5, v3

    goto :goto_77

    :pswitch_51
    move v5, p5

    move v4, v0

    goto :goto_77

    :pswitch_54
    move v5, p3

    move v4, p4

    goto :goto_77

    :pswitch_57
    move v5, v1

    goto :goto_3f

    :pswitch_59
    const/4 p3, 0x2

    goto :goto_3e

    :pswitch_5b
    move v4, p5

    move v5, v0

    goto :goto_77

    :pswitch_5e
    move v4, p3

    move v5, p4

    goto :goto_77

    :pswitch_61
    packed-switch p2, :pswitch_data_c4

    add-int/lit8 p2, p1, 0x2

    .line 1011
    invoke-virtual {p0, p2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p2

    goto :goto_6f

    .line 1008
    :pswitch_6b
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    move-result-object p2

    .line 1016
    :goto_6f
    new-instance v7, Lorg/apache/xpath/patterns/FunctionPattern;

    const/16 p3, 0x14

    invoke-direct {v7, p2, p3, p3}, Lorg/apache/xpath/patterns/FunctionPattern;-><init>(Lorg/apache/xpath/Expression;II)V

    goto :goto_38

    :goto_77
    :pswitch_77
    if-nez v7, :cond_8b

    .line 1091
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v1

    .line 1092
    new-instance v0, Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object v2

    .line 1093
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    move-object v7, v0

    .line 1107
    :cond_8b
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstPredicateOpPos(I)I

    move-result p1

    .line 1109
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getCompiledPredicates(I)[Lorg/apache/xpath/Expression;

    move-result-object p0

    invoke-virtual {v7, p0}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    return-object v7

    nop

    :pswitch_data_98
    .packed-switch 0x16
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x25
        :pswitch_5e
        :pswitch_5b
        :pswitch_59
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_77
        :pswitch_4b
        :pswitch_48
        :pswitch_44
        :pswitch_41
        :pswitch_3c
        :pswitch_2f
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x16
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
    .end packed-switch
.end method

.method private static greylist createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;
    .registers 6

    .line 1169
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p3

    const/4 v0, 0x1

    packed-switch p3, :pswitch_data_b0

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_bc

    .line 1250
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_NULL_ERROR_HANDLER"

    invoke-static {p2, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1199
    :pswitch_20
    new-instance p3, Lorg/apache/xpath/axes/AxesWalker;

    const/16 v0, 0x13

    invoke-direct {p3, p2, v0}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    :goto_27
    move v0, v1

    goto/16 :goto_8d

    .line 1213
    :pswitch_2a
    new-instance p3, Lorg/apache/xpath/axes/AxesWalker;

    const/16 v0, 0x9

    invoke-direct {p3, p2, v0}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_27

    .line 1247
    :pswitch_32
    new-instance p3, Lorg/apache/xpath/axes/AxesWalker;

    const/16 v0, 0xd

    invoke-direct {p3, p2, v0}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_27

    .line 1240
    :pswitch_3a
    new-instance p3, Lorg/apache/xpath/axes/ReverseAxesWalker;

    const/16 v0, 0xc

    invoke-direct {p3, p2, v0}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_27

    .line 1236
    :pswitch_42
    new-instance p3, Lorg/apache/xpath/axes/ReverseAxesWalker;

    const/16 v0, 0xb

    invoke-direct {p3, p2, v0}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_27

    .line 1244
    :pswitch_4a
    new-instance p3, Lorg/apache/xpath/axes/ReverseAxesWalker;

    const/16 v0, 0xa

    invoke-direct {p3, p2, v0}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_27

    .line 1232
    :pswitch_52
    new-instance p3, Lorg/apache/xpath/axes/AxesWalker;

    const/4 v0, 0x7

    invoke-direct {p3, p2, v0}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_27

    .line 1228
    :pswitch_59
    new-instance p3, Lorg/apache/xpath/axes/AxesWalker;

    const/4 v0, 0x6

    invoke-direct {p3, p2, v0}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_27

    .line 1224
    :pswitch_60
    new-instance p3, Lorg/apache/xpath/axes/AxesWalker;

    const/4 v0, 0x5

    invoke-direct {p3, p2, v0}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_27

    .line 1220
    :pswitch_67
    new-instance p3, Lorg/apache/xpath/axes/AxesWalker;

    const/4 v0, 0x4

    invoke-direct {p3, p2, v0}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_27

    .line 1216
    :pswitch_6e
    new-instance p3, Lorg/apache/xpath/axes/AxesWalker;

    const/4 v0, 0x3

    invoke-direct {p3, p2, v0}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_27

    .line 1210
    :pswitch_75
    new-instance p3, Lorg/apache/xpath/axes/AxesWalker;

    const/4 v0, 0x2

    invoke-direct {p3, p2, v0}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_27

    .line 1207
    :pswitch_7c
    new-instance p3, Lorg/apache/xpath/axes/ReverseAxesWalker;

    invoke-direct {p3, p2, v0}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_27

    .line 1203
    :pswitch_82
    new-instance p3, Lorg/apache/xpath/axes/ReverseAxesWalker;

    invoke-direct {p3, p2, v1}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    goto :goto_27

    .line 1195
    :pswitch_88
    new-instance p3, Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-direct {p3, p2}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    :goto_8d
    const/4 p2, -0x1

    if-eqz v0, :cond_94

    .line 1256
    invoke-virtual {p3, p2}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(I)V

    return-object p3

    .line 1260
    :cond_94
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v0

    and-int/lit16 v1, v0, 0x1043

    if-eqz v1, :cond_ab

    if-ne v0, p2, :cond_9f

    goto :goto_ab

    .line 1275
    :cond_9f
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getStepNS(I)Ljava/lang/String;

    move-result-object p2

    .line 1276
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object p0

    .line 1275
    invoke-virtual {p3, v0, p2, p0}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    return-object p3

    .line 1272
    :cond_ab
    :goto_ab
    invoke-virtual {p3, v0}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(I)V

    return-object p3

    nop

    :pswitch_data_b0
    .packed-switch 0x16
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x25
        :pswitch_82
        :pswitch_7c
        :pswitch_75
        :pswitch_6e
        :pswitch_67
        :pswitch_60
        :pswitch_59
        :pswitch_52
        :pswitch_4a
        :pswitch_42
        :pswitch_3a
        :pswitch_32
        :pswitch_2a
        :pswitch_20
    .end packed-switch
.end method

.method public static greylist diagnoseIterator(Ljava/lang/String;ILorg/apache/xpath/compiler/Compiler;)V
    .registers 5

    .line 141
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/apache/xpath/compiler/OpMap;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {p1}, Lorg/apache/xpath/axes/WalkerFactory;->getAnalysisString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static greylist functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z
    .registers 6

    add-int/lit8 v0, p1, 0x1

    .line 403
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 404
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    .line 405
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    if-eq v2, v1, :cond_2c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2c

    add-int/2addr p1, v1

    :goto_17
    if-ge p1, v0, :cond_2a

    add-int/lit8 v2, p1, 0x2

    .line 420
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    .line 421
    invoke-static {p0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result v2

    if-eqz v2, :cond_25

    return v1

    .line 417
    :cond_25
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    goto :goto_17

    :cond_2a
    const/4 p0, 0x0

    return p0

    :cond_2c
    return v1
.end method

.method public static greylist getAnalysisBitFromAxes(I)I
    .registers 2

    .line 0
    const/high16 v0, 0x40000

    packed-switch p0, :pswitch_data_36

    :pswitch_5
    const/high16 p0, 0x4000000

    return p0

    :pswitch_8
    const/high16 p0, 0x8000000

    return p0

    :pswitch_b
    const/high16 p0, 0x20000000

    return p0

    :pswitch_e
    return v0

    :pswitch_f
    const/high16 p0, 0x2000000

    return p0

    :pswitch_12
    const/high16 p0, 0x1000000

    return p0

    :pswitch_15
    const/high16 p0, 0x800000

    return p0

    :pswitch_18
    const/high16 p0, 0x400000

    return p0

    :pswitch_1b
    const/high16 p0, 0x200000

    return p0

    :pswitch_1e
    const/high16 p0, 0x100000

    return p0

    :pswitch_21
    const/high16 p0, 0x80000

    return p0

    :pswitch_24
    return v0

    :pswitch_25
    const/high16 p0, 0x20000

    return p0

    :pswitch_28
    const/high16 p0, 0x10000

    return p0

    :pswitch_2b
    const p0, 0x8000

    return p0

    :pswitch_2f
    const/16 p0, 0x4000

    return p0

    :pswitch_32
    const/16 p0, 0x2000

    return p0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_e
        :pswitch_5
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist getAnalysisString(I)Ljava/lang/String;
    .registers 4

    .line 1285
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->getStepCount(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_2c

    .line 1289
    const-string v1, "NTANY|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2c
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_35

    .line 1293
    const-string v1, "PRED|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_35
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_3e

    .line 1297
    const-string v1, "ANC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3e
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_47

    .line 1301
    const-string v1, "ANCOS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_47
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_52

    .line 1305
    const-string v1, "ATTR|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_52
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_5c

    .line 1309
    const-string v1, "CH|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5c
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_66

    .line 1313
    const-string v1, "DESC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_66
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_70

    .line 1317
    const-string v1, "DESCOS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_70
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_7a

    .line 1321
    const-string v1, "FOL|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7a
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_84

    .line 1325
    const-string v1, "FOLS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_84
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_8e

    .line 1329
    const-string v1, "NS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8e
    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_98

    .line 1333
    const-string v1, "P|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_98
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_a2

    .line 1337
    const-string v1, "PREC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a2
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_ac

    .line 1341
    const-string v1, "PRECS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_ac
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_b6

    .line 1345
    const-string v1, ".|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b6
    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_c0

    .line 1349
    const-string v1, "FLT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c0
    const/high16 v1, 0x8000000

    and-int/2addr p0, v1

    if-eqz p0, :cond_ca

    .line 1353
    const-string p0, "R|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1355
    :cond_ca
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist getAxisFromStep(Lorg/apache/xpath/compiler/Compiler;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p0

    packed-switch p0, :pswitch_data_44

    packed-switch p0, :pswitch_data_50

    .line 344
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ER_NULL_ERROR_HANDLER"

    invoke-static {v0, p0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1e
    const/16 p0, 0x13

    return p0

    :pswitch_21
    const/16 p0, 0x9

    return p0

    :pswitch_24
    const/16 p0, 0xd

    return p0

    :pswitch_27
    const/16 p0, 0xc

    return p0

    :pswitch_2a
    const/16 p0, 0xb

    return p0

    :pswitch_2d
    const/16 p0, 0xa

    return p0

    :pswitch_30
    const/4 p0, 0x7

    return p0

    :pswitch_32
    const/4 p0, 0x6

    return p0

    :pswitch_34
    const/4 p0, 0x5

    return p0

    :pswitch_36
    const/4 p0, 0x4

    return p0

    :pswitch_38
    const/4 p0, 0x3

    return p0

    :pswitch_3a
    const/4 p0, 0x2

    return p0

    :pswitch_3c
    const/4 p0, 0x1

    return p0

    :pswitch_3e
    const/4 p0, 0x0

    return p0

    :pswitch_40
    const/16 p0, 0x14

    return p0

    nop

    :pswitch_data_44
    .packed-switch 0x16
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x25
        :pswitch_3e
        :pswitch_3c
        :pswitch_3a
        :pswitch_38
        :pswitch_36
        :pswitch_34
        :pswitch_32
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
    .end packed-switch
.end method

.method public static greylist getStepCount(I)I
    .registers 1

    .line 0
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static greylist hasPredicate(I)Z
    .registers 1

    .line 0
    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isAbsolute(I)Z
    .registers 2

    const/high16 v0, 0xc000000

    .line 1485
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static greylist isDownwardAxisOfMany(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x5

    if-eq v0, p0, :cond_10

    const/4 v0, 0x4

    if-eq v0, p0, :cond_10

    const/4 v0, 0x6

    if-eq v0, p0, :cond_10

    const/16 v0, 0xb

    if-ne v0, p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist isNaturalDocOrder(I)Z
    .registers 3

    .line 1599
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canCrissCross(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    const/high16 v0, 0x200000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1600
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFilteredList(I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1e

    .line 1603
    :cond_16
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksInDocOrder(I)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    :goto_1e
    return v1
.end method

.method private static greylist isNaturalDocOrder(Lorg/apache/xpath/compiler/Compiler;III)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1627
    invoke-static {p3}, Lorg/apache/xpath/axes/WalkerFactory;->canCrissCross(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    return v0

    :cond_8
    const/high16 p2, 0x200000

    .line 1632
    invoke-static {p3, p2}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p2

    if-eqz p2, :cond_11

    return v0

    :cond_11
    const/high16 p2, 0x180000

    .line 1641
    invoke-static {p3, p2}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p2

    if-eqz p2, :cond_22

    const/high16 p2, 0x1800000

    .line 1642
    invoke-static {p3, p2}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p2

    if-eqz p2, :cond_22

    return v0

    :cond_22
    move p2, v0

    move p3, p2

    .line 1659
    :cond_24
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v3, v1, :cond_65

    packed-switch v1, :pswitch_data_66

    packed-switch v1, :pswitch_data_72

    .line 1706
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_NULL_ERROR_HANDLER"

    invoke-static {p2, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_46
    if-eqz p3, :cond_49

    return v0

    .line 1673
    :cond_49
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 1675
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    move p3, v2

    goto :goto_5f

    :pswitch_57
    if-lez p2, :cond_5a

    return v0

    :cond_5a
    add-int/lit8 p2, p2, 0x1

    :pswitch_5c
    if-eqz p3, :cond_5f

    return v0

    .line 1710
    :cond_5f
    :goto_5f
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextStepPos(I)I

    move-result p1

    if-gez p1, :cond_24

    :cond_65
    return v2

    :pswitch_data_66
    .packed-switch 0x16
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x25
        :pswitch_57
        :pswitch_57
        :pswitch_46
        :pswitch_5c
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_5c
        :pswitch_57
        :pswitch_5c
        :pswitch_46
        :pswitch_57
        :pswitch_57
    .end packed-switch
.end method

.method public static greylist isOneStep(I)Z
    .registers 2

    .line 0
    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist isOptimizableForDescendantIterator(Lorg/apache/xpath/compiler/Compiler;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 p2, 0x0

    const/16 v0, 0x409

    move v2, p2

    move v3, v2

    move v4, v3

    move v5, v4

    move v1, v0

    .line 569
    :goto_8
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eq v7, v6, :cond_6d

    if-eq v1, v0, :cond_17

    const/16 v9, 0x23

    if-eq v1, v9, :cond_17

    return p2

    :cond_17
    add-int/2addr v2, v8

    const/4 v1, 0x3

    if-le v2, v1, :cond_1c

    return p2

    .line 580
    :cond_1c
    invoke-static {p0, p1, v6}, Lorg/apache/xpath/axes/WalkerFactory;->mightBeProximate(Lorg/apache/xpath/compiler/Compiler;II)Z

    move-result v9

    if-eqz v9, :cond_23

    return p2

    :cond_23
    packed-switch v6, :pswitch_data_6e

    packed-switch v6, :pswitch_data_7a

    .line 624
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_NULL_ERROR_HANDLER"

    invoke-static {p2, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3d
    if-eq v8, v2, :cond_52

    return p2

    :pswitch_40
    if-eq v8, v2, :cond_43

    return p2

    :cond_43
    move v5, v8

    goto :goto_52

    :pswitch_45
    move v3, v8

    :pswitch_46
    if-ne v1, v2, :cond_49

    return p2

    :cond_49
    move v4, v8

    goto :goto_52

    :pswitch_4b
    if-nez v3, :cond_52

    if-eqz v4, :cond_51

    if-nez v5, :cond_52

    :cond_51
    return p2

    .line 628
    :cond_52
    :goto_52
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getStepTestType(I)I

    move-result v1

    .line 630
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextStepPos(I)I

    move-result v6

    if-gez v6, :cond_5d

    goto :goto_6d

    .line 635
    :cond_5d
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v8

    if-eq v7, v8, :cond_6a

    .line 637
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    move-result p1

    if-lez p1, :cond_6a

    return p2

    :cond_6a
    move p1, v6

    goto :goto_8

    :pswitch_6c
    return p2

    :cond_6d
    :goto_6d
    return v8

    :pswitch_data_6e
    .packed-switch 0x16
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x25
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_4b
        :pswitch_46
        :pswitch_45
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_40
        :pswitch_6c
        :pswitch_3d
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
    .end packed-switch
.end method

.method static greylist isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z
    .registers 5

    .line 432
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x2

    const/16 v2, 0x15

    if-eq v0, v2, :cond_3a

    const/16 v2, 0x16

    if-eq v0, v2, :cond_3a

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_3c

    packed-switch v0, :pswitch_data_4a

    return v2

    .line 437
    :pswitch_16
    invoke-static {p0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result p0

    if-eqz p0, :cond_3a

    return v2

    .line 446
    :pswitch_1d
    invoke-static {p0, p1}, Lorg/apache/xpath/axes/WalkerFactory;->functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result p0

    if-eqz p0, :cond_3a

    return v2

    .line 455
    :pswitch_24
    invoke-static {v0}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p1

    .line 456
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    .line 457
    invoke-static {p0, p1}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result p1

    if-eqz p1, :cond_33

    return v2

    .line 460
    :cond_33
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result p0

    if-eqz p0, :cond_3a

    return v2

    :cond_3a
    :pswitch_3a
    const/4 p0, 0x0

    return p0

    :pswitch_data_3c
    .packed-switch 0x5
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x19
        :pswitch_1d
        :pswitch_16
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method public static greylist isSet(II)Z
    .registers 2

    .line 0
    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist isWild(I)Z
    .registers 2

    .line 0
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method static greylist loadOneWalker(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/AxesWalker;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x0

    .line 73
    invoke-static {p1, v0, p0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p0

    .line 75
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method static greylist loadSteps(Lorg/apache/xpath/axes/MatchPatternIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/patterns/StepPattern;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 832
    invoke-static {p1, p2, p3}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    move-result v3

    const/4 p3, 0x0

    move v1, p2

    move-object p2, p3

    move-object v4, p2

    move-object v5, v4

    .line 834
    :goto_9
    invoke-virtual {p1, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_28

    move-object v2, p0

    move-object v0, p1

    .line 836
    invoke-static/range {v0 .. v5}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultStepPattern(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/MatchPatternIterator;ILorg/apache/xpath/patterns/StepPattern;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;

    move-result-object p2

    if-nez v4, :cond_1a

    move-object v4, p2

    goto :goto_1d

    .line 847
    :cond_1a
    invoke-virtual {p2, v5}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    .line 851
    :goto_1d
    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getNextStepPos(I)I

    move-result v1

    if-gez v1, :cond_24

    goto :goto_28

    :cond_24
    move-object v5, p2

    move-object p1, v0

    move-object p0, v2

    goto :goto_9

    :cond_28
    :goto_28
    const/16 p0, 0xd

    move v0, p0

    move-object p1, p2

    move-object v1, p1

    :goto_2d
    if-eqz p1, :cond_b2

    .line 863
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v1

    .line 865
    invoke-virtual {p1, v0}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    .line 890
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/NodeTest;->getWhatToShow()I

    move-result v3

    const/4 v2, 0x2

    if-eq v3, v2, :cond_41

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_a8

    :cond_41
    if-ne v3, v2, :cond_45

    move v6, v2

    goto :goto_48

    :cond_45
    const/16 v4, 0x9

    move v6, v4

    .line 896
    :goto_48
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isDownwardAxisOfMany(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 898
    new-instance v2, Lorg/apache/xpath/patterns/StepPattern;

    .line 899
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/NodeTest;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 900
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/NodeTest;->getLocalName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 903
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/NodeTest;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    move-result-object v0

    .line 904
    invoke-virtual {p1, p3}, Lorg/apache/xpath/patterns/NodeTest;->setNamespace(Ljava/lang/String;)V

    .line 905
    const-string v3, "*"

    invoke-virtual {p1, v3}, Lorg/apache/xpath/patterns/NodeTest;->setLocalName(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/StepPattern;->getPredicates()[Lorg/apache/xpath/Expression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    .line 907
    invoke-virtual {p1, p3}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    const/4 v3, 0x1

    .line 908
    invoke-virtual {p1, v3}, Lorg/apache/xpath/patterns/NodeTest;->setWhatToShow(I)V

    .line 909
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/StepPattern;->getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v3

    .line 910
    invoke-virtual {p1, v2}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    .line 911
    invoke-virtual {v2, v3}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    .line 912
    invoke-virtual {v2, v0}, Lorg/apache/xpath/patterns/NodeTest;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    const/16 v0, 0xb

    .line 918
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v3

    if-ne v0, v3, :cond_91

    const/16 v0, 0xf

    .line 919
    invoke-virtual {p1, v0}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    goto :goto_9c

    :cond_91
    const/4 v0, 0x4

    .line 921
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v3

    if-ne v0, v3, :cond_9c

    const/4 v0, 0x5

    .line 922
    invoke-virtual {p1, v0}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    :cond_9c
    :goto_9c
    move-object p1, v2

    goto :goto_a8

    :cond_9e
    const/4 v0, 0x3

    .line 926
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    move-result v3

    if-ne v0, v3, :cond_a8

    .line 930
    invoke-virtual {p1, v2}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    .line 861
    :cond_a8
    :goto_a8
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/StepPattern;->getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v0

    move v8, v1

    move-object v1, p1

    move-object p1, v0

    move v0, v8

    goto/16 :goto_2d

    :cond_b2
    const/16 p1, 0x10

    if-ge v0, p1, :cond_c8

    .line 940
    new-instance p1, Lorg/apache/xpath/patterns/ContextMatchStepPattern;

    invoke-direct {p1, v0, p0}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;-><init>(II)V

    .line 942
    invoke-virtual {v1}, Lorg/apache/xpath/patterns/NodeTest;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    move-result-object p0

    .line 943
    invoke-virtual {v1, p1}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    .line 944
    invoke-virtual {v1, p0}, Lorg/apache/xpath/patterns/NodeTest;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    .line 945
    invoke-virtual {p1, p0}, Lorg/apache/xpath/patterns/NodeTest;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    :cond_c8
    return-object p2
.end method

.method static greylist loadWalkers(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/axes/AxesWalker;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 104
    invoke-static {p1, p2, p3}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    move-result p3

    const/4 v0, 0x0

    move-object v1, v0

    .line 106
    :goto_6
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_2a

    .line 108
    invoke-static {p1, p2, p0, p3}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v3

    .line 110
    invoke-virtual {v3, p1, p2, v2}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 111
    invoke-virtual {v3, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    if-nez v0, :cond_1b

    move-object v0, v3

    goto :goto_21

    .line 120
    :cond_1b
    invoke-virtual {v1, v3}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 121
    invoke-virtual {v3, v1}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 125
    :goto_21
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getNextStepPos(I)I

    move-result p2

    if-gez p2, :cond_28

    return-object v0

    :cond_28
    move-object v1, v3

    goto :goto_6

    :cond_2a
    return-object v0
.end method

.method public static greylist mightBeProximate(Lorg/apache/xpath/compiler/Compiler;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_4e

    .line 489
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    goto :goto_a

    .line 486
    :pswitch_7
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLength(I)I

    .line 492
    :goto_a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstPredicateOpPos(I)I

    move-result p1

    :goto_e
    const/16 p2, 0x1d

    .line 495
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    if-ne p2, v0, :cond_4b

    add-int/lit8 p2, p1, 0x2

    .line 500
    invoke-virtual {p0, p2}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v1, 0x19

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3f

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_46

    packed-switch v0, :pswitch_data_5a

    return v2

    .line 523
    :pswitch_29
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 524
    invoke-virtual {p0, p2}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    .line 525
    invoke-static {p0, p2}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result p2

    if-eqz p2, :cond_38

    return v2

    .line 528
    :cond_38
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result p2

    if-eqz p2, :cond_46

    return v2

    .line 514
    :cond_3f
    invoke-static {p0, p2}, Lorg/apache/xpath/axes/WalkerFactory;->functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z

    move-result p2

    if-eqz p2, :cond_46

    return v2

    .line 536
    :cond_46
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    goto :goto_e

    :cond_4b
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_4e
    .packed-switch 0x16
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x5
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public static greylist newDTMIterator(Lorg/apache/xpath/compiler/Compiler;IZ)Lorg/apache/xml/dtm/DTMIterator;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 164
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    const/4 v1, 0x0

    .line 165
    invoke-static {p0, v0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    move-result v2

    .line 166
    invoke-static {v2}, Lorg/apache/xpath/axes/WalkerFactory;->isOneStep(I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 170
    invoke-static {v2}, Lorg/apache/xpath/axes/WalkerFactory;->walksSelfOnly(I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 171
    invoke-static {v2}, Lorg/apache/xpath/axes/WalkerFactory;->isWild(I)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-static {v2}, Lorg/apache/xpath/axes/WalkerFactory;->hasPredicate(I)Z

    move-result v4

    if-nez v4, :cond_28

    .line 178
    new-instance v0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    invoke-direct {v0, p0, p1, v2}, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    goto/16 :goto_9c

    .line 181
    :cond_28
    invoke-static {v2}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildrenOnly(I)Z

    move-result v4

    if-eqz v4, :cond_48

    if-eqz v3, :cond_48

    .line 185
    invoke-static {v2}, Lorg/apache/xpath/axes/WalkerFactory;->isWild(I)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {v2}, Lorg/apache/xpath/axes/WalkerFactory;->hasPredicate(I)Z

    move-result v0

    if-nez v0, :cond_42

    .line 191
    new-instance v0, Lorg/apache/xpath/axes/ChildIterator;

    invoke-direct {v0, p0, p1, v2}, Lorg/apache/xpath/axes/ChildIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    goto :goto_9c

    .line 199
    :cond_42
    new-instance v0, Lorg/apache/xpath/axes/ChildTestIterator;

    invoke-direct {v0, p0, p1, v2}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    goto :goto_9c

    :cond_48
    if-eqz v3, :cond_56

    .line 203
    invoke-static {v2}, Lorg/apache/xpath/axes/WalkerFactory;->walksAttributes(I)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 210
    new-instance v0, Lorg/apache/xpath/axes/AttributeIterator;

    invoke-direct {v0, p0, p1, v2}, Lorg/apache/xpath/axes/AttributeIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    goto :goto_9c

    :cond_56
    if-eqz v3, :cond_7e

    .line 212
    invoke-static {v2}, Lorg/apache/xpath/axes/WalkerFactory;->walksFilteredList(I)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 214
    invoke-static {v2}, Lorg/apache/xpath/axes/WalkerFactory;->walksNamespaces(I)Z

    move-result v0

    if-nez v0, :cond_78

    .line 215
    invoke-static {v2}, Lorg/apache/xpath/axes/WalkerFactory;->walksInDocOrder(I)Z

    move-result v0

    if-nez v0, :cond_72

    const/high16 v0, 0x400000

    invoke-static {v2, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 222
    :cond_72
    new-instance v0, Lorg/apache/xpath/axes/OneStepIteratorForward;

    invoke-direct {v0, p0, p1, v2}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    goto :goto_9c

    .line 231
    :cond_78
    new-instance v0, Lorg/apache/xpath/axes/OneStepIterator;

    invoke-direct {v0, p0, p1, v2}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    goto :goto_9c

    .line 247
    :cond_7e
    invoke-static {p0, v0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->isOptimizableForDescendantIterator(Lorg/apache/xpath/compiler/Compiler;II)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 256
    new-instance v0, Lorg/apache/xpath/axes/DescendantIterator;

    invoke-direct {v0, p0, p1, v2}, Lorg/apache/xpath/axes/DescendantIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    goto :goto_9c

    .line 260
    :cond_8a
    invoke-static {p0, v0, v1, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isNaturalDocOrder(Lorg/apache/xpath/compiler/Compiler;III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_97

    .line 267
    new-instance v0, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-direct {v0, p0, p1, v2, v1}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    goto :goto_9c

    .line 278
    :cond_97
    new-instance v0, Lorg/apache/xpath/axes/WalkingIteratorSorted;

    invoke-direct {v0, p0, p1, v2, v1}, Lorg/apache/xpath/axes/WalkingIteratorSorted;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 282
    :goto_9c
    invoke-virtual {v0, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setIsTopLevel(Z)V

    return-object v0
.end method

.method public static greylist walksAncestors(I)Z
    .registers 2

    const/16 v0, 0x6000

    .line 1379
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static greylist walksAttributes(I)Z
    .registers 2

    .line 0
    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksChildren(I)Z
    .registers 2

    .line 0
    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksChildrenAndExtraAndSelfOnly(I)Z
    .registers 2

    .line 1502
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1503
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1504
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1505
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1506
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/high16 v0, 0x8000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    if-eqz p0, :cond_28

    :cond_26
    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksChildrenOnly(I)Z
    .registers 2

    .line 1490
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-eqz v0, :cond_36

    const/high16 v0, 0x2000000

    .line 1491
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1492
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1493
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1494
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1495
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1496
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_34

    const/high16 v0, 0x8000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    if-eqz p0, :cond_36

    :cond_34
    const/4 p0, 0x1

    return p0

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksDescendants(I)Z
    .registers 2

    const/high16 v0, 0x60000

    .line 1399
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static greylist walksDescendantsAndExtraAndSelfOnly(I)Z
    .registers 2

    .line 1512
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1513
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1514
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1515
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1516
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_26

    const/high16 v0, 0x8000000

    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    if-eqz p0, :cond_28

    :cond_26
    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksDownExtraOnly(I)Z
    .registers 2

    .line 1551
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1552
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1553
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1554
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksDownOnly(I)Z
    .registers 2

    .line 1542
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1543
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1544
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1545
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksExtraNodes(I)Z
    .registers 2

    const v0, 0x208000

    .line 1469
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static greylist walksExtraNodesOnly(I)Z
    .registers 2

    .line 1474
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-eqz v0, :cond_28

    const/high16 v0, 0x2000000

    .line 1475
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1476
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1477
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1478
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1479
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result p0

    if-nez p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksFilteredList(I)Z
    .registers 2

    const/high16 v0, 0x4000000

    .line 1425
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static greylist walksFollowingOnlyMaybeAbsolute(I)Z
    .registers 2

    const/high16 v0, 0x2180000

    .line 1449
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1450
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1451
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1452
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksInDocOrder(I)Z
    .registers 2

    .line 1440
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtreeOnlyMaybeAbsolute(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1441
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodesOnly(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1442
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFollowingOnlyMaybeAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_12
    const/high16 v0, 0x4000000

    .line 1443
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksNamespaces(I)Z
    .registers 2

    .line 0
    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksSelfOnly(I)Z
    .registers 2

    const/high16 v0, 0x2000000

    .line 1522
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1523
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1524
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1525
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1526
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksSideways(I)Z
    .registers 2

    const/high16 v0, 0x1980000

    .line 1463
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static greylist walksSubtree(I)Z
    .registers 2

    const/high16 v0, 0x70000

    .line 1404
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static greylist walksSubtreeOnly(I)Z
    .registers 2

    .line 1418
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtreeOnlyMaybeAbsolute(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1419
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksSubtreeOnlyFromRootOrContext(I)Z
    .registers 2

    .line 1430
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1431
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1432
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1433
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_22

    const/high16 v0, 0x4000000

    .line 1434
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    if-nez p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksSubtreeOnlyMaybeAbsolute(I)Z
    .registers 2

    .line 1409
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1410
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1411
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1412
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist walksUp(I)Z
    .registers 2

    const v0, 0x406000

    .line 1458
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result p0

    return p0
.end method

.method public static greylist walksUpOnly(I)Z
    .registers 2

    .line 1533
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1534
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1535
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1536
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method
