.class Landroid/icu/text/RBBISetBuilder;
.super Ljava/lang/Object;
.source "RBBISetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;,
        Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    }
.end annotation


# instance fields
.field dm:Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;

.field fGroupCount:I

.field fRB:Landroid/icu/text/RBBIRuleBuilder;

.field fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

.field fSawBOF:Z

.field fTrie:Landroid/icu/impl/IntTrieBuilder;

.field fTrieSize:I


# direct methods
.method constructor <init>(Landroid/icu/text/RBBIRuleBuilder;)V
    .locals 1
    .param p1, "rb"    # Landroid/icu/text/RBBIRuleBuilder;

    #@0
    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 325
    new-instance v0, Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;

    #@5
    invoke-direct {v0, p0}, Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;-><init>(Landroid/icu/text/RBBISetBuilder;)V

    #@8
    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder;->dm:Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;

    #@a
    .line 146
    iput-object p1, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@c
    .line 144
    return-void
.end method


# virtual methods
.method addValToSet(Landroid/icu/text/RBBINode;I)V
    .locals 3
    .param p1, "usetNode"    # Landroid/icu/text/RBBINode;
    .param p2, "val"    # I

    #@0
    .prologue
    .line 375
    new-instance v0, Landroid/icu/text/RBBINode;

    #@2
    const/4 v2, 0x3

    #@3
    invoke-direct {v0, v2}, Landroid/icu/text/RBBINode;-><init>(I)V

    #@6
    .line 376
    .local v0, "leafNode":Landroid/icu/text/RBBINode;
    iput p2, v0, Landroid/icu/text/RBBINode;->fVal:I

    #@8
    .line 377
    iget-object v2, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@a
    if-nez v2, :cond_0

    #@c
    .line 378
    iput-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@e
    .line 379
    iput-object p1, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@10
    .line 374
    :goto_0
    return-void

    #@11
    .line 384
    :cond_0
    new-instance v1, Landroid/icu/text/RBBINode;

    #@13
    const/16 v2, 0x9

    #@15
    invoke-direct {v1, v2}, Landroid/icu/text/RBBINode;-><init>(I)V

    #@18
    .line 385
    .local v1, "orNode":Landroid/icu/text/RBBINode;
    iget-object v2, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@1a
    iput-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@1c
    .line 386
    iput-object v0, v1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@1e
    .line 387
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@20
    iput-object v1, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@22
    .line 388
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    #@24
    iput-object v1, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@26
    .line 389
    iput-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@28
    .line 390
    iput-object p1, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@2a
    goto :goto_0
.end method

.method addValToSets(Ljava/util/List;I)V
    .locals 3
    .param p2, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 369
    .local p1, "sets":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/RBBINode;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "usetNode$iterator":Ljava/util/Iterator;
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
    .line 370
    .local v0, "usetNode":Landroid/icu/text/RBBINode;
    invoke-virtual {p0, v0, p2}, Landroid/icu/text/RBBISetBuilder;->addValToSet(Landroid/icu/text/RBBINode;I)V

    #@13
    goto :goto_0

    #@14
    .line 368
    .end local v0    # "usetNode":Landroid/icu/text/RBBINode;
    :cond_0
    return-void
.end method

