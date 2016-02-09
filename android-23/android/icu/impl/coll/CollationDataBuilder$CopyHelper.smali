.class final Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;
.super Ljava/lang/Object;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationDataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CopyHelper"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field dest:Landroid/icu/impl/coll/CollationDataBuilder;

.field modifiedCEs:[J

.field modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

.field src:Landroid/icu/impl/coll/CollationDataBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->-assertionsDisabled:Z

    #@b
    .line 667
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V
    .locals 1
    .param p1, "s"    # Landroid/icu/impl/coll/CollationDataBuilder;
    .param p2, "d"    # Landroid/icu/impl/coll/CollationDataBuilder;
    .param p3, "m"    # Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    #@0
    .prologue
    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 781
    const/16 v0, 0x1f

    #@5
    new-array v0, v0, [J

    #@7
    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    #@9
    .line 670
    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    #@b
    .line 671
    iput-object p2, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    #@d
    .line 672
    iput-object p3, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    #@f
    .line 669
    return-void
.end method


# virtual methods
.method copyCE32(I)I
    .locals 22
    .param p1, "ce32"    # I

    #@0
    .prologue
    .line 684
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@3
    move-result v18

    #@4
    if-nez v18, :cond_1

    #@6
    .line 685
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    #@a
    move-object/from16 v18, v0

    #@c
    move-object/from16 v0, v18

    #@e
    move/from16 v1, p1

    #@10
    invoke-interface {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;->modifyCE32(I)J

    #@13
    move-result-wide v2

    #@14
    .line 686
    .local v2, "ce":J
    const-wide v18, 0x101000100L

    #@19
    cmp-long v18, v2, v18

    #@1b
    if-eqz v18, :cond_0

    #@1d
    .line 687
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    #@21
    move-object/from16 v18, v0

    #@23
    move-object/from16 v0, v18

    #@25
    invoke-virtual {v0, v2, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    #@28
    move-result p1

    #@29
    .line 775
    .end local v2    # "ce":J
    :cond_0
    :goto_0
    return p1

    #@2a
    .line 690
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@2d
    move-result v17

    #@2e
    .line 691
    .local v17, "tag":I
    const/16 v18, 0x5

    #@30
    move/from16 v0, v17

    #@32
    move/from16 v1, v18

    #@34
    if-ne v0, v1, :cond_9

    #@36
    .line 692
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    #@3a
    move-object/from16 v18, v0

    #@3c
    move-object/from16 v0, v18

    #@3e
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    #@40
    move-object/from16 v18, v0

    #@42
    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    #@45
    move-result-object v11

    #@46
    .line 693
    .local v11, "srcCE32s":[I
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@49
    move-result v15

    #@4a
    .line 694
    .local v15, "srcIndex":I
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@4d
    move-result v9

    #@4e
    .line 697
    .local v9, "length":I
    const/4 v7, 0x0

    #@4f
    .line 698
    .local v7, "isModified":Z
    const/4 v6, 0x0

    #@50
    .local v6, "i":I
    :goto_1
    if-ge v6, v9, :cond_7

    #@52
    .line 699
    add-int v18, v15, v6

    #@54
    aget p1, v11, v18

    #@56
    .line 701
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@59
    move-result v18

    #@5a
    if-nez v18, :cond_2

    #@5c
    .line 702
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    #@60
    move-object/from16 v18, v0

    #@62
    move-object/from16 v0, v18

    #@64
    move/from16 v1, p1

    #@66
    invoke-interface {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;->modifyCE32(I)J

    #@69
    move-result-wide v2

    #@6a
    .restart local v2    # "ce":J
    const-wide v18, 0x101000100L

    #@6f
    cmp-long v18, v2, v18

    #@71
    if-nez v18, :cond_4

    #@73
    .line 703
    .end local v2    # "ce":J
    :cond_2
    if-eqz v7, :cond_3

    #@75
    .line 704
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    #@79
    move-object/from16 v18, v0

    #@7b
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    #@7e
    move-result-wide v20

    #@7f
    aput-wide v20, v18, v6

    #@81
    .line 698
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@83
    goto :goto_1

    #@84
    .line 707
    .restart local v2    # "ce":J
    :cond_4
    if-nez v7, :cond_6

    #@86
    .line 708
    const/4 v8, 0x0

    #@87
    .local v8, "j":I
    :goto_3
    if-ge v8, v6, :cond_5

    #@89
    .line 709
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    #@8d
    move-object/from16 v18, v0

    #@8f
    add-int v19, v15, v8

    #@91
    aget v19, v11, v19

    #@93
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    #@96
    move-result-wide v20

    #@97
    aput-wide v20, v18, v8

    #@99
    .line 708
    add-int/lit8 v8, v8, 0x1

    #@9b
    goto :goto_3

    #@9c
    .line 711
    :cond_5
    const/4 v7, 0x1

    #@9d
    .line 713
    .end local v8    # "j":I
    :cond_6
    move-object/from16 v0, p0

    #@9f
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    #@a1
    move-object/from16 v18, v0

    #@a3
    aput-wide v2, v18, v6

    #@a5
    goto :goto_2

    #@a6
    .line 716
    .end local v2    # "ce":J
    :cond_7
    if-eqz v7, :cond_8

    #@a8
    .line 717
    move-object/from16 v0, p0

    #@aa
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    #@ac
    move-object/from16 v18, v0

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    #@b2
    move-object/from16 v19, v0

    #@b4
    move-object/from16 v0, v18

    #@b6
    move-object/from16 v1, v19

    #@b8
    invoke-virtual {v0, v1, v9}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    #@bb
    move-result p1

    #@bc
    goto/16 :goto_0

    #@be
    .line 719
    :cond_8
    move-object/from16 v0, p0

    #@c0
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    #@c2
    move-object/from16 v18, v0

    #@c4
    move-object/from16 v0, v18

    #@c6
    invoke-virtual {v0, v11, v15, v9}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    #@c9
    move-result p1

    #@ca
    goto/16 :goto_0

    #@cc
    .line 721
    .end local v6    # "i":I
    .end local v7    # "isModified":Z
    .end local v9    # "length":I
    .end local v11    # "srcCE32s":[I
    .end local v15    # "srcIndex":I
    :cond_9
    const/16 v18, 0x6

    #@ce
    move/from16 v0, v17

    #@d0
    move/from16 v1, v18

    #@d2
    if-ne v0, v1, :cond_10

    #@d4
    .line 722
    move-object/from16 v0, p0

    #@d6
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    #@d8
    move-object/from16 v18, v0

    #@da
    move-object/from16 v0, v18

    #@dc
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    #@de
    move-object/from16 v18, v0

    #@e0
    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    #@e3
    move-result-object v14

    #@e4
    .line 723
    .local v14, "srcCEs":[J
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@e7
    move-result v15

    #@e8
    .line 724
    .restart local v15    # "srcIndex":I
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@eb
    move-result v9

    #@ec
    .line 727
    .restart local v9    # "length":I
    const/4 v7, 0x0

    #@ed
    .line 728
    .restart local v7    # "isModified":Z
    const/4 v6, 0x0

    #@ee
    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v9, :cond_e

    #@f0
    .line 729
    add-int v18, v15, v6

    #@f2
    aget-wide v12, v14, v18

    #@f4
    .line 730
    .local v12, "srcCE":J
    move-object/from16 v0, p0

    #@f6
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    #@f8
    move-object/from16 v18, v0

    #@fa
    move-object/from16 v0, v18

    #@fc
    invoke-interface {v0, v12, v13}, Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;->modifyCE(J)J

    #@ff
    move-result-wide v2

    #@100
    .line 731
    .restart local v2    # "ce":J
    const-wide v18, 0x101000100L

    #@105
    cmp-long v18, v2, v18

    #@107
    if-nez v18, :cond_b

    #@109
    .line 732
    if-eqz v7, :cond_a

    #@10b
    .line 733
    move-object/from16 v0, p0

    #@10d
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    #@10f
    move-object/from16 v18, v0

    #@111
    aput-wide v12, v18, v6

    #@113
    .line 728
    :cond_a
    :goto_5
    add-int/lit8 v6, v6, 0x1

    #@115
    goto :goto_4

    #@116
    .line 736
    :cond_b
    if-nez v7, :cond_d

    #@118
    .line 737
    const/4 v8, 0x0

    #@119
    .restart local v8    # "j":I
    :goto_6
    if-ge v8, v6, :cond_c

    #@11b
    .line 738
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    #@11f
    move-object/from16 v18, v0

    #@121
    add-int v19, v15, v8

    #@123
    aget-wide v20, v14, v19

    #@125
    aput-wide v20, v18, v8

    #@127
    .line 737
    add-int/lit8 v8, v8, 0x1

    #@129
    goto :goto_6

    #@12a
    .line 740
    :cond_c
    const/4 v7, 0x1

    #@12b
    .line 742
    .end local v8    # "j":I
    :cond_d
    move-object/from16 v0, p0

    #@12d
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    #@12f
    move-object/from16 v18, v0

    #@131
    aput-wide v2, v18, v6

    #@133
    goto :goto_5

    #@134
    .line 745
    .end local v2    # "ce":J
    .end local v12    # "srcCE":J
    :cond_e
    if-eqz v7, :cond_f

    #@136
    .line 746
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    #@13a
    move-object/from16 v18, v0

    #@13c
    move-object/from16 v0, p0

    #@13e
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    #@140
    move-object/from16 v19, v0

    #@142
    move-object/from16 v0, v18

    #@144
    move-object/from16 v1, v19

    #@146
    invoke-virtual {v0, v1, v9}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    #@149
    move-result p1

    #@14a
    goto/16 :goto_0

    #@14c
    .line 748
    :cond_f
    move-object/from16 v0, p0

    #@14e
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    #@150
    move-object/from16 v18, v0

    #@152
    move-object/from16 v0, v18

    #@154
    invoke-virtual {v0, v14, v15, v9}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    #@157
    move-result p1

    #@158
    goto/16 :goto_0

    #@15a
    .line 750
    .end local v6    # "i":I
    .end local v7    # "isModified":Z
    .end local v9    # "length":I
    .end local v14    # "srcCEs":[J
    .end local v15    # "srcIndex":I
    :cond_10
    const/16 v18, 0x7

    #@15c
    move/from16 v0, v17

    #@15e
    move/from16 v1, v18

    #@160
    if-ne v0, v1, :cond_13

    #@162
    .line 752
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    #@166
    move-object/from16 v18, v0

    #@168
    move-object/from16 v0, v18

    #@16a
    move/from16 v1, p1

    #@16c
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@16f
    move-result-object v4

    #@170
    .line 753
    .local v4, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    sget-boolean v18, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->-assertionsDisabled:Z

    #@172
    if-nez v18, :cond_12

    #@174
    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->hasContext()Z

    #@177
    move-result v18

    #@178
    if-eqz v18, :cond_11

    #@17a
    const/16 v18, 0x0

    #@17c
    :goto_7
    if-nez v18, :cond_12

    #@17e
    new-instance v18, Ljava/lang/AssertionError;

    #@180
    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    #@183
    throw v18

    #@184
    :cond_11
    const/16 v18, 0x1

    #@186
    goto :goto_7

    #@187
    .line 754
    :cond_12
    move-object/from16 v0, p0

    #@189
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    #@18b
    move-object/from16 v18, v0

    #@18d
    .line 755
    iget-object v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    #@18f
    move-object/from16 v19, v0

    #@191
    iget v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    #@193
    move/from16 v20, v0

    #@195
    move-object/from16 v0, p0

    #@197
    move/from16 v1, v20

    #@199
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyCE32(I)I

    #@19c
    move-result v20

    #@19d
    .line 754
    invoke-virtual/range {v18 .. v20}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    #@1a0
    move-result v5

    #@1a1
    .line 756
    .local v5, "destIndex":I
    invoke-static {v5}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    #@1a4
    move-result p1

    #@1a5
    .line 757
    :goto_8
    iget v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@1a7
    move/from16 v18, v0

    #@1a9
    if-ltz v18, :cond_0

    #@1ab
    .line 758
    move-object/from16 v0, p0

    #@1ad
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    #@1af
    move-object/from16 v18, v0

    #@1b1
    iget v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@1b3
    move/from16 v19, v0

    #@1b5
    invoke-virtual/range {v18 .. v19}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@1b8
    move-result-object v4

    #@1b9
    .line 759
    move-object/from16 v0, p0

    #@1bb
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    #@1bd
    move-object/from16 v18, v0

    #@1bf
    move-object/from16 v0, v18

    #@1c1
    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    #@1c4
    move-result-object v10

    #@1c5
    .line 760
    .local v10, "prevDestCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    move-object/from16 v0, p0

    #@1c7
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    #@1c9
    move-object/from16 v18, v0

    #@1cb
    .line 761
    iget-object v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    #@1cd
    move-object/from16 v19, v0

    #@1cf
    iget v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    #@1d1
    move/from16 v20, v0

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    move/from16 v1, v20

    #@1d7
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyCE32(I)I

    #@1da
    move-result v20

    #@1db
    .line 760
    invoke-virtual/range {v18 .. v20}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    #@1de
    move-result v5

    #@1df
    .line 762
    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    #@1e2
    move-result v18

    #@1e3
    add-int/lit8 v16, v18, 0x1

    #@1e5
    .line 763
    .local v16, "suffixStart":I
    move-object/from16 v0, p0

    #@1e7
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    #@1e9
    move-object/from16 v18, v0

    #@1eb
    move-object/from16 v0, v18

    #@1ed
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    #@1ef
    move-object/from16 v18, v0

    #@1f1
    iget-object v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    #@1f3
    move-object/from16 v19, v0

    #@1f5
    move-object/from16 v0, v19

    #@1f7
    move/from16 v1, v16

    #@1f9
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1fc
    move-result-object v19

    #@1fd
    invoke-virtual/range {v18 .. v19}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@200
    .line 764
    iput v5, v10, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@202
    goto :goto_8

    #@203
    .line 769
    .end local v4    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v5    # "destIndex":I
    .end local v10    # "prevDestCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v16    # "suffixStart":I
    :cond_13
    sget-boolean v18, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->-assertionsDisabled:Z

    #@205
    if-nez v18, :cond_0

    #@207
    const/16 v18, 0x1

    #@209
    move/from16 v0, v17

    #@20b
    move/from16 v1, v18

    #@20d
    if-eq v0, v1, :cond_14

    #@20f
    .line 770
    const/16 v18, 0x2

    #@211
    move/from16 v0, v17

    #@213
    move/from16 v1, v18

    #@215
    if-ne v0, v1, :cond_15

    #@217
    .line 769
    :cond_14
    const/16 v18, 0x1

    #@219
    :goto_9
    if-nez v18, :cond_0

    #@21b
    new-instance v18, Ljava/lang/AssertionError;

    #@21d
    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    #@220
    throw v18

    #@221
    .line 771
    :cond_15
    const/16 v18, 0x4

    #@223
    move/from16 v0, v17

    #@225
    move/from16 v1, v18

    #@227
    if-eq v0, v1, :cond_14

    #@229
    .line 772
    const/16 v18, 0xc

    #@22b
    move/from16 v0, v17

    #@22d
    move/from16 v1, v18

    #@22f
    if-ne v0, v1, :cond_16

    #@231
    const/16 v18, 0x1

    #@233
    goto :goto_9

    #@234
    :cond_16
    const/16 v18, 0x0

    #@236
    goto :goto_9
.end method

.method copyRangeCE32(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I

    #@0
    .prologue
    .line 676
    invoke-virtual {p0, p3}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyCE32(I)I

    #@3
    move-result p3

    #@4
    .line 677
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    #@6
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    #@c
    .line 678
    invoke-static {p3}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 679
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    #@14
    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    #@16
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@19
    .line 675
    :cond_0
    return-void
.end method
