.class Landroid/icu/text/RBBITableBuilder;
.super Ljava/lang/Object;
.source "RBBITableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    }
.end annotation


# instance fields
.field private fDStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private fRB:Landroid/icu/text/RBBIRuleBuilder;

.field private fRootIx:I


# direct methods
.method constructor <init>(Landroid/icu/text/RBBIRuleBuilder;I)V
    .locals 1
    .param p1, "rb"    # Landroid/icu/text/RBBIRuleBuilder;
    .param p2, "rootNodeIx"    # I

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    iput p2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@5
    .line 81
    iput-object p1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@7
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@e
    .line 79
    return-void
.end method


# virtual methods
.method bofFixup()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 472
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@5
    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@7
    iget v7, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@9
    aget-object v4, v4, v7

    #@b
    iget-object v4, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@d
    iget-object v0, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@f
    .line 473
    .local v0, "bofNode":Landroid/icu/text/RBBINode;
    iget v4, v0, Landroid/icu/text/RBBINode;->fType:I

    #@11
    if-ne v4, v8, :cond_1

    #@13
    move v4, v5

    #@14
    :goto_0
    invoke-static {v4}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@17
    .line 474
    iget v4, v0, Landroid/icu/text/RBBINode;->fVal:I

    #@19
    const/4 v7, 0x2

    #@1a
    if-ne v4, v7, :cond_2

    #@1c
    :goto_1
    invoke-static {v5}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@1f
    .line 481
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@21
    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@23
    iget v5, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@25
    aget-object v4, v4, v5

    #@27
    iget-object v4, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@29
    iget-object v4, v4, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@2b
    iget-object v1, v4, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@2d
    .line 482
    .local v1, "matchStartNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/RBBINode;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v3

    #@31
    .local v3, "startNode$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_3

    #@37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    check-cast v2, Landroid/icu/text/RBBINode;

    #@3d
    .line 483
    .local v2, "startNode":Landroid/icu/text/RBBINode;
    iget v4, v2, Landroid/icu/text/RBBINode;->fType:I

    #@3f
    if-ne v4, v8, :cond_0

    #@41
    .line 487
    iget v4, v2, Landroid/icu/text/RBBINode;->fVal:I

    #@43
    iget v5, v0, Landroid/icu/text/RBBINode;->fVal:I

    #@45
    if-ne v4, v5, :cond_0

    #@47
    .line 493
    iget-object v4, v0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    #@49
    iget-object v5, v2, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    #@4b
    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@4e
    goto :goto_2

    #@4f
    .end local v1    # "matchStartNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/RBBINode;>;"
    .end local v2    # "startNode":Landroid/icu/text/RBBINode;
    .end local v3    # "startNode$iterator":Ljava/util/Iterator;
    :cond_1
    move v4, v6

    #@50
    .line 473
    goto :goto_0

    #@51
    :cond_2
    move v5, v6

    #@52
    .line 474
    goto :goto_1

    #@53
    .line 460
    .restart local v1    # "matchStartNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/RBBINode;>;"
    .restart local v3    # "startNode$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method build()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x8

    #@2
    const/4 v7, 0x1

    #@3
    .line 97
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@5
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@7
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@9
    aget-object v3, v3, v4

    #@b
    if-nez v3, :cond_0

    #@d
    .line 98
    return-void

    #@e
    .line 105
    :cond_0
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@10
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@12
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@14
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@16
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@18
    iget v6, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@1a
    aget-object v5, v5, v6

    #@1c
    invoke-virtual {v5}, Landroid/icu/text/RBBINode;->flattenVariables()Landroid/icu/text/RBBINode;

    #@1f
    move-result-object v5

    #@20
    aput-object v5, v3, v4

    #@22
    .line 106
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@24
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@26
    if-eqz v3, :cond_1

    #@28
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@2a
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@2c
    const-string/jumbo v4, "ftree"

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@32
    move-result v3

    #@33
    if-ltz v3, :cond_1

    #@35
    .line 107
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@37
    const-string/jumbo v4, "Parse tree after flattening variable references."

    #@3a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d
    .line 108
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@3f
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@41
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@43
    aget-object v3, v3, v4

    #@45
    invoke-virtual {v3, v7}, Landroid/icu/text/RBBINode;->printTree(Z)V

    #@48
    .line 117
    :cond_1
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@4a
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@4c
    invoke-virtual {v3}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_2

    #@52
    .line 118
    new-instance v1, Landroid/icu/text/RBBINode;

    #@54
    invoke-direct {v1, v8}, Landroid/icu/text/RBBINode;-><init>(I)V

    #@57
    .line 119
    .local v1, "bofTop":Landroid/icu/text/RBBINode;
    new-instance v0, Landroid/icu/text/RBBINode;

    #@59
    const/4 v3, 0x3

    #@5a
    invoke-direct {v0, v3}, Landroid/icu/text/RBBINode;-><init>(I)V

    #@5d
    .line 120
    .local v0, "bofLeaf":Landroid/icu/text/RBBINode;
    iput-object v0, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@5f
    .line 121
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@61
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@63
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@65
    aget-object v3, v3, v4

    #@67
    iput-object v3, v1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@69
    .line 122
    iput-object v1, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@6b
    .line 123
    const/4 v3, 0x2

    #@6c
    iput v3, v0, Landroid/icu/text/RBBINode;->fVal:I

    #@6e
    .line 124
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@70
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@72
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@74
    aput-object v1, v3, v4

    #@76
    .line 132
    .end local v0    # "bofLeaf":Landroid/icu/text/RBBINode;
    .end local v1    # "bofTop":Landroid/icu/text/RBBINode;
    :cond_2
    new-instance v2, Landroid/icu/text/RBBINode;

    #@78
    invoke-direct {v2, v8}, Landroid/icu/text/RBBINode;-><init>(I)V

    #@7b
    .line 133
    .local v2, "cn":Landroid/icu/text/RBBINode;
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@7d
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@7f
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@81
    aget-object v3, v3, v4

    #@83
    iput-object v3, v2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@85
    .line 134
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@87
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@89
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@8b
    aget-object v3, v3, v4

    #@8d
    iput-object v2, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@8f
    .line 135
    new-instance v3, Landroid/icu/text/RBBINode;

    #@91
    const/4 v4, 0x6

    #@92
    invoke-direct {v3, v4}, Landroid/icu/text/RBBINode;-><init>(I)V

    #@95
    iput-object v3, v2, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@97
    .line 136
    iget-object v3, v2, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@99
    iput-object v2, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@9b
    .line 137
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@9d
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@9f
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@a1
    aput-object v2, v3, v4

    #@a3
    .line 143
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@a5
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@a7
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@a9
    aget-object v3, v3, v4

    #@ab
    invoke-virtual {v3}, Landroid/icu/text/RBBINode;->flattenSets()V

    #@ae
    .line 144
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@b0
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@b2
    if-eqz v3, :cond_3

    #@b4
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@b6
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@b8
    const-string/jumbo v4, "stree"

    #@bb
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@be
    move-result v3

    #@bf
    if-ltz v3, :cond_3

    #@c1
    .line 145
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c3
    const-string/jumbo v4, "Parse tree after flattening Unicode Set references."

    #@c6
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c9
    .line 146
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@cb
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@cd
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@cf
    aget-object v3, v3, v4

    #@d1
    invoke-virtual {v3, v7}, Landroid/icu/text/RBBINode;->printTree(Z)V

    #@d4
    .line 157
    :cond_3
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@d6
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@d8
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@da
    aget-object v3, v3, v4

    #@dc
    invoke-virtual {p0, v3}, Landroid/icu/text/RBBITableBuilder;->calcNullable(Landroid/icu/text/RBBINode;)V

    #@df
    .line 158
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@e1
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@e3
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@e5
    aget-object v3, v3, v4

    #@e7
    invoke-virtual {p0, v3}, Landroid/icu/text/RBBITableBuilder;->calcFirstPos(Landroid/icu/text/RBBINode;)V

    #@ea
    .line 159
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@ec
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@ee
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@f0
    aget-object v3, v3, v4

    #@f2
    invoke-virtual {p0, v3}, Landroid/icu/text/RBBITableBuilder;->calcLastPos(Landroid/icu/text/RBBINode;)V

    #@f5
    .line 160
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@f7
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@f9
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@fb
    aget-object v3, v3, v4

    #@fd
    invoke-virtual {p0, v3}, Landroid/icu/text/RBBITableBuilder;->calcFollowPos(Landroid/icu/text/RBBINode;)V

    #@100
    .line 161
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@102
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@104
    if-eqz v3, :cond_4

    #@106
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@108
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@10a
    const-string/jumbo v4, "pos"

    #@10d
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@110
    move-result v3

    #@111
    if-ltz v3, :cond_4

    #@113
    .line 162
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@115
    const-string/jumbo v4, "\n"

    #@118
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@11b
    .line 163
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@11d
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@11f
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@121
    aget-object v3, v3, v4

    #@123
    invoke-virtual {p0, v3}, Landroid/icu/text/RBBITableBuilder;->printPosSets(Landroid/icu/text/RBBINode;)V

    #@126
    .line 169
    :cond_4
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@128
    iget-boolean v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fChainRules:Z

    #@12a
    if-eqz v3, :cond_5

    #@12c
    .line 170
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@12e
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@130
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@132
    aget-object v3, v3, v4

    #@134
    invoke-virtual {p0, v3}, Landroid/icu/text/RBBITableBuilder;->calcChainedFollowPos(Landroid/icu/text/RBBINode;)V

    #@137
    .line 176
    :cond_5
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@139
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@13b
    invoke-virtual {v3}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    #@13e
    move-result v3

    #@13f
    if-eqz v3, :cond_6

    #@141
    .line 177
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->bofFixup()V

    #@144
    .line 183
    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->buildStateTable()V

    #@147
    .line 184
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->flagAcceptingStates()V

    #@14a
    .line 185
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->flagLookAheadStates()V

    #@14d
    .line 186
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->flagTaggedStates()V

    #@150
    .line 193
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->mergeRuleStatusVals()V

    #@153
    .line 195
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@155
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@157
    if-eqz v3, :cond_7

    #@159
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@15b
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@15d
    const-string/jumbo v4, "states"

    #@160
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@163
    move-result v3

    #@164
    if-ltz v3, :cond_7

    #@166
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->printStates()V

    #@169
    .line 94
    :cond_7
    return-void
