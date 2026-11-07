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
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field blacklist dest:Landroid/icu/impl/coll/CollationDataBuilder;

.field blacklist modifiedCEs:[J

.field blacklist modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

.field blacklist src:Landroid/icu/impl/coll/CollationDataBuilder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 682
    const-class v0, Landroid/icu/impl/coll/CollationDataBuilder;

    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V
    .registers 5
    .param p1, "s"    # Landroid/icu/impl/coll/CollationDataBuilder;
    .param p2, "d"    # Landroid/icu/impl/coll/CollationDataBuilder;
    .param p3, "m"    # Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    const/16 v0, 0x1f

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    .line 685
    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    .line 686
    iput-object p2, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    .line 687
    iput-object p3, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    .line 688
    return-void
.end method


# virtual methods
.method blacklist copyCE32(I)I
    .registers 20
    .param p1, "ce32"    # I

    .line 699
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v2

    const-wide v3, 0x101000100L

    if-nez v2, :cond_21

    .line 700
    iget-object v2, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    invoke-interface {v2, v1}, Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;->modifyCE32(I)J

    move-result-wide v5

    .line 701
    .local v5, "ce":J
    cmp-long v2, v5, v3

    if-eqz v2, :cond_1f

    .line 702
    iget-object v2, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v2, v5, v6}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    move-result v1

    .line 704
    .end local v5    # "ce":J
    .end local p1    # "ce32":I
    .local v1, "ce32":I
    :cond_1f
    goto/16 :goto_136

    .line 705
    .end local v1    # "ce32":I
    .restart local p1    # "ce32":I
    :cond_21
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v2

    .line 706
    .local v2, "tag":I
    const/4 v5, 0x5

    if-ne v2, v5, :cond_8c

    .line 707
    iget-object v5, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v5, v5, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v5}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v5

    .line 708
    .local v5, "srcCE32s":[I
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v6

    .line 709
    .local v6, "srcIndex":I
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v7

    .line 712
    .local v7, "length":I
    const/4 v8, 0x0

    .line 713
    .local v8, "isModified":Z
    const/4 v9, 0x0

    .end local p1    # "ce32":I
    .restart local v1    # "ce32":I
    .local v9, "i":I
    :goto_3a
    if-ge v9, v7, :cond_79

    .line 714
    add-int v10, v6, v9

    aget v1, v5, v10

    .line 716
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v10

    if-nez v10, :cond_6c

    iget-object v10, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    .line 717
    invoke-interface {v10, v1}, Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;->modifyCE32(I)J

    move-result-wide v10

    move-wide v12, v10

    .local v12, "ce":J
    cmp-long v10, v10, v3

    if-nez v10, :cond_52

    goto :goto_6c

    .line 722
    :cond_52
    if-nez v8, :cond_67

    .line 723
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_55
    if-ge v10, v9, :cond_66

    .line 724
    iget-object v11, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    add-int v14, v6, v10

    aget v14, v5, v14

    invoke-static {v14}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v14

    aput-wide v14, v11, v10

    .line 723
    add-int/lit8 v10, v10, 0x1

    goto :goto_55

    .line 726
    .end local v10    # "j":I
    :cond_66
    const/4 v8, 0x1

    .line 728
    :cond_67
    iget-object v10, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    aput-wide v12, v10, v9

    goto :goto_76

    .line 718
    .end local v12    # "ce":J
    :cond_6c
    :goto_6c
    if-eqz v8, :cond_76

    .line 719
    iget-object v10, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v11

    aput-wide v11, v10, v9

    .line 713
    :cond_76
    :goto_76
    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    .line 731
    .end local v9    # "i":I
    :cond_79
    if-eqz v8, :cond_84

    .line 732
    iget-object v3, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v4, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    invoke-virtual {v3, v4, v7}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    move-result v1

    goto :goto_8a

    .line 734
    :cond_84
    iget-object v3, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v3, v5, v6, v7}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    move-result v1

    .line 736
    .end local v5    # "srcCE32s":[I
    .end local v6    # "srcIndex":I
    .end local v7    # "length":I
    .end local v8    # "isModified":Z
    :goto_8a
    goto/16 :goto_136

    .end local v1    # "ce32":I
    .restart local p1    # "ce32":I
    :cond_8c
    const/4 v5, 0x6

    if-ne v2, v5, :cond_e2

    .line 737
    iget-object v5, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v5, v5, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v5}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v5

    .line 738
    .local v5, "srcCEs":[J
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v6

    .line 739
    .restart local v6    # "srcIndex":I
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v7

    .line 742
    .restart local v7    # "length":I
    const/4 v8, 0x0

    .line 743
    .restart local v8    # "isModified":Z
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_a1
    if-ge v9, v7, :cond_d0

    .line 744
    add-int v10, v6, v9

    aget-wide v10, v5, v10

    .line 745
    .local v10, "srcCE":J
    iget-object v12, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    invoke-interface {v12, v10, v11}, Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;->modifyCE(J)J

    move-result-wide v12

    .line 746
    .restart local v12    # "ce":J
    cmp-long v14, v12, v3

    if-nez v14, :cond_b8

    .line 747
    if-eqz v8, :cond_cd

    .line 748
    iget-object v14, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    aput-wide v10, v14, v9

    goto :goto_cd

    .line 751
    :cond_b8
    if-nez v8, :cond_c9

    .line 752
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_bb
    if-ge v14, v9, :cond_c8

    .line 753
    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    add-int v16, v6, v14

    aget-wide v16, v5, v16

    aput-wide v16, v15, v14

    .line 752
    add-int/lit8 v14, v14, 0x1

    goto :goto_bb

    .line 755
    .end local v14    # "j":I
    :cond_c8
    const/4 v8, 0x1

    .line 757
    :cond_c9
    iget-object v14, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    aput-wide v12, v14, v9

    .line 743
    .end local v10    # "srcCE":J
    .end local v12    # "ce":J
    :cond_cd
    :goto_cd
    add-int/lit8 v9, v9, 0x1

    goto :goto_a1

    .line 760
    .end local v9    # "i":I
    :cond_d0
    if-eqz v8, :cond_db

    .line 761
    iget-object v3, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v4, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    invoke-virtual {v3, v4, v7}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    move-result v1

    .end local p1    # "ce32":I
    .restart local v1    # "ce32":I
    goto :goto_e1

    .line 763
    .end local v1    # "ce32":I
    .restart local p1    # "ce32":I
    :cond_db
    iget-object v3, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v3, v5, v6, v7}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    move-result v1

    .line 765
    .end local v5    # "srcCEs":[J
    .end local v6    # "srcIndex":I
    .end local v7    # "length":I
    .end local v8    # "isModified":Z
    .end local p1    # "ce32":I
    .restart local v1    # "ce32":I
    :goto_e1
    goto :goto_136

    .end local v1    # "ce32":I
    .restart local p1    # "ce32":I
    :cond_e2
    const/4 v3, 0x7

    if-ne v2, v3, :cond_135

    .line 767
    iget-object v3, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v3, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v3

    .line 768
    .local v3, "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    nop

    .line 769
    iget-object v4, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v5, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    iget v6, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 770
    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyCE32(I)I

    move-result v6

    .line 769
    invoke-virtual {v4, v5, v6}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v4

    .line 771
    .local v4, "destIndex":I
    invoke-static {v4}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result v1

    .line 772
    .end local p1    # "ce32":I
    .restart local v1    # "ce32":I
    :goto_fe
    iget v5, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-ltz v5, :cond_134

    .line 773
    iget-object v5, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    iget v6, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v5, v6}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v3

    .line 774
    iget-object v5, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v5, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v5

    .line 775
    .local v5, "prevDestCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    iget-object v6, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v7, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    iget v8, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 776
    invoke-virtual {v0, v8}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyCE32(I)I

    move-result v8

    .line 775
    invoke-virtual {v6, v7, v8}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v4

    .line 777
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 778
    .local v6, "suffixStart":I
    iget-object v7, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v7, v7, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    iget-object v8, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 779
    iput v4, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 780
    .end local v5    # "prevDestCond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v6    # "suffixStart":I
    goto :goto_fe

    .line 781
    .end local v3    # "cond":Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .end local v4    # "destIndex":I
    :cond_134
    goto :goto_136

    .line 784
    .end local v1    # "ce32":I
    .restart local p1    # "ce32":I
    :cond_135
    nop

    .line 790
    .end local v2    # "tag":I
    .end local p1    # "ce32":I
    .restart local v1    # "ce32":I
    :goto_136
    return v1
.end method

.method blacklist copyRangeCE32(III)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I

    .line 691
    invoke-virtual {p0, p3}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyCE32(I)I

    move-result p3

    .line 692
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    .line 693
    invoke-static {p3}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 694
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 696
    :cond_19
    return-void
.end method
