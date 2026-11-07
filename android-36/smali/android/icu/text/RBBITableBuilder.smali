.class Landroid/icu/text/RBBITableBuilder;
.super Ljava/lang/Object;
.source "RBBITableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist MAX_STATE_FOR_8BITS_TABLE:I = 0xff


# instance fields
.field private blacklist fDStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field blacklist fLASlotsInUse:I

.field blacklist fLookAheadRuleMap:[I

.field private blacklist fRB:Landroid/icu/text/RBBIRuleBuilder;

.field private blacklist fRootIx:I

.field private blacklist fSafeTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[S>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 34
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/text/RBBIRuleBuilder;I)V
    .registers 4
    .param p1, "rb"    # Landroid/icu/text/RBBIRuleBuilder;
    .param p2, "rootNodeIx"    # I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/text/RBBITableBuilder;->fLASlotsInUse:I

    .line 95
    iput p2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    .line 96
    iput-object p1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    .line 98
    return-void
.end method


# virtual methods
.method blacklist addRuleRootNodes(Ljava/util/List;Landroid/icu/text/RBBINode;)V
    .registers 4
    .param p2, "node"    # Landroid/icu/text/RBBINode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/text/RBBINode;",
            ">;",
            "Landroid/icu/text/RBBINode;",
            ")V"
        }
    .end annotation

    .line 385
    .local p1, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/RBBINode;>;"
    if-nez p2, :cond_3

    .line 386
    return-void

    .line 388
    :cond_3
    iget-boolean v0, p2, Landroid/icu/text/RBBINode;->fRuleRoot:Z

    if-eqz v0, :cond_b

    .line 389
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    return-void

    .line 394
    :cond_b
    iget-object v0, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/RBBITableBuilder;->addRuleRootNodes(Ljava/util/List;Landroid/icu/text/RBBINode;)V

    .line 395
    iget-object v0, p2, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/RBBITableBuilder;->addRuleRootNodes(Ljava/util/List;Landroid/icu/text/RBBINode;)V

    .line 396
    return-void
.end method

.method blacklist bofFixup()V
    .registers 8

    .line 487
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v0, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 488
    .local v0, "bofNode":Landroid/icu/text/RBBINode;
    iget v1, v0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    move v1, v3

    :goto_16
    invoke-static {v1}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 489
    iget v1, v0, Landroid/icu/text/RBBINode;->fVal:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, v3

    :goto_20
    invoke-static {v2}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 496
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v2

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    .line 497
    .local v1, "matchStartNodes":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/RBBINode;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RBBINode;

    .line 498
    .local v3, "startNode":Landroid/icu/text/RBBINode;
    iget v5, v3, Landroid/icu/text/RBBINode;->fType:I

    if-eq v5, v4, :cond_46

    .line 499
    goto :goto_35

    .line 502
    :cond_46
    iget v5, v3, Landroid/icu/text/RBBINode;->fVal:I

    iget v6, v0, Landroid/icu/text/RBBINode;->fVal:I

    if-ne v5, v6, :cond_53

    .line 508
    iget-object v5, v0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v6, v3, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 510
    .end local v3    # "startNode":Landroid/icu/text/RBBINode;
    :cond_53
    goto :goto_35

    .line 511
    :cond_54
    return-void
.end method

.method blacklist buildForwardTable()V
    .registers 7

    .line 112
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    if-nez v0, :cond_b

    .line 113
    return-void

    .line 120
    :cond_b
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/icu/text/RBBINode;->flattenVariables(I)Landroid/icu/text/RBBINode;

    move-result-object v2

    aput-object v2, v0, v1

    .line 121
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v2, "ftree"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_45

    .line 122
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Parse tree after flattening variable references."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 132
    :cond_45
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v0}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_75

    .line 133
    new-instance v0, Landroid/icu/text/RBBINode;

    invoke-direct {v0, v2}, Landroid/icu/text/RBBINode;-><init>(I)V

    .line 134
    .local v0, "bofTop":Landroid/icu/text/RBBINode;
    new-instance v3, Landroid/icu/text/RBBINode;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/icu/text/RBBINode;-><init>(I)V

    .line 135
    .local v3, "bofLeaf":Landroid/icu/text/RBBINode;
    iput-object v3, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 136
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v5, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v4, v4, v5

    iput-object v4, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 137
    iput-object v0, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 138
    const/4 v4, 0x2

    iput v4, v3, Landroid/icu/text/RBBINode;->fVal:I

    .line 139
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v5, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aput-object v0, v4, v5

    .line 147
    .end local v0    # "bofTop":Landroid/icu/text/RBBINode;
    .end local v3    # "bofLeaf":Landroid/icu/text/RBBINode;
    :cond_75
    new-instance v0, Landroid/icu/text/RBBINode;

    invoke-direct {v0, v2}, Landroid/icu/text/RBBINode;-><init>(I)V

    .line 148
    .local v0, "cn":Landroid/icu/text/RBBINode;
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v2, v2, v3

    iput-object v2, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 149
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v2, v2, v3

    iput-object v0, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 150
    new-instance v2, Landroid/icu/text/RBBINode;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/icu/text/RBBINode;-><init>(I)V

    iput-object v2, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 151
    .local v2, "endMarkerNode":Landroid/icu/text/RBBINode;
    iget-object v3, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object v0, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 152
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aput-object v0, v3, v4

    .line 158
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/icu/text/RBBINode;->flattenSets()V

    .line 159
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v3, :cond_d1

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v4, "stree"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_d1

    .line 160
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Parse tree after flattening Unicode Set references."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 172
    :cond_d1
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBITableBuilder;->calcNullable(Landroid/icu/text/RBBINode;)V

    .line 173
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBITableBuilder;->calcFirstPos(Landroid/icu/text/RBBINode;)V

    .line 174
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBITableBuilder;->calcLastPos(Landroid/icu/text/RBBINode;)V

    .line 175
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBITableBuilder;->calcFollowPos(Landroid/icu/text/RBBINode;)V

    .line 176
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v1, :cond_121

    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v3, "pos"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_121

    .line 177
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v3

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBITableBuilder;->printPosSets(Landroid/icu/text/RBBINode;)V

    .line 184
    :cond_121
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-boolean v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fChainRules:Z

    if-eqz v1, :cond_132

    .line 185
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v3

    invoke-virtual {p0, v1, v2}, Landroid/icu/text/RBBITableBuilder;->calcChainedFollowPos(Landroid/icu/text/RBBINode;Landroid/icu/text/RBBINode;)V

    .line 191
    :cond_132
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 192
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->bofFixup()V

    .line 198
    :cond_13f
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->buildStateTable()V

    .line 199
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->mapLookAheadRules()V

    .line 200
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->flagAcceptingStates()V

    .line 201
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->flagLookAheadStates()V

    .line 202
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->flagTaggedStates()V

    .line 209
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->mergeRuleStatusVals()V

    .line 210
    return-void