.end method

.method buildStateTable()V
    .locals 20

    #@0
    .prologue
    .line 510
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@4
    move-object/from16 v17, v0

    #@6
    move-object/from16 v0, v17

    #@8
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@a
    move-object/from16 v17, v0

    #@c
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    #@f
    move-result v17

    #@10
    add-int/lit8 v9, v17, -0x1

    #@12
    .line 511
    .local v9, "lastInputSymbol":I
    new-instance v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    #@14
    invoke-direct {v6, v9}, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    #@17
    .line 512
    .local v6, "failState":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    move-object/from16 v0, p0

    #@19
    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@1b
    move-object/from16 v17, v0

    #@1d
    move-object/from16 v0, v17

    #@1f
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    .line 516
    new-instance v7, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    #@24
    invoke-direct {v7, v9}, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    #@27
    .line 517
    .local v7, "initialState":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v0, v7, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    #@29
    move-object/from16 v17, v0

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@2f
    move-object/from16 v18, v0

    #@31
    move-object/from16 v0, v18

    #@33
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@35
    move-object/from16 v18, v0

    #@37
    move-object/from16 v0, p0

    #@39
    iget v0, v0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@3b
    move/from16 v19, v0

    #@3d
    aget-object v18, v18, v19

    #@3f
    move-object/from16 v0, v18

    #@41
    iget-object v0, v0, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@43
    move-object/from16 v18, v0

    #@45
    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@48
    .line 518
    move-object/from16 v0, p0

    #@4a
    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@4c
    move-object/from16 v17, v0

    #@4e
    move-object/from16 v0, v17

    #@50
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 522
    :cond_0
    const/4 v2, 0x0

    #@54
    .line 524
    .local v2, "T":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    const/4 v15, 0x1

    #@55
    .local v15, "tx":I
    :goto_0
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@59
    move-object/from16 v17, v0

    #@5b
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@5e
    move-result v17

    #@5f
    move/from16 v0, v17

    #@61
    if-ge v15, v0, :cond_1

    #@63
    .line 525
    move-object/from16 v0, p0

    #@65
    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@67
    move-object/from16 v17, v0

    #@69
    move-object/from16 v0, v17

    #@6b
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6e
    move-result-object v13

    #@6f
    check-cast v13, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    #@71
    .line 526
    .local v13, "temp":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-boolean v0, v13, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fMarked:Z

    #@73
    move/from16 v17, v0

    #@75
    if-nez v17, :cond_2

    #@77
    .line 527
    move-object v2, v13

    #@78
    .line 531
    .end local v2    # "T":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v13    # "temp":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_1
    if-nez v2, :cond_3

    #@7a
    .line 507
    return-void

    #@7b
    .line 524
    .restart local v2    # "T":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .restart local v13    # "temp":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_2
    add-int/lit8 v15, v15, 0x1

    #@7d
    goto :goto_0

    #@7e
    .line 536
    .end local v2    # "T":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v13    # "temp":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_3
    const/16 v17, 0x1

    #@80
    move/from16 v0, v17

    #@82
    iput-boolean v0, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fMarked:Z

    #@84
    .line 540
    const/4 v5, 0x1

    #@85
    .local v5, "a":I
    :goto_1
    if-gt v5, v9, :cond_0

    #@87
    .line 544
    const/4 v3, 0x0

    #@88
    .line 545
    .local v3, "U":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/RBBINode;>;"
    iget-object v0, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    #@8a
    move-object/from16 v17, v0

    #@8c
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8f
    move-result-object v12

    #@90
    .end local v3    # "U":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/RBBINode;>;"
    .local v12, "p$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@93
    move-result v17

    #@94
    if-eqz v17, :cond_6

    #@96
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@99
    move-result-object v11

    #@9a
    check-cast v11, Landroid/icu/text/RBBINode;

    #@9c
    .line 546
    .local v11, "p":Landroid/icu/text/RBBINode;
    iget v0, v11, Landroid/icu/text/RBBINode;->fType:I

    #@9e
    move/from16 v17, v0

    #@a0
    const/16 v18, 0x3

    #@a2
    move/from16 v0, v17

    #@a4
    move/from16 v1, v18

    #@a6
    if-ne v0, v1, :cond_4

    #@a8
    iget v0, v11, Landroid/icu/text/RBBINode;->fVal:I

    #@aa
    move/from16 v17, v0

    #@ac
    move/from16 v0, v17

    #@ae
    if-ne v0, v5, :cond_4

    #@b0
    .line 547
    if-nez v3, :cond_5

    #@b2
    .line 548
    new-instance v3, Ljava/util/HashSet;

    #@b4
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@b7
    .line 550
    :cond_5
    iget-object v0, v11, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    #@b9
    move-object/from16 v17, v0

    #@bb
    move-object/from16 v0, v17

    #@bd
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@c0
    goto :goto_2

    #@c1
    .line 555
    .end local v11    # "p":Landroid/icu/text/RBBINode;
    :cond_6
    const/16 v16, 0x0

    #@c3
    .line 556
    .local v16, "ux":I
    const/4 v4, 0x0

    #@c4
    .line 557
    .local v4, "UinDstates":Z
    if-eqz v3, :cond_9

    #@c6
    .line 558
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@c9
    move-result v17

    #@ca
    if-lez v17, :cond_a

    #@cc
    const/16 v17, 0x1

    #@ce
    :goto_3
    invoke-static/range {v17 .. v17}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@d1
    .line 560
    const/4 v8, 0x0

    #@d2
    .local v8, "ix":I
    :goto_4
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@d6
    move-object/from16 v17, v0

    #@d8
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@db
    move-result v17

    #@dc
    move/from16 v0, v17

    #@de
    if-ge v8, v0, :cond_7

    #@e0
    .line 562
    move-object/from16 v0, p0

    #@e2
    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@e4
    move-object/from16 v17, v0

    #@e6
    move-object/from16 v0, v17

    #@e8
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@eb
    move-result-object v14

    #@ec
    check-cast v14, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    #@ee
    .line 563
    .local v14, "temp2":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v0, v14, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    #@f0
    move-object/from16 v17, v0

    #@f2
    move-object/from16 v0, v17

    #@f4
    invoke-interface {v3, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@f7
    move-result v17

    #@f8
    if-eqz v17, :cond_b

    #@fa
    .line 564
    iget-object v3, v14, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    #@fc
    .line 565
    .local v3, "U":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/RBBINode;>;"
    move/from16 v16, v8

    #@fe
    .line 566
    const/4 v4, 0x1

    #@ff
    .line 572
    .end local v3    # "U":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/RBBINode;>;"
    .end local v14    # "temp2":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_7
    if-nez v4, :cond_8

    #@101
    .line 574
    new-instance v10, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    #@103
    invoke-direct {v10, v9}, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    #@106
    .line 575
    .local v10, "newState":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iput-object v3, v10, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    #@108
    .line 576
    move-object/from16 v0, p0

    #@10a
    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@10c
    move-object/from16 v17, v0

    #@10e
    move-object/from16 v0, v17

    #@110
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@113
    .line 577
    move-object/from16 v0, p0

    #@115
    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@117
    move-object/from16 v17, v0

    #@119
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@11c
    move-result v17

    #@11d
    add-int/lit8 v16, v17, -0x1

    #@11f
    .line 581
    .end local v10    # "newState":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_8
    iget-object v0, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    #@121
    move-object/from16 v17, v0

    #@123
    aput v16, v17, v5

    #@125
    .line 540
    .end local v8    # "ix":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    #@127
    goto/16 :goto_1

    #@129
    .line 558
    :cond_a
    const/16 v17, 0x0

    #@12b
    goto :goto_3

    #@12c
    .line 560
    .restart local v8    # "ix":I
    .restart local v14    # "temp2":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    #@12e
    goto :goto_4
.end method

.method calcChainedFollowPos(Landroid/icu/text/RBBINode;)V
    .locals 16
    .param p1, "tree"    # Landroid/icu/text/RBBINode;

    #@0
    .prologue
    .line 373
    new-instance v5, Ljava/util/ArrayList;

    #@2
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 374
    .local v5, "endMarkerNodes":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/text/RBBINode;>;"
    new-instance v7, Ljava/util/ArrayList;

    #@7
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 377
    .local v7, "leafNodes":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/text/RBBINode;>;"
    const/4 v14, 0x6

    #@b
    move-object/from16 v0, p1

    #@d
    invoke-virtual {v0, v5, v14}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    #@10
    .line 380
    const/4 v14, 0x3

    #@11
    move-object/from16 v0, p1

    #@13
    invoke-virtual {v0, v7, v14}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    #@16
    .line 385
    move-object/from16 v13, p1

    #@18
    .line 386
    .local v13, "userRuleRoot":Landroid/icu/text/RBBINode;
    move-object/from16 v0, p0

    #@1a
    iget-object v14, v0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@1c
    iget-object v14, v14, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@1e
    invoke-virtual {v14}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    #@21
    move-result v14

    #@22
    if-eqz v14, :cond_0

    #@24
    .line 387
    move-object/from16 v0, p1

    #@26
    iget-object v14, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@28
    iget-object v13, v14, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@2a
    .line 389
    :cond_0
    if-eqz v13, :cond_6

    #@2c
    const/4 v14, 0x1

    #@2d
    :goto_0
    invoke-static {v14}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@30
    .line 390
    iget-object v8, v13, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@32
    .line 394
    .local v8, "matchStartNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/RBBINode;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v12

    #@36
    .local v12, "tNode$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v14

    #@3a
    if-eqz v14, :cond_7

    #@3c
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v11

    #@40
    check-cast v11, Landroid/icu/text/RBBINode;

    #@42
    .line 395
    .local v11, "tNode":Landroid/icu/text/RBBINode;
    const/4 v6, 0x0

    #@43
    .line 399
    .local v6, "endNode":Landroid/icu/text/RBBINode;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@46
    move-result-object v4

    #@47
    .local v4, "endMarkerNode$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@4a
    move-result v14

    #@4b
    if-eqz v14, :cond_3

    #@4d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v3

    #@51
    check-cast v3, Landroid/icu/text/RBBINode;

    #@53
    .line 400
    .local v3, "endMarkerNode":Landroid/icu/text/RBBINode;
    iget-object v14, v11, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    #@55
    invoke-interface {v14, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@58
    move-result v14

    #@59
    if-eqz v14, :cond_2

    #@5b
    .line 401
    move-object v6, v11

    #@5c
    .line 405
    .end local v3    # "endMarkerNode":Landroid/icu/text/RBBINode;
    .end local v6    # "endNode":Landroid/icu/text/RBBINode;
    :cond_3
    if-eqz v6, :cond_1

    #@5e
    .line 416
    move-object/from16 v0, p0

    #@60
    iget-object v14, v0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@62
    iget-boolean v14, v14, Landroid/icu/text/RBBIRuleBuilder;->fLBCMNoChain:Z

    #@64
    if-eqz v14, :cond_4

    #@66
    .line 417
    move-object/from16 v0, p0

    #@68
    iget-object v14, v0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@6a
    iget-object v14, v14, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@6c
    iget v15, v6, Landroid/icu/text/RBBINode;->fVal:I

    #@6e
    invoke-virtual {v14, v15}, Landroid/icu/text/RBBISetBuilder;->getFirstChar(I)I

    #@71
    move-result v1

    #@72
    .line 418
    .local v1, "c":I
    const/4 v14, -0x1

    #@73
    if-eq v1, v14, :cond_4

    #@75
    .line 420
    const/16 v14, 0x1008

    #@77
    invoke-static {v1, v14}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    #@7a
    move-result v2

    #@7b
    .line 421
    .local v2, "cLBProp":I
    const/16 v14, 0x9

    #@7d
    if-eq v2, v14, :cond_1

    #@7f
    .line 430
    .end local v1    # "c":I
    .end local v2    # "cLBProp":I
    :cond_4
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@82
    move-result-object v10

    #@83
    .local v10, "startNode$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@86
    move-result v14

    #@87
    if-eqz v14, :cond_1

    #@89
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8c
    move-result-object v9

    #@8d
    check-cast v9, Landroid/icu/text/RBBINode;

    #@8f
    .line 431
    .local v9, "startNode":Landroid/icu/text/RBBINode;
    iget v14, v9, Landroid/icu/text/RBBINode;->fType:I

    #@91
    const/4 v15, 0x3

    #@92
    if-ne v14, v15, :cond_5

    #@94
    .line 435
    iget v14, v6, Landroid/icu/text/RBBINode;->fVal:I

    #@96
    iget v15, v9, Landroid/icu/text/RBBINode;->fVal:I

    #@98
    if-ne v14, v15, :cond_5

    #@9a
    .line 443
    iget-object v14, v6, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    #@9c
    iget-object v15, v9, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    #@9e
    invoke-interface {v14, v15}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@a1
    goto :goto_1

    #@a2
    .line 389
    .end local v4    # "endMarkerNode$iterator":Ljava/util/Iterator;
    .end local v8    # "matchStartNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/RBBINode;>;"
    .end local v9    # "startNode":Landroid/icu/text/RBBINode;
    .end local v10    # "startNode$iterator":Ljava/util/Iterator;
    .end local v11    # "tNode":Landroid/icu/text/RBBINode;
    .end local v12    # "tNode$iterator":Ljava/util/Iterator;
    :cond_6
    const/4 v14, 0x0

    #@a3
    goto :goto_0

    #@a4
    .line 371
    .restart local v8    # "matchStartNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/text/RBBINode;>;"
    .restart local v12    # "tNode$iterator":Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method calcFirstPos(Landroid/icu/text/RBBINode;)V
    .locals 2
    .param p1, "n"    # Landroid/icu/text/RBBINode;

    #@0
    .prologue
    .line 253
    if-nez p1, :cond_0

    #@2
    .line 254
    return-void

    #@3
    .line 256
    :cond_0
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@5
    const/4 v1, 0x3

    #@6
    if-eq v0, v1, :cond_1

    #@8
    .line 257
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@a
    const/4 v1, 0x6

    #@b
    if-ne v0, v1, :cond_2

    #@d
    .line 261
    :cond_1
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@f
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@12
    .line 262
    return-void

    #@13
    .line 258
    :cond_2
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@15
    const/4 v1, 0x4

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 259
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@1a
    const/4 v1, 0x5

    #@1b
    if-eq v0, v1, :cond_1

    #@1d
    .line 267
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@1f
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFirstPos(Landroid/icu/text/RBBINode;)V

    #@22
    .line 268
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@24
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFirstPos(Landroid/icu/text/RBBINode;)V

    #@27
    .line 271
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@29
    const/16 v1, 0x9

    #@2b
    if-ne v0, v1, :cond_4

    #@2d
    .line 272
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@2f
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@31
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@33
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@36
    .line 273
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@38
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@3a
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@3c
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@3f
    .line 252
    :cond_3
    :goto_0
    return-void

    #@40
    .line 275
    :cond_4
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@42
    const/16 v1, 0x8

    #@44
    if-ne v0, v1, :cond_5

    #@46
    .line 276
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@48
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@4a
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@4c
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@4f
    .line 277
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@51
    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    #@53
    if-eqz v0, :cond_3

    #@55
    .line 278
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@57
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@59
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@5b
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5e
    goto :goto_0

    #@5f
    .line 281
    :cond_5
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@61
    const/16 v1, 0xa

    #@63
    if-eq v0, v1, :cond_6

    #@65
    .line 282
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@67
    const/16 v1, 0xc

    #@69
    if-ne v0, v1, :cond_7

    #@6b
    .line 284
    :cond_6
    :goto_1
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@6d
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@6f
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@71
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@74
    goto :goto_0

    #@75
    .line 283
    :cond_7
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@77
    const/16 v1, 0xb

    #@79
    if-ne v0, v1, :cond_3

    #@7b
    goto :goto_1
.end method

.method calcFollowPos(Landroid/icu/text/RBBINode;)V
    .locals 4
    .param p1, "n"    # Landroid/icu/text/RBBINode;

    #@0
    .prologue
    .line 339
    if-eqz p1, :cond_0

    #@2
    .line 340
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    #@4
    const/4 v3, 0x3

    #@5
    if-ne v2, v3, :cond_1

    #@7
    .line 342
    :cond_0
    return-void

    #@8
    .line 341
    :cond_1
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    #@a
    const/4 v3, 0x6

    #@b
    if-eq v2, v3, :cond_0

    #@d
    .line 345
    iget-object v2, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@f
    invoke-virtual {p0, v2}, Landroid/icu/text/RBBITableBuilder;->calcFollowPos(Landroid/icu/text/RBBINode;)V

    #@12
    .line 346
    iget-object v2, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@14
    invoke-virtual {p0, v2}, Landroid/icu/text/RBBITableBuilder;->calcFollowPos(Landroid/icu/text/RBBINode;)V

    #@17
    .line 349
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    #@19
    const/16 v3, 0x8

    #@1b
    if-ne v2, v3, :cond_2

    #@1d
    .line 350
    iget-object v2, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@1f
    iget-object v2, v2, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@21
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    .local v1, "i$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/icu/text/RBBINode;

    #@31
    .line 351
    .local v0, "i":Landroid/icu/text/RBBINode;
    iget-object v2, v0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    #@33
    iget-object v3, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@35
    iget-object v3, v3, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@37
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@3a
    goto :goto_0

    #@3b
    .line 356
    .end local v0    # "i":Landroid/icu/text/RBBINode;
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    :cond_2
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    #@3d
    const/16 v3, 0xa

    #@3f
    if-eq v2, v3, :cond_3

    #@41
    .line 357
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    #@43
    const/16 v3, 0xb

    #@45
    if-ne v2, v3, :cond_4

    #@47
    .line 358
    :cond_3
    iget-object v2, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@49
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object v1

    #@4d
    .restart local v1    # "i$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_4

    #@53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Landroid/icu/text/RBBINode;

    #@59
    .line 359
    .restart local v0    # "i":Landroid/icu/text/RBBINode;
    iget-object v2, v0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    #@5b
    iget-object v3, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@5d
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@60
    goto :goto_1

    #@61
    .line 338
    .end local v0    # "i":Landroid/icu/text/RBBINode;
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method calcLastPos(Landroid/icu/text/RBBINode;)V
    .locals 2
    .param p1, "n"    # Landroid/icu/text/RBBINode;

    #@0
    .prologue
    .line 296
    if-nez p1, :cond_0

    #@2
    .line 297
    return-void

    #@3
    .line 299
    :cond_0
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@5
    const/4 v1, 0x3

    #@6
    if-eq v0, v1, :cond_1

    #@8
    .line 300
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@a
    const/4 v1, 0x6

    #@b
    if-ne v0, v1, :cond_2

    #@d
    .line 304
    :cond_1
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@f
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@12
    .line 305
    return-void

    #@13
    .line 301
    :cond_2
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@15
    const/4 v1, 0x4

    #@16
    if-eq v0, v1, :cond_1

    #@18
    .line 302
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@1a
    const/4 v1, 0x5

    #@1b
    if-eq v0, v1, :cond_1

    #@1d
    .line 310
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@1f
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcLastPos(Landroid/icu/text/RBBINode;)V

    #@22
    .line 311
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@24
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcLastPos(Landroid/icu/text/RBBINode;)V

    #@27
    .line 314
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@29
    const/16 v1, 0x9

    #@2b
    if-ne v0, v1, :cond_4

    #@2d
    .line 315
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@2f
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@31
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@33
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@36
    .line 316
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@38
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@3a
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@3c
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@3f
    .line 295
    :cond_3
    :goto_0
    return-void

    #@40
    .line 318
    :cond_4
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@42
    const/16 v1, 0x8

    #@44
    if-ne v0, v1, :cond_5

    #@46
    .line 319
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@48
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@4a
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@4c
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@4f
    .line 320
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@51
    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    #@53
    if-eqz v0, :cond_3

    #@55
    .line 321
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@57
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@59
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@5b
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@5e
    goto :goto_0

    #@5f
    .line 324
    :cond_5
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@61
    const/16 v1, 0xa

    #@63
    if-eq v0, v1, :cond_6

    #@65
    .line 325
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@67
    const/16 v1, 0xc

    #@69
    if-ne v0, v1, :cond_7

    #@6b
    .line 327
    :cond_6
    :goto_1
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@6d
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@6f
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@71
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@74
    goto :goto_0

    #@75
    .line 326
    :cond_7
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    #@77
    const/16 v1, 0xb

    #@79
    if-ne v0, v1, :cond_3

    #@7b
    goto :goto_1
.end method

.method calcNullable(Landroid/icu/text/RBBINode;)V
    .locals 4
    .param p1, "n"    # Landroid/icu/text/RBBINode;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 206
    if-nez p1, :cond_0

    #@4
    .line 207
    return-void

    #@5
    .line 209
    :cond_0
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 210
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    #@b
    const/4 v3, 0x6

    #@c
    if-ne v2, v3, :cond_2

    #@e
    .line 212
    :cond_1
    iput-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    #@10
    .line 213
    return-void

    #@11
    .line 216
    :cond_2
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    #@13
    const/4 v3, 0x4

    #@14
    if-eq v2, v3, :cond_3

    #@16
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    #@18
    const/4 v3, 0x5

    #@19
    if-ne v2, v3, :cond_4

    #@1b
    .line 219
    :cond_3
    iput-boolean v0, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    #@1d
    .line 220
    return-void

    #@1e
    .line 226
    :cond_4
    iget-object v2, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@20
    invoke-virtual {p0, v2}, Landroid/icu/text/RBBITableBuilder;->calcNullable(Landroid/icu/text/RBBINode;)V

    #@23
    .line 227
    iget-object v2, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@25
    invoke-virtual {p0, v2}, Landroid/icu/text/RBBITableBuilder;->calcNullable(Landroid/icu/text/RBBINode;)V

    #@28
    .line 230
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    #@2a
    const/16 v3, 0x9

    #@2c
    if-ne v2, v3, :cond_6

    #@2e
    .line 231
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@30
    iget-boolean v1, v1, Landroid/icu/text/RBBINode;->fNullable:Z

    #@32
    if-nez v1, :cond_5

    #@34
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@36
    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    #@38
    :cond_5
    iput-boolean v0, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    #@3a
    .line 205
    :goto_0
    return-void

    #@3b
    .line 233
    :cond_6
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    #@3d
    const/16 v3, 0x8

    #@3f
    if-ne v2, v3, :cond_8

    #@41
    .line 234
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@43
    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    #@45
    if-eqz v0, :cond_7

    #@47
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@49
    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    #@4b
    :goto_1
    iput-boolean v0, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    #@4d
    goto :goto_0

    #@4e
    :cond_7
    move v0, v1

    #@4f
    goto :goto_1

    #@50
    .line 236
    :cond_8
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    #@52
    const/16 v3, 0xa

    #@54
    if-eq v2, v3, :cond_9

    #@56
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    #@58
    const/16 v3, 0xc

    #@5a
    if-ne v2, v3, :cond_a

    #@5c
    .line 237
    :cond_9
    iput-boolean v0, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    #@5e
    goto :goto_0

    #@5f
    .line 240
    :cond_a
    iput-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    #@61
    goto :goto_0
.end method

.method exportTable()[S
    .locals 12

    #@0
    .prologue
    .line 868
    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@2
    iget-object v10, v10, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@4
    iget v11, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@6
    aget-object v10, v10, v11

    #@8
    if-nez v10, :cond_0

    #@a
    .line 869
    const/4 v10, 0x0

    #@b
    new-array v10, v10, [S

    #@d
    return-object v10

    #@e
    .line 872
    :cond_0
    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@10
    iget-object v10, v10, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@12
    invoke-virtual {v10}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    #@15
    move-result v10

    #@16
    const/16 v11, 0x7fff

    #@18
    if-ge v10, v11, :cond_4

    #@1a
    .line 873
    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@1c
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@1f
    move-result v10

    #@20
    const/16 v11, 0x7fff

    #@22
    if-ge v10, v11, :cond_3

    #@24
    const/4 v10, 0x1

    #@25
    .line 872
    :goto_0
    invoke-static {v10}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@28
    .line 875
    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@2a
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@2d
    move-result v3

    #@2e
    .line 879
    .local v3, "numStates":I
    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@30
    iget-object v10, v10, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@32
    invoke-virtual {v10}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    #@35
    move-result v10

    #@36
    add-int/lit8 v5, v10, 0x4

    #@38
    .line 880
    .local v5, "rowLen":I
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    #@3b
    move-result v10

    #@3c
    div-int/lit8 v9, v10, 0x2

    #@3e
    .line 883
    .local v9, "tableSize":I
    new-array v8, v9, [S

    #@40
    .line 890
    .local v8, "table":[S
    ushr-int/lit8 v10, v3, 0x10

    #@42
    int-to-short v10, v10

    #@43
    const/4 v11, 0x0

    #@44
    aput-short v10, v8, v11

    #@46
    .line 891
    const v10, 0xffff

    #@49
    and-int/2addr v10, v3

    #@4a
    int-to-short v10, v10

    #@4b
    const/4 v11, 0x1

    #@4c
    aput-short v10, v8, v11

    #@4e
    .line 894
    ushr-int/lit8 v10, v5, 0x10

    #@50
    int-to-short v10, v10

    #@51
    const/4 v11, 0x2

    #@52
    aput-short v10, v8, v11

    #@54
    .line 895
    const v10, 0xffff

    #@57
    and-int/2addr v10, v5

    #@58
    int-to-short v10, v10

    #@59
    const/4 v11, 0x3

    #@5a
    aput-short v10, v8, v11

    #@5c
    .line 898
    const/4 v1, 0x0

    #@5d
    .line 899
    .local v1, "flags":I
    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@5f
    iget-boolean v10, v10, Landroid/icu/text/RBBIRuleBuilder;->fLookAheadHardBreak:Z

    #@61
    if-eqz v10, :cond_1

    #@63
    .line 900
    const/4 v1, 0x1

    #@64
    .line 902
    :cond_1
    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@66
    iget-object v10, v10, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@68
    invoke-virtual {v10}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    #@6b
    move-result v10

    #@6c
    if-eqz v10, :cond_2

    #@6e
    .line 903
    or-int/lit8 v1, v1, 0x2

    #@70
    .line 905
    :cond_2
    ushr-int/lit8 v10, v1, 0x10

    #@72
    int-to-short v10, v10

    #@73
    const/4 v11, 0x4

    #@74
    aput-short v10, v8, v11

    #@76
    .line 906
    const v10, 0xffff

    #@79
    and-int/2addr v10, v1

    #@7a
    int-to-short v10, v10

    #@7b
    const/4 v11, 0x5

    #@7c
    aput-short v10, v8, v11

    #@7e
    .line 908
    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@80
    iget-object v10, v10, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@82
    invoke-virtual {v10}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    #@85
    move-result v2

    #@86
    .line 909
    .local v2, "numCharCategories":I
    const/4 v7, 0x0

    #@87
    .local v7, "state":I
    :goto_1
    if-ge v7, v3, :cond_8

    #@89
    .line 910
    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@8b
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v6

    #@8f
    check-cast v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    #@91
    .line 911
    .local v6, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    mul-int v10, v7, v5

    #@93
    add-int/lit8 v4, v10, 0x8

    #@95
    .line 912
    .local v4, "row":I
    iget v10, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    #@97
    const/16 v11, -0x8000

    #@99
    if-ge v11, v10, :cond_5

    #@9b
    iget v10, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    #@9d
    const/16 v11, 0x7fff

    #@9f
    if-gt v10, v11, :cond_5

    #@a1
    const/4 v10, 0x1

    #@a2
    :goto_2
    invoke-static {v10}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@a5
    .line 913
    iget v10, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    #@a7
    const/16 v11, -0x8000

    #@a9
    if-ge v11, v10, :cond_6

    #@ab
    iget v10, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    #@ad
    const/16 v11, 0x7fff

    #@af
    if-gt v10, v11, :cond_6

    #@b1
    const/4 v10, 0x1

    #@b2
    :goto_3
    invoke-static {v10}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@b5
    .line 914
    add-int/lit8 v10, v4, 0x0

    #@b7
    iget v11, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    #@b9
    int-to-short v11, v11

    #@ba
    aput-short v11, v8, v10

    #@bc
    .line 915
    add-int/lit8 v10, v4, 0x1

    #@be
    iget v11, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    #@c0
    int-to-short v11, v11

    #@c1
    aput-short v11, v8, v10

    #@c3
    .line 916
    add-int/lit8 v10, v4, 0x2

    #@c5
    iget v11, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    #@c7
    int-to-short v11, v11

    #@c8
    aput-short v11, v8, v10

    #@ca
    .line 917
    const/4 v0, 0x0

    #@cb
    .local v0, "col":I
    :goto_4
    if-ge v0, v2, :cond_7

    #@cd
    .line 918
    add-int/lit8 v10, v4, 0x4

    #@cf
    add-int/2addr v10, v0

    #@d0
    iget-object v11, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    #@d2
    aget v11, v11, v0

    #@d4
    int-to-short v11, v11

    #@d5
    aput-short v11, v8, v10

    #@d7
    .line 917
    add-int/lit8 v0, v0, 0x1

    #@d9
    goto :goto_4

    #@da
    .line 873
    .end local v0    # "col":I
    .end local v1    # "flags":I
    .end local v2    # "numCharCategories":I
    .end local v3    # "numStates":I
    .end local v4    # "row":I
    .end local v5    # "rowLen":I
    .end local v6    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v7    # "state":I
    .end local v8    # "table":[S
    .end local v9    # "tableSize":I
    :cond_3
    const/4 v10, 0x0

    #@db
    goto/16 :goto_0

    #@dd
    .line 872
    :cond_4
    const/4 v10, 0x0

    #@de
    goto/16 :goto_0

    #@e0
    .line 912
    .restart local v1    # "flags":I
    .restart local v2    # "numCharCategories":I
    .restart local v3    # "numStates":I
    .restart local v4    # "row":I
    .restart local v5    # "rowLen":I
    .restart local v6    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .restart local v7    # "state":I
    .restart local v8    # "table":[S
    .restart local v9    # "tableSize":I
    :cond_5
    const/4 v10, 0x0

    #@e1
    goto :goto_2

    #@e2
    .line 913
    :cond_6
    const/4 v10, 0x0

    #@e3
    goto :goto_3

    #@e4
    .line 909
    .restart local v0    # "col":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    #@e6
    goto :goto_1

    #@e7
    .line 921
    .end local v0    # "col":I
    .end local v4    # "row":I
    .end local v6    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_8
    return-object v8
.end method

.method flagAcceptingStates()V
    .locals 8

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 599
    new-instance v1, Ljava/util/ArrayList;

    #@3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 604
    .local v1, "endMarkerNodes":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/text/RBBINode;>;"
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@8
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@a
    iget v6, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@c
    aget-object v5, v5, v6

    #@e
    const/4 v6, 0x6

    #@f
    invoke-virtual {v5, v1, v6}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    #@12
    .line 606
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@16
    move-result v5

    #@17
    if-ge v2, v5, :cond_4

    #@19
    .line 607
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/icu/text/RBBINode;

    #@1f
    .line 608
    .local v0, "endMarker":Landroid/icu/text/RBBINode;
    const/4 v3, 0x0

    #@20
    .local v3, "n":I
    :goto_1
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@22
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@25
    move-result v5

    #@26
    if-ge v3, v5, :cond_3

    #@28
    .line 609
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@2a
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    #@30
    .line 611
    .local v4, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    #@32
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_2

    #@38
    .line 616
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    #@3a
    if-nez v5, :cond_0

    #@3c
    .line 618
    iget v5, v0, Landroid/icu/text/RBBINode;->fVal:I

    #@3e
    iput v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    #@40
    .line 619
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    #@42
    if-nez v5, :cond_0

    #@44
    .line 620
    iput v7, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    #@46
    .line 623
    :cond_0
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    #@48
    if-ne v5, v7, :cond_1

    #@4a
    iget v5, v0, Landroid/icu/text/RBBINode;->fVal:I

    #@4c
    if-eqz v5, :cond_1

    #@4e
    .line 627
    iget v5, v0, Landroid/icu/text/RBBINode;->fVal:I

    #@50
    iput v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    #@52
    .line 634
    :cond_1
    iget-boolean v5, v0, Landroid/icu/text/RBBINode;->fLookAheadEnd:Z

    #@54
    if-eqz v5, :cond_2

    #@56
    .line 638
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    #@58
    iput v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    #@5a
    .line 608
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 606
    .end local v4    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 598
    .end local v0    # "endMarker":Landroid/icu/text/RBBINode;
    .end local v3    # "n":I
    :cond_4
    return-void
.end method

.method flagLookAheadStates()V
    .locals 7

    #@0
    .prologue
    .line 652
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 657
    .local v2, "lookAheadNodes":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/text/RBBINode;>;"
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@7
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@9
    iget v6, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@b
    aget-object v5, v5, v6

    #@d
    const/4 v6, 0x4

    #@e
    invoke-virtual {v5, v2, v6}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    #@11
    .line 658
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@15
    move-result v5

    #@16
    if-ge v0, v5, :cond_2

    #@18
    .line 659
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroid/icu/text/RBBINode;

    #@1e
    .line 661
    .local v1, "lookAheadNode":Landroid/icu/text/RBBINode;
    const/4 v3, 0x0

    #@1f
    .local v3, "n":I
    :goto_1
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@21
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@24
    move-result v5

    #@25
    if-ge v3, v5, :cond_1

    #@27
    .line 662
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@29
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v4

    #@2d
    check-cast v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    #@2f
    .line 663
    .local v4, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    #@31
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_0

    #@37
    .line 664
    iget v5, v1, Landroid/icu/text/RBBINode;->fVal:I

    #@39
    iput v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    #@3b
    .line 661
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 658
    .end local v4    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_0

    #@41
    .line 651
    .end local v1    # "lookAheadNode":Landroid/icu/text/RBBINode;
    .end local v3    # "n":I
    :cond_2
    return-void
.end method

.method flagTaggedStates()V
    .locals 7

    #@0
    .prologue
    .line 679
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 684
    .local v4, "tagNodes":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/text/RBBINode;>;"
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@7
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@9
    iget v6, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@b
    aget-object v5, v5, v6

    #@d
    const/4 v6, 0x5

    #@e
    invoke-virtual {v5, v4, v6}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    #@11
    .line 685
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@15
    move-result v5

    #@16
    if-ge v0, v5, :cond_2

    #@18
    .line 686
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroid/icu/text/RBBINode;

    #@1e
    .line 688
    .local v3, "tagNode":Landroid/icu/text/RBBINode;
    const/4 v1, 0x0

    #@1f
    .local v1, "n":I
    :goto_1
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@21
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@24
    move-result v5

    #@25
    if-ge v1, v5, :cond_1

    #@27
    .line 689
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@29
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    #@2f
    .line 690
    .local v2, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v5, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    #@31
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_0

    #@37
    .line 691
    iget-object v5, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagVals:Ljava/util/SortedSet;

    #@39
    iget v6, v3, Landroid/icu/text/RBBINode;->fVal:I

    #@3b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v6

    #@3f
    invoke-interface {v5, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    #@42
    .line 688
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_1

    #@45
    .line 685
    .end local v2    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_0

    #@48
    .line 678
    .end local v1    # "n":I
    .end local v3    # "tagNode":Landroid/icu/text/RBBINode;
    :cond_2
    return-void
.end method

.method getTableSize()I
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 821
    const/4 v3, 0x0

    #@2
    .line 826
    .local v3, "size":I
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@4
    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    #@6
    iget v5, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    #@8
    aget-object v4, v4, v5

    #@a
    if-nez v4, :cond_0

    #@c
    .line 827
    return v6

    #@d
    .line 832
    :cond_0
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@f
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@12
    move-result v1

    #@13
    .line 833
    .local v1, "numRows":I
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@15
    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@17
    invoke-virtual {v4}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    #@1a
    move-result v0

    #@1b
    .line 839
    .local v0, "numCols":I
    mul-int/lit8 v4, v0, 0x2

    #@1d
    add-int/lit8 v2, v4, 0x8

    #@1f
    .line 840
    .local v2, "rowSize":I
    mul-int v4, v1, v2

    #@21
    add-int/lit8 v3, v4, 0x10

    #@23
    .line 841
    :goto_0
    rem-int/lit8 v4, v3, 0x8

    #@25
    if-lez v4, :cond_1

    #@27
    .line 842
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 845
    :cond_1
    return v3
.end method

.method mergeRuleStatusVals()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 738
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@3
    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    #@5
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@8
    move-result v7

    #@9
    if-nez v7, :cond_0

    #@b
    .line 739
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@d
    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    #@f
    const/4 v8, 0x1

    #@10
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v8

    #@14
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    .line 740
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@19
    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    #@1b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v8

    #@1f
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@22
    .line 742
    new-instance v3, Ljava/util/TreeSet;

    #@24
    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    #@27
    .line 743
    .local v3, "s0":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v1

    #@2b
    .line 744
    .local v1, "izero":Ljava/lang/Integer;
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@2d
    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    #@2f
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 745
    new-instance v4, Ljava/util/TreeSet;

    #@34
    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    #@37
    .line 746
    .local v4, "s1":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-interface {v4, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    #@3a
    .line 747
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@3c
    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    #@3e
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 752
    .end local v1    # "izero":Ljava/lang/Integer;
    .end local v3    # "s0":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    .end local v4    # "s1":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    :cond_0
    const/4 v2, 0x0

    #@42
    .local v2, "n":I
    :goto_0
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@44
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@47
    move-result v7

    #@48
    if-ge v2, v7, :cond_2

    #@4a
    .line 753
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@4c
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v5

    #@50
    check-cast v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    #@52
    .line 754
    .local v5, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagVals:Ljava/util/SortedSet;

    #@54
    .line 755
    .local v6, "statusVals":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@56
    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    #@58
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    move-result-object v0

    #@5c
    check-cast v0, Ljava/lang/Integer;

    #@5e
    .line 756
    .local v0, "arrayIndexI":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@60
    .line 761
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@62
    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    #@64
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@67
    move-result v7

    #@68
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6b
    move-result-object v0

    #@6c
    .line 762
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@6e
    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    #@70
    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    .line 766
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@75
    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    #@77
    invoke-interface {v6}, Ljava/util/Set;->size()I

    #@7a
    move-result v8

    #@7b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v8

    #@7f
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@82
    .line 767
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@84
    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    #@86
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@89
    .line 771
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@8c
    move-result v7

    #@8d
    iput v7, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    #@8f
    .line 752
    add-int/lit8 v2, v2, 0x1

    #@91
    goto :goto_0

    #@92
    .line 722
    .end local v0    # "arrayIndexI":Ljava/lang/Integer;
    .end local v5    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v6    # "statusVals":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method printPosSets(Landroid/icu/text/RBBINode;)V
    .locals 3
    .param p1, "n"    # Landroid/icu/text/RBBINode;

    #@0
    .prologue
    .line 789
    if-nez p1, :cond_0

    #@2
    .line 790
    return-void

    #@3
    .line 792
    :cond_0
    invoke-static {p1}, Landroid/icu/text/RBBINode;->printNode(Landroid/icu/text/RBBINode;)V

    #@6
    .line 793
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "         Nullable:  "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget-boolean v2, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@21
    .line 795
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@23
    const-string/jumbo v1, "         firstpos:  "

    #@26
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@29
    .line 796
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    #@2b
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    #@2e
    .line 798
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@30
    const-string/jumbo v1, "         lastpos:   "

    #@33
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@36
    .line 799
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    #@38
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    #@3b
    .line 801
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3d
    const-string/jumbo v1, "         followpos: "

    #@40
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@43
    .line 802
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    #@45
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    #@48
    .line 804
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@4a
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printPosSets(Landroid/icu/text/RBBINode;)V

    #@4d
    .line 805
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@4f
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printPosSets(Landroid/icu/text/RBBINode;)V

    #@52
    .line 788
    return-void
.end method

.method printRuleStatusTable()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x7

    #@1
    .line 990
    const/4 v3, 0x0

    #@2
    .line 991
    .local v3, "thisRecord":I
    const/4 v1, 0x0

    #@3
    .line 993
    .local v1, "nextRecord":I
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@5
    iget-object v2, v5, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    #@7
    .line 995
    .local v2, "tbl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9
    const-string/jumbo v6, "index |  tags \n"

    #@c
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@f
    .line 996
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11
    const-string/jumbo v6, "-------------------\n"

    #@14
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@17
    .line 998
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1a
    move-result v5

    #@1b
    if-ge v1, v5, :cond_1

    #@1d
    .line 999
    move v3, v1

    #@1e
    .line 1000
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Ljava/lang/Integer;

    #@24
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@27
    move-result v5

    #@28
    add-int/2addr v5, v3

    #@29
    add-int/lit8 v1, v5, 0x1

    #@2b
    .line 1001
    invoke-static {v3, v7}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@2e
    .line 1002
    add-int/lit8 v0, v3, 0x1

    #@30
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    #@32
    .line 1003
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v5

    #@36
    check-cast v5, Ljava/lang/Integer;

    #@38
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@3b
    move-result v4

    #@3c
    .line 1004
    .local v4, "val":I
    invoke-static {v4, v7}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@3f
    .line 1002
    add-int/lit8 v0, v0, 0x1

    #@41
    goto :goto_1

    #@42
    .line 1006
    .end local v4    # "val":I
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@44
    const-string/jumbo v6, "\n"

    #@47
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@4a
    goto :goto_0

    #@4b
    .line 1008
    .end local v0    # "i":I
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4d
    const-string/jumbo v6, "\n\n"

    #@50
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@53
    .line 989
    return-void
.end method

.method printSet(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 933
    .local p1, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ibm/icu/text/RBBINode;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "n$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/icu/text/RBBINode;

    #@10
    .line 934
    .local v0, "n":Landroid/icu/text/RBBINode;
    iget v2, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    #@12
    const/16 v3, 0x8

    #@14
    invoke-static {v2, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@17
    goto :goto_0

    #@18
    .line 936
    .end local v0    # "n":Landroid/icu/text/RBBINode;
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1a
    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    #@1d
    .line 932
    return-void
.end method

.method printStates()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    .line 951
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3
    const-string/jumbo v4, "state |           i n p u t     s y m b o l s \n"

    #@6
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@9
    .line 952
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b
    const-string/jumbo v4, "      | Acc  LA    Tag"

    #@e
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@11
    .line 953
    const/4 v0, 0x0

    #@12
    .local v0, "c":I
    :goto_0
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@14
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@16
    invoke-virtual {v3}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    #@19
    move-result v3

    #@1a
    if-ge v0, v3, :cond_0

    #@1c
    .line 954
    invoke-static {v0, v5}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@1f
    .line 953
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 956
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@24
    const-string/jumbo v4, "\n"

    #@27
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@2a
    .line 957
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2c
    const-string/jumbo v4, "      |---------------"

    #@2f
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@32
    .line 958
    const/4 v0, 0x0

    #@33
    :goto_1
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@35
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@37
    invoke-virtual {v3}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    #@3a
    move-result v3

    #@3b
    if-ge v0, v3, :cond_1

    #@3d
    .line 959
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3f
    const-string/jumbo v4, "---"

    #@42
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@45
    .line 958
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_1

    #@48
    .line 961
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4a
    const-string/jumbo v4, "\n"

    #@4d
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@50
    .line 963
    const/4 v1, 0x0

    #@51
    .local v1, "n":I
    :goto_2
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@53
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@56
    move-result v3

    #@57
    if-ge v1, v3, :cond_3

    #@59
    .line 964
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    #@5b
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5e
    move-result-object v2

    #@5f
    check-cast v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    #@61
    .line 965
    .local v2, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    const/4 v3, 0x5

    #@62
    invoke-static {v1, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@65
    .line 966
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@67
    const-string/jumbo v4, " | "

    #@6a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@6d
    .line 968
    iget v3, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    #@6f
    invoke-static {v3, v5}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@72
    .line 969
    iget v3, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    #@74
    const/4 v4, 0x4

    #@75
    invoke-static {v3, v4}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@78
    .line 970
    iget v3, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    #@7a
    const/4 v4, 0x6

    #@7b
    invoke-static {v3, v4}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@7e
    .line 971
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@80
    const-string/jumbo v4, " "

    #@83
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@86
    .line 972
    const/4 v0, 0x0

    #@87
    :goto_3
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@89
    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    #@8b
    invoke-virtual {v3}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    #@8e
    move-result v3

    #@8f
    if-ge v0, v3, :cond_2

    #@91
    .line 973
    iget-object v3, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    #@93
    aget v3, v3, v0

    #@95
    invoke-static {v3, v5}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@98
    .line 972
    add-int/lit8 v0, v0, 0x1

    #@9a
    goto :goto_3

    #@9b
    .line 975
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9d
    const-string/jumbo v4, "\n"

    #@a0
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@a3
    .line 963
    add-int/lit8 v1, v1, 0x1

    #@a5
    goto :goto_2

    #@a6
    .line 977
    .end local v2    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a8
    const-string/jumbo v4, "\n\n"

    #@ab
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@ae
    .line 947
    return-void
.end method