.method build()V
    .locals 19

    #@0
    .prologue
    .line 159
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@4
    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@6
    if-eqz v2, :cond_0

    #@8
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@c
    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@e
    const-string/jumbo v3, "usets"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@14
    move-result v2

    #@15
    if-ltz v2, :cond_0

    #@17
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/RBBISetBuilder;->printSets()V

    #@1a
    .line 164
    :cond_0
    new-instance v2, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@1c
    invoke-direct {v2}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;-><init>()V

    #@1f
    move-object/from16 v0, p0

    #@21
    iput-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@23
    .line 165
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@27
    const/4 v3, 0x0

    #@28
    iput v3, v2, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    #@2a
    .line 166
    move-object/from16 v0, p0

    #@2c
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@2e
    const v3, 0x10ffff

    #@31
    iput v3, v2, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    #@33
    .line 171
    move-object/from16 v0, p0

    #@35
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@37
    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    #@39
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v18

    #@3d
    .local v18, "usetNode$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_7

    #@43
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v17

    #@47
    check-cast v17, Landroid/icu/text/RBBINode;

    #@49
    .line 172
    .local v17, "usetNode":Landroid/icu/text/RBBINode;
    move-object/from16 v0, v17

    #@4b
    iget-object v10, v0, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    #@4d
    .line 173
    .local v10, "inputSet":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v10}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    #@50
    move-result v12

    #@51
    .line 174
    .local v12, "inputSetRangeCount":I
    const/4 v14, 0x0

    #@52
    .line 175
    .local v14, "inputSetRangeIndex":I
    move-object/from16 v0, p0

    #@54
    iget-object v15, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@56
    .line 178
    .local v15, "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_0
    if-ge v14, v12, :cond_1

    #@58
    .line 181
    invoke-virtual {v10, v14}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    #@5b
    move-result v11

    #@5c
    .line 182
    .local v11, "inputSetRangeBegin":I
    invoke-virtual {v10, v14}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    #@5f
    move-result v13

    #@60
    .line 186
    .local v13, "inputSetRangeEnd":I
    :goto_1
    iget v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    #@62
    if-ge v2, v11, :cond_2

    #@64
    .line 187
    iget-object v15, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@66
    goto :goto_1

    #@67
    .line 196
    :cond_2
    iget v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    #@69
    if-ge v2, v11, :cond_3

    #@6b
    .line 197
    invoke-virtual {v15, v11}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->split(I)V

    #@6e
    goto :goto_0

    #@6f
    .line 206
    :cond_3
    iget v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    #@71
    if-le v2, v13, :cond_4

    #@73
    .line 207
    add-int/lit8 v2, v13, 0x1

    #@75
    invoke-virtual {v15, v2}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->split(I)V

    #@78
    .line 212
    :cond_4
    iget-object v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@7a
    move-object/from16 v0, v17

    #@7c
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@7f
    move-result v2

    #@80
    const/4 v3, -0x1

    #@81
    if-ne v2, v3, :cond_5

    #@83
    .line 213
    iget-object v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@85
    move-object/from16 v0, v17

    #@87
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8a
    .line 217
    :cond_5
    iget v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    #@8c
    if-ne v13, v2, :cond_6

    #@8e
    .line 218
    add-int/lit8 v14, v14, 0x1

    #@90
    .line 220
    :cond_6
    iget-object v15, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@92
    goto :goto_0

    #@93
    .line 224
    .end local v10    # "inputSet":Landroid/icu/text/UnicodeSet;
    .end local v11    # "inputSetRangeBegin":I
    .end local v12    # "inputSetRangeCount":I
    .end local v13    # "inputSetRangeEnd":I
    .end local v14    # "inputSetRangeIndex":I
    .end local v15    # "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    .end local v17    # "usetNode":Landroid/icu/text/RBBINode;
    :cond_7
    move-object/from16 v0, p0

    #@95
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@97
    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@99
    if-eqz v2, :cond_8

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@9f
    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@a1
    const-string/jumbo v3, "range"

    #@a4
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@a7
    move-result v2

    #@a8
    if-ltz v2, :cond_8

    #@aa
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/RBBISetBuilder;->printRanges()V

    #@ad
    .line 238
    :cond_8
    move-object/from16 v0, p0

    #@af
    iget-object v15, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@b1
    .restart local v15    # "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_2
    if-eqz v15, :cond_c

    #@b3
    .line 239
    move-object/from16 v0, p0

    #@b5
    iget-object v0, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@b7
    move-object/from16 v16, v0

    #@b9
    .local v16, "rlSearchRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_3
    move-object/from16 v0, v16

    #@bb
    if-eq v0, v15, :cond_9

    #@bd
    .line 240
    iget-object v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@bf
    move-object/from16 v0, v16

    #@c1
    iget-object v3, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@c3
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@c6
    move-result v2

    #@c7
    if-eqz v2, :cond_b

    #@c9
    .line 241
    move-object/from16 v0, v16

    #@cb
    iget v2, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@cd
    iput v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@cf
    .line 245
    :cond_9
    iget v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@d1
    if-nez v2, :cond_a

    #@d3
    .line 246
    move-object/from16 v0, p0

    #@d5
    iget v2, v0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    #@d7
    add-int/lit8 v2, v2, 0x1

    #@d9
    move-object/from16 v0, p0

    #@db
    iput v2, v0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    #@dd
    .line 247
    move-object/from16 v0, p0

    #@df
    iget v2, v0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    #@e1
    add-int/lit8 v2, v2, 0x2

    #@e3
    iput v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@e5
    .line 248
    invoke-virtual {v15}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->setDictionaryFlag()V

    #@e8
    .line 249
    iget-object v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@ea
    move-object/from16 v0, p0

    #@ec
    iget v3, v0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    #@ee
    add-int/lit8 v3, v3, 0x2

    #@f0
    move-object/from16 v0, p0

    #@f2
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/RBBISetBuilder;->addValToSets(Ljava/util/List;I)V

    #@f5
    .line 238
    :cond_a
    iget-object v15, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@f7
    goto :goto_2

    #@f8
    .line 239
    :cond_b
    move-object/from16 v0, v16

    #@fa
    iget-object v0, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@fc
    move-object/from16 v16, v0

    #@fe
    goto :goto_3

    #@ff
    .line 263
    .end local v16    # "rlSearchRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :cond_c
    const-string/jumbo v9, "eof"

    #@102
    .line 264
    .local v9, "eofString":Ljava/lang/String;
    const-string/jumbo v8, "bof"

    #@105
    .line 266
    .local v8, "bofString":Ljava/lang/String;
    move-object/from16 v0, p0

    #@107
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@109
    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    #@10b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10e
    move-result-object v18

    #@10f
    :cond_d
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@112
    move-result v2

    #@113
    if-eqz v2, :cond_f

    #@115
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@118
    move-result-object v17

    #@119
    check-cast v17, Landroid/icu/text/RBBINode;

    #@11b
    .line 267
    .restart local v17    # "usetNode":Landroid/icu/text/RBBINode;
    move-object/from16 v0, v17

    #@11d
    iget-object v10, v0, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    #@11f
    .line 268
    .restart local v10    # "inputSet":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v10, v9}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    #@122
    move-result v2

    #@123
    if-eqz v2, :cond_e

    #@125
    .line 269
    const/4 v2, 0x1

    #@126
    move-object/from16 v0, p0

    #@128
    move-object/from16 v1, v17

    #@12a
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RBBISetBuilder;->addValToSet(Landroid/icu/text/RBBINode;I)V

    #@12d
    .line 271
    :cond_e
    invoke-virtual {v10, v8}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    #@130
    move-result v2

    #@131
    if-eqz v2, :cond_d

    #@133
    .line 272
    const/4 v2, 0x2

    #@134
    move-object/from16 v0, p0

    #@136
    move-object/from16 v1, v17

    #@138
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RBBISetBuilder;->addValToSet(Landroid/icu/text/RBBINode;I)V

    #@13b
    .line 273
    const/4 v2, 0x1

    #@13c
    move-object/from16 v0, p0

    #@13e
    iput-boolean v2, v0, Landroid/icu/text/RBBISetBuilder;->fSawBOF:Z

    #@140
    goto :goto_4

    #@141
    .line 278
    .end local v10    # "inputSet":Landroid/icu/text/UnicodeSet;
    .end local v17    # "usetNode":Landroid/icu/text/RBBINode;
    :cond_f
    move-object/from16 v0, p0

    #@143
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@145
    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@147
    if-eqz v2, :cond_10

    #@149
    move-object/from16 v0, p0

    #@14b
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@14d
    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@14f
    const-string/jumbo v3, "rgroup"

    #@152
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@155
    move-result v2

    #@156
    if-ltz v2, :cond_10

    #@158
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/RBBISetBuilder;->printRangeGroups()V

    #@15b
    .line 279
    :cond_10
    move-object/from16 v0, p0

    #@15d
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@15f
    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@161
    if-eqz v2, :cond_11

    #@163
    move-object/from16 v0, p0

    #@165
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@167
    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    #@169
    const-string/jumbo v3, "esets"

    #@16c
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@16f
    move-result v2

    #@170
    if-ltz v2, :cond_11

    #@172
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/RBBISetBuilder;->printSets()V

    #@175
    .line 286
    :cond_11
    new-instance v2, Landroid/icu/impl/IntTrieBuilder;

    #@177
    const/4 v3, 0x0

    #@178
    .line 287
    const v4, 0x186a0

    #@17b
    .line 288
    const/4 v5, 0x0

    #@17c
    .line 289
    const/4 v6, 0x0

    #@17d
    .line 290
    const/4 v7, 0x1

    #@17e
    .line 286
    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/IntTrieBuilder;-><init>([IIIIZ)V

    #@181
    move-object/from16 v0, p0

    #@183
    iput-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/IntTrieBuilder;

    #@185
    .line 292
    move-object/from16 v0, p0

    #@187
    iget-object v15, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@189
    :goto_5
    if-eqz v15, :cond_12

    #@18b
    .line 293
    move-object/from16 v0, p0

    #@18d
    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/IntTrieBuilder;

    #@18f
    iget v3, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    #@191
    iget v4, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    #@193
    add-int/lit8 v4, v4, 0x1

    #@195
    iget v5, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@197
    const/4 v6, 0x1

    #@198
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/icu/impl/IntTrieBuilder;->setRange(IIIZ)Z

    #@19b
    .line 292
    iget-object v15, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@19d
    goto :goto_5

    #@19e
    .line 156
    :cond_12
    return-void
.end method

.method getFirstChar(I)I
    .locals 3
    .param p1, "category"    # I

    #@0
    .prologue
    .line 423
    const/4 v0, -0x1

    #@1
    .line 424
    .local v0, "retVal":I
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@3
    .local v1, "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_0
    if-eqz v1, :cond_0

    #@5
    .line 425
    iget v2, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@7
    if-ne v2, p1, :cond_1

    #@9
    .line 426
    iget v0, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    #@b
    .line 430
    :cond_0
    return v0

    #@c
    .line 424
    :cond_1
    iget-object v1, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@e
    goto :goto_0
.end method

.method getNumCharCategories()I
    .locals 1

    #@0
    .prologue
    .line 401
    iget v0, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    #@2
    add-int/lit8 v0, v0, 0x3

    #@4
    return v0
.end method

.method getTrieSize()I
    .locals 6

    #@0
    .prologue
    .line 333
    const/4 v1, 0x0

    #@1
    .line 337
    .local v1, "size":I
    :try_start_0
    iget-object v2, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/IntTrieBuilder;

    #@3
    iget-object v3, p0, Landroid/icu/text/RBBISetBuilder;->dm:Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;

    #@5
    const/4 v4, 0x0

    #@6
    const/4 v5, 0x1

    #@7
    invoke-virtual {v2, v4, v5, v3}, Landroid/icu/impl/IntTrieBuilder;->serialize(Ljava/io/OutputStream;ZLandroid/icu/impl/TrieBuilder$DataManipulate;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v1

    #@b
    .line 341
    :goto_0
    return v1

    #@c
    .line 338
    :catch_0
    move-exception v0

    #@d
    .line 339
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    #@e
    invoke-static {v2}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@11
    goto :goto_0
.end method

.method printRangeGroups()V
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 479
    const/4 v3, 0x0

    #@2
    .line 481
    .local v3, "lastPrintedGroupNum":I
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4
    const-string/jumbo v11, "\nRanges grouped by Unicode Set Membership...\n"

    #@7
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@a
    .line 482
    iget-object v4, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@c
    .local v4, "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_0
    if-eqz v4, :cond_7

    #@e
    .line 483
    iget v10, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@10
    const v11, 0xbfff

    #@13
    and-int v0, v10, v11

    #@15
    .line 484
    .local v0, "groupNum":I
    if-le v0, v3, :cond_6

    #@17
    .line 485
    move v3, v0

    #@18
    .line 486
    const/16 v10, 0xa

    #@1a
    if-ge v0, v10, :cond_0

    #@1c
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1e
    const-string/jumbo v11, " "

    #@21
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@24
    .line 487
    :cond_0
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@26
    new-instance v11, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v11

    #@2f
    const-string/jumbo v12, " "

    #@32
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v11

    #@36
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v11

    #@3a
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3d
    .line 489
    iget v10, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@3f
    and-int/lit16 v10, v10, 0x4000

    #@41
    if-eqz v10, :cond_1

    #@43
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@45
    const-string/jumbo v11, " <DICT> "

    #@48
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@4b
    .line 491
    :cond_1
    const/4 v1, 0x0

    #@4c
    .local v1, "i":I
    :goto_1
    iget-object v10, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@4e
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@51
    move-result v10

    #@52
    if-ge v1, v10, :cond_3

    #@54
    .line 492
    iget-object v10, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@56
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@59
    move-result-object v8

    #@5a
    check-cast v8, Landroid/icu/text/RBBINode;

    #@5c
    .line 493
    .local v8, "usetNode":Landroid/icu/text/RBBINode;
    const-string/jumbo v5, "anon"

    #@5f
    .line 494
    .local v5, "setName":Ljava/lang/String;
    iget-object v6, v8, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@61
    .line 495
    .local v6, "setRef":Landroid/icu/text/RBBINode;
    if-eqz v6, :cond_2

    #@63
    .line 496
    iget-object v9, v6, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@65
    .line 497
    .local v9, "varRef":Landroid/icu/text/RBBINode;
    if-eqz v9, :cond_2

    #@67
    iget v10, v9, Landroid/icu/text/RBBINode;->fType:I

    #@69
    const/4 v11, 0x2

    #@6a
    if-ne v10, v11, :cond_2

    #@6c
    .line 498
    iget-object v5, v9, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@6e
    .line 501
    .end local v9    # "varRef":Landroid/icu/text/RBBINode;
    :cond_2
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@70
    invoke-virtual {v10, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@73
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@75
    const-string/jumbo v11, " "

    #@78
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@7b
    .line 491
    add-int/lit8 v1, v1, 0x1

    #@7d
    goto :goto_1

    #@7e
    .line 504
    .end local v5    # "setName":Ljava/lang/String;
    .end local v6    # "setRef":Landroid/icu/text/RBBINode;
    .end local v8    # "usetNode":Landroid/icu/text/RBBINode;
    :cond_3
    const/4 v1, 0x0

    #@7f
    .line 505
    move-object v7, v4

    #@80
    .local v7, "tRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    move v2, v1

    #@81
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_2
    if-eqz v7, :cond_5

    #@83
    .line 506
    iget v10, v7, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@85
    iget v11, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@87
    if-ne v10, v11, :cond_8

    #@89
    .line 507
    add-int/lit8 v1, v2, 0x1

    #@8b
    .end local v2    # "i":I
    .restart local v1    # "i":I
    rem-int/lit8 v10, v2, 0x5

    #@8d
    if-nez v10, :cond_4

    #@8f
    .line 508
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@91
    const-string/jumbo v11, "\n    "

    #@94
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@97
    .line 510
    :cond_4
    iget v10, v7, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    #@99
    const/4 v11, -0x1

    #@9a
    invoke-static {v10, v11}, Landroid/icu/text/RBBINode;->printHex(II)V

    #@9d
    .line 511
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9f
    const-string/jumbo v11, "-"

    #@a2
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@a5
    .line 512
    iget v10, v7, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    #@a7
    invoke-static {v10, v13}, Landroid/icu/text/RBBINode;->printHex(II)V

    #@aa
    .line 505
    :goto_3
    iget-object v7, v7, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@ac
    move v2, v1

    #@ad
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    #@ae
    .line 515
    :cond_5
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b0
    const-string/jumbo v11, "\n"

    #@b3
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@b6
    .line 482
    .end local v2    # "i":I
    .end local v7    # "tRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :cond_6
    iget-object v4, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@b8
    goto/16 :goto_0

    #@ba
    .line 518
    .end local v0    # "groupNum":I
    :cond_7
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@bc
    const-string/jumbo v11, "\n"

    #@bf
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@c2
    .line 475
    return-void

    #@c3
    .restart local v0    # "groupNum":I
    .restart local v2    # "i":I
    .restart local v7    # "tRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :cond_8
    move v1, v2

    #@c4
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3
.end method

.method printRanges()V
    .locals 9

    #@0
    .prologue
    .line 446
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v7, "\n\n Nonoverlapping Ranges ...\n"

    #@5
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@8
    .line 447
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@a
    .local v1, "rlRange":Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    :goto_0
    if-eqz v1, :cond_2

    #@c
    .line 448
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@e
    new-instance v7, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v8, " "

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    iget v8, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    #@1c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v7

    #@20
    const-string/jumbo v8, "   "

    #@23
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v7

    #@27
    iget v8, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    #@29
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    const-string/jumbo v8, "-"

    #@30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    iget v8, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    #@36
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@41
    .line 450
    const/4 v0, 0x0

    #@42
    .local v0, "i":I
    :goto_1
    iget-object v6, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@44
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@47
    move-result v6

    #@48
    if-ge v0, v6, :cond_1

    #@4a
    .line 451
    iget-object v6, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    #@4c
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v4

    #@50
    check-cast v4, Landroid/icu/text/RBBINode;

    #@52
    .line 452
    .local v4, "usetNode":Landroid/icu/text/RBBINode;
    const-string/jumbo v2, "anon"

    #@55
    .line 453
    .local v2, "setName":Ljava/lang/String;
    iget-object v3, v4, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@57
    .line 454
    .local v3, "setRef":Landroid/icu/text/RBBINode;
    if-eqz v3, :cond_0

    #@59
    .line 455
    iget-object v5, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@5b
    .line 456
    .local v5, "varRef":Landroid/icu/text/RBBINode;
    if-eqz v5, :cond_0

    #@5d
    iget v6, v5, Landroid/icu/text/RBBINode;->fType:I

    #@5f
    const/4 v7, 0x2

    #@60
    if-ne v6, v7, :cond_0

    #@62
    .line 457
    iget-object v2, v5, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@64
    .line 460
    .end local v5    # "varRef":Landroid/icu/text/RBBINode;
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@66
    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@69
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6b
    const-string/jumbo v7, "  "

    #@6e
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@71
    .line 450
    add-int/lit8 v0, v0, 0x1

    #@73
    goto :goto_1

    #@74
    .line 462
    .end local v2    # "setName":Ljava/lang/String;
    .end local v3    # "setRef":Landroid/icu/text/RBBINode;
    .end local v4    # "usetNode":Landroid/icu/text/RBBINode;
    :cond_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@76
    const-string/jumbo v7, ""

    #@79
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7c
    .line 447
    iget-object v1, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    #@7e
    goto :goto_0

    #@7f
    .line 442
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method printSets()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    .line 532
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3
    const-string/jumbo v6, "\n\nUnicode Sets List\n------------------\n"

    #@6
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@9
    .line 533
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@c
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    #@e
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@11
    move-result v5

    #@12
    if-ge v0, v5, :cond_2

    #@14
    .line 539
    iget-object v5, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    #@16
    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    #@18
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroid/icu/text/RBBINode;

    #@1e
    .line 542
    .local v3, "usetNode":Landroid/icu/text/RBBINode;
    invoke-static {v8, v0}, Landroid/icu/text/RBBINode;->printInt(II)V

    #@21
    .line 543
    const-string/jumbo v1, "anonymous"

    #@24
    .line 544
    .local v1, "setName":Ljava/lang/String;
    iget-object v2, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@26
    .line 545
    .local v2, "setRef":Landroid/icu/text/RBBINode;
    if-eqz v2, :cond_0

    #@28
    .line 546
    iget-object v4, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    #@2a
    .line 547
    .local v4, "varRef":Landroid/icu/text/RBBINode;
    if-eqz v4, :cond_0

    #@2c
    iget v5, v4, Landroid/icu/text/RBBINode;->fType:I

    #@2e
    if-ne v5, v8, :cond_0

    #@30
    .line 548
    iget-object v1, v4, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@32
    .line 551
    .end local v4    # "varRef":Landroid/icu/text/RBBINode;
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@34
    new-instance v6, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v7, "  "

    #@3c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@4b
    .line 552
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4d
    const-string/jumbo v6, "   "

    #@50
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@53
    .line 553
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@55
    iget-object v6, v3, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    #@57
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@5a
    .line 554
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5c
    const-string/jumbo v6, "\n"

    #@5f
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@62
    .line 555
    iget-object v5, v3, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@64
    if-eqz v5, :cond_1

    #@66
    .line 556
    iget-object v5, v3, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    #@68
    const/4 v6, 0x1

    #@69
    invoke-virtual {v5, v6}, Landroid/icu/text/RBBINode;->printTree(Z)V

    #@6c
    .line 533
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@6e
    goto :goto_0

    #@6f
    .line 559
    .end local v1    # "setName":Ljava/lang/String;
    .end local v2    # "setRef":Landroid/icu/text/RBBINode;
    .end local v3    # "usetNode":Landroid/icu/text/RBBINode;
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@71
    const-string/jumbo v6, "\n"

    #@74
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@77
    .line 530
    return-void
.end method

.method sawBOF()Z
    .locals 1

    #@0
    .prologue
    .line 411
    iget-boolean v0, p0, Landroid/icu/text/RBBISetBuilder;->fSawBOF:Z

    #@2
    return v0
.end method

.method serializeTrie(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/IntTrieBuilder;

    #@2
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->dm:Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {v0, p1, v2, v1}, Landroid/icu/impl/IntTrieBuilder;->serialize(Ljava/io/OutputStream;ZLandroid/icu/impl/TrieBuilder$DataManipulate;)I

    #@8
    .line 350
    return-void
.end method
