.class public Lorg/apache/xpath/axes/WalkerFactory;
.super Ljava/lang/Object;
.source "WalkerFactory.java"


# static fields
.field public static final BITMASK_TRAVERSES_OUTSIDE_SUBTREE:I = 0xdf86000

.field public static final BITS_COUNT:I = 0xff

.field public static final BITS_RESERVED:I = 0xf00

.field public static final BIT_ANCESTOR:I = 0x2000

.field public static final BIT_ANCESTOR_OR_SELF:I = 0x4000

.field public static final BIT_ANY_DESCENDANT_FROM_ROOT:I = 0x20000000

.field public static final BIT_ATTRIBUTE:I = 0x8000

.field public static final BIT_BACKWARDS_SELF:I = 0x10000000

.field public static final BIT_CHILD:I = 0x10000

.field public static final BIT_DESCENDANT:I = 0x20000

.field public static final BIT_DESCENDANT_OR_SELF:I = 0x40000

.field public static final BIT_FILTER:I = 0x4000000

.field public static final BIT_FOLLOWING:I = 0x80000

.field public static final BIT_FOLLOWING_SIBLING:I = 0x100000

.field public static final BIT_MATCH_PATTERN:I = -0x80000000

.field public static final BIT_NAMESPACE:I = 0x200000

.field public static final BIT_NODETEST_ANY:I = 0x40000000

.field public static final BIT_PARENT:I = 0x400000

.field public static final BIT_PRECEDING:I = 0x800000

.field public static final BIT_PRECEDING_SIBLING:I = 0x1000000

.field public static final BIT_PREDICATE:I = 0x1000

.field public static final BIT_ROOT:I = 0x8000000

.field public static final BIT_SELF:I = 0x2000000

.field static final DEBUG_ITERATOR_CREATION:Z

.field static final DEBUG_PATTERN_CREATION:Z