.end method

.method blacklist buildSafeReverseTable()V
    .registers 13

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1187
    .local v0, "safePairs":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v1

    .line 1188
    .local v1, "numCharClasses":I
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1190
    .local v2, "numStates":I
    const/4 v3, 0x0

    .local v3, "c1":I
    :goto_14
    if-ge v3, v1, :cond_50

    .line 1191
    const/4 v4, 0x0

    .local v4, "c2":I
    :goto_17
    if-ge v4, v1, :cond_4d

    .line 1192
    const/4 v5, -0x1

    .line 1193
    .local v5, "wantedEndState":I
    const/4 v6, 0x0

    .line 1194
    .local v6, "endState":I
    const/4 v7, 0x1

    .local v7, "startState":I
    :goto_1c
    if-ge v7, v2, :cond_40

    .line 1195
    iget-object v8, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 1196
    .local v8, "startStateD":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v9, v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v9, v9, v3

    .line 1197
    .local v9, "s2":I
    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 1198
    .local v10, "s2StateD":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v11, v10, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v6, v11, v4

    .line 1199
    if-gez v5, :cond_3a

    .line 1200
    move v5, v6

    goto :goto_3d

    .line 1202
    :cond_3a
    if-eq v5, v6, :cond_3d

    .line 1203
    goto :goto_40

    .line 1194
    .end local v8    # "startStateD":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v9    # "s2":I
    .end local v10    # "s2StateD":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_3d
    :goto_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 1207
    .end local v7    # "startState":I
    :cond_40
    :goto_40
    if-ne v5, v6, :cond_4a

    .line 1208
    int-to-char v7, v3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1209
    int-to-char v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1191
    .end local v5    # "wantedEndState":I
    .end local v6    # "endState":I
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1190
    .end local v4    # "c2":I
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1225
    .end local v3    # "c1":I
    :cond_50
    nop

    .line 1226
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    .line 1227
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_59
    add-int/lit8 v4, v1, 0x2

    if-ge v3, v4, :cond_67

    .line 1228
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    new-array v5, v1, [S

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 1232
    .end local v3    # "row":I
    :cond_67
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [S

    .line 1233
    .local v3, "startState":[S
    const/4 v5, 0x0

    .local v5, "charClass":I
    :goto_71
    if-ge v5, v1, :cond_7b

    .line 1235
    add-int/lit8 v6, v5, 0x2

    int-to-short v6, v6

    aput-short v6, v3, v5

    .line 1233
    add-int/lit8 v5, v5, 0x1

    goto :goto_71

    .line 1240
    .end local v5    # "charClass":I
    :cond_7b
    const/4 v5, 0x2

    .local v5, "row":I
    :goto_7c
    add-int/lit8 v6, v1, 0x2

    const/4 v7, 0x0

    if-ge v5, v6, :cond_8e

    .line 1241
    iget-object v6, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    array-length v8, v3

    invoke-static {v3, v7, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1240
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 1246
    .end local v5    # "row":I
    :cond_8e
    const/4 v5, 0x0

    .local v5, "pairIdx":I
    :goto_8f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v5, v6, :cond_ae

    .line 1247
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1248
    .local v6, "c1":I
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    .line 1250
    .local v8, "c2":I
    iget-object v9, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    add-int/lit8 v10, v8, 0x2

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [S

    .line 1251
    .local v9, "rowState":[S
    aput-short v7, v9, v6

    .line 1246
    .end local v6    # "c1":I
    .end local v8    # "c2":I
    .end local v9    # "rowState":[S
    add-int/lit8 v5, v5, 0x2

    goto :goto_8f

    .line 1255
    .end local v5    # "pairIdx":I
    :cond_ae
    new-instance v5, Landroid/icu/text/RBBIRuleBuilder$IntPair;

    invoke-direct {v5, v4, v7}, Landroid/icu/text/RBBIRuleBuilder$IntPair;-><init>(II)V

    .line 1256
    .local v5, "states":Landroid/icu/text/RBBIRuleBuilder$IntPair;
    :goto_b3
    invoke-virtual {p0, v5}, Landroid/icu/text/RBBITableBuilder;->findDuplicateSafeState(Landroid/icu/text/RBBIRuleBuilder$IntPair;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 1258
    invoke-virtual {p0, v5}, Landroid/icu/text/RBBITableBuilder;->removeSafeState(Landroid/icu/text/RBBIRuleBuilder$IntPair;)V

    goto :goto_b3

    .line 1260
    :cond_bd
    return-void
.end method

.method blacklist buildStateTable()V
    .registers 14

    .line 525
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v0}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 526
    .local v0, "lastInputSymbol":I
    new-instance v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    invoke-direct {v2, v0}, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    .line 527
    .local v2, "failState":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v3, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    invoke-direct {v3, v0}, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    .line 532
    .local v3, "initialState":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v4, v3, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v6, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 533
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :goto_2d
    const/4 v4, 0x0

    .line 539
    .local v4, "T":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    const/4 v5, 0x1

    .local v5, "tx":I
    :goto_2f
    iget-object v6, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_48

    .line 540
    iget-object v6, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 541
    .local v6, "temp":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-boolean v7, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fMarked:Z

    if-nez v7, :cond_45

    .line 542
    move-object v4, v6

    .line 543
    goto :goto_48

    .line 539
    .end local v6    # "temp":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 546
    :cond_48
    :goto_48
    if-nez v4, :cond_4c

    .line 547
    nop

    .line 600
    .end local v4    # "T":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v5    # "tx":I
    return-void

    .line 551
    .restart local v4    # "T":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .restart local v5    # "tx":I
    :cond_4c
    iput-boolean v1, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fMarked:Z

    .line 555
    const/4 v6, 0x1

    .local v6, "a":I
    :goto_4f
    if-gt v6, v0, :cond_c9

    .line 559
    const/4 v7, 0x0

    .line 560
    .local v7, "U":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/RBBINode;>;"
    iget-object v8, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_58
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/text/RBBINode;

    .line 561
    .local v9, "p":Landroid/icu/text/RBBINode;
    iget v10, v9, Landroid/icu/text/RBBINode;->fType:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7a

    iget v10, v9, Landroid/icu/text/RBBINode;->fVal:I

    if-ne v10, v6, :cond_7a

    .line 562
    if-nez v7, :cond_75

    .line 563
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object v7, v10

    .line 565
    :cond_75
    iget-object v10, v9, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v7, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 567
    .end local v9    # "p":Landroid/icu/text/RBBINode;
    :cond_7a
    goto :goto_58

    .line 570
    :cond_7b
    const/4 v8, 0x0

    .line 571
    .local v8, "ux":I
    const/4 v9, 0x0

    .line 572
    .local v9, "UinDstates":Z
    if-eqz v7, :cond_c6

    .line 573
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v10

    if-lez v10, :cond_87

    move v10, v1

    goto :goto_88

    :cond_87
    const/4 v10, 0x0

    :goto_88
    invoke-static {v10}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 575
    const/4 v10, 0x0

    .local v10, "ix":I
    :goto_8c
    iget-object v11, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_ac

    .line 577
    iget-object v11, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 578
    .local v11, "temp2":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v12, v11, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v7, v12}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a9

    .line 579
    iget-object v7, v11, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    .line 580
    move v8, v10

    .line 581
    const/4 v9, 0x1

    .line 582
    goto :goto_ac

    .line 575
    .end local v11    # "temp2":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_a9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8c

    .line 587
    :cond_ac
    :goto_ac
    if-nez v9, :cond_c2

    .line 589
    new-instance v11, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    invoke-direct {v11, v0}, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    .line 590
    .local v11, "newState":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iput-object v7, v11, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    .line 591
    iget-object v12, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v12, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v8, v12, -0x1

    .line 596
    .end local v11    # "newState":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_c2
    iget-object v11, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aput v8, v11, v6

    .line 555
    .end local v7    # "U":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/RBBINode;>;"
    .end local v8    # "ux":I
    .end local v9    # "UinDstates":Z
    .end local v10    # "ix":I
    :cond_c6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4f

    .line 599
    .end local v4    # "T":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v5    # "tx":I
    .end local v6    # "a":I
    :cond_c9
    goto/16 :goto_2d
.end method

.method blacklist calcChainedFollowPos(Landroid/icu/text/RBBINode;Landroid/icu/text/RBBINode;)V
    .registers 13
    .param p1, "tree"    # Landroid/icu/text/RBBINode;
    .param p2, "endMarkNode"    # Landroid/icu/text/RBBINode;

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "leafNodes":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/RBBINode;>;"
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    .line 415
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v2, "ruleRootNodes":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/RBBINode;>;"
    invoke-virtual {p0, v2, p1}, Landroid/icu/text/RBBITableBuilder;->addRuleRootNodes(Ljava/util/List;Landroid/icu/text/RBBINode;)V

    .line 418
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 419
    .local v3, "matchStartNodes":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/RBBINode;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/RBBINode;

    .line 420
    .local v5, "node":Landroid/icu/text/RBBINode;
    iget-boolean v6, v5, Landroid/icu/text/RBBINode;->fChainIn:Z

    if-eqz v6, :cond_2f

    .line 421
    iget-object v6, v5, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v3, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 423
    .end local v5    # "node":Landroid/icu/text/RBBINode;
    :cond_2f
    goto :goto_1a

    .line 427
    :cond_30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/RBBINode;

    .line 437
    .local v5, "endNode":Landroid/icu/text/RBBINode;
    iget-object v6, v5, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    .line 438
    goto :goto_34

    .line 445
    :cond_49
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/text/RBBINode;

    .line 446
    .local v7, "startNode":Landroid/icu/text/RBBINode;
    iget v8, v7, Landroid/icu/text/RBBINode;->fType:I

    if-eq v8, v1, :cond_5e

    .line 447
    goto :goto_4d

    .line 450
    :cond_5e
    iget v8, v5, Landroid/icu/text/RBBINode;->fVal:I

    iget v9, v7, Landroid/icu/text/RBBINode;->fVal:I

    if-ne v8, v9, :cond_6b

    .line 458
    iget-object v8, v5, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v9, v7, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 460
    .end local v7    # "startNode":Landroid/icu/text/RBBINode;
    :cond_6b
    goto :goto_4d

    .line 461
    .end local v5    # "endNode":Landroid/icu/text/RBBINode;
    :cond_6c
    goto :goto_34

    .line 462
    :cond_6d
    return-void
.end method

.method blacklist calcFirstPos(Landroid/icu/text/RBBINode;)V
    .registers 4
    .param p1, "n"    # Landroid/icu/text/RBBINode;

    .line 267
    if-nez p1, :cond_3

    .line 268
    return-void

    .line 270
    :cond_3
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_76

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_76

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_76

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_18

    goto :goto_76

    .line 281
    :cond_18
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFirstPos(Landroid/icu/text/RBBINode;)V

    .line 282
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFirstPos(Landroid/icu/text/RBBINode;)V

    .line 285
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3b

    .line 286
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 287
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_75

    .line 289
    :cond_3b
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5a

    .line 290
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 291
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-eqz v0, :cond_75

    .line 292
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_75

    .line 295
    :cond_5a
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6c

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6c

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_75

    .line 298
    :cond_6c
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 300
    :cond_75
    :goto_75
    return-void

    .line 275
    :cond_76
    :goto_76
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method blacklist calcFollowPos(Landroid/icu/text/RBBINode;)V
    .registers 6
    .param p1, "n"    # Landroid/icu/text/RBBINode;

    .line 353
    if-eqz p1, :cond_62

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_62

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    goto :goto_62

    .line 359
    :cond_d
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFollowPos(Landroid/icu/text/RBBINode;)V

    .line 360
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFollowPos(Landroid/icu/text/RBBINode;)V

    .line 363
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 364
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v0, v0, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBINode;

    .line 365
    .local v1, "i":Landroid/icu/text/RBBINode;
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v3, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v3, v3, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 366
    .end local v1    # "i":Landroid/icu/text/RBBINode;
    goto :goto_25

    .line 370
    :cond_3b
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_47

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_61

    .line 372
    :cond_47
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBINode;

    .line 373
    .restart local v1    # "i":Landroid/icu/text/RBBINode;
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v3, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 374
    .end local v1    # "i":Landroid/icu/text/RBBINode;
    goto :goto_4d

    .line 376
    :cond_61
    return-void

    .line 356
    :cond_62
    :goto_62
    return-void
.end method

.method blacklist calcLastPos(Landroid/icu/text/RBBINode;)V
    .registers 4
    .param p1, "n"    # Landroid/icu/text/RBBINode;

    .line 310
    if-nez p1, :cond_3

    .line 311
    return-void

    .line 313
    :cond_3
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_76

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_76

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_76

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_18

    goto :goto_76

    .line 324
    :cond_18
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcLastPos(Landroid/icu/text/RBBINode;)V

    .line 325
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcLastPos(Landroid/icu/text/RBBINode;)V

    .line 328
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3b

    .line 329
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 330
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_75

    .line 332
    :cond_3b
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5a

    .line 333
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 334
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-eqz v0, :cond_75

    .line 335
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_75

    .line 338
    :cond_5a
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6c

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6c

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_75

    .line 341
    :cond_6c
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 343
    :cond_75
    :goto_75
    return-void

    .line 318
    :cond_76
    :goto_76
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method blacklist calcNullable(Landroid/icu/text/RBBINode;)V
    .registers 6
    .param p1, "n"    # Landroid/icu/text/RBBINode;

    .line 220
    if-nez p1, :cond_3

    .line 221
    return-void

    .line 223
    :cond_3
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_e

    goto :goto_66

    .line 230
    :cond_e
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v2, :cond_63

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1a

    goto :goto_63

    .line 240
    :cond_1a
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcNullable(Landroid/icu/text/RBBINode;)V

    .line 241
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcNullable(Landroid/icu/text/RBBINode;)V

    .line 244
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_3a

    .line 245
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-nez v0, :cond_36

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-eqz v0, :cond_37

    :cond_36
    move v1, v3

    :cond_37
    iput-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    goto :goto_62

    .line 247
    :cond_3a
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_50

    .line 248
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-eqz v0, :cond_4d

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-eqz v0, :cond_4d

    move v1, v3

    :cond_4d
    iput-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    goto :goto_62

    .line 250
    :cond_50
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_60

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_5d

    goto :goto_60

    .line 254
    :cond_5d
    iput-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    goto :goto_62

    .line 251
    :cond_60
    :goto_60
    iput-boolean v3, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    .line 256
    :goto_62
    return-void

    .line 233
    :cond_63
    :goto_63
    iput-boolean v3, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    .line 234
    return-void

    .line 226
    :cond_66
    :goto_66
    iput-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    .line 227
    return-void
.end method

.method blacklist exportSafeTable()Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
    .registers 16

    .line 1289
    new-instance v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    invoke-direct {v0}, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;-><init>()V

    .line 1290
    .local v0, "table":Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    .line 1291
    iget v1, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xff

    if-gt v1, v4, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v2

    .line 1292
    .local v1, "use8Bits":Z
    :goto_18
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [S

    array-length v5, v5

    .line 1295
    .local v5, "numCharCategories":I
    add-int/lit8 v6, v5, 0x3

    .line 1298
    .local v6, "rowLen":I
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->getSafeTableSize()I

    move-result v7

    sget v8, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    sub-int/2addr v7, v8

    .line 1299
    .local v7, "tableSize":I
    if-eqz v1, :cond_39

    .line 1300
    iget v8, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    .line 1301
    new-array v8, v7, [C

    iput-object v8, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    .line 1302
    iput v6, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    goto :goto_43

    .line 1304
    :cond_39
    div-int/lit8 v7, v7, 0x2

    .line 1305
    new-array v8, v7, [C

    iput-object v8, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    .line 1306
    mul-int/lit8 v8, v6, 0x2

    iput v8, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    .line 1309
    :goto_43
    const/4 v8, 0x0

    .local v8, "state":I
    :goto_44
    iget v9, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    if-ge v8, v9, :cond_71

    .line 1310
    iget-object v9, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [S

    .line 1311
    .local v9, "rowArray":[S
    mul-int v10, v8, v6

    .line 1313
    .local v10, "row":I
    const/4 v11, 0x0

    .local v11, "col":I
    :goto_53
    if-ge v11, v5, :cond_6e

    .line 1314
    if-eqz v1, :cond_61

    .line 1315
    aget-short v12, v9, v11

    if-gt v12, v4, :cond_5d

    move v12, v3

    goto :goto_5e

    :cond_5d
    move v12, v2

    :goto_5e
    invoke-static {v12}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 1317
    :cond_61
    iget-object v12, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v13, v10, 0x3

    add-int/2addr v13, v11

    aget-short v14, v9, v11

    int-to-char v14, v14

    aput-char v14, v12, v13

    .line 1313
    add-int/lit8 v11, v11, 0x1

    goto :goto_53

    .line 1309
    .end local v9    # "rowArray":[S
    .end local v10    # "row":I
    .end local v11    # "col":I
    :cond_6e
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    .line 1320
    .end local v8    # "state":I
    :cond_71
    return-object v0
.end method

.method blacklist exportTable()Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
    .registers 16

    .line 1116
    new-instance v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    invoke-direct {v0}, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;-><init>()V

    .line 1117
    .local v0, "table":Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v2

    if-nez v1, :cond_10

    .line 1118
    return-object v0

    .line 1121
    :cond_10
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v1

    const/16 v2, 0x7fff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_28

    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    .line 1122
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_28

    move v1, v4

    goto :goto_29

    :cond_28
    move v1, v3

    .line 1121
    :goto_29
    invoke-static {v1}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 1123
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    .line 1124
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBISetBuilder;->getDictCategoriesStart()I

    move-result v1

    iput v1, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    .line 1125
    nop

    .line 1126
    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fLASlotsInUse:I

    if-ne v1, v4, :cond_45

    move v1, v3

    goto :goto_48

    :cond_45
    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fLASlotsInUse:I

    add-int/2addr v1, v4

    :goto_48
    iput v1, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    .line 1127
    iget v1, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    const/16 v2, 0xff

    if-gt v1, v2, :cond_52

    move v1, v4

    goto :goto_53

    :cond_52
    move v1, v3

    .line 1130
    .local v1, "use8Bits":Z
    :goto_53
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v5}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    .line 1132
    .local v5, "rowLen":I
    if-eqz v1, :cond_6d

    .line 1133
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v6

    sget v7, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    sub-int/2addr v6, v7

    .line 1134
    .local v6, "tableSize":I
    new-array v7, v6, [C

    iput-object v7, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    .line 1135
    iput v5, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    goto :goto_7e

    .line 1137
    .end local v6    # "tableSize":I
    :cond_6d
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v6

    sget v7, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 1138
    .restart local v6    # "tableSize":I
    new-array v7, v6, [C

    iput-object v7, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    .line 1139
    mul-int/lit8 v7, v5, 0x2

    iput v7, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    .line 1142
    :goto_7e
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-boolean v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fLookAheadHardBreak:Z

    if-eqz v7, :cond_89

    .line 1143
    iget v7, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    or-int/2addr v7, v4

    iput v7, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    .line 1145
    :cond_89
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v7}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    move-result v7

    if-eqz v7, :cond_99

    .line 1146
    iget v7, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    .line 1148
    :cond_99
    if-eqz v1, :cond_a1

    .line 1149
    iget v7, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    .line 1152
    :cond_a1
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v7}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v7

    .line 1153
    .local v7, "numCharCategories":I
    const/4 v8, 0x0

    .local v8, "state":I
    :goto_aa
    iget v9, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    if-ge v8, v9, :cond_13b

    .line 1154
    iget-object v9, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 1155
    .local v9, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    mul-int v10, v8, v5

    .line 1156
    .local v10, "row":I
    if-eqz v1, :cond_d7

    .line 1157
    iget v11, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-ltz v11, :cond_c4

    iget v11, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-gt v11, v2, :cond_c4

    move v11, v4

    goto :goto_c5

    :cond_c4
    move v11, v3

    :goto_c5
    invoke-static {v11}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 1158
    iget v11, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    if-ltz v11, :cond_d2

    iget v11, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    if-gt v11, v2, :cond_d2

    move v11, v4

    goto :goto_d3

    :cond_d2
    move v11, v3

    :goto_d3
    invoke-static {v11}, Landroid/icu/impl/Assert;->assrt(Z)V

    goto :goto_f6

    .line 1160
    :cond_d7
    iget v11, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    const v12, 0xffff

    if-ltz v11, :cond_e4

    iget v11, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-gt v11, v12, :cond_e4

    move v11, v4

    goto :goto_e5

    :cond_e4
    move v11, v3

    :goto_e5
    invoke-static {v11}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 1161
    iget v11, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    if-ltz v11, :cond_f2

    iget v11, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    if-gt v11, v12, :cond_f2

    move v11, v4

    goto :goto_f3

    :cond_f2
    move v11, v3

    :goto_f3
    invoke-static {v11}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 1163
    :goto_f6
    iget-object v11, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v12, v10, 0x0

    iget v13, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    int-to-char v13, v13

    aput-char v13, v11, v12

    .line 1164
    iget-object v11, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v12, v10, 0x1

    iget v13, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    int-to-char v13, v13

    aput-char v13, v11, v12

    .line 1165
    iget-object v11, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v12, v10, 0x2

    iget v13, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    int-to-char v13, v13

    aput-char v13, v11, v12

    .line 1166
    const/4 v11, 0x0

    .local v11, "col":I
    :goto_112
    if-ge v11, v7, :cond_137

    .line 1167
    if-eqz v1, :cond_128

    .line 1168
    iget-object v12, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v12, v12, v11

    if-ltz v12, :cond_124

    iget-object v12, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v12, v12, v11

    if-gt v12, v2, :cond_124

    move v12, v4

    goto :goto_125

    :cond_124
    move v12, v3

    :goto_125
    invoke-static {v12}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 1170
    :cond_128
    iget-object v12, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    add-int/lit8 v13, v10, 0x3

    add-int/2addr v13, v11

    iget-object v14, v9, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v14, v14, v11

    int-to-char v14, v14

    aput-char v14, v12, v13

    .line 1166
    add-int/lit8 v11, v11, 0x1

    goto :goto_112

    .line 1153
    .end local v9    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v10    # "row":I
    :cond_137
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_aa

    .line 1173
    .end local v11    # "col":I
    :cond_13b
    return-object v0
.end method

.method blacklist findDuplCharClassFrom(Landroid/icu/text/RBBIRuleBuilder$IntPair;)Z
    .registers 12
    .param p1, "categories"    # Landroid/icu/text/RBBIRuleBuilder$IntPair;

    .line 885
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 886
    .local v0, "numStates":I
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v1

    .line 888
    .local v1, "numCols":I
    const/4 v2, 0x0

    .line 889
    .local v2, "table_base":I
    const/4 v3, 0x0

    .line 890
    .local v3, "table_dupl":I
    :goto_10
    iget v4, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_5f

    .line 895
    iget v4, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v5}, Landroid/icu/text/RBBISetBuilder;->getDictCategoriesStart()I

    move-result v5

    if-ge v4, v5, :cond_2b

    .line 896
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v4}, Landroid/icu/text/RBBISetBuilder;->getDictCategoriesStart()I

    move-result v4

    goto :goto_2c

    :cond_2b
    move v4, v1

    .line 897
    .local v4, "limitSecond":I
    :goto_2c
    iget v5, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    const/4 v6, 0x1

    :goto_2f
    add-int/2addr v5, v6

    iput v5, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    iget v5, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-ge v5, v4, :cond_59

    .line 898
    const/4 v5, 0x0

    .local v5, "state":I
    :goto_37
    if-ge v5, v0, :cond_53

    .line 899
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 900
    .local v7, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v8, v7, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    iget v9, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    aget v2, v8, v9

    .line 901
    iget-object v8, v7, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    iget v9, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    aget v3, v8, v9

    .line 902
    if-eq v2, v3, :cond_50

    .line 903
    goto :goto_53

    .line 898
    .end local v7    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 906
    .end local v5    # "state":I
    :cond_53
    :goto_53
    if-ne v2, v3, :cond_56

    .line 907
    return v6

    .line 897
    :cond_56
    iget v5, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    goto :goto_2f

    .line 890
    .end local v4    # "limitSecond":I
    :cond_59
    iget v4, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    add-int/2addr v4, v6

    iput v4, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    goto :goto_10

    .line 911
    :cond_5f
    const/4 v4, 0x0

    return v4
.end method

.method blacklist findDuplicateSafeState(Landroid/icu/text/RBBIRuleBuilder$IntPair;)Z
    .registers 12
    .param p1, "states"    # Landroid/icu/text/RBBIRuleBuilder$IntPair;

    .line 979
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 981
    .local v0, "numStates":I
    :goto_6
    iget v1, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_56

    .line 982
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    iget v2, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    .line 983
    .local v1, "firstRow":[S
    iget v2, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    const/4 v3, 0x1

    :goto_19
    add-int/2addr v2, v3

    iput v2, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    iget v2, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-ge v2, v0, :cond_50

    .line 984
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    iget v4, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    .line 985
    .local v2, "duplRow":[S
    const/4 v4, 0x1

    .line 986
    .local v4, "rowsMatch":Z
    array-length v5, v1

    .line 987
    .local v5, "numCols":I
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_2d
    if-ge v6, v5, :cond_4a

    .line 988
    aget-short v7, v1, v6

    .line 989
    .local v7, "firstVal":I
    aget-short v8, v2, v6

    .line 990
    .local v8, "duplVal":I
    if-eq v7, v8, :cond_47

    iget v9, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    if-eq v7, v9, :cond_3d

    iget v9, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-ne v7, v9, :cond_45

    :cond_3d
    iget v9, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    if-eq v8, v9, :cond_47

    iget v9, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-eq v8, v9, :cond_47

    .line 993
    :cond_45
    const/4 v4, 0x0

    .line 994
    goto :goto_4a

    .line 987
    .end local v7    # "firstVal":I
    .end local v8    # "duplVal":I
    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 997
    .end local v6    # "col":I
    :cond_4a
    :goto_4a
    if-eqz v4, :cond_4d

    .line 998
    return v3

    .line 983
    .end local v2    # "duplRow":[S
    .end local v4    # "rowsMatch":Z
    .end local v5    # "numCols":I
    :cond_4d
    iget v2, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    goto :goto_19

    .line 981
    .end local v1    # "firstRow":[S
    :cond_50
    iget v1, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    add-int/2addr v1, v3

    iput v1, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    goto :goto_6

    .line 1002
    :cond_56
    const/4 v1, 0x0

    return v1
.end method

.method blacklist findDuplicateState(Landroid/icu/text/RBBIRuleBuilder$IntPair;)Z
    .registers 12
    .param p1, "states"    # Landroid/icu/text/RBBIRuleBuilder$IntPair;

    .line 940
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 941
    .local v0, "numStates":I
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v1

    .line 943
    .local v1, "numCols":I
    :goto_e
    iget v2, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_74

    .line 944
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    iget v3, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 945
    .local v2, "firstSD":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget v3, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    const/4 v4, 0x1

    :goto_21
    add-int/2addr v3, v4

    iput v3, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    iget v3, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-ge v3, v0, :cond_6e

    .line 946
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    iget v5, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 947
    .local v3, "duplSD":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget v5, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    iget v6, v3, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-ne v5, v6, :cond_6b

    iget v5, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    iget v6, v3, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    if-ne v5, v6, :cond_6b

    iget v5, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    iget v6, v3, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    if-eq v5, v6, :cond_45

    .line 950
    goto :goto_6b

    .line 952
    :cond_45
    const/4 v5, 0x1

    .line 953
    .local v5, "rowsMatch":Z
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_47
    if-ge v6, v1, :cond_68

    .line 954
    iget-object v7, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v7, v7, v6

    .line 955
    .local v7, "firstVal":I
    iget-object v8, v3, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v8, v8, v6

    .line 956
    .local v8, "duplVal":I
    if-eq v7, v8, :cond_65

    iget v9, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    if-eq v7, v9, :cond_5b

    iget v9, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-ne v7, v9, :cond_63

    :cond_5b
    iget v9, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    if-eq v8, v9, :cond_65

    iget v9, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    if-eq v8, v9, :cond_65

    .line 959
    :cond_63
    const/4 v5, 0x0

    .line 960
    goto :goto_68

    .line 953
    .end local v7    # "firstVal":I
    .end local v8    # "duplVal":I
    :cond_65
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 963
    .end local v6    # "col":I
    :cond_68
    :goto_68
    if-eqz v5, :cond_6b

    .line 964
    return v4

    .line 945
    .end local v3    # "duplSD":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v5    # "rowsMatch":Z
    :cond_6b
    :goto_6b
    iget v3, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    goto :goto_21

    .line 943
    .end local v2    # "firstSD":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_6e
    iget v2, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    add-int/2addr v2, v4

    iput v2, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    goto :goto_e

    .line 968
    :cond_74
    const/4 v2, 0x0

    return v2
.end method

.method blacklist flagAcceptingStates()V
    .registers 9

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v0, "endMarkerNodes":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/RBBINode;>;"
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v2

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    .line 679
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_60

    .line 680
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RBBINode;

    .line 681
    .local v2, "endMarker":Landroid/icu/text/RBBINode;
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1f
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5d

    .line 682
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 683
    .local v4, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 688
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    const/4 v6, 0x1

    if-nez v5, :cond_4a

    .line 690
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fLookAheadRuleMap:[I

    iget v7, v2, Landroid/icu/text/RBBINode;->fVal:I

    aget v5, v5, v7

    iput v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    .line 691
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-nez v5, :cond_4a

    .line 692
    iput v6, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    .line 695
    :cond_4a
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-ne v5, v6, :cond_5a

    iget v5, v2, Landroid/icu/text/RBBINode;->fVal:I

    if-eqz v5, :cond_5a

    .line 699
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fLookAheadRuleMap:[I

    iget v6, v2, Landroid/icu/text/RBBINode;->fVal:I

    aget v5, v5, v6

    iput v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    .line 681
    .end local v4    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 679
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 706
    .end local v2    # "endMarker":Landroid/icu/text/RBBINode;
    .end local v3    # "n":I
    :cond_60
    return-void
.end method

.method blacklist flagLookAheadStates()V
    .registers 8

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v0, "lookAheadNodes":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/RBBINode;>;"
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    .line 721
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 722
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RBBINode;

    .line 723
    .local v2, "lookAheadNode":Landroid/icu/text/RBBINode;
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1f
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_43

    .line 724
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 725
    .local v4, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 726
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fLookAheadRuleMap:[I

    iget v6, v2, Landroid/icu/text/RBBINode;->fVal:I

    aget v5, v5, v6

    .line 727
    .local v5, "lookaheadSlot":I
    nop

    .line 728
    iput v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    .line 723
    .end local v4    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v5    # "lookaheadSlot":I
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 721
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 732
    .end local v2    # "lookAheadNode":Landroid/icu/text/RBBINode;
    .end local v3    # "n":I
    :cond_46
    return-void
.end method

.method blacklist flagTaggedStates()V
    .registers 8

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v0, "tagNodes":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/RBBINode;>;"
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v2

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    .line 749
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 750
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RBBINode;

    .line 752
    .local v2, "tagNode":Landroid/icu/text/RBBINode;
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1f
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_45

    .line 753
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 754
    .local v4, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 755
    iget-object v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagVals:Ljava/util/SortedSet;

    iget v6, v2, Landroid/icu/text/RBBINode;->fVal:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 752
    .end local v4    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 749
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 759
    .end local v2    # "tagNode":Landroid/icu/text/RBBINode;
    .end local v3    # "n":I
    :cond_48
    return-void
.end method

.method blacklist getSafeTableSize()I
    .registers 7

    .line 1267
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1268
    return v1

    .line 1270
    :cond_6
    sget v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    .line 1271
    .local v0, "size":I
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1272
    .local v2, "numRows":I
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [S

    array-length v3, v3

    .line 1273
    .local v3, "numCols":I
    const/16 v4, 0xff

    const/4 v5, 0x1

    if-gt v2, v4, :cond_1d

    move v1, v5

    .line 1275
    .local v1, "use8Bits":Z
    :cond_1d
    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v5, 0x2

    :goto_21
    add-int/lit8 v4, v3, 0x3

    mul-int/2addr v5, v4

    .line 1276
    .local v5, "rowSize":I
    mul-int v4, v2, v5

    add-int/2addr v0, v4

    .line 1278
    add-int/lit8 v4, v0, 0x7

    and-int/lit8 v0, v4, -0x8

    .line 1279
    return v0
.end method

.method blacklist getTableSize()I
    .registers 7

    .line 1092
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1093
    return v1

    .line 1095
    :cond_c
    sget v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    .line 1096
    .local v0, "size":I
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1097
    .local v2, "numRows":I
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v3}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v3

    .line 1098
    .local v3, "numCols":I
    const/16 v4, 0xff

    const/4 v5, 0x1

    if-gt v2, v4, :cond_22

    move v1, v5

    .line 1099
    .local v1, "use8Bits":Z
    :cond_22
    if-eqz v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v5, 0x2

    :goto_26
    add-int/lit8 v4, v3, 0x3

    mul-int/2addr v5, v4

    .line 1100
    .local v5, "rowSize":I
    mul-int v4, v2, v5

    add-int/2addr v0, v4

    .line 1101
    add-int/lit8 v4, v0, 0x7

    and-int/lit8 v0, v4, -0x8

    .line 1102
    return v0
.end method

.method blacklist mapLookAheadRules()V
    .registers 11

    .line 607
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fScanner:Landroid/icu/text/RBBIRuleScanner;

    invoke-virtual {v0}, Landroid/icu/text/RBBIRuleScanner;->numRules()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fLookAheadRuleMap:[I

    .line 609
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 610
    .local v1, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    const/4 v2, 0x0

    .line 618
    .local v2, "laSlotForState":I
    const/4 v3, 0x0

    .line 619
    .local v3, "sawLookAheadNode":Z
    iget-object v4, v1, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/RBBINode;

    .line 620
    .local v5, "node":Landroid/icu/text/RBBINode;
    iget v7, v5, Landroid/icu/text/RBBINode;->fType:I

    if-eq v7, v6, :cond_3a

    .line 621
    goto :goto_28

    .line 623
    :cond_3a
    const/4 v3, 0x1

    .line 624
    iget v6, v5, Landroid/icu/text/RBBINode;->fVal:I

    .line 625
    .local v6, "ruleNum":I
    nop

    .line 626
    nop

    .line 627
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fLookAheadRuleMap:[I

    aget v7, v7, v6

    .line 628
    .local v7, "laSlot":I
    if-eqz v7, :cond_4a

    .line 629
    if-nez v2, :cond_49

    .line 630
    move v2, v7

    goto :goto_4a

    .line 633
    :cond_49
    nop

    .line 636
    .end local v5    # "node":Landroid/icu/text/RBBINode;
    .end local v6    # "ruleNum":I
    .end local v7    # "laSlot":I
    :cond_4a
    :goto_4a
    goto :goto_28

    .line 637
    :cond_4b
    if-nez v3, :cond_4e

    .line 638
    goto :goto_14

    .line 641
    :cond_4e
    if-nez v2, :cond_57

    .line 642
    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fLASlotsInUse:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/icu/text/RBBITableBuilder;->fLASlotsInUse:I

    move v2, v4

    .line 649
    :cond_57
    iget-object v4, v1, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/RBBINode;

    .line 650
    .restart local v5    # "node":Landroid/icu/text/RBBINode;
    iget v7, v5, Landroid/icu/text/RBBINode;->fType:I

    if-eq v7, v6, :cond_6e

    .line 651
    goto :goto_5d

    .line 653
    :cond_6e
    iget v7, v5, Landroid/icu/text/RBBINode;->fVal:I

    .line 654
    .local v7, "ruleNum":I
    iget-object v8, p0, Landroid/icu/text/RBBITableBuilder;->fLookAheadRuleMap:[I

    aget v8, v8, v7

    .line 655
    .local v8, "existingVal":I
    nop

    .line 656
    iget-object v9, p0, Landroid/icu/text/RBBITableBuilder;->fLookAheadRuleMap:[I

    aput v2, v9, v7

    .line 657
    .end local v5    # "node":Landroid/icu/text/RBBINode;
    .end local v7    # "ruleNum":I
    .end local v8    # "existingVal":I
    goto :goto_5d

    .line 658
    .end local v1    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v2    # "laSlotForState":I
    .end local v3    # "sawLookAheadNode":Z
    :cond_7a
    goto :goto_14

    .line 660
    :cond_7b
    return-void
.end method

.method blacklist mergeRuleStatusVals()V
    .registers 7

    .line 802
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_49

    .line 803
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 807
    .local v0, "s0":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 810
    .local v2, "s1":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 811
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    .end local v0    # "s0":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    .end local v2    # "s1":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    :cond_49
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_4a
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9a

    .line 817
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 818
    .local v1, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    iget-object v2, v1, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagVals:Ljava/util/SortedSet;

    .line 819
    .local v2, "statusVals":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 820
    .local v3, "arrayIndexI":Ljava/lang/Integer;
    if-nez v3, :cond_91

    .line 825
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 826
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 835
    :cond_91
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    .line 816
    .end local v1    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v2    # "statusVals":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "arrayIndexI":Ljava/lang/Integer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 837
    :cond_9a
    return-void
.end method

.method blacklist printPosSets(Landroid/icu/text/RBBINode;)V
    .registers 5
    .param p1, "n"    # Landroid/icu/text/RBBINode;

    .line 853
    if-nez p1, :cond_3

    .line 854
    return-void

    .line 856
    :cond_3
    invoke-static {p1}, Landroid/icu/text/RBBINode;->printNode(Landroid/icu/text/RBBINode;)V

    .line 857
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Nullable:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 859
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "         firstpos:  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 860
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    .line 862
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "         lastpos:   "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 863
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    .line 865
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "         followpos: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 866
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    .line 868
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printPosSets(Landroid/icu/text/RBBINode;)V

    .line 869
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printPosSets(Landroid/icu/text/RBBINode;)V

    .line 870
    return-void
.end method

.method blacklist printReverseTable()V
    .registers 12

    .line 1385
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    .line 1406
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1385
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "    Safe Reverse Table \n"

    invoke-virtual {v0, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1386
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    if-nez v0, :cond_1c

    .line 1387
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "   --- nullptr ---\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1388
    return-void

    .line 1390
    :cond_1c
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    array-length v0, v0

    .line 1391
    .local v0, "numCharCategories":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "state |           i n p u t     s y m b o l s \n"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1392
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "      | Acc  LA    Tag"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1393
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_38
    const-string v4, " %2d"

    if-ge v3, v0, :cond_4c

    .line 1394
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1393
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 1396
    :cond_4c
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "\n"

    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1397
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "      |---------------"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1398
    const/4 v3, 0x0

    :goto_5f
    if-ge v3, v0, :cond_6d

    .line 1399
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "---"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1398
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 1401
    :cond_6d
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1403
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_75
    iget-object v6, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_be

    .line 1404
    iget-object v6, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [S

    .line 1405
    .local v6, "rowArray":[S
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "  %3d | "

    invoke-virtual {v8, v10, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1406
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    filled-new-array {v2, v2, v2}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%3d %3d %5d "

    invoke-virtual {v8, v10, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1407
    const/4 v3, 0x0

    :goto_a0
    if-ge v3, v0, :cond_b4

    .line 1408
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-short v9, v6, v3

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1407
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 1410
    :cond_b4
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1403
    .end local v6    # "rowArray":[S
    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    .line 1412
    .end local v5    # "n":I
    :cond_be
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\n\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1413
    return-void
.end method

.method blacklist printRuleStatusTable()V
    .registers 7

    .line 1426
    const/4 v0, 0x0

    .line 1427
    .local v0, "thisRecord":I
    const/4 v1, 0x0

    .line 1429
    .local v1, "nextRecord":I
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    .line 1431
    .local v2, "tbl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "index |  tags \n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1432
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "-------------------\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1434
    :goto_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_48

    .line 1435
    move v0, v1

    .line 1436
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, 0x1

    .line 1437
    const/4 v3, 0x7

    invoke-static {v0, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 1438
    add-int/lit8 v4, v0, 0x1

    .local v4, "i":I
    :goto_2e
    if-ge v4, v1, :cond_40

    .line 1439
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1440
    .local v5, "val":I
    invoke-static {v5, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 1438
    .end local v5    # "val":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 1442
    :cond_40
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_14

    .line 1444
    .end local v4    # "i":I
    :cond_48
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1445
    return-void
.end method

.method blacklist printSet(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/icu/text/RBBINode;",
            ">;)V"
        }
    .end annotation

    .line 1331
    .local p1, "s":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/RBBINode;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBINode;

    .line 1332
    .local v1, "n":Landroid/icu/text/RBBINode;
    iget v2, v1, Landroid/icu/text/RBBINode;->fSerialNum:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 1333
    .end local v1    # "n":Landroid/icu/text/RBBINode;
    goto :goto_4

    .line 1334
    :cond_18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 1335
    return-void
.end method

.method blacklist printStates()V
    .registers 8

    .line 1349
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "state |           i n p u t     s y m b o l s \n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1350
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "      | Acc  LA    Tag"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1351
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_f
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v1

    const/4 v2, 0x4

    if-ge v0, v1, :cond_20

    .line 1352
    invoke-static {v0, v2}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 1351
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1354
    :cond_20
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1355
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "      |---------------"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1356
    const/4 v0, 0x0

    :goto_2f
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 1357
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "----"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1356
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1359
    :cond_43
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1361
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_49
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_99

    .line 1362
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 1363
    .local v4, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    const/4 v5, 0x5

    invoke-static {v1, v5}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 1364
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1366
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 1367
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    invoke-static {v5, v2}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 1368
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    const/4 v6, 0x6

    invoke-static {v5, v6}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 1369
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1370
    const/4 v0, 0x0

    :goto_7d
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v5}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v5

    if-ge v0, v5, :cond_91

    .line 1371
    iget-object v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v5, v5, v0

    invoke-static {v5, v2}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 1370
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 1373
    :cond_91
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1361
    .end local v4    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 1375
    :cond_99
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1376
    return-void
.end method

.method blacklist removeColumn(I)V
    .registers 9
    .param p1, "column"    # I

    .line 919
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 920
    .local v0, "numStates":I
    const/4 v1, 0x0

    .local v1, "state":I
    :goto_7
    if-ge v1, v0, :cond_2b

    .line 921
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 922
    .local v2, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    nop

    .line 923
    iget-object v3, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    iget-object v4, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 924
    .local v3, "newArray":[I
    iget-object v4, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    add-int/lit8 v5, p1, 0x1

    array-length v6, v3

    sub-int/2addr v6, p1

    invoke-static {v4, v5, v3, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    iput-object v3, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    .line 920
    .end local v2    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v3    # "newArray":[I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 927
    .end local v1    # "state":I
    :cond_2b
    return-void
.end method

.method blacklist removeDuplicateStates()I
    .registers 4

    .line 1073
    new-instance v0, Landroid/icu/text/RBBIRuleBuilder$IntPair;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RBBIRuleBuilder$IntPair;-><init>(II)V

    .line 1074
    .local v0, "dupls":Landroid/icu/text/RBBIRuleBuilder$IntPair;
    const/4 v1, 0x0

    .line 1076
    .local v1, "numStatesRemoved":I
    :goto_8
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->findDuplicateState(Landroid/icu/text/RBBIRuleBuilder$IntPair;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1078
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->removeState(Landroid/icu/text/RBBIRuleBuilder$IntPair;)V

    .line 1079
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1081
    :cond_14
    return v1
.end method

.method blacklist removeSafeState(Landroid/icu/text/RBBIRuleBuilder$IntPair;)V
    .registers 11
    .param p1, "duplStates"    # Landroid/icu/text/RBBIRuleBuilder$IntPair;

    .line 1044
    iget v0, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    .line 1045
    .local v0, "keepState":I
    iget v1, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    .line 1046
    .local v1, "duplState":I
    nop

    .line 1047
    nop

    .line 1049
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1050
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1051
    .local v2, "numStates":I
    const/4 v3, 0x0

    .local v3, "state":I
    :goto_12
    if-ge v3, v2, :cond_34

    .line 1052
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fSafeTable:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [S

    .line 1053
    .local v4, "row":[S
    const/4 v5, 0x0

    .local v5, "col":I
    :goto_1d
    array-length v6, v4

    if-ge v5, v6, :cond_31

    .line 1054
    aget-short v6, v4, v5

    .line 1055
    .local v6, "existingVal":I
    move v7, v6

    .line 1056
    .local v7, "newVal":I
    if-ne v6, v1, :cond_27

    .line 1057
    move v7, v0

    goto :goto_2b

    .line 1058
    :cond_27
    if-le v6, v1, :cond_2b

    .line 1059
    add-int/lit8 v7, v6, -0x1

    .line 1061
    :cond_2b
    :goto_2b
    int-to-short v8, v7

    aput-short v8, v4, v5

    .line 1053
    .end local v6    # "existingVal":I
    .end local v7    # "newVal":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 1051
    .end local v4    # "row":[S
    .end local v5    # "col":I
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1064
    .end local v3    # "state":I
    :cond_34
    return-void
.end method

.method blacklist removeState(Landroid/icu/text/RBBIRuleBuilder$IntPair;)V
    .registers 12
    .param p1, "duplStates"    # Landroid/icu/text/RBBIRuleBuilder$IntPair;

    .line 1012
    iget v0, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->first:I

    .line 1013
    .local v0, "keepState":I
    iget v1, p1, Landroid/icu/text/RBBIRuleBuilder$IntPair;->second:I

    .line 1014
    .local v1, "duplState":I
    nop

    .line 1015
    nop

    .line 1017
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1019
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1020
    .local v2, "numStates":I
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v3}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v3

    .line 1021
    .local v3, "numCols":I
    const/4 v4, 0x0

    .local v4, "state":I
    :goto_1a
    if-ge v4, v2, :cond_3e

    .line 1022
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 1023
    .local v5, "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    const/4 v6, 0x0

    .local v6, "col":I
    :goto_25
    if-ge v6, v3, :cond_3b

    .line 1024
    iget-object v7, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v7, v7, v6

    .line 1025
    .local v7, "existingVal":I
    move v8, v7

    .line 1026
    .local v8, "newVal":I
    if-ne v7, v1, :cond_30

    .line 1027
    move v8, v0

    goto :goto_34

    .line 1028
    :cond_30
    if-le v7, v1, :cond_34

    .line 1029
    add-int/lit8 v8, v7, -0x1

    .line 1031
    :cond_34
    :goto_34
    iget-object v9, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aput v8, v9, v6

    .line 1023
    .end local v7    # "existingVal":I
    .end local v8    # "newVal":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 1021
    .end local v5    # "sd":Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    .end local v6    # "col":I
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1034
    .end local v4    # "state":I
    :cond_3e
    return-void
.end method