.field static final DEBUG_WALKER_CREATION:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static analyze(Lorg/apache/xpath/compiler/Compiler;II)I
    .locals 9
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "stepOpCodePos"    # I
    .param p2, "stepIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/high16 v6, 0x8000000

    #@2
    const/4 v8, 0x0

    #@3
    .line 670
    const/4 v2, 0x0

    #@4
    .line 671
    .local v2, "stepCount":I
    const/4 v0, 0x0

    #@5
    .line 673
    .local v0, "analysisResult":I
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@8
    move-result v3

    #@9
    .local v3, "stepType":I
    const/4 v4, -0x1

    #@a
    if-eq v4, v3, :cond_3

    #@c
    .line 675
    add-int/lit8 v2, v2, 0x1

    #@e
    .line 682
    invoke-static {p0, p1, v3}, Lorg/apache/xpath/axes/WalkerFactory;->analyzePredicate(Lorg/apache/xpath/compiler/Compiler;II)Z

    #@11
    move-result v1

    #@12
    .line 685
    .local v1, "predAnalysis":Z
    if-eqz v1, :cond_1

    #@14
    .line 686
    or-int/lit16 v0, v0, 0x1000

    #@16
    .line 688
    :cond_1
    packed-switch v3, :pswitch_data_0

    #@19
    .line 755
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    #@1b
    const-string/jumbo v5, "ER_NULL_ERROR_HANDLER"

    #@1e
    const/4 v6, 0x1

    #@1f
    new-array v6, v6, [Ljava/lang/Object;

    #@21
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@24
    move-result-object v7

    #@25
    aput-object v7, v6, v8

    #@27
    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v4

    #@2f
    .line 694
    :pswitch_1
    const/high16 v4, 0x4000000

    #@31
    or-int/2addr v0, v4

    #@32
    .line 759
    :goto_0
    add-int/lit8 v4, p1, 0x3

    #@34
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@37
    move-result v4

    #@38
    const/16 v5, 0x409

    #@3a
    if-ne v5, v4, :cond_2

    #@3c
    .line 761
    const/high16 v4, 0x40000000    # 2.0f

    #@3e
    or-int/2addr v0, v4

    #@3f
    .line 764
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    #@42
    move-result p1

    #@43
    .line 766
    if-gez p1, :cond_0

    #@45
    .line 770
    .end local v1    # "predAnalysis":Z
    :cond_3
    and-int/lit16 v4, v2, 0xff

    #@47
    or-int/2addr v0, v4

    #@48
    .line 772
    return v0

    #@49
    .line 697
    .restart local v1    # "predAnalysis":Z
    :pswitch_2
    or-int/2addr v0, v6

    #@4a
    .line 698
    goto :goto_0

    #@4b
    .line 700
    :pswitch_3
    or-int/lit16 v0, v0, 0x2000

    #@4d
    .line 701
    goto :goto_0

    #@4e
    .line 703
    :pswitch_4
    or-int/lit16 v0, v0, 0x4000

    #@50
    .line 704
    goto :goto_0

    #@51
    .line 706
    :pswitch_5
    const v4, 0x8000

    #@54
    or-int/2addr v0, v4

    #@55
    .line 707
    goto :goto_0

    #@56
    .line 709
    :pswitch_6
    const/high16 v4, 0x200000

    #@58
    or-int/2addr v0, v4

    #@59
    .line 710
    goto :goto_0

    #@5a
    .line 712
    :pswitch_7
    const/high16 v4, 0x10000

    #@5c
    or-int/2addr v0, v4

    #@5d
    .line 713
    goto :goto_0

    #@5e
    .line 715
    :pswitch_8
    const/high16 v4, 0x20000

    #@60
    or-int/2addr v0, v4

    #@61
    .line 716
    goto :goto_0

    #@62
    .line 720
    :pswitch_9
    const/4 v4, 0x2

    #@63
    if-ne v4, v2, :cond_4

    #@65
    if-ne v6, v0, :cond_4

    #@67
    .line 722
    const/high16 v4, 0x20000000

    #@69
    or-int/2addr v0, v4

    #@6a
    .line 725
    :cond_4
    const/high16 v4, 0x40000

    #@6c
    or-int/2addr v0, v4

    #@6d
    .line 726
    goto :goto_0

    #@6e
    .line 728
    :pswitch_a
    const/high16 v4, 0x80000

    #@70
    or-int/2addr v0, v4

    #@71
    .line 729
    goto :goto_0

    #@72
    .line 731
    :pswitch_b
    const/high16 v4, 0x100000

    #@74
    or-int/2addr v0, v4

    #@75
    .line 732
    goto :goto_0

    #@76
    .line 734
    :pswitch_c
    const/high16 v4, 0x800000

    #@78
    or-int/2addr v0, v4

    #@79
    .line 735
    goto :goto_0

    #@7a
    .line 737
    :pswitch_d
    const/high16 v4, 0x1000000

    #@7c
    or-int/2addr v0, v4

    #@7d
    .line 738
    goto :goto_0

    #@7e
    .line 740
    :pswitch_e
    const/high16 v4, 0x400000

    #@80
    or-int/2addr v0, v4

    #@81
    .line 741
    goto :goto_0

    #@82
    .line 743
    :pswitch_f
    const/high16 v4, 0x2000000

    #@84
    or-int/2addr v0, v4

    #@85
    .line 744
    goto :goto_0

    #@86
    .line 746
    :pswitch_10
    const v4, -0x7fff8000

    #@89
    or-int/2addr v0, v4

    #@8a
    .line 747
    goto :goto_0

    #@8b
    .line 749
    :pswitch_11
    const v4, -0x7fffe000

    #@8e
    or-int/2addr v0, v4

    #@8f
    .line 750
    goto :goto_0

    #@90
    .line 752
    :pswitch_12
    const/high16 v4, -0x7fc00000

    #@92
    or-int/2addr v0, v4

    #@93
    .line 753
    goto :goto_0

    #@94
    .line 688
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_6
        :pswitch_2
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method static analyzePredicate(Lorg/apache/xpath/compiler/Compiler;II)Z
    .locals 4
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "stepType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1133
    packed-switch p2, :pswitch_data_0

    #@4
    .line 1142
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    #@7
    move-result v0

    #@8
    .line 1145
    .local v0, "argLen":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    #@b
    move-result v2

    #@c
    .line 1146
    .local v2, "pos":I
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    #@f
    move-result v1

    #@10
    .line 1148
    .local v1, "nPredicates":I
    if-lez v1, :cond_0

    #@12
    const/4 v3, 0x1

    #@13
    :cond_0
    return v3

    #@14
    .line 1139
    .end local v0    # "argLen":I
    .end local v1    # "nPredicates":I
    .end local v2    # "pos":I
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLength(I)I

    #@17
    move-result v0

    #@18
    .restart local v0    # "argLen":I
    goto :goto_0

    #@19
    .line 1133
    nop

    #@1a
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static canCrissCross(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1566
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSelfOnly(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1567
    return v1

    #@8
    .line 1568
    :cond_0
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDownOnly(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canSkipSubtrees(I)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 1570
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildrenAndExtraAndSelfOnly(I)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_3

    #@1a
    .line 1571
    return v1

    #@1b
    .line 1569
    :cond_2
    return v1

    #@1c
    .line 1572
    :cond_3
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendantsAndExtraAndSelfOnly(I)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_4

    #@22
    .line 1573
    return v1

    #@23
    .line 1574
    :cond_4
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUpOnly(I)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_5

    #@29
    .line 1575
    return v1

    #@2a
    .line 1576
    :cond_5
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodesOnly(I)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_6

    #@30
    .line 1577
    return v1

    #@31
    .line 1578
    :cond_6
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_8

    #@37
    .line 1579
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    #@3a
    move-result v0

    #@3b
    if-nez v0, :cond_7

    #@3d
    .line 1580
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    #@40
    move-result v0

    #@41
    .line 1579
    if-nez v0, :cond_7

    #@43
    .line 1581
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canSkipSubtrees(I)Z

    #@46
    move-result v0

    #@47
    .line 1578
    if-eqz v0, :cond_8

    #@49
    .line 1582
    :cond_7
    const/4 v0, 0x1

    #@4a
    return v0

    #@4b
    .line 1584
    :cond_8
    return v1
.end method

.method public static canSkipSubtrees(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1560
    const/high16 v0, 0x10000

    #@2
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@5
    move-result v0

    #@6
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method private static createDefaultStepPattern(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/MatchPatternIterator;ILorg/apache/xpath/patterns/StepPattern;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;
    .locals 14
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "mpi"    # Lorg/apache/xpath/axes/MatchPatternIterator;
    .param p3, "analysis"    # I
    .param p4, "tail"    # Lorg/apache/xpath/patterns/StepPattern;
    .param p5, "head"    # Lorg/apache/xpath/patterns/StepPattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 984
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@3
    move-result v10

    #@4
    .line 985
    .local v10, "stepType":I
    const/4 v9, 0x0

    #@5
    .line 986
    .local v9, "simpleInit":Z
    const/4 v8, 0x1

    #@6
    .line 988
    .local v8, "prevIsOneStepDown":Z
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    #@9
    move-result v1

    #@a
    .line 989
    .local v1, "whatToShow":I
    const/4 v0, 0x0

    #@b
    .line 992
    .local v0, "ai":Lorg/apache/xpath/patterns/StepPattern;
    packed-switch v10, :pswitch_data_0

    #@e
    .line 1086
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v3, "ER_NULL_ERROR_HANDLER"

    #@13
    const/4 v11, 0x1

    #@14
    new-array v11, v11, [Ljava/lang/Object;

    #@16
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@19
    move-result-object v12

    #@1a
    const/4 v13, 0x0

    #@1b
    aput-object v12, v11, v13

    #@1d
    invoke-static {v3, v11}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2

    #@25
    .line 998
    :pswitch_1
    const/4 v8, 0x0

    #@26
    .line 1002
    packed-switch v10, :pswitch_data_1

    #@29
    .line 1011
    add-int/lit8 v2, p1, 0x2

    #@2b
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@2e
    move-result-object v7

    #@2f
    .line 1014
    .local v7, "expr":Lorg/apache/xpath/Expression;
    :goto_0
    const/16 v4, 0x14

    #@31
    .line 1015
    .local v4, "axis":I
    const/16 v5, 0x14

    #@33
    .line 1016
    .local v5, "predicateAxis":I
    new-instance v0, Lorg/apache/xpath/patterns/FunctionPattern;

    #@35
    .end local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    invoke-direct {v0, v7, v4, v5}, Lorg/apache/xpath/patterns/FunctionPattern;-><init>(Lorg/apache/xpath/Expression;II)V

    #@38
    .line 1017
    .local v0, "ai":Lorg/apache/xpath/patterns/StepPattern;
    const/4 v9, 0x1

    #@39
    .line 1089
    .end local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    .end local v7    # "expr":Lorg/apache/xpath/Expression;
    :goto_1
    if-nez v0, :cond_0

    #@3b
    .line 1091
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    #@3e
    move-result v1

    #@3f
    .line 1092
    new-instance v0, Lorg/apache/xpath/patterns/StepPattern;

    #@41
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 1093
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    .line 1092
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    #@4c
    .line 1107
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    #@4f
    move-result v6

    #@50
    .line 1109
    .local v6, "argLen":I
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/Compiler;->getCompiledPredicates(I)[Lorg/apache/xpath/Expression;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    #@57
    .line 1111
    return-object v0

    #@58
    .line 1008
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    .end local v6    # "argLen":I
    .local v0, "ai":Lorg/apache/xpath/patterns/StepPattern;
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->compile(I)Lorg/apache/xpath/Expression;

    #@5b
    move-result-object v7

    #@5c
    .restart local v7    # "expr":Lorg/apache/xpath/Expression;
    goto :goto_0

    #@5d
    .line 1020
    .end local v7    # "expr":Lorg/apache/xpath/Expression;
    :pswitch_3
    const/16 v1, 0x500

    #@5f
    .line 1023
    const/16 v4, 0x13

    #@61
    .line 1024
    .restart local v4    # "axis":I
    const/16 v5, 0x13

    #@63
    .line 1025
    .restart local v5    # "predicateAxis":I
    new-instance v0, Lorg/apache/xpath/patterns/StepPattern;

    #@65
    .end local v0    # "ai":Lorg/apache/xpath/patterns/StepPattern;
    const/16 v2, 0x500

    #@67
    invoke-direct {v0, v2, v4, v5}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    #@6a
    .line 1028
    .local v0, "ai":Lorg/apache/xpath/patterns/StepPattern;
    goto :goto_1

    #@6b
    .line 1030
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    .local v0, "ai":Lorg/apache/xpath/patterns/StepPattern;
    :pswitch_4
    const/4 v1, 0x2

    #@6c
    .line 1031
    const/16 v4, 0xa

    #@6e
    .line 1032
    .restart local v4    # "axis":I
    const/4 v5, 0x2

    #@6f
    .line 1034
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    #@70
    .line 1036
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_5
    const/16 v1, 0x1000

    #@72
    .line 1037
    const/16 v4, 0xa

    #@74
    .line 1038
    .restart local v4    # "axis":I
    const/16 v5, 0x9

    #@76
    .line 1040
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    #@77
    .line 1042
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_6
    const/4 v4, 0x4

    #@78
    .line 1043
    .restart local v4    # "axis":I
    const/4 v5, 0x0

    #@79
    .line 1044
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    #@7a
    .line 1046
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_7
    const/16 v4, 0xa

    #@7c
    .line 1047
    .restart local v4    # "axis":I
    const/4 v5, 0x3

    #@7d
    .line 1048
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    #@7e
    .line 1050
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_8
    const/4 v4, 0x5

    #@7f
    .line 1051
    .restart local v4    # "axis":I
    const/4 v5, 0x1

    #@80
    .line 1052
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    #@81
    .line 1054
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_9
    const/16 v4, 0xd

    #@83
    .line 1055
    .restart local v4    # "axis":I
    const/16 v5, 0xd

    #@85
    .line 1056
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    #@86
    .line 1058
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_a
    const/4 v4, 0x3

    #@87
    .line 1059
    .restart local v4    # "axis":I
    const/16 v5, 0xa

    #@89
    .line 1060
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    #@8a
    .line 1062
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_b
    const/4 v4, 0x7

    #@8b
    .line 1063
    .restart local v4    # "axis":I
    const/16 v5, 0xc

    #@8d
    .line 1064
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    #@8e
    .line 1066
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_c
    const/4 v4, 0x6

    #@8f
    .line 1067
    .restart local v4    # "axis":I
    const/16 v5, 0xb

    #@91
    .line 1068
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    #@92
    .line 1070
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_d
    const/16 v4, 0xc

    #@94
    .line 1071
    .restart local v4    # "axis":I
    const/4 v5, 0x7

    #@95
    .line 1072
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    #@96
    .line 1074
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_e
    const/16 v4, 0xb

    #@98
    .line 1075
    .restart local v4    # "axis":I
    const/4 v5, 0x6

    #@99
    .line 1076
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    #@9a
    .line 1078
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_f
    const/4 v4, 0x1

    #@9b
    .line 1079
    .restart local v4    # "axis":I
    const/4 v5, 0x5

    #@9c
    .line 1080
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    #@9d
    .line 1082
    .end local v4    # "axis":I
    .end local v5    # "predicateAxis":I
    :pswitch_10
    const/4 v4, 0x0

    #@9e
    .line 1083
    .restart local v4    # "axis":I
    const/4 v5, 0x4

    #@9f
    .line 1084
    .restart local v5    # "predicateAxis":I
    goto :goto_1

    #@a0
    .line 992
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_7
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_5
        :pswitch_3
    .end packed-switch

    #@de
    .line 1002
    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;
    .locals 11
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "lpi"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p3, "analysis"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, -0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 1168
    const/4 v0, 0x0

    #@4
    .line 1169
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@7
    move-result v3

    #@8
    .line 1179
    .local v3, "stepType":I
    const/4 v2, 0x0

    #@9
    .line 1180
    .local v2, "simpleInit":Z
    and-int/lit16 v4, p3, 0xff

    #@b
    .line 1181
    .local v4, "totalNumberWalkers":I
    const/4 v1, 0x1

    #@c
    .line 1183
    .local v1, "prevIsOneStepDown":Z
    packed-switch v3, :pswitch_data_0

    #@f
    .line 1250
    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    #@11
    const-string/jumbo v7, "ER_NULL_ERROR_HANDLER"

    #@14
    new-array v8, v8, [Ljava/lang/Object;

    #@16
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@19
    move-result-object v9

    #@1a
    aput-object v9, v8, v10

    #@1c
    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v6

    #@24
    .line 1189
    :pswitch_1
    const/4 v1, 0x0

    #@25
    .line 1195
    new-instance v0, Lorg/apache/xpath/axes/FilterExprWalker;

    #@27
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    invoke-direct {v0, p2}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    #@2a
    .line 1196
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v2, 0x1

    #@2b
    .line 1254
    :goto_0
    if-eqz v2, :cond_0

    #@2d
    .line 1256
    invoke-virtual {v0, v7}, Lorg/apache/xpath/axes/AxesWalker;->initNodeTest(I)V

    #@30
    .line 1280
    :goto_1
    return-object v0

    #@31
    .line 1199
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_2
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    #@33
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0x13

    #@35
    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@38
    .line 1200
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@39
    .line 1202
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_3
    const/4 v1, 0x0

    #@3a
    .line 1203
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    #@3c
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    invoke-direct {v0, p2, v10}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@3f
    .line 1204
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@40
    .line 1206
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_4
    const/4 v1, 0x0

    #@41
    .line 1207
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    #@43
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    invoke-direct {v0, p2, v8}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@46
    .line 1208
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@47
    .line 1210
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_5
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    #@49
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x2

    #@4a
    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@4d
    .line 1211
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@4e
    .line 1213
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_6
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    #@50
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0x9

    #@52
    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@55
    .line 1214
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@56
    .line 1216
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_7
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    #@58
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x3

    #@59
    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@5c
    .line 1217
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@5d
    .line 1219
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_8
    const/4 v1, 0x0

    #@5e
    .line 1220
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    #@60
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x4

    #@61
    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@64
    .line 1221
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@65
    .line 1223
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_9
    const/4 v1, 0x0

    #@66
    .line 1224
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    #@68
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x5

    #@69
    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@6c
    .line 1225
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@6d
    .line 1227
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_a
    const/4 v1, 0x0

    #@6e
    .line 1228
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    #@70
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x6

    #@71
    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@74
    .line 1229
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@75
    .line 1231
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_b
    const/4 v1, 0x0

    #@76
    .line 1232
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    #@78
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v6, 0x7

    #@79
    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@7c
    .line 1233
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@7d
    .line 1235
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_c
    const/4 v1, 0x0

    #@7e
    .line 1236
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    #@80
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0xb

    #@82
    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@85
    .line 1237
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@86
    .line 1239
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_d
    const/4 v1, 0x0

    #@87
    .line 1240
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    #@89
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0xc

    #@8b
    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@8e
    .line 1241
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@8f
    .line 1243
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_e
    const/4 v1, 0x0

    #@90
    .line 1244
    new-instance v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    #@92
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0xa

    #@94
    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/ReverseAxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@97
    .line 1245
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@98
    .line 1247
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    :pswitch_f
    new-instance v0, Lorg/apache/xpath/axes/AxesWalker;

    #@9a
    .end local v0    # "ai":Lorg/apache/xpath/axes/AxesWalker;
    const/16 v6, 0xd

    #@9c
    invoke-direct {v0, p2, v6}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@9f
    .line 1248
    .local v0, "ai":Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_0

    #@a0
    .line 1260
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    #@a3
    move-result v5

    #@a4
    .line 1269
    .local v5, "whatToShow":I
    and-int/lit16 v6, v5, 0x1043

    #@a6
    if-eqz v6, :cond_1

    #@a8
    .line 1271
    if-ne v5, v7, :cond_2

    #@aa
    .line 1272
    :cond_1
    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/AxesWalker;->initNodeTest(I)V

    #@ad
    goto :goto_1

    #@ae
    .line 1275
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    #@b1
    move-result-object v6

    #@b2
    .line 1276
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    #@b5
    move-result-object v7

    #@b6
    .line 1275
    invoke-virtual {v0, v5, v6, v7}, Lorg/apache/xpath/axes/AxesWalker;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    #@b9
    goto/16 :goto_1

    #@bb
    .line 1183
    nop

    #@bc
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public static diagnoseIterator(Ljava/lang/String;ILorg/apache/xpath/compiler/Compiler;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "analysis"    # I
    .param p2, "compiler"    # Lorg/apache/xpath/compiler/Compiler;

    #@0
    .prologue
    .line 141
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p2}, Lorg/apache/xpath/compiler/Compiler;->toString()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, ", "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, ", "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 142
    const-string/jumbo v2, ", "

    #@2c
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 143
    invoke-static {p1}, Lorg/apache/xpath/axes/WalkerFactory;->getAnalysisString(I)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3f
    .line 139
    return-void
.end method

.method static functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z
    .locals 9
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 403
    add-int/lit8 v7, p1, 0x1

    #@3
    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@6
    move-result v7

    #@7
    add-int/2addr v7, p1

    #@8
    add-int/lit8 v1, v7, -0x1

    #@a
    .line 404
    .local v1, "endFunc":I
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    #@d
    move-result p1

    #@e
    .line 405
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@11
    move-result v2

    #@12
    .line 409
    .local v2, "funcID":I
    packed-switch v2, :pswitch_data_0

    #@15
    .line 415
    add-int/lit8 p1, p1, 0x1

    #@17
    .line 416
    const/4 v3, 0x0

    #@18
    .line 417
    .local v3, "i":I
    move v5, p1

    #@19
    .local v5, "p":I
    :goto_0
    if-ge v5, v1, :cond_1

    #@1b
    .line 419
    add-int/lit8 v4, v5, 0x2

    #@1d
    .line 420
    .local v4, "innerExprOpPos":I
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@20
    move-result v0

    #@21
    .line 421
    .local v0, "argOp":I
    invoke-static {p0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    #@24
    move-result v6

    #@25
    .line 422
    .local v6, "prox":Z
    if-eqz v6, :cond_0

    #@27
    .line 423
    return v8

    #@28
    .line 413
    .end local v0    # "argOp":I
    .end local v3    # "i":I
    .end local v4    # "innerExprOpPos":I
    .end local v5    # "p":I
    .end local v6    # "prox":Z
    :pswitch_0
    return v8

    #@29
    .line 417
    .restart local v0    # "argOp":I
    .restart local v3    # "i":I
    .restart local v4    # "innerExprOpPos":I
    .restart local v5    # "p":I
    .restart local v6    # "prox":Z
    :cond_0
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@2c
    move-result v5

    #@2d
    add-int/lit8 v3, v3, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 427
    .end local v0    # "argOp":I
    .end local v4    # "innerExprOpPos":I
    .end local v6    # "prox":Z
    :cond_1
    const/4 v7, 0x0

    #@31
    return v7

    #@32
    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getAnalysisBitFromAxes(I)I
    .locals 2
    .param p0, "axis"    # I

    #@0
    .prologue
    const/high16 v1, 0x4000000

    #@2
    const/high16 v0, 0x40000

    #@4
    .line 355
    packed-switch p0, :pswitch_data_0

    #@7
    .line 396
    :pswitch_0
    return v1

    #@8
    .line 358
    :pswitch_1
    const/16 v0, 0x2000

    #@a
    return v0

    #@b
    .line 360
    :pswitch_2
    const/16 v0, 0x4000

    #@d
    return v0

    #@e
    .line 362
    :pswitch_3
    const v0, 0x8000

    #@11
    return v0

    #@12
    .line 364
    :pswitch_4
    const/high16 v0, 0x10000

    #@14
    return v0

    #@15
    .line 366
    :pswitch_5
    const/high16 v0, 0x20000

    #@17
    return v0

    #@18
    .line 368
    :pswitch_6
    return v0

    #@19
    .line 370
    :pswitch_7
    const/high16 v0, 0x80000

    #@1b
    return v0

    #@1c
    .line 372
    :pswitch_8
    const/high16 v0, 0x100000

    #@1e
    return v0

    #@1f
    .line 375
    :pswitch_9
    const/high16 v0, 0x200000

    #@21
    return v0

    #@22
    .line 377
    :pswitch_a
    const/high16 v0, 0x400000

    #@24
    return v0

    #@25
    .line 379
    :pswitch_b
    const/high16 v0, 0x800000

    #@27
    return v0

    #@28
    .line 381
    :pswitch_c
    const/high16 v0, 0x1000000

    #@2a
    return v0

    #@2b
    .line 383
    :pswitch_d
    const/high16 v0, 0x2000000

    #@2d
    return v0

    #@2e
    .line 385
    :pswitch_e
    return v0

    #@2f
    .line 390
    :pswitch_f
    const/high16 v0, 0x20000000

    #@31
    return v0

    #@32
    .line 392
    :pswitch_10
    const/high16 v0, 0x8000000

    #@34
    return v0

    #@35
    .line 394
    :pswitch_11
    return v1

    #@36
    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static getAnalysisString(I)Ljava/lang/String;
    .locals 3
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1285
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1286
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "count: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->getStepCount(I)I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    .line 1287
    const/high16 v1, 0x40000000    # 2.0f

    #@29
    and-int/2addr v1, p0

    #@2a
    if-eqz v1, :cond_0

    #@2c
    .line 1289
    const-string/jumbo v1, "NTANY|"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    .line 1291
    :cond_0
    and-int/lit16 v1, p0, 0x1000

    #@34
    if-eqz v1, :cond_1

    #@36
    .line 1293
    const-string/jumbo v1, "PRED|"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    .line 1295
    :cond_1
    and-int/lit16 v1, p0, 0x2000

    #@3e
    if-eqz v1, :cond_2

    #@40
    .line 1297
    const-string/jumbo v1, "ANC|"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    .line 1299
    :cond_2
    and-int/lit16 v1, p0, 0x4000

    #@48
    if-eqz v1, :cond_3

    #@4a
    .line 1301
    const-string/jumbo v1, "ANCOS|"

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@50
    .line 1303
    :cond_3
    const v1, 0x8000

    #@53
    and-int/2addr v1, p0

    #@54
    if-eqz v1, :cond_4

    #@56
    .line 1305
    const-string/jumbo v1, "ATTR|"

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    .line 1307
    :cond_4
    const/high16 v1, 0x10000

    #@5e
    and-int/2addr v1, p0

    #@5f
    if-eqz v1, :cond_5

    #@61
    .line 1309
    const-string/jumbo v1, "CH|"

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@67
    .line 1311
    :cond_5
    const/high16 v1, 0x20000

    #@69
    and-int/2addr v1, p0

    #@6a
    if-eqz v1, :cond_6

    #@6c
    .line 1313
    const-string/jumbo v1, "DESC|"

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@72
    .line 1315
    :cond_6
    const/high16 v1, 0x40000

    #@74
    and-int/2addr v1, p0

    #@75
    if-eqz v1, :cond_7

    #@77
    .line 1317
    const-string/jumbo v1, "DESCOS|"

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7d
    .line 1319
    :cond_7
    const/high16 v1, 0x80000

    #@7f
    and-int/2addr v1, p0

    #@80
    if-eqz v1, :cond_8

    #@82
    .line 1321
    const-string/jumbo v1, "FOL|"

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@88
    .line 1323
    :cond_8
    const/high16 v1, 0x100000

    #@8a
    and-int/2addr v1, p0

    #@8b
    if-eqz v1, :cond_9

    #@8d
    .line 1325
    const-string/jumbo v1, "FOLS|"

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@93
    .line 1327
    :cond_9
    const/high16 v1, 0x200000

    #@95
    and-int/2addr v1, p0

    #@96
    if-eqz v1, :cond_a

    #@98
    .line 1329
    const-string/jumbo v1, "NS|"

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9e
    .line 1331
    :cond_a
    const/high16 v1, 0x400000

    #@a0
    and-int/2addr v1, p0

    #@a1
    if-eqz v1, :cond_b

    #@a3
    .line 1333
    const-string/jumbo v1, "P|"

    #@a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a9
    .line 1335
    :cond_b
    const/high16 v1, 0x800000

    #@ab
    and-int/2addr v1, p0

    #@ac
    if-eqz v1, :cond_c

    #@ae
    .line 1337
    const-string/jumbo v1, "PREC|"

    #@b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b4
    .line 1339
    :cond_c
    const/high16 v1, 0x1000000

    #@b6
    and-int/2addr v1, p0

    #@b7
    if-eqz v1, :cond_d

    #@b9
    .line 1341
    const-string/jumbo v1, "PRECS|"

    #@bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@bf
    .line 1343
    :cond_d
    const/high16 v1, 0x2000000

    #@c1
    and-int/2addr v1, p0

    #@c2
    if-eqz v1, :cond_e

    #@c4
    .line 1345
    const-string/jumbo v1, ".|"

    #@c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ca
    .line 1347
    :cond_e
    const/high16 v1, 0x4000000

    #@cc
    and-int/2addr v1, p0

    #@cd
    if-eqz v1, :cond_f

    #@cf
    .line 1349
    const-string/jumbo v1, "FLT|"

    #@d2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d5
    .line 1351
    :cond_f
    const/high16 v1, 0x8000000

    #@d7
    and-int/2addr v1, p0

    #@d8
    if-eqz v1, :cond_10

    #@da
    .line 1353
    const-string/jumbo v1, "R|"

    #@dd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e0
    .line 1355
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@e3
    move-result-object v1

    #@e4
    return-object v1
.end method

.method public static getAxisFromStep(Lorg/apache/xpath/compiler/Compiler;I)I
    .locals 6
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "stepOpCodePos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 305
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@5
    move-result v0

    #@6
    .line 307
    .local v0, "stepType":I
    packed-switch v0, :pswitch_data_0

    #@9
    .line 344
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@b
    const-string/jumbo v2, "ER_NULL_ERROR_HANDLER"

    #@e
    new-array v3, v3, [Ljava/lang/Object;

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    aput-object v4, v3, v5

    #@16
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 310
    :pswitch_1
    const/4 v1, 0x6

    #@1f
    return v1

    #@20
    .line 312
    :pswitch_2
    const/4 v1, 0x7

    #@21
    return v1

    #@22
    .line 314
    :pswitch_3
    const/16 v1, 0xb

    #@24
    return v1

    #@25
    .line 316
    :pswitch_4
    const/16 v1, 0xc

    #@27
    return v1

    #@28
    .line 318
    :pswitch_5
    const/16 v1, 0xa

    #@2a
    return v1

    #@2b
    .line 320
    :pswitch_6
    const/16 v1, 0x9

    #@2d
    return v1

    #@2e
    .line 322
    :pswitch_7
    return v5

    #@2f
    .line 324
    :pswitch_8
    return v3

    #@30
    .line 326
    :pswitch_9
    const/4 v1, 0x2

    #@31
    return v1

    #@32
    .line 328
    :pswitch_a
    const/16 v1, 0x13

    #@34
    return v1

    #@35
    .line 330
    :pswitch_b
    const/4 v1, 0x3

    #@36
    return v1

    #@37
    .line 332
    :pswitch_c
    const/4 v1, 0x5

    #@38
    return v1

    #@39
    .line 334
    :pswitch_d
    const/4 v1, 0x4

    #@3a
    return v1

    #@3b
    .line 336
    :pswitch_e
    const/16 v1, 0xd

    #@3d
    return v1

    #@3e
    .line 341
    :pswitch_f
    const/16 v1, 0x14

    #@40
    return v1

    #@41
    .line 307
    nop

    #@42
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_e
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public static getStepCount(I)I
    .locals 1
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1728
    and-int/lit16 v0, p0, 0xff

    #@2
    return v0
.end method

.method public static hasPredicate(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1369
    and-int/lit16 v1, p0, 0x1000

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isAbsolute(I)Z
    .locals 1
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1485
    const/high16 v0, 0xc000000

    #@2
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isDownwardAxisOfMany(I)Z
    .locals 2
    .param p0, "axis"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 785
    const/4 v1, 0x5

    #@2
    if-eq v1, p0, :cond_0

    #@4
    .line 786
    const/4 v1, 0x4

    #@5
    if-ne v1, p0, :cond_1

    #@7
    .line 785
    :cond_0
    :goto_0
    return v0

    #@8
    .line 787
    :cond_1
    const/4 v1, 0x6

    #@9
    if-eq v1, p0, :cond_0

    #@b
    .line 789
    const/16 v1, 0xb

    #@d
    if-eq v1, p0, :cond_0

    #@f
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public static isNaturalDocOrder(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1599
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->canCrissCross(I)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    const/high16 v0, 0x200000

    #@9
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 1600
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFilteredList(I)Z

    #@12
    move-result v0

    #@13
    .line 1599
    if-eqz v0, :cond_1

    #@15
    .line 1601
    :cond_0
    return v1

    #@16
    .line 1603
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksInDocOrder(I)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 1604
    const/4 v0, 0x1

    #@1d
    return v0

    #@1e
    .line 1606
    :cond_2
    return v1
.end method

.method private static isNaturalDocOrder(Lorg/apache/xpath/compiler/Compiler;III)Z
    .locals 11
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "stepOpCodePos"    # I
    .param p2, "stepIndex"    # I
    .param p3, "analysis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 1627
    invoke-static {p3}, Lorg/apache/xpath/axes/WalkerFactory;->canCrissCross(I)Z

    #@5
    move-result v6

    #@6
    if-eqz v6, :cond_0

    #@8
    .line 1628
    return v10

    #@9
    .line 1632
    :cond_0
    const/high16 v6, 0x200000

    #@b
    invoke-static {p3, v6}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@e
    move-result v6

    #@f
    if-eqz v6, :cond_1

    #@11
    .line 1633
    return v10

    #@12
    .line 1641
    :cond_1
    const/high16 v6, 0x180000

    #@14
    invoke-static {p3, v6}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_2

    #@1a
    .line 1642
    const/high16 v6, 0x1800000

    #@1c
    invoke-static {p3, v6}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@1f
    move-result v6

    #@20
    .line 1641
    if-eqz v6, :cond_2

    #@22
    .line 1643
    return v10

    #@23
    .line 1651
    :cond_2
    const/4 v4, 0x0

    #@24
    .line 1652
    .local v4, "stepCount":I
    const/4 v0, 0x0

    #@25
    .line 1657
    .local v0, "foundWildAttribute":Z
    const/4 v3, 0x0

    #@26
    .line 1659
    .local v3, "potentialDuplicateMakingStepCount":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@29
    move-result v5

    #@2a
    .local v5, "stepType":I
    const/4 v6, -0x1

    #@2b
    if-eq v6, v5, :cond_5

    #@2d
    .line 1661
    add-int/lit8 v4, v4, 0x1

    #@2f
    .line 1663
    packed-switch v5, :pswitch_data_0

    #@32
    .line 1706
    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    #@34
    const-string/jumbo v7, "ER_NULL_ERROR_HANDLER"

    #@37
    new-array v8, v8, [Ljava/lang/Object;

    #@39
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3c
    move-result-object v9

    #@3d
    aput-object v9, v8, v10

    #@3f
    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@42
    move-result-object v7

    #@43
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@46
    throw v6

    #@47
    .line 1667
    :pswitch_1
    if-eqz v0, :cond_3

    #@49
    .line 1668
    return v10

    #@4a
    .line 1673
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    .line 1675
    .local v1, "localName":Ljava/lang/String;
    const-string/jumbo v6, "*"

    #@51
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v6

    #@55
    if-eqz v6, :cond_4

    #@57
    .line 1677
    const/4 v0, 0x1

    #@58
    .line 1710
    .end local v1    # "localName":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    #@5b
    move-result v2

    #@5c
    .line 1712
    .local v2, "nextStepOpCodePos":I
    if-gez v2, :cond_7

    #@5e
    .line 1718
    .end local v2    # "nextStepOpCodePos":I
    :cond_5
    return v8

    #@5f
    .line 1696
    :pswitch_2
    if-lez v3, :cond_6

    #@61
    .line 1697
    return v10

    #@62
    .line 1698
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@64
    .line 1702
    :pswitch_3
    if-eqz v0, :cond_4

    #@66
    .line 1703
    return v10

    #@67
    .line 1715
    .restart local v2    # "nextStepOpCodePos":I
    :cond_7
    move p1, v2

    #@68
    goto :goto_0

    #@69
    .line 1663
    nop

    #@6a
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static isOneStep(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1723
    and-int/lit16 v1, p0, 0xff

    #@3
    if-ne v1, v0, :cond_0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private static isOptimizableForDescendantIterator(Lorg/apache/xpath/compiler/Compiler;II)Z
    .locals 13
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "stepOpCodePos"    # I
    .param p2, "stepIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v9, -0x1

    #@2
    const/4 v10, 0x1

    #@3
    const/4 v12, 0x0

    #@4
    .line 562
    const/4 v6, 0x0

    #@5
    .line 563
    .local v6, "stepCount":I
    const/4 v1, 0x0

    #@6
    .line 564
    .local v1, "foundDorDS":Z
    const/4 v2, 0x0

    #@7
    .line 565
    .local v2, "foundSelf":Z
    const/4 v0, 0x0

    #@8
    .line 567
    .local v0, "foundDS":Z
    const/16 v5, 0x409

    #@a
    .line 569
    .local v5, "nodeTestType":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@d
    move-result v7

    #@e
    .local v7, "stepType":I
    if-eq v9, v7, :cond_4

    #@10
    .line 573
    const/16 v8, 0x409

    #@12
    if-eq v5, v8, :cond_0

    #@14
    const/16 v8, 0x23

    #@16
    if-eq v5, v8, :cond_0

    #@18
    .line 574
    return v12

    #@19
    .line 576
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@1b
    .line 577
    if-le v6, v11, :cond_1

    #@1d
    .line 578
    return v12

    #@1e
    .line 580
    :cond_1
    invoke-static {p0, p1, v7}, Lorg/apache/xpath/axes/WalkerFactory;->mightBeProximate(Lorg/apache/xpath/compiler/Compiler;II)Z

    #@21
    move-result v3

    #@22
    .line 581
    .local v3, "mightBeProximate":Z
    if-eqz v3, :cond_2

    #@24
    .line 582
    return v12

    #@25
    .line 584
    :cond_2
    packed-switch v7, :pswitch_data_0

    #@28
    .line 624
    :pswitch_0
    new-instance v8, Ljava/lang/RuntimeException;

    #@2a
    const-string/jumbo v9, "ER_NULL_ERROR_HANDLER"

    #@2d
    new-array v10, v10, [Ljava/lang/Object;

    #@2f
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@32
    move-result-object v11

    #@33
    aput-object v11, v10, v12

    #@35
    invoke-static {v9, v10}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v9

    #@39
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v8

    #@3d
    .line 602
    :pswitch_1
    return v12

    #@3e
    .line 604
    :pswitch_2
    if-eq v10, v6, :cond_3

    #@40
    .line 605
    return v12

    #@41
    .line 608
    :pswitch_3
    if-nez v0, :cond_3

    #@43
    if-eqz v1, :cond_5

    #@45
    if-eqz v2, :cond_5

    #@47
    .line 628
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getStepTestType(I)I

    #@4a
    move-result v5

    #@4b
    .line 630
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    #@4e
    move-result v4

    #@4f
    .line 632
    .local v4, "nextStepOpCodePos":I
    if-gez v4, :cond_8

    #@51
    .line 646
    .end local v3    # "mightBeProximate":Z
    .end local v4    # "nextStepOpCodePos":I
    :cond_4
    return v10

    #@52
    .line 609
    .restart local v3    # "mightBeProximate":Z
    :cond_5
    return v12

    #@53
    .line 612
    :pswitch_4
    const/4 v0, 0x1

    #@54
    .line 614
    :pswitch_5
    if-ne v11, v6, :cond_6

    #@56
    .line 615
    return v12

    #@57
    .line 616
    :cond_6
    const/4 v1, 0x1

    #@58
    .line 617
    goto :goto_1

    #@59
    .line 619
    :pswitch_6
    if-eq v10, v6, :cond_7

    #@5b
    .line 620
    return v12

    #@5c
    .line 621
    :cond_7
    const/4 v2, 0x1

    #@5d
    .line 622
    goto :goto_1

    #@5e
    .line 635
    .restart local v4    # "nextStepOpCodePos":I
    :cond_8
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@61
    move-result v8

    #@62
    if-eq v9, v8, :cond_9

    #@64
    .line 637
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->countPredicates(I)I

    #@67
    move-result v8

    #@68
    if-lez v8, :cond_9

    #@6a
    .line 639
    return v12

    #@6b
    .line 643
    :cond_9
    move p1, v4

    #@6c
    goto :goto_0

    #@6d
    .line 584
    nop

    #@6e
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z
    .locals 7
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 432
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@4
    move-result v3

    #@5
    .line 433
    .local v3, "op":I
    add-int/lit8 v0, p1, 0x2

    #@7
    .line 434
    .local v0, "innerExprOpPos":I
    packed-switch v3, :pswitch_data_0

    #@a
    .line 465
    :pswitch_0
    return v6

    #@b
    .line 437
    :pswitch_1
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_1

    #@11
    .line 438
    return v6

    #@12
    .line 446
    :pswitch_2
    invoke-static {p0, p1}, Lorg/apache/xpath/axes/WalkerFactory;->functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z

    #@15
    move-result v1

    #@16
    .line 447
    .local v1, "isProx":Z
    if-eqz v1, :cond_1

    #@18
    .line 448
    return v6

    #@19
    .line 455
    .end local v1    # "isProx":Z
    :pswitch_3
    invoke-static {v3}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    #@1c
    move-result v2

    #@1d
    .line 456
    .local v2, "leftPos":I
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@20
    move-result v4

    #@21
    .line 457
    .local v4, "rightPos":I
    invoke-static {p0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    #@24
    move-result v1

    #@25
    .line 458
    .restart local v1    # "isProx":Z
    if-eqz v1, :cond_0

    #@27
    .line 459
    return v6

    #@28
    .line 460
    :cond_0
    invoke-static {p0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    #@2b
    move-result v1

    #@2c
    .line 461
    if-eqz v1, :cond_1

    #@2e
    .line 462
    return v6

    #@2f
    .line 467
    .end local v1    # "isProx":Z
    .end local v2    # "leftPos":I
    .end local v4    # "rightPos":I
    :cond_1
    :pswitch_4
    const/4 v5, 0x0

    #@30
    return v5

    #@31
    .line 434
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static isSet(II)Z
    .locals 2
    .param p0, "analysis"    # I
    .param p1, "bits"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 136
    and-int v1, p0, p1

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static isWild(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1374
    const/high16 v1, 0x40000000    # 2.0f

    #@3
    and-int/2addr v1, p0

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method static loadOneWalker(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/AxesWalker;
    .locals 3
    .param p0, "lpi"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "stepOpCodePos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    .line 66
    .local v0, "firstWalker":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@4
    move-result v1

    #@5
    .line 68
    .local v1, "stepType":I
    const/4 v2, -0x1

    #@6
    if-eq v1, v2, :cond_0

    #@8
    .line 73
    const/4 v2, 0x0

    #@9
    invoke-static {p1, v1, p0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;

    #@c
    move-result-object v0

    #@d
    .line 75
    .local v0, "firstWalker":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    #@10
    .line 78
    .end local v0    # "firstWalker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_0
    return-object v0
.end method

.method static loadSteps(Lorg/apache/xpath/axes/MatchPatternIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/patterns/StepPattern;
    .locals 24
    .param p0, "mpi"    # Lorg/apache/xpath/axes/MatchPatternIterator;
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "stepOpCodePos"    # I
    .param p3, "stepIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 830
    const/16 v21, 0x0

    #@2
    .line 831
    .local v21, "step":Lorg/apache/xpath/patterns/StepPattern;
    const/4 v6, 0x0

    #@3
    .local v6, "firstStep":Lorg/apache/xpath/patterns/StepPattern;
    const/4 v7, 0x0

    #@4
    .line 832
    .local v7, "prevStep":Lorg/apache/xpath/patterns/StepPattern;
    invoke-static/range {p1 .. p3}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    #@7
    move-result v5

    #@8
    .line 834
    .end local v6    # "firstStep":Lorg/apache/xpath/patterns/StepPattern;
    .end local v7    # "prevStep":Lorg/apache/xpath/patterns/StepPattern;
    .end local v21    # "step":Lorg/apache/xpath/patterns/StepPattern;
    .local v5, "analysis":I
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@b
    move-result v22

    #@c
    .local v22, "stepType":I
    const/4 v2, -0x1

    #@d
    move/from16 v0, v22

    #@f
    if-eq v2, v0, :cond_1

    #@11
    move-object/from16 v2, p1

    #@13
    move/from16 v3, p2

    #@15
    move-object/from16 v4, p0

    #@17
    .line 836
    invoke-static/range {v2 .. v7}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultStepPattern(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/MatchPatternIterator;ILorg/apache/xpath/patterns/StepPattern;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/patterns/StepPattern;

    #@1a
    move-result-object v21

    #@1b
    .line 839
    .local v21, "step":Lorg/apache/xpath/patterns/StepPattern;
    if-nez v6, :cond_5

    #@1d
    .line 841
    move-object/from16 v6, v21

    #@1f
    .line 850
    :goto_0
    move-object/from16 v7, v21

    #@21
    .line 851
    .local v7, "prevStep":Lorg/apache/xpath/patterns/StepPattern;
    invoke-virtual/range {p1 .. p2}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    #@24
    move-result p2

    #@25
    .line 853
    if-gez p2, :cond_0

    #@27
    .line 857
    .end local v7    # "prevStep":Lorg/apache/xpath/patterns/StepPattern;
    .end local v21    # "step":Lorg/apache/xpath/patterns/StepPattern;
    :cond_1
    const/16 v14, 0xd

    #@29
    .line 858
    .local v14, "axis":I
    const/16 v17, 0xd

    #@2b
    .line 859
    .local v17, "paxis":I
    move-object/from16 v23, v21

    #@2d
    .line 860
    .local v23, "tail":Lorg/apache/xpath/patterns/StepPattern;
    move-object/from16 v16, v21

    #@2f
    .local v16, "pat":Lorg/apache/xpath/patterns/StepPattern;
    :goto_1
    if-eqz v16, :cond_9

    #@31
    .line 863
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    #@34
    move-result v15

    #@35
    .line 865
    .local v15, "nextAxis":I
    move-object/from16 v0, v16

    #@37
    invoke-virtual {v0, v14}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    #@3a
    .line 890
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getWhatToShow()I

    #@3d
    move-result v9

    #@3e
    .line 891
    .local v9, "whatToShow":I
    const/4 v2, 0x2

    #@3f
    if-eq v9, v2, :cond_2

    #@41
    .line 892
    const/16 v2, 0x1000

    #@43
    if-ne v9, v2, :cond_4

    #@45
    .line 894
    :cond_2
    const/4 v2, 0x2

    #@46
    if-ne v9, v2, :cond_6

    #@48
    .line 895
    const/4 v12, 0x2

    #@49
    .line 896
    .local v12, "newAxis":I
    :goto_2
    invoke-static {v14}, Lorg/apache/xpath/axes/WalkerFactory;->isDownwardAxisOfMany(I)Z

    #@4c
    move-result v2

    #@4d
    if-eqz v2, :cond_8

    #@4f
    .line 898
    new-instance v8, Lorg/apache/xpath/patterns/StepPattern;

    #@51
    .line 899
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getNamespace()Ljava/lang/String;

    #@54
    move-result-object v10

    #@55
    .line 900
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getLocalName()Ljava/lang/String;

    #@58
    move-result-object v11

    #@59
    .line 902
    const/4 v13, 0x0

    #@5a
    .line 898
    invoke-direct/range {v8 .. v13}, Lorg/apache/xpath/patterns/StepPattern;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    #@5d
    .line 903
    .local v8, "attrPat":Lorg/apache/xpath/patterns/StepPattern;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    #@60
    move-result-object v19

    #@61
    .line 904
    .local v19, "score":Lorg/apache/xpath/objects/XNumber;
    const/4 v2, 0x0

    #@62
    move-object/from16 v0, v16

    #@64
    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setNamespace(Ljava/lang/String;)V

    #@67
    .line 905
    const-string/jumbo v2, "*"

    #@6a
    move-object/from16 v0, v16

    #@6c
    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setLocalName(Ljava/lang/String;)V

    #@6f
    .line 906
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getPredicates()[Lorg/apache/xpath/Expression;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v8, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    #@76
    .line 907
    const/4 v2, 0x0

    #@77
    move-object/from16 v0, v16

    #@79
    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setPredicates([Lorg/apache/xpath/Expression;)V

    #@7c
    .line 908
    const/4 v2, 0x1

    #@7d
    move-object/from16 v0, v16

    #@7f
    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setWhatToShow(I)V

    #@82
    .line 909
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;

    #@85
    move-result-object v18

    #@86
    .line 910
    .local v18, "rel":Lorg/apache/xpath/patterns/StepPattern;
    move-object/from16 v0, v16

    #@88
    invoke-virtual {v0, v8}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    #@8b
    .line 911
    move-object/from16 v0, v18

    #@8d
    invoke-virtual {v8, v0}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    #@90
    .line 912
    move-object/from16 v0, v19

    #@92
    invoke-virtual {v8, v0}, Lorg/apache/xpath/patterns/StepPattern;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    #@95
    .line 918
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    #@98
    move-result v2

    #@99
    const/16 v3, 0xb

    #@9b
    if-ne v3, v2, :cond_7

    #@9d
    .line 919
    const/16 v2, 0xf

    #@9f
    move-object/from16 v0, v16

    #@a1
    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    #@a4
    .line 924
    :cond_3
    :goto_3
    move-object/from16 v16, v8

    #@a6
    .line 933
    .end local v8    # "attrPat":Lorg/apache/xpath/patterns/StepPattern;
    .end local v12    # "newAxis":I
    .end local v18    # "rel":Lorg/apache/xpath/patterns/StepPattern;
    .end local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    :cond_4
    :goto_4
    move v14, v15

    #@a7
    .line 935
    move-object/from16 v23, v16

    #@a9
    .line 861
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;

    #@ac
    move-result-object v16

    #@ad
    goto :goto_1

    #@ae
    .line 847
    .end local v9    # "whatToShow":I
    .end local v14    # "axis":I
    .end local v15    # "nextAxis":I
    .end local v16    # "pat":Lorg/apache/xpath/patterns/StepPattern;
    .end local v17    # "paxis":I
    .end local v23    # "tail":Lorg/apache/xpath/patterns/StepPattern;
    .restart local v21    # "step":Lorg/apache/xpath/patterns/StepPattern;
    :cond_5
    move-object/from16 v0, v21

    #@b0
    invoke-virtual {v0, v7}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    #@b3
    goto/16 :goto_0

    #@b5
    .line 895
    .end local v21    # "step":Lorg/apache/xpath/patterns/StepPattern;
    .restart local v9    # "whatToShow":I
    .restart local v14    # "axis":I
    .restart local v15    # "nextAxis":I
    .restart local v16    # "pat":Lorg/apache/xpath/patterns/StepPattern;
    .restart local v17    # "paxis":I
    .restart local v23    # "tail":Lorg/apache/xpath/patterns/StepPattern;
    :cond_6
    const/16 v12, 0x9

    #@b7
    .restart local v12    # "newAxis":I
    goto :goto_2

    #@b8
    .line 921
    .restart local v8    # "attrPat":Lorg/apache/xpath/patterns/StepPattern;
    .restart local v18    # "rel":Lorg/apache/xpath/patterns/StepPattern;
    .restart local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    #@bb
    move-result v2

    #@bc
    const/4 v3, 0x4

    #@bd
    if-ne v3, v2, :cond_3

    #@bf
    .line 922
    const/4 v2, 0x5

    #@c0
    move-object/from16 v0, v16

    #@c2
    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    #@c5
    goto :goto_3

    #@c6
    .line 926
    .end local v8    # "attrPat":Lorg/apache/xpath/patterns/StepPattern;
    .end local v18    # "rel":Lorg/apache/xpath/patterns/StepPattern;
    .end local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/patterns/StepPattern;->getAxis()I

    #@c9
    move-result v2

    #@ca
    const/4 v3, 0x3

    #@cb
    if-ne v3, v2, :cond_4

    #@cd
    .line 930
    const/4 v2, 0x2

    #@ce
    move-object/from16 v0, v16

    #@d0
    invoke-virtual {v0, v2}, Lorg/apache/xpath/patterns/StepPattern;->setAxis(I)V

    #@d3
    goto :goto_4

    #@d4
    .line 938
    .end local v9    # "whatToShow":I
    .end local v12    # "newAxis":I
    .end local v15    # "nextAxis":I
    :cond_9
    const/16 v2, 0x10

    #@d6
    if-ge v14, v2, :cond_a

    #@d8
    .line 940
    new-instance v20, Lorg/apache/xpath/patterns/ContextMatchStepPattern;

    #@da
    move-object/from16 v0, v20

    #@dc
    move/from16 v1, v17

    #@de
    invoke-direct {v0, v14, v1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;-><init>(II)V

    #@e1
    .line 942
    .local v20, "selfPattern":Lorg/apache/xpath/patterns/StepPattern;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/xpath/patterns/StepPattern;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    #@e4
    move-result-object v19

    #@e5
    .line 943
    .restart local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    move-object/from16 v0, v23

    #@e7
    move-object/from16 v1, v20

    #@e9
    invoke-virtual {v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V

    #@ec
    .line 944
    move-object/from16 v0, v23

    #@ee
    move-object/from16 v1, v19

    #@f0
    invoke-virtual {v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    #@f3
    .line 945
    move-object/from16 v0, v20

    #@f5
    move-object/from16 v1, v19

    #@f7
    invoke-virtual {v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->setStaticScore(Lorg/apache/xpath/objects/XNumber;)V

    #@fa
    .line 954
    .end local v19    # "score":Lorg/apache/xpath/objects/XNumber;
    .end local v20    # "selfPattern":Lorg/apache/xpath/patterns/StepPattern;
    :cond_a
    return-object v21
.end method

.method static loadWalkers(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/compiler/Compiler;II)Lorg/apache/xpath/axes/AxesWalker;
    .locals 6
    .param p0, "lpi"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "stepOpCodePos"    # I
    .param p3, "stepIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    const/4 v1, 0x0

    #@1
    .line 102
    .local v1, "firstWalker":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v2, 0x0

    #@2
    .line 104
    .local v2, "prevWalker":Lorg/apache/xpath/axes/AxesWalker;
    invoke-static {p1, p2, p3}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    #@5
    move-result v0

    #@6
    .line 106
    .end local v1    # "firstWalker":Lorg/apache/xpath/axes/AxesWalker;
    .end local v2    # "prevWalker":Lorg/apache/xpath/axes/AxesWalker;
    .local v0, "analysis":I
    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@9
    move-result v3

    #@a
    .local v3, "stepType":I
    const/4 v5, -0x1

    #@b
    if-eq v5, v3, :cond_1

    #@d
    .line 108
    invoke-static {p1, p2, p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->createDefaultWalker(Lorg/apache/xpath/compiler/Compiler;ILorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/AxesWalker;

    #@10
    move-result-object v4

    #@11
    .line 110
    .local v4, "walker":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {v4, p1, p2, v3}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    #@14
    .line 111
    invoke-virtual {v4, p0}, Lorg/apache/xpath/axes/AxesWalker;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@17
    .line 114
    if-nez v1, :cond_2

    #@19
    .line 116
    move-object v1, v4

    #@1a
    .line 124
    :goto_0
    move-object v2, v4

    #@1b
    .line 125
    .local v2, "prevWalker":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    #@1e
    move-result p2

    #@1f
    .line 127
    if-gez p2, :cond_0

    #@21
    .line 131
    .end local v2    # "prevWalker":Lorg/apache/xpath/axes/AxesWalker;
    .end local v4    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_1
    return-object v1

    #@22
    .line 120
    .restart local v4    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_2
    invoke-virtual {v2, v4}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@25
    .line 121
    invoke-virtual {v4, v2}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@28
    goto :goto_0
.end method

.method public static mightBeProximate(Lorg/apache/xpath/compiler/Compiler;II)Z
    .locals 12
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "stepType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    .line 477
    const/4 v5, 0x0

    #@2
    .line 480
    .local v5, "mightBeProximate":Z
    packed-switch p2, :pswitch_data_0

    #@5
    .line 489
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLengthOfStep(I)I

    #@8
    move-result v0

    #@9
    .line 492
    .local v0, "argLen":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    #@c
    move-result v7

    #@d
    .line 493
    .local v7, "predPos":I
    const/4 v1, 0x0

    #@e
    .line 495
    .local v1, "count":I
    :goto_1
    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@11
    move-result v9

    #@12
    const/16 v10, 0x1d

    #@14
    if-ne v10, v9, :cond_2

    #@16
    .line 497
    add-int/lit8 v1, v1, 0x1

    #@18
    .line 499
    add-int/lit8 v2, v7, 0x2

    #@1a
    .line 500
    .local v2, "innerExprOpPos":I
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@1d
    move-result v6

    #@1e
    .line 502
    .local v6, "predOp":I
    packed-switch v6, :pswitch_data_1

    #@21
    .line 533
    :pswitch_0
    return v11

    #@22
    .line 486
    .end local v0    # "argLen":I
    .end local v1    # "count":I
    .end local v2    # "innerExprOpPos":I
    .end local v6    # "predOp":I
    .end local v7    # "predPos":I
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/Compiler;->getArgLength(I)I

    #@25
    move-result v0

    #@26
    .restart local v0    # "argLen":I
    goto :goto_0

    #@27
    .line 505
    .restart local v1    # "count":I
    .restart local v2    # "innerExprOpPos":I
    .restart local v6    # "predOp":I
    .restart local v7    # "predPos":I
    :pswitch_2
    return v11

    #@28
    .line 511
    :pswitch_3
    return v11

    #@29
    .line 514
    :pswitch_4
    invoke-static {p0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->functionProximateOrContainsProximate(Lorg/apache/xpath/compiler/Compiler;I)Z

    #@2c
    move-result v3

    #@2d
    .line 515
    .local v3, "isProx":Z
    if-eqz v3, :cond_1

    #@2f
    .line 516
    return v11

    #@30
    .line 523
    .end local v3    # "isProx":Z
    :pswitch_5
    invoke-static {v2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    #@33
    move-result v4

    #@34
    .line 524
    .local v4, "leftPos":I
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@37
    move-result v8

    #@38
    .line 525
    .local v8, "rightPos":I
    invoke-static {p0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    #@3b
    move-result v3

    #@3c
    .line 526
    .restart local v3    # "isProx":Z
    if-eqz v3, :cond_0

    #@3e
    .line 527
    return v11

    #@3f
    .line 528
    :cond_0
    invoke-static {p0, v8}, Lorg/apache/xpath/axes/WalkerFactory;->isProximateInnerExpr(Lorg/apache/xpath/compiler/Compiler;I)Z

    #@42
    move-result v3

    #@43
    .line 529
    if-eqz v3, :cond_1

    #@45
    .line 530
    return v11

    #@46
    .line 536
    .end local v3    # "isProx":Z
    .end local v4    # "leftPos":I
    .end local v8    # "rightPos":I
    :cond_1
    :pswitch_6
    invoke-virtual {p0, v7}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@49
    move-result v7

    #@4a
    goto :goto_1

    #@4b
    .line 539
    .end local v2    # "innerExprOpPos":I
    .end local v6    # "predOp":I
    :cond_2
    return v5

    #@4c
    .line 480
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    #@58
    .line 502
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static newDTMIterator(Lorg/apache/xpath/compiler/Compiler;IZ)Lorg/apache/xml/dtm/DTMIterator;
    .locals 7
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .param p2, "isTopLevel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 164
    invoke-static {p1}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    #@5
    move-result v1

    #@6
    .line 165
    .local v1, "firstStepPos":I
    invoke-static {p0, v1, v5}, Lorg/apache/xpath/axes/WalkerFactory;->analyze(Lorg/apache/xpath/compiler/Compiler;II)I

    #@9
    move-result v0

    #@a
    .line 166
    .local v0, "analysis":I
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isOneStep(I)Z

    #@d
    move-result v2

    #@e
    .line 170
    .local v2, "isOneStep":Z
    if-eqz v2, :cond_0

    #@10
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSelfOnly(I)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 171
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isWild(I)Z

    #@19
    move-result v4

    #@1a
    .line 170
    if-eqz v4, :cond_0

    #@1c
    .line 171
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->hasPredicate(I)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_3

    #@22
    .line 181
    :cond_0
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildrenOnly(I)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_5

    #@28
    if-eqz v2, :cond_5

    #@2a
    .line 185
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->isWild(I)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_1

    #@30
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->hasPredicate(I)Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_4

    #@36
    .line 199
    :cond_1
    new-instance v3, Lorg/apache/xpath/axes/ChildTestIterator;

    #@38
    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    #@3b
    .line 281
    .local v3, "iter":Lorg/apache/xml/dtm/DTMIterator;
    :goto_0
    instance-of v4, v3, Lorg/apache/xpath/axes/LocPathIterator;

    #@3d
    if-eqz v4, :cond_2

    #@3f
    move-object v4, v3

    #@40
    .line 282
    check-cast v4, Lorg/apache/xpath/axes/LocPathIterator;

    #@42
    invoke-virtual {v4, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setIsTopLevel(Z)V

    #@45
    .line 284
    :cond_2
    return-object v3

    #@46
    .line 178
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_3
    new-instance v3, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    #@48
    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    #@4b
    .line 172
    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    #@4c
    .line 191
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_4
    new-instance v3, Lorg/apache/xpath/axes/ChildIterator;

    #@4e
    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/ChildIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    #@51
    .line 186
    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    #@52
    .line 203
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_5
    if-eqz v2, :cond_6

    #@54
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksAttributes(I)Z

    #@57
    move-result v4

    #@58
    if-eqz v4, :cond_6

    #@5a
    .line 210
    new-instance v3, Lorg/apache/xpath/axes/AttributeIterator;

    #@5c
    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/AttributeIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    #@5f
    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    #@60
    .line 212
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_6
    if-eqz v2, :cond_7

    #@62
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFilteredList(I)Z

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_8

    #@68
    .line 247
    :cond_7
    invoke-static {p0, v1, v5}, Lorg/apache/xpath/axes/WalkerFactory;->isOptimizableForDescendantIterator(Lorg/apache/xpath/compiler/Compiler;II)Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_b

    #@6e
    .line 256
    new-instance v3, Lorg/apache/xpath/axes/DescendantIterator;

    #@70
    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/DescendantIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    #@73
    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    #@74
    .line 214
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_8
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksNamespaces(I)Z

    #@77
    move-result v4

    #@78
    if-nez v4, :cond_a

    #@7a
    .line 215
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->walksInDocOrder(I)Z

    #@7d
    move-result v4

    #@7e
    if-nez v4, :cond_9

    #@80
    const/high16 v4, 0x400000

    #@82
    invoke-static {v0, v4}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@85
    move-result v4

    #@86
    .line 214
    if-eqz v4, :cond_a

    #@88
    .line 222
    :cond_9
    new-instance v3, Lorg/apache/xpath/axes/OneStepIteratorForward;

    #@8a
    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    #@8d
    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    #@8e
    .line 231
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_a
    new-instance v3, Lorg/apache/xpath/axes/OneStepIterator;

    #@90
    invoke-direct {v3, p0, p1, v0}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    #@93
    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    #@94
    .line 260
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_b
    invoke-static {p0, v1, v5, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isNaturalDocOrder(Lorg/apache/xpath/compiler/Compiler;III)Z

    #@97
    move-result v4

    #@98
    if-eqz v4, :cond_c

    #@9a
    .line 267
    new-instance v3, Lorg/apache/xpath/axes/WalkingIterator;

    #@9c
    invoke-direct {v3, p0, p1, v0, v6}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    #@9f
    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0

    #@a0
    .line 278
    .end local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_c
    new-instance v3, Lorg/apache/xpath/axes/WalkingIteratorSorted;

    #@a2
    invoke-direct {v3, p0, p1, v0, v6}, Lorg/apache/xpath/axes/WalkingIteratorSorted;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    #@a5
    .restart local v3    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    goto :goto_0
.end method

.method public static walksAncestors(I)Z
    .locals 1
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1379
    const/16 v0, 0x6000

    #@2
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static walksAttributes(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1384
    const v1, 0x8000

    #@4
    and-int/2addr v1, p0

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public static walksChildren(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1394
    const/high16 v1, 0x10000

    #@3
    and-int/2addr v1, p0

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public static walksChildrenAndExtraAndSelfOnly(I)Z
    .locals 1
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1502
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1503
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1502
    :cond_0
    const/4 v0, 0x0

    #@d
    :goto_0
    return v0

    #@e
    .line 1504
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 1505
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 1506
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    const/high16 v0, 0x8000000

    #@22
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    :cond_2
    const/4 v0, 0x1

    #@28
    goto :goto_0
.end method

.method public static walksChildrenOnly(I)Z
    .locals 1
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1490
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1491
    const/high16 v0, 0x2000000

    #@8
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1490
    :cond_0
    const/4 v0, 0x0

    #@f
    :goto_0
    return v0

    #@10
    .line 1492
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 1493
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_0

    #@1c
    .line 1494
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_0

    #@22
    .line 1495
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_0

    #@28
    .line 1496
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_2

    #@2e
    const/high16 v0, 0x8000000

    #@30
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@33
    move-result v0

    #@34
    goto :goto_0

    #@35
    :cond_2
    const/4 v0, 0x1

    #@36
    goto :goto_0
.end method

.method public static walksDescendants(I)Z
    .locals 1
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1399
    const/high16 v0, 0x60000

    #@2
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static walksDescendantsAndExtraAndSelfOnly(I)Z
    .locals 1
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1512
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksChildren(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1513
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksDescendants(I)Z

    #@9
    move-result v0

    #@a
    .line 1512
    if-eqz v0, :cond_0

    #@c
    .line 1514
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1512
    :cond_0
    const/4 v0, 0x0

    #@13
    :goto_0
    return v0

    #@14
    .line 1515
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 1516
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    const/high16 v0, 0x8000000

    #@22
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    :cond_2
    const/4 v0, 0x1

    #@28
    goto :goto_0
.end method

.method public static walksDownExtraOnly(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1551
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1552
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1551
    :cond_0
    :goto_0
    return v0

    #@14
    .line 1553
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 1554
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_0

    #@20
    const/4 v0, 0x1

    #@21
    goto :goto_0
.end method

.method public static walksDownOnly(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1542
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1543
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1542
    :cond_0
    :goto_0
    return v0

    #@e
    .line 1544
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 1545
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method public static walksExtraNodes(I)Z
    .locals 1
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1469
    const v0, 0x208000

    #@3
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static walksExtraNodesOnly(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1474
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1475
    const/high16 v1, 0x2000000

    #@9
    invoke-static {p0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 1474
    :cond_0
    :goto_0
    return v0

    #@10
    .line 1476
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 1477
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_0

    #@1c
    .line 1478
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_0

    #@22
    .line 1479
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_0

    #@28
    const/4 v0, 0x1

    #@29
    goto :goto_0
.end method

.method public static walksFilteredList(I)Z
    .locals 1
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1425
    const/high16 v0, 0x4000000

    #@2
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static walksFollowingOnlyMaybeAbsolute(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1449
    const/high16 v1, 0x2180000

    #@3
    invoke-static {p0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1450
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 1449
    :cond_0
    :goto_0
    return v0

    #@10
    .line 1451
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 1452
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_0

    #@1c
    const/4 v0, 0x1

    #@1d
    goto :goto_0
.end method

.method public static walksInDocOrder(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1440
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtreeOnlyMaybeAbsolute(I)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1441
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodesOnly(I)Z

    #@a
    move-result v1

    #@b
    .line 1440
    if-nez v1, :cond_0

    #@d
    .line 1442
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksFollowingOnlyMaybeAbsolute(I)Z

    #@10
    move-result v1

    #@11
    .line 1440
    if-eqz v1, :cond_1

    #@13
    .line 1443
    :cond_0
    const/high16 v1, 0x4000000

    #@15
    invoke-static {p0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 1440
    :cond_1
    :goto_0
    return v0

    #@1c
    .line 1443
    :cond_2
    const/4 v0, 0x1

    #@1d
    goto :goto_0
.end method

.method public static walksNamespaces(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1389
    const/high16 v1, 0x200000

    #@3
    and-int/2addr v1, p0

    #@4
    if-eqz v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :cond_0
    return v0
.end method

.method public static walksSelfOnly(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1522
    const/high16 v1, 0x2000000

    #@3
    invoke-static {p0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1523
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 1522
    :cond_0
    :goto_0
    return v0

    #@10
    .line 1524
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_0

    #@16
    .line 1525
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_0

    #@1c
    .line 1526
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_0

    #@22
    const/4 v0, 0x1

    #@23
    goto :goto_0
.end method

.method public static walksSideways(I)Z
    .locals 1
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1463
    const/high16 v0, 0x1980000

    #@2
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static walksSubtree(I)Z
    .locals 1
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1404
    const/high16 v0, 0x70000

    #@2
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static walksSubtreeOnly(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1418
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtreeOnlyMaybeAbsolute(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1419
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1418
    :cond_0
    :goto_0
    return v0

    #@e
    .line 1419
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public static walksSubtreeOnlyFromRootOrContext(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1430
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1431
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1430
    :cond_0
    :goto_0
    return v0

    #@e
    .line 1432
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 1433
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 1434
    const/high16 v1, 0x4000000

    #@1c
    invoke-static {p0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_0

    #@22
    const/4 v0, 0x1

    #@23
    goto :goto_0
.end method

.method public static walksSubtreeOnlyMaybeAbsolute(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1409
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1410
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksExtraNodes(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 1409
    :cond_0
    :goto_0
    return v0

    #@e
    .line 1411
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 1412
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method

.method public static walksUp(I)Z
    .locals 1
    .param p0, "analysis"    # I

    #@0
    .prologue
    .line 1458
    const v0, 0x406000

    #@3
    invoke-static {p0, v0}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static walksUpOnly(I)Z
    .locals 2
    .param p0, "analysis"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1533
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSubtree(I)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1534
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksUp(I)Z

    #@a
    move-result v1

    #@b
    .line 1533
    if-eqz v1, :cond_0

    #@d
    .line 1535
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->walksSideways(I)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1533
    :cond_0
    :goto_0
    return v0

    #@14
    .line 1536
    :cond_1
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->isAbsolute(I)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    const/4 v0, 0x1

    #@1b
    goto :goto_0
.end method
