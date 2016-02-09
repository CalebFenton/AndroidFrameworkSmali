.class public Landroid/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "FieldPacker.java"


# instance fields
.field private mAlignment:Ljava/util/BitSet;

.field private mData:[B

.field private mLen:I

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@6
    .line 33
    iput p1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    #@8
    .line 34
    new-array v0, p1, [B

    #@a
    iput-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@c
    .line 35
    new-instance v0, Ljava/util/BitSet;

    #@e
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    #@11
    iput-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    #@13
    .line 31
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    array-length v0, p1

    #@4
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@6
    .line 42
    array-length v0, p1

    #@7
    iput v0, p0, Landroid/renderscript/FieldPacker;->mLen:I

    #@9
    .line 43
    iput-object p1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@b
    .line 44
    new-instance v0, Ljava/util/BitSet;

    #@d
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    #@10
    iput-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    #@12
    .line 38
    return-void
.end method

.method private add(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 631
    instance-of v0, p1, Ljava/lang/Boolean;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 632
    check-cast p1, Ljava/lang/Boolean;

    #@6
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@9
    move-result v0

    #@a
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    #@d
    .line 633
    return-void

    #@e
    .line 636
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 637
    check-cast p1, Ljava/lang/Byte;

    #@14
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    #@17
    move-result v0

    #@18
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    #@1b
    .line 638
    return-void

    #@1c
    .line 641
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 642
    check-cast p1, Ljava/lang/Short;

    #@22
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    #@25
    move-result v0

    #@26
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    #@29
    .line 643
    return-void

    #@2a
    .line 646
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    #@2c
    if-eqz v0, :cond_3

    #@2e
    .line 647
    check-cast p1, Ljava/lang/Integer;

    #@30
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@33
    move-result v0

    #@34
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    #@37
    .line 648
    return-void

    #@38
    .line 651
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    #@3a
    if-eqz v0, :cond_4

    #@3c
    .line 652
    check-cast p1, Ljava/lang/Long;

    #@3e
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@41
    move-result-wide v0

    #@42
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@45
    .line 653
    return-void

    #@46
    .line 656
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    #@48
    if-eqz v0, :cond_5

    #@4a
    .line 657
    check-cast p1, Ljava/lang/Float;

    #@4c
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@4f
    move-result v0

    #@50
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@53
    .line 658
    return-void

    #@54
    .line 661
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    #@56
    if-eqz v0, :cond_6

    #@58
    .line 662
    check-cast p1, Ljava/lang/Double;

    #@5a
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    #@5d
    move-result-wide v0

    #@5e
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    #@61
    .line 663
    return-void

    #@62
    .line 666
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, Landroid/renderscript/Byte2;

    #@64
    if-eqz v0, :cond_7

    #@66
    .line 667
    check-cast p1, Landroid/renderscript/Byte2;

    #@68
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte2;)V

    #@6b
    .line 668
    return-void

    #@6c
    .line 671
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_7
    instance-of v0, p1, Landroid/renderscript/Byte3;

    #@6e
    if-eqz v0, :cond_8

    #@70
    .line 672
    check-cast p1, Landroid/renderscript/Byte3;

    #@72
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte3;)V

    #@75
    .line 673
    return-void

    #@76
    .line 676
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8
    instance-of v0, p1, Landroid/renderscript/Byte4;

    #@78
    if-eqz v0, :cond_9

    #@7a
    .line 677
    check-cast p1, Landroid/renderscript/Byte4;

    #@7c
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte4;)V

    #@7f
    .line 678
    return-void

    #@80
    .line 681
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v0, p1, Landroid/renderscript/Short2;

    #@82
    if-eqz v0, :cond_a

    #@84
    .line 682
    check-cast p1, Landroid/renderscript/Short2;

    #@86
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short2;)V

    #@89
    .line 683
    return-void

    #@8a
    .line 686
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_a
    instance-of v0, p1, Landroid/renderscript/Short3;

    #@8c
    if-eqz v0, :cond_b

    #@8e
    .line 687
    check-cast p1, Landroid/renderscript/Short3;

    #@90
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short3;)V

    #@93
    .line 688
    return-void

    #@94
    .line 691
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_b
    instance-of v0, p1, Landroid/renderscript/Short4;

    #@96
    if-eqz v0, :cond_c

    #@98
    .line 692
    check-cast p1, Landroid/renderscript/Short4;

    #@9a
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short4;)V

    #@9d
    .line 693
    return-void

    #@9e
    .line 696
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_c
    instance-of v0, p1, Landroid/renderscript/Int2;

    #@a0
    if-eqz v0, :cond_d

    #@a2
    .line 697
    check-cast p1, Landroid/renderscript/Int2;

    #@a4
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int2;)V

    #@a7
    .line 698
    return-void

    #@a8
    .line 701
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_d
    instance-of v0, p1, Landroid/renderscript/Int3;

    #@aa
    if-eqz v0, :cond_e

    #@ac
    .line 702
    check-cast p1, Landroid/renderscript/Int3;

    #@ae
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int3;)V

    #@b1
    .line 703
    return-void

    #@b2
    .line 706
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_e
    instance-of v0, p1, Landroid/renderscript/Int4;

    #@b4
    if-eqz v0, :cond_f

    #@b6
    .line 707
    check-cast p1, Landroid/renderscript/Int4;

    #@b8
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int4;)V

    #@bb
    .line 708
    return-void

    #@bc
    .line 711
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_f
    instance-of v0, p1, Landroid/renderscript/Long2;

    #@be
    if-eqz v0, :cond_10

    #@c0
    .line 712
    check-cast p1, Landroid/renderscript/Long2;

    #@c2
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long2;)V

    #@c5
    .line 713
    return-void

    #@c6
    .line 716
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_10
    instance-of v0, p1, Landroid/renderscript/Long3;

    #@c8
    if-eqz v0, :cond_11

    #@ca
    .line 717
    check-cast p1, Landroid/renderscript/Long3;

    #@cc
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long3;)V

    #@cf
    .line 718
    return-void

    #@d0
    .line 721
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_11
    instance-of v0, p1, Landroid/renderscript/Long4;

    #@d2
    if-eqz v0, :cond_12

    #@d4
    .line 722
    check-cast p1, Landroid/renderscript/Long4;

    #@d6
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long4;)V

    #@d9
    .line 723
    return-void

    #@da
    .line 726
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_12
    instance-of v0, p1, Landroid/renderscript/Float2;

    #@dc
    if-eqz v0, :cond_13

    #@de
    .line 727
    check-cast p1, Landroid/renderscript/Float2;

    #@e0
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    #@e3
    .line 728
    return-void

    #@e4
    .line 731
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_13
    instance-of v0, p1, Landroid/renderscript/Float3;

    #@e6
    if-eqz v0, :cond_14

    #@e8
    .line 732
    check-cast p1, Landroid/renderscript/Float3;

    #@ea
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    #@ed
    .line 733
    return-void

    #@ee
    .line 736
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_14
    instance-of v0, p1, Landroid/renderscript/Float4;

    #@f0
    if-eqz v0, :cond_15

    #@f2
    .line 737
    check-cast p1, Landroid/renderscript/Float4;

    #@f4
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    #@f7
    .line 738
    return-void

    #@f8
    .line 741
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_15
    instance-of v0, p1, Landroid/renderscript/Double2;

    #@fa
    if-eqz v0, :cond_16

    #@fc
    .line 742
    check-cast p1, Landroid/renderscript/Double2;

    #@fe
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double2;)V

    #@101
    .line 743
    return-void

    #@102
    .line 746
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_16
    instance-of v0, p1, Landroid/renderscript/Double3;

    #@104
    if-eqz v0, :cond_17

    #@106
    .line 747
    check-cast p1, Landroid/renderscript/Double3;

    #@108
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double3;)V

    #@10b
    .line 748
    return-void

    #@10c
    .line 751
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_17
    instance-of v0, p1, Landroid/renderscript/Double4;

    #@10e
    if-eqz v0, :cond_18

    #@110
    .line 752
    check-cast p1, Landroid/renderscript/Double4;

    #@112
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double4;)V

    #@115
    .line 753
    return-void

    #@116
    .line 756
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_18
    instance-of v0, p1, Landroid/renderscript/Matrix2f;

    #@118
    if-eqz v0, :cond_19

    #@11a
    .line 757
    check-cast p1, Landroid/renderscript/Matrix2f;

    #@11c
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix2f;)V

    #@11f
    .line 758
    return-void

    #@120
    .line 761
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_19
    instance-of v0, p1, Landroid/renderscript/Matrix3f;

    #@122
    if-eqz v0, :cond_1a

    #@124
    .line 762
    check-cast p1, Landroid/renderscript/Matrix3f;

    #@126
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix3f;)V

    #@129
    .line 763
    return-void

    #@12a
    .line 766
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1a
    instance-of v0, p1, Landroid/renderscript/Matrix4f;

    #@12c
    if-eqz v0, :cond_1b

    #@12e
    .line 767
    check-cast p1, Landroid/renderscript/Matrix4f;

    #@130
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    #@133
    .line 768
    return-void

    #@134
    .line 771
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1b
    instance-of v0, p1, Landroid/renderscript/BaseObj;

    #@136
    if-eqz v0, :cond_1c

    #@138
    .line 772
    check-cast p1, Landroid/renderscript/BaseObj;

    #@13a
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    #@13d
    .line 773
    return-void

    #@13e
    .line 630
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1c
    return-void
.end method

.method private addSafely(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 791
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@2
    .line 793
    .local v1, "oldPos":I
    :cond_0
    const/4 v2, 0x0

    #@3
    .line 795
    .local v2, "retry":Z
    :try_start_0
    invoke-direct {p0, p1}, Landroid/renderscript/FieldPacker;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 801
    :goto_0
    if-nez v2, :cond_0

    #@8
    .line 789
    return-void

    #@9
    .line 796
    :catch_0
    move-exception v0

    #@a
    .line 797
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    iput v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@c
    .line 798
    iget v3, p0, Landroid/renderscript/FieldPacker;->mLen:I

    #@e
    mul-int/lit8 v3, v3, 0x2

    #@10
    invoke-direct {p0, v3}, Landroid/renderscript/FieldPacker;->resize(I)Z

    #@13
    .line 799
    const/4 v2, 0x1

    #@14
    goto :goto_0
.end method

.method static createFromArray([Ljava/lang/Object;)Landroid/renderscript/FieldPacker;
    .locals 4
    .param p0, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 51
    new-instance v1, Landroid/renderscript/FieldPacker;

    #@2
    sget v2, Landroid/renderscript/RenderScript;->sPointerSize:I

    #@4
    mul-int/lit8 v2, v2, 0x8

    #@6
    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    #@9
    .line 52
    .local v1, "fp":Landroid/renderscript/FieldPacker;
    const/4 v2, 0x0

    #@a
    array-length v3, p0

    #@b
    :goto_0
    if-ge v2, v3, :cond_0

    #@d
    aget-object v0, p0, v2

    #@f
    .line 53
    .local v0, "arg":Ljava/lang/Object;
    invoke-direct {v1, v0}, Landroid/renderscript/FieldPacker;->addSafely(Ljava/lang/Object;)V

    #@12
    .line 52
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 55
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    iget v2, v1, Landroid/renderscript/FieldPacker;->mPos:I

    #@17
    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;->resize(I)Z

    #@1a
    .line 56
    return-object v1
.end method

.method private resize(I)Z
    .locals 4
    .param p1, "newSize"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 778
    iget v1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    #@3
    if-ne p1, v1, :cond_0

    #@5
    .line 779
    return v3

    #@6
    .line 782
    :cond_0
    new-array v0, p1, [B

    #@8
    .line 783
    .local v0, "newData":[B
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@a
    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@c
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f
    .line 784
    iput-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@11
    .line 785
    iput p1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    #@13
    .line 786
    const/4 v1, 0x1

    #@14
    return v1
.end method


# virtual methods
.method public addBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z

    #@0
    .prologue
    .line 606
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    int-to-byte v0, v0

    #@4
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    #@7
    .line 605
    return-void

    #@8
    .line 606
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public addF32(F)V
    .locals 1
    .param p1, "v"    # F

    #@0
    .prologue
    .line 231
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    #@7
    .line 230
    return-void
.end method

.method public addF32(Landroid/renderscript/Float2;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Float2;

    #@0
    .prologue
    .line 269
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@5
    .line 270
    iget v0, p1, Landroid/renderscript/Float2;->y:F

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@a
    .line 268
    return-void
.end method

.method public addF32(Landroid/renderscript/Float3;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Float3;

    #@0
    .prologue
    .line 273
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@5
    .line 274
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@a
    .line 275
    iget v0, p1, Landroid/renderscript/Float3;->z:F

    #@c
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@f
    .line 272
    return-void
.end method

.method public addF32(Landroid/renderscript/Float4;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Float4;

    #@0
    .prologue
    .line 278
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@5
    .line 279
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@a
    .line 280
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    #@c
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@f
    .line 281
    iget v0, p1, Landroid/renderscript/Float4;->w:F

    #@11
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@14
    .line 277
    return-void
.end method

.method public addF64(D)V
    .locals 3
    .param p1, "v"    # D

    #@0
    .prologue
    .line 239
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@7
    .line 238
    return-void
.end method

.method public addF64(Landroid/renderscript/Double2;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Double2;

    #@0
    .prologue
    .line 285
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    #@5
    .line 286
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    #@a
    .line 284
    return-void
.end method

.method public addF64(Landroid/renderscript/Double3;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Double3;

    #@0
    .prologue
    .line 289
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    #@5
    .line 290
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    #@a
    .line 291
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    #@c
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    #@f
    .line 288
    return-void
.end method

.method public addF64(Landroid/renderscript/Double4;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Double4;

    #@0
    .prologue
    .line 294
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    #@5
    .line 295
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    #@a
    .line 296
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    #@c
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    #@f
    .line 297
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    #@14
    .line 293
    return-void
.end method

.method public addI16(Landroid/renderscript/Short2;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 333
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    #@5
    .line 334
    iget-short v0, p1, Landroid/renderscript/Short2;->y:S

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    #@a
    .line 332
    return-void
.end method

.method public addI16(Landroid/renderscript/Short3;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 337
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    #@5
    .line 338
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    #@a
    .line 339
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    #@c
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    #@f
    .line 336
    return-void
.end method

.method public addI16(Landroid/renderscript/Short4;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 342
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    #@5
    .line 343
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    #@a
    .line 344
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    #@c
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    #@f
    .line 345
    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    #@11
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    #@14
    .line 341
    return-void
.end method

.method public addI16(S)V
    .locals 3
    .param p1, "v"    # S

    #@0
    .prologue
    .line 116
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    #@4
    .line 117
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@6
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@8
    add-int/lit8 v2, v1, 0x1

    #@a
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@c
    and-int/lit16 v2, p1, 0xff

    #@e
    int-to-byte v2, v2

    #@f
    aput-byte v2, v0, v1

    #@11
    .line 118
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@13
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@15
    add-int/lit8 v2, v1, 0x1

    #@17
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@19
    shr-int/lit8 v2, p1, 0x8

    #@1b
    int-to-byte v2, v2

    #@1c
    aput-byte v2, v0, v1

    #@1e
    .line 115
    return-void
.end method

.method public addI32(I)V
    .locals 3
    .param p1, "v"    # I

    #@0
    .prologue
    .line 131
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    #@4
    .line 132
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@6
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@8
    add-int/lit8 v2, v1, 0x1

    #@a
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@c
    and-int/lit16 v2, p1, 0xff

    #@e
    int-to-byte v2, v2

    #@f
    aput-byte v2, v0, v1

    #@11
    .line 133
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@13
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@15
    add-int/lit8 v2, v1, 0x1

    #@17
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@19
    shr-int/lit8 v2, p1, 0x8

    #@1b
    and-int/lit16 v2, v2, 0xff

    #@1d
    int-to-byte v2, v2

    #@1e
    aput-byte v2, v0, v1

    #@20
    .line 134
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@22
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@24
    add-int/lit8 v2, v1, 0x1

    #@26
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@28
    shr-int/lit8 v2, p1, 0x10

    #@2a
    and-int/lit16 v2, v2, 0xff

    #@2c
    int-to-byte v2, v2

    #@2d
    aput-byte v2, v0, v1

    #@2f
    .line 135
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@31
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@33
    add-int/lit8 v2, v1, 0x1

    #@35
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@37
    shr-int/lit8 v2, p1, 0x18

    #@39
    and-int/lit16 v2, v2, 0xff

    #@3b
    int-to-byte v2, v2

    #@3c
    aput-byte v2, v0, v1

    #@3e
    .line 130
    return-void
.end method

.method public addI32(Landroid/renderscript/Int2;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 365
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    #@5
    .line 366
    iget v0, p1, Landroid/renderscript/Int2;->y:I

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    #@a
    .line 364
    return-void
.end method

.method public addI32(Landroid/renderscript/Int3;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 369
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    #@5
    .line 370
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    #@a
    .line 371
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    #@c
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    #@f
    .line 368
    return-void
.end method

.method public addI32(Landroid/renderscript/Int4;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 374
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    #@5
    .line 375
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    #@a
    .line 376
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    #@c
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    #@f
    .line 377
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    #@11
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    #@14
    .line 373
    return-void
.end method

.method public addI64(J)V
    .locals 7
    .param p1, "v"    # J

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    const-wide/16 v4, 0xff

    #@4
    .line 150
    invoke-virtual {p0, v6}, Landroid/renderscript/FieldPacker;->align(I)V

    #@7
    .line 151
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@9
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@b
    add-int/lit8 v2, v1, 0x1

    #@d
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@f
    and-long v2, p1, v4

    #@11
    long-to-int v2, v2

    #@12
    int-to-byte v2, v2

    #@13
    aput-byte v2, v0, v1

    #@15
    .line 152
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@17
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@19
    add-int/lit8 v2, v1, 0x1

    #@1b
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@1d
    shr-long v2, p1, v6

    #@1f
    and-long/2addr v2, v4

    #@20
    long-to-int v2, v2

    #@21
    int-to-byte v2, v2

    #@22
    aput-byte v2, v0, v1

    #@24
    .line 153
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@26
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@28
    add-int/lit8 v2, v1, 0x1

    #@2a
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@2c
    const/16 v2, 0x10

    #@2e
    shr-long v2, p1, v2

    #@30
    and-long/2addr v2, v4

    #@31
    long-to-int v2, v2

    #@32
    int-to-byte v2, v2

    #@33
    aput-byte v2, v0, v1

    #@35
    .line 154
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@37
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@39
    add-int/lit8 v2, v1, 0x1

    #@3b
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@3d
    const/16 v2, 0x18

    #@3f
    shr-long v2, p1, v2

    #@41
    and-long/2addr v2, v4

    #@42
    long-to-int v2, v2

    #@43
    int-to-byte v2, v2

    #@44
    aput-byte v2, v0, v1

    #@46
    .line 155
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@48
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@4a
    add-int/lit8 v2, v1, 0x1

    #@4c
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@4e
    const/16 v2, 0x20

    #@50
    shr-long v2, p1, v2

    #@52
    and-long/2addr v2, v4

    #@53
    long-to-int v2, v2

    #@54
    int-to-byte v2, v2

    #@55
    aput-byte v2, v0, v1

    #@57
    .line 156
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@59
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@5b
    add-int/lit8 v2, v1, 0x1

    #@5d
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@5f
    const/16 v2, 0x28

    #@61
    shr-long v2, p1, v2

    #@63
    and-long/2addr v2, v4

    #@64
    long-to-int v2, v2

    #@65
    int-to-byte v2, v2

    #@66
    aput-byte v2, v0, v1

    #@68
    .line 157
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@6a
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@6c
    add-int/lit8 v2, v1, 0x1

    #@6e
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@70
    const/16 v2, 0x30

    #@72
    shr-long v2, p1, v2

    #@74
    and-long/2addr v2, v4

    #@75
    long-to-int v2, v2

    #@76
    int-to-byte v2, v2

    #@77
    aput-byte v2, v0, v1

    #@79
    .line 158
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@7b
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@7d
    add-int/lit8 v2, v1, 0x1

    #@7f
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@81
    const/16 v2, 0x38

    #@83
    shr-long v2, p1, v2

    #@85
    and-long/2addr v2, v4

    #@86
    long-to-int v2, v2

    #@87
    int-to-byte v2, v2

    #@88
    aput-byte v2, v0, v1

    #@8a
    .line 149
    return-void
.end method

.method public addI64(Landroid/renderscript/Long2;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 397
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@5
    .line 398
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@a
    .line 396
    return-void
.end method

.method public addI64(Landroid/renderscript/Long3;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 401
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@5
    .line 402
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@a
    .line 403
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    #@c
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@f
    .line 400
    return-void
.end method

.method public addI64(Landroid/renderscript/Long4;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 406
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@5
    .line 407
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@a
    .line 408
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    #@c
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@f
    .line 409
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@14
    .line 405
    return-void
.end method

.method public addI8(B)V
    .locals 3
    .param p1, "v"    # B

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@2
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@8
    aput-byte p1, v0, v1

    #@a
    .line 106
    return-void
.end method

.method public addI8(Landroid/renderscript/Byte2;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Byte2;

    #@0
    .prologue
    .line 301
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    #@5
    .line 302
    iget-byte v0, p1, Landroid/renderscript/Byte2;->y:B

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    #@a
    .line 300
    return-void
.end method

.method public addI8(Landroid/renderscript/Byte3;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Byte3;

    #@0
    .prologue
    .line 305
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    #@5
    .line 306
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    #@a
    .line 307
    iget-byte v0, p1, Landroid/renderscript/Byte3;->z:B

    #@c
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    #@f
    .line 304
    return-void
.end method

.method public addI8(Landroid/renderscript/Byte4;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Byte4;

    #@0
    .prologue
    .line 310
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    #@5
    .line 311
    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    #@a
    .line 312
    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    #@c
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    #@f
    .line 313
    iget-byte v0, p1, Landroid/renderscript/Byte4;->w:B

    #@11
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    #@14
    .line 309
    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix2f;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Matrix2f;

    #@0
    .prologue
    .line 592
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/renderscript/Matrix2f;->mMat:[F

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 593
    iget-object v1, p1, Landroid/renderscript/Matrix2f;->mMat:[F

    #@8
    aget v1, v1, v0

    #@a
    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@d
    .line 592
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 591
    :cond_0
    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix3f;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Matrix3f;

    #@0
    .prologue
    .line 578
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 579
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    #@8
    aget v1, v1, v0

    #@a
    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@d
    .line 578
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 577
    :cond_0
    return-void
.end method

.method public addMatrix(Landroid/renderscript/Matrix4f;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Matrix4f;

    #@0
    .prologue
    .line 564
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 565
    iget-object v1, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    #@8
    aget v1, v1, v0

    #@a
    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    #@d
    .line 564
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 563
    :cond_0
    return-void
.end method

.method public addObj(Landroid/renderscript/BaseObj;)V
    .locals 5
    .param p1, "obj"    # Landroid/renderscript/BaseObj;

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    const/4 v1, 0x0

    #@3
    const-wide/16 v2, 0x0

    #@5
    .line 247
    if-eqz p1, :cond_1

    #@7
    .line 248
    sget v0, Landroid/renderscript/RenderScript;->sPointerSize:I

    #@9
    if-ne v0, v4, :cond_0

    #@b
    .line 249
    invoke-virtual {p1, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@e
    move-result-wide v0

    #@f
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@12
    .line 250
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@15
    .line 251
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@18
    .line 252
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@1b
    .line 246
    :goto_0
    return-void

    #@1c
    .line 254
    :cond_0
    invoke-virtual {p1, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    #@1f
    move-result-wide v0

    #@20
    long-to-int v0, v0

    #@21
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    #@24
    goto :goto_0

    #@25
    .line 257
    :cond_1
    sget v0, Landroid/renderscript/RenderScript;->sPointerSize:I

    #@27
    if-ne v0, v4, :cond_2

    #@29
    .line 258
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@2c
    .line 259
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@2f
    .line 260
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@32
    .line 261
    invoke-virtual {p0, v2, v3}, Landroid/renderscript/FieldPacker;->addI64(J)V

    #@35
    goto :goto_0

    #@36
    .line 263
    :cond_2
    const/4 v0, 0x0

    #@37
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    #@3a
    goto :goto_0
.end method

.method public addU16(I)V
    .locals 3
    .param p1, "v"    # I

    #@0
    .prologue
    .line 193
    if-ltz p1, :cond_0

    #@2
    const v0, 0xffff

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 194
    :cond_0
    const-string/jumbo v0, "rs"

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "FieldPacker.addU16( "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " )"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    const-string/jumbo v1, "Saving value out of range for type"

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 197
    :cond_1
    const/4 v0, 0x2

    #@32
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    #@35
    .line 198
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@37
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@39
    add-int/lit8 v2, v1, 0x1

    #@3b
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@3d
    and-int/lit16 v2, p1, 0xff

    #@3f
    int-to-byte v2, v2

    #@40
    aput-byte v2, v0, v1

    #@42
    .line 199
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@44
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@46
    add-int/lit8 v2, v1, 0x1

    #@48
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@4a
    shr-int/lit8 v2, p1, 0x8

    #@4c
    int-to-byte v2, v2

    #@4d
    aput-byte v2, v0, v1

    #@4f
    .line 192
    return-void
.end method

.method public addU16(Landroid/renderscript/Int2;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Int2;

    #@0
    .prologue
    .line 349
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    #@5
    .line 350
    iget v0, p1, Landroid/renderscript/Int2;->y:I

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    #@a
    .line 348
    return-void
.end method

.method public addU16(Landroid/renderscript/Int3;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Int3;

    #@0
    .prologue
    .line 353
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    #@5
    .line 354
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    #@a
    .line 355
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    #@c
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    #@f
    .line 352
    return-void
.end method

.method public addU16(Landroid/renderscript/Int4;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Int4;

    #@0
    .prologue
    .line 358
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    #@5
    .line 359
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    #@a
    .line 360
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    #@c
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    #@f
    .line 361
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    #@11
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    #@14
    .line 357
    return-void
.end method

.method public addU32(J)V
    .locals 7
    .param p1, "v"    # J

    #@0
    .prologue
    const-wide/16 v4, 0xff

    #@2
    .line 203
    const-wide/16 v0, 0x0

    #@4
    cmp-long v0, p1, v0

    #@6
    if-ltz v0, :cond_0

    #@8
    const-wide v0, 0xffffffffL

    #@d
    cmp-long v0, p1, v0

    #@f
    if-lez v0, :cond_1

    #@11
    .line 204
    :cond_0
    const-string/jumbo v0, "rs"

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "FieldPacker.addU32( "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, " )"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v1, "Saving value out of range for type"

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 207
    :cond_1
    const/4 v0, 0x4

    #@3c
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    #@3f
    .line 208
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@41
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@43
    add-int/lit8 v2, v1, 0x1

    #@45
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@47
    and-long v2, p1, v4

    #@49
    long-to-int v2, v2

    #@4a
    int-to-byte v2, v2

    #@4b
    aput-byte v2, v0, v1

    #@4d
    .line 209
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@4f
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@51
    add-int/lit8 v2, v1, 0x1

    #@53
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@55
    const/16 v2, 0x8

    #@57
    shr-long v2, p1, v2

    #@59
    and-long/2addr v2, v4

    #@5a
    long-to-int v2, v2

    #@5b
    int-to-byte v2, v2

    #@5c
    aput-byte v2, v0, v1

    #@5e
    .line 210
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@60
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@62
    add-int/lit8 v2, v1, 0x1

    #@64
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@66
    const/16 v2, 0x10

    #@68
    shr-long v2, p1, v2

    #@6a
    and-long/2addr v2, v4

    #@6b
    long-to-int v2, v2

    #@6c
    int-to-byte v2, v2

    #@6d
    aput-byte v2, v0, v1

    #@6f
    .line 211
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@71
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@73
    add-int/lit8 v2, v1, 0x1

    #@75
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@77
    const/16 v2, 0x18

    #@79
    shr-long v2, p1, v2

    #@7b
    and-long/2addr v2, v4

    #@7c
    long-to-int v2, v2

    #@7d
    int-to-byte v2, v2

    #@7e
    aput-byte v2, v0, v1

    #@80
    .line 202
    return-void
.end method

.method public addU32(Landroid/renderscript/Long2;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 381
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    #@5
    .line 382
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    #@a
    .line 380
    return-void
.end method

.method public addU32(Landroid/renderscript/Long3;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 385
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    #@5
    .line 386
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    #@a
    .line 387
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    #@c
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    #@f
    .line 384
    return-void
.end method

.method public addU32(Landroid/renderscript/Long4;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 390
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    #@5
    .line 391
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    #@a
    .line 392
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    #@c
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    #@f
    .line 393
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    #@14
    .line 389
    return-void
.end method

.method public addU64(J)V
    .locals 7
    .param p1, "v"    # J

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    const-wide/16 v4, 0xff

    #@4
    .line 215
    const-wide/16 v0, 0x0

    #@6
    cmp-long v0, p1, v0

    #@8
    if-gez v0, :cond_0

    #@a
    .line 216
    const-string/jumbo v0, "rs"

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "FieldPacker.addU64( "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, " )"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v1, "Saving value out of range for type"

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 219
    :cond_0
    invoke-virtual {p0, v6}, Landroid/renderscript/FieldPacker;->align(I)V

    #@37
    .line 220
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@39
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@3b
    add-int/lit8 v2, v1, 0x1

    #@3d
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@3f
    and-long v2, p1, v4

    #@41
    long-to-int v2, v2

    #@42
    int-to-byte v2, v2

    #@43
    aput-byte v2, v0, v1

    #@45
    .line 221
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@47
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@49
    add-int/lit8 v2, v1, 0x1

    #@4b
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@4d
    shr-long v2, p1, v6

    #@4f
    and-long/2addr v2, v4

    #@50
    long-to-int v2, v2

    #@51
    int-to-byte v2, v2

    #@52
    aput-byte v2, v0, v1

    #@54
    .line 222
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@56
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@58
    add-int/lit8 v2, v1, 0x1

    #@5a
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@5c
    const/16 v2, 0x10

    #@5e
    shr-long v2, p1, v2

    #@60
    and-long/2addr v2, v4

    #@61
    long-to-int v2, v2

    #@62
    int-to-byte v2, v2

    #@63
    aput-byte v2, v0, v1

    #@65
    .line 223
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@67
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@69
    add-int/lit8 v2, v1, 0x1

    #@6b
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@6d
    const/16 v2, 0x18

    #@6f
    shr-long v2, p1, v2

    #@71
    and-long/2addr v2, v4

    #@72
    long-to-int v2, v2

    #@73
    int-to-byte v2, v2

    #@74
    aput-byte v2, v0, v1

    #@76
    .line 224
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@78
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@7a
    add-int/lit8 v2, v1, 0x1

    #@7c
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@7e
    const/16 v2, 0x20

    #@80
    shr-long v2, p1, v2

    #@82
    and-long/2addr v2, v4

    #@83
    long-to-int v2, v2

    #@84
    int-to-byte v2, v2

    #@85
    aput-byte v2, v0, v1

    #@87
    .line 225
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@89
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@8b
    add-int/lit8 v2, v1, 0x1

    #@8d
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@8f
    const/16 v2, 0x28

    #@91
    shr-long v2, p1, v2

    #@93
    and-long/2addr v2, v4

    #@94
    long-to-int v2, v2

    #@95
    int-to-byte v2, v2

    #@96
    aput-byte v2, v0, v1

    #@98
    .line 226
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@9a
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@9c
    add-int/lit8 v2, v1, 0x1

    #@9e
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@a0
    const/16 v2, 0x30

    #@a2
    shr-long v2, p1, v2

    #@a4
    and-long/2addr v2, v4

    #@a5
    long-to-int v2, v2

    #@a6
    int-to-byte v2, v2

    #@a7
    aput-byte v2, v0, v1

    #@a9
    .line 227
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@ab
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@ad
    add-int/lit8 v2, v1, 0x1

    #@af
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@b1
    const/16 v2, 0x38

    #@b3
    shr-long v2, p1, v2

    #@b5
    and-long/2addr v2, v4

    #@b6
    long-to-int v2, v2

    #@b7
    int-to-byte v2, v2

    #@b8
    aput-byte v2, v0, v1

    #@ba
    .line 214
    return-void
.end method

.method public addU64(Landroid/renderscript/Long2;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long2;

    #@0
    .prologue
    .line 413
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    #@5
    .line 414
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    #@a
    .line 412
    return-void
.end method

.method public addU64(Landroid/renderscript/Long3;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long3;

    #@0
    .prologue
    .line 417
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    #@5
    .line 418
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    #@a
    .line 419
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    #@c
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    #@f
    .line 416
    return-void
.end method

.method public addU64(Landroid/renderscript/Long4;)V
    .locals 2
    .param p1, "v"    # Landroid/renderscript/Long4;

    #@0
    .prologue
    .line 422
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    #@5
    .line 423
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    #@a
    .line 424
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    #@c
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    #@f
    .line 425
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    #@14
    .line 421
    return-void
.end method

.method public addU8(Landroid/renderscript/Short2;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Short2;

    #@0
    .prologue
    .line 317
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    #@5
    .line 318
    iget-short v0, p1, Landroid/renderscript/Short2;->y:S

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    #@a
    .line 316
    return-void
.end method

.method public addU8(Landroid/renderscript/Short3;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Short3;

    #@0
    .prologue
    .line 321
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    #@5
    .line 322
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    #@a
    .line 323
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    #@c
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    #@f
    .line 320
    return-void
.end method

.method public addU8(Landroid/renderscript/Short4;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Short4;

    #@0
    .prologue
    .line 326
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    #@2
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    #@5
    .line 327
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    #@7
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    #@a
    .line 328
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    #@c
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    #@f
    .line 329
    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    #@11
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    #@14
    .line 325
    return-void
.end method

.method public addU8(S)V
    .locals 3
    .param p1, "v"    # S

    #@0
    .prologue
    .line 185
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0xff

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 186
    :cond_0
    const-string/jumbo v0, "rs"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "FieldPacker.addU8( "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " )"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    const-string/jumbo v1, "Saving value out of range for type"

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 189
    :cond_1
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@32
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@34
    add-int/lit8 v2, v1, 0x1

    #@36
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@38
    int-to-byte v2, p1

    #@39
    aput-byte v2, v0, v1

    #@3b
    .line 184
    return-void
.end method

.method public align(I)V
    .locals 4
    .param p1, "v"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 60
    if-lez p1, :cond_0

    #@3
    add-int/lit8 v0, p1, -0x1

    #@5
    and-int/2addr v0, p1

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 61
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "argument must be a non-negative non-zero power of 2: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 64
    :cond_1
    :goto_0
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@24
    add-int/lit8 v1, p1, -0x1

    #@26
    and-int/2addr v0, v1

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 65
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    #@2b
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@2d
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->flip(I)V

    #@30
    .line 66
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@32
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@34
    add-int/lit8 v2, v1, 0x1

    #@36
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@38
    aput-byte v3, v0, v1

    #@3a
    goto :goto_0

    #@3b
    .line 59
    :cond_2
    return-void
.end method

.method public final getData()[B
    .locals 1

    #@0
    .prologue
    .line 618
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@2
    return-object v0
.end method

.method public getPos()I
    .locals 1

    #@0
    .prologue
    .line 627
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@2
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 89
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@3
    .line 88
    return-void
.end method

.method public reset(I)V
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    .line 92
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Landroid/renderscript/FieldPacker;->mLen:I

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 93
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "out of range argument: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 95
    :cond_1
    iput p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@22
    .line 91
    return-void
.end method

.method public skip(I)V
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    .line 99
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@2
    add-int v0, v1, p1

    #@4
    .line 100
    .local v0, "res":I
    if-ltz v0, :cond_0

    #@6
    iget v1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    #@8
    if-le v0, v1, :cond_1

    #@a
    .line 101
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "out of range argument: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 103
    :cond_1
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@26
    .line 98
    return-void
.end method

.method public subBoolean()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 610
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    #@4
    move-result v0

    #@5
    .line 611
    .local v0, "v":B
    if-ne v0, v1, :cond_0

    #@7
    .line 612
    return v1

    #@8
    .line 614
    :cond_0
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public subByte2()Landroid/renderscript/Byte2;
    .locals 2

    #@0
    .prologue
    .line 474
    new-instance v0, Landroid/renderscript/Byte2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    #@5
    .line 475
    .local v0, "v":Landroid/renderscript/Byte2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    #@8
    move-result v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    #@b
    .line 476
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    #@e
    move-result v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    #@11
    .line 477
    return-object v0
.end method

.method public subByte3()Landroid/renderscript/Byte3;
    .locals 2

    #@0
    .prologue
    .line 480
    new-instance v0, Landroid/renderscript/Byte3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    #@5
    .line 481
    .local v0, "v":Landroid/renderscript/Byte3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    #@8
    move-result v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    #@b
    .line 482
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    #@e
    move-result v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    #@11
    .line 483
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    #@14
    move-result v1

    #@15
    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    #@17
    .line 484
    return-object v0
.end method

.method public subByte4()Landroid/renderscript/Byte4;
    .locals 2

    #@0
    .prologue
    .line 487
    new-instance v0, Landroid/renderscript/Byte4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    #@5
    .line 488
    .local v0, "v":Landroid/renderscript/Byte4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    #@8
    move-result v1

    #@9
    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    #@b
    .line 489
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    #@e
    move-result v1

    #@f
    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    #@11
    .line 490
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    #@14
    move-result v1

    #@15
    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    #@17
    .line 491
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    #@1a
    move-result v1

    #@1b
    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    #@1d
    .line 492
    return-object v0
.end method

.method public subDouble2()Landroid/renderscript/Double2;
    .locals 4

    #@0
    .prologue
    .line 452
    new-instance v0, Landroid/renderscript/Double2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    #@5
    .line 453
    .local v0, "v":Landroid/renderscript/Double2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    #@8
    move-result-wide v2

    #@9
    iput-wide v2, v0, Landroid/renderscript/Double2;->y:D

    #@b
    .line 454
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, v0, Landroid/renderscript/Double2;->x:D

    #@11
    .line 455
    return-object v0
.end method

.method public subDouble3()Landroid/renderscript/Double3;
    .locals 4

    #@0
    .prologue
    .line 458
    new-instance v0, Landroid/renderscript/Double3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    #@5
    .line 459
    .local v0, "v":Landroid/renderscript/Double3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    #@8
    move-result-wide v2

    #@9
    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    #@b
    .line 460
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    #@11
    .line 461
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    #@14
    move-result-wide v2

    #@15
    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    #@17
    .line 462
    return-object v0
.end method

.method public subDouble4()Landroid/renderscript/Double4;
    .locals 4

    #@0
    .prologue
    .line 465
    new-instance v0, Landroid/renderscript/Double4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    #@5
    .line 466
    .local v0, "v":Landroid/renderscript/Double4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    #@8
    move-result-wide v2

    #@9
    iput-wide v2, v0, Landroid/renderscript/Double4;->w:D

    #@b
    .line 467
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, v0, Landroid/renderscript/Double4;->z:D

    #@11
    .line 468
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    #@14
    move-result-wide v2

    #@15
    iput-wide v2, v0, Landroid/renderscript/Double4;->y:D

    #@17
    .line 469
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    #@1a
    move-result-wide v2

    #@1b
    iput-wide v2, v0, Landroid/renderscript/Double4;->x:D

    #@1d
    .line 470
    return-object v0
.end method

.method public subF32()F
    .locals 1

    #@0
    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public subF64()D
    .locals 2

    #@0
    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public subFloat2()Landroid/renderscript/Float2;
    .locals 2

    #@0
    .prologue
    .line 430
    new-instance v0, Landroid/renderscript/Float2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    #@5
    .line 431
    .local v0, "v":Landroid/renderscript/Float2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    #@8
    move-result v1

    #@9
    iput v1, v0, Landroid/renderscript/Float2;->y:F

    #@b
    .line 432
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    #@e
    move-result v1

    #@f
    iput v1, v0, Landroid/renderscript/Float2;->x:F

    #@11
    .line 433
    return-object v0
.end method

.method public subFloat3()Landroid/renderscript/Float3;
    .locals 2

    #@0
    .prologue
    .line 436
    new-instance v0, Landroid/renderscript/Float3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    #@5
    .line 437
    .local v0, "v":Landroid/renderscript/Float3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    #@8
    move-result v1

    #@9
    iput v1, v0, Landroid/renderscript/Float3;->z:F

    #@b
    .line 438
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    #@e
    move-result v1

    #@f
    iput v1, v0, Landroid/renderscript/Float3;->y:F

    #@11
    .line 439
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    #@14
    move-result v1

    #@15
    iput v1, v0, Landroid/renderscript/Float3;->x:F

    #@17
    .line 440
    return-object v0
.end method

.method public subFloat4()Landroid/renderscript/Float4;
    .locals 2

    #@0
    .prologue
    .line 443
    new-instance v0, Landroid/renderscript/Float4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    #@5
    .line 444
    .local v0, "v":Landroid/renderscript/Float4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    #@8
    move-result v1

    #@9
    iput v1, v0, Landroid/renderscript/Float4;->w:F

    #@b
    .line 445
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    #@e
    move-result v1

    #@f
    iput v1, v0, Landroid/renderscript/Float4;->z:F

    #@11
    .line 446
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    #@14
    move-result v1

    #@15
    iput v1, v0, Landroid/renderscript/Float4;->y:F

    #@17
    .line 447
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Landroid/renderscript/Float4;->x:F

    #@1d
    .line 448
    return-object v0
.end method

.method public subI16()S
    .locals 3

    #@0
    .prologue
    .line 122
    const/4 v1, 0x2

    #@1
    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->subalign(I)V

    #@4
    .line 123
    const/4 v0, 0x0

    #@5
    .line 124
    .local v0, "v":S
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@7
    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@9
    add-int/lit8 v2, v2, -0x1

    #@b
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@d
    aget-byte v1, v1, v2

    #@f
    and-int/lit16 v1, v1, 0xff

    #@11
    shl-int/lit8 v1, v1, 0x8

    #@13
    int-to-short v0, v1

    #@14
    .line 125
    .local v0, "v":S
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@16
    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@18
    add-int/lit8 v2, v2, -0x1

    #@1a
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@1c
    aget-byte v1, v1, v2

    #@1e
    and-int/lit16 v1, v1, 0xff

    #@20
    int-to-short v1, v1

    #@21
    or-int/2addr v1, v0

    #@22
    int-to-short v0, v1

    #@23
    .line 126
    return v0
.end method

.method public subI32()I
    .locals 3

    #@0
    .prologue
    .line 139
    const/4 v1, 0x4

    #@1
    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->subalign(I)V

    #@4
    .line 140
    const/4 v0, 0x0

    #@5
    .line 141
    .local v0, "v":I
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@7
    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@9
    add-int/lit8 v2, v2, -0x1

    #@b
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@d
    aget-byte v1, v1, v2

    #@f
    and-int/lit16 v1, v1, 0xff

    #@11
    shl-int/lit8 v0, v1, 0x18

    #@13
    .line 142
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@15
    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@17
    add-int/lit8 v2, v2, -0x1

    #@19
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@1b
    aget-byte v1, v1, v2

    #@1d
    and-int/lit16 v1, v1, 0xff

    #@1f
    shl-int/lit8 v1, v1, 0x10

    #@21
    or-int/2addr v0, v1

    #@22
    .line 143
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@24
    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@26
    add-int/lit8 v2, v2, -0x1

    #@28
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@2a
    aget-byte v1, v1, v2

    #@2c
    and-int/lit16 v1, v1, 0xff

    #@2e
    shl-int/lit8 v1, v1, 0x8

    #@30
    or-int/2addr v0, v1

    #@31
    .line 144
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@33
    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@35
    add-int/lit8 v2, v2, -0x1

    #@37
    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@39
    aget-byte v1, v1, v2

    #@3b
    and-int/lit16 v1, v1, 0xff

    #@3d
    or-int/2addr v0, v1

    #@3e
    .line 145
    return v0
.end method

.method public subI64()J
    .locals 11

    #@0
    .prologue
    const/16 v10, 0x8

    #@2
    const-wide/16 v8, 0xff

    #@4
    .line 162
    invoke-virtual {p0, v10}, Landroid/renderscript/FieldPacker;->subalign(I)V

    #@7
    .line 164
    const/4 v2, 0x0

    #@8
    .line 165
    .local v2, "x":B
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@a
    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@c
    add-int/lit8 v4, v4, -0x1

    #@e
    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@10
    aget-byte v2, v3, v4

    #@12
    .line 166
    .local v2, "x":B
    int-to-long v4, v2

    #@13
    and-long/2addr v4, v8

    #@14
    const/16 v3, 0x38

    #@16
    shl-long/2addr v4, v3

    #@17
    .line 163
    const-wide/16 v6, 0x0

    #@19
    .line 166
    or-long v0, v6, v4

    #@1b
    .line 167
    .local v0, "v":J
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@1d
    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@1f
    add-int/lit8 v4, v4, -0x1

    #@21
    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@23
    aget-byte v2, v3, v4

    #@25
    .line 168
    int-to-long v4, v2

    #@26
    and-long/2addr v4, v8

    #@27
    const/16 v3, 0x30

    #@29
    shl-long/2addr v4, v3

    #@2a
    or-long/2addr v0, v4

    #@2b
    .line 169
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@2d
    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@2f
    add-int/lit8 v4, v4, -0x1

    #@31
    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@33
    aget-byte v2, v3, v4

    #@35
    .line 170
    int-to-long v4, v2

    #@36
    and-long/2addr v4, v8

    #@37
    const/16 v3, 0x28

    #@39
    shl-long/2addr v4, v3

    #@3a
    or-long/2addr v0, v4

    #@3b
    .line 171
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@3d
    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@3f
    add-int/lit8 v4, v4, -0x1

    #@41
    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@43
    aget-byte v2, v3, v4

    #@45
    .line 172
    int-to-long v4, v2

    #@46
    and-long/2addr v4, v8

    #@47
    const/16 v3, 0x20

    #@49
    shl-long/2addr v4, v3

    #@4a
    or-long/2addr v0, v4

    #@4b
    .line 173
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@4d
    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@4f
    add-int/lit8 v4, v4, -0x1

    #@51
    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@53
    aget-byte v2, v3, v4

    #@55
    .line 174
    int-to-long v4, v2

    #@56
    and-long/2addr v4, v8

    #@57
    const/16 v3, 0x18

    #@59
    shl-long/2addr v4, v3

    #@5a
    or-long/2addr v0, v4

    #@5b
    .line 175
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@5d
    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@5f
    add-int/lit8 v4, v4, -0x1

    #@61
    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@63
    aget-byte v2, v3, v4

    #@65
    .line 176
    int-to-long v4, v2

    #@66
    and-long/2addr v4, v8

    #@67
    const/16 v3, 0x10

    #@69
    shl-long/2addr v4, v3

    #@6a
    or-long/2addr v0, v4

    #@6b
    .line 177
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@6d
    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@6f
    add-int/lit8 v4, v4, -0x1

    #@71
    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@73
    aget-byte v2, v3, v4

    #@75
    .line 178
    int-to-long v4, v2

    #@76
    and-long/2addr v4, v8

    #@77
    shl-long/2addr v4, v10

    #@78
    or-long/2addr v0, v4

    #@79
    .line 179
    iget-object v3, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@7b
    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@7d
    add-int/lit8 v4, v4, -0x1

    #@7f
    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@81
    aget-byte v2, v3, v4

    #@83
    .line 180
    int-to-long v4, v2

    #@84
    and-long/2addr v4, v8

    #@85
    or-long/2addr v0, v4

    #@86
    .line 181
    return-wide v0
.end method

.method public subI8()B
    .locals 2

    #@0
    .prologue
    .line 111
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    #@4
    .line 112
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    #@6
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    iput v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@c
    aget-byte v0, v0, v1

    #@e
    return v0
.end method

.method public subInt2()Landroid/renderscript/Int2;
    .locals 2

    #@0
    .prologue
    .line 518
    new-instance v0, Landroid/renderscript/Int2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    #@5
    .line 519
    .local v0, "v":Landroid/renderscript/Int2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Landroid/renderscript/Int2;->y:I

    #@b
    .line 520
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Landroid/renderscript/Int2;->x:I

    #@11
    .line 521
    return-object v0
.end method

.method public subInt3()Landroid/renderscript/Int3;
    .locals 2

    #@0
    .prologue
    .line 524
    new-instance v0, Landroid/renderscript/Int3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    #@5
    .line 525
    .local v0, "v":Landroid/renderscript/Int3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Landroid/renderscript/Int3;->z:I

    #@b
    .line 526
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Landroid/renderscript/Int3;->y:I

    #@11
    .line 527
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Landroid/renderscript/Int3;->x:I

    #@17
    .line 528
    return-object v0
.end method

.method public subInt4()Landroid/renderscript/Int4;
    .locals 2

    #@0
    .prologue
    .line 531
    new-instance v0, Landroid/renderscript/Int4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    #@5
    .line 532
    .local v0, "v":Landroid/renderscript/Int4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Landroid/renderscript/Int4;->w:I

    #@b
    .line 533
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Landroid/renderscript/Int4;->z:I

    #@11
    .line 534
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Landroid/renderscript/Int4;->y:I

    #@17
    .line 535
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Landroid/renderscript/Int4;->x:I

    #@1d
    .line 536
    return-object v0
.end method

.method public subLong2()Landroid/renderscript/Long2;
    .locals 4

    #@0
    .prologue
    .line 540
    new-instance v0, Landroid/renderscript/Long2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    #@5
    .line 541
    .local v0, "v":Landroid/renderscript/Long2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    #@8
    move-result-wide v2

    #@9
    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    #@b
    .line 542
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    #@11
    .line 543
    return-object v0
.end method

.method public subLong3()Landroid/renderscript/Long3;
    .locals 4

    #@0
    .prologue
    .line 546
    new-instance v0, Landroid/renderscript/Long3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    #@5
    .line 547
    .local v0, "v":Landroid/renderscript/Long3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    #@8
    move-result-wide v2

    #@9
    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    #@b
    .line 548
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    #@11
    .line 549
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    #@14
    move-result-wide v2

    #@15
    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    #@17
    .line 550
    return-object v0
.end method

.method public subLong4()Landroid/renderscript/Long4;
    .locals 4

    #@0
    .prologue
    .line 553
    new-instance v0, Landroid/renderscript/Long4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    #@5
    .line 554
    .local v0, "v":Landroid/renderscript/Long4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    #@8
    move-result-wide v2

    #@9
    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    #@b
    .line 555
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    #@11
    .line 556
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    #@14
    move-result-wide v2

    #@15
    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    #@17
    .line 557
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    #@1a
    move-result-wide v2

    #@1b
    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    #@1d
    .line 558
    return-object v0
.end method

.method public subMatrix2f()Landroid/renderscript/Matrix2f;
    .locals 4

    #@0
    .prologue
    .line 598
    new-instance v1, Landroid/renderscript/Matrix2f;

    #@2
    invoke-direct {v1}, Landroid/renderscript/Matrix2f;-><init>()V

    #@5
    .line 599
    .local v1, "v":Landroid/renderscript/Matrix2f;
    iget-object v2, v1, Landroid/renderscript/Matrix2f;->mMat:[F

    #@7
    array-length v2, v2

    #@8
    add-int/lit8 v0, v2, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@c
    .line 600
    iget-object v2, v1, Landroid/renderscript/Matrix2f;->mMat:[F

    #@e
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    #@11
    move-result v3

    #@12
    aput v3, v2, v0

    #@14
    .line 599
    add-int/lit8 v0, v0, -0x1

    #@16
    goto :goto_0

    #@17
    .line 602
    :cond_0
    return-object v1
.end method

.method public subMatrix3f()Landroid/renderscript/Matrix3f;
    .locals 4

    #@0
    .prologue
    .line 584
    new-instance v1, Landroid/renderscript/Matrix3f;

    #@2
    invoke-direct {v1}, Landroid/renderscript/Matrix3f;-><init>()V

    #@5
    .line 585
    .local v1, "v":Landroid/renderscript/Matrix3f;
    iget-object v2, v1, Landroid/renderscript/Matrix3f;->mMat:[F

    #@7
    array-length v2, v2

    #@8
    add-int/lit8 v0, v2, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@c
    .line 586
    iget-object v2, v1, Landroid/renderscript/Matrix3f;->mMat:[F

    #@e
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    #@11
    move-result v3

    #@12
    aput v3, v2, v0

    #@14
    .line 585
    add-int/lit8 v0, v0, -0x1

    #@16
    goto :goto_0

    #@17
    .line 588
    :cond_0
    return-object v1
.end method

.method public subMatrix4f()Landroid/renderscript/Matrix4f;
    .locals 4

    #@0
    .prologue
    .line 570
    new-instance v1, Landroid/renderscript/Matrix4f;

    #@2
    invoke-direct {v1}, Landroid/renderscript/Matrix4f;-><init>()V

    #@5
    .line 571
    .local v1, "v":Landroid/renderscript/Matrix4f;
    iget-object v2, v1, Landroid/renderscript/Matrix4f;->mMat:[F

    #@7
    array-length v2, v2

    #@8
    add-int/lit8 v0, v2, -0x1

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@c
    .line 572
    iget-object v2, v1, Landroid/renderscript/Matrix4f;->mMat:[F

    #@e
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    #@11
    move-result v3

    #@12
    aput v3, v2, v0

    #@14
    .line 571
    add-int/lit8 v0, v0, -0x1

    #@16
    goto :goto_0

    #@17
    .line 574
    :cond_0
    return-object v1
.end method

.method public subShort2()Landroid/renderscript/Short2;
    .locals 2

    #@0
    .prologue
    .line 496
    new-instance v0, Landroid/renderscript/Short2;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    #@5
    .line 497
    .local v0, "v":Landroid/renderscript/Short2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    #@8
    move-result v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    #@b
    .line 498
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    #@e
    move-result v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    #@11
    .line 499
    return-object v0
.end method

.method public subShort3()Landroid/renderscript/Short3;
    .locals 2

    #@0
    .prologue
    .line 502
    new-instance v0, Landroid/renderscript/Short3;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    #@5
    .line 503
    .local v0, "v":Landroid/renderscript/Short3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    #@8
    move-result v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    #@b
    .line 504
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    #@e
    move-result v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    #@11
    .line 505
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    #@14
    move-result v1

    #@15
    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    #@17
    .line 506
    return-object v0
.end method

.method public subShort4()Landroid/renderscript/Short4;
    .locals 2

    #@0
    .prologue
    .line 509
    new-instance v0, Landroid/renderscript/Short4;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    #@5
    .line 510
    .local v0, "v":Landroid/renderscript/Short4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    #@8
    move-result v1

    #@9
    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    #@b
    .line 511
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    #@e
    move-result v1

    #@f
    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    #@11
    .line 512
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    #@14
    move-result v1

    #@15
    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    #@17
    .line 513
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    #@1a
    move-result v1

    #@1b
    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    #@1d
    .line 514
    return-object v0
.end method

.method public subalign(I)V
    .locals 3
    .param p1, "v"    # I

    #@0
    .prologue
    .line 71
    add-int/lit8 v0, p1, -0x1

    #@2
    and-int/2addr v0, p1

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 72
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "argument must be a non-negative non-zero power of 2: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 75
    :cond_0
    :goto_0
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@21
    add-int/lit8 v1, p1, -0x1

    #@23
    and-int/2addr v0, v1

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 76
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@28
    add-int/lit8 v0, v0, -0x1

    #@2a
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@2c
    goto :goto_0

    #@2d
    .line 79
    :cond_1
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@2f
    if-lez v0, :cond_2

    #@31
    .line 80
    :goto_1
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    #@33
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@35
    add-int/lit8 v1, v1, -0x1

    #@37
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_2

    #@3d
    .line 81
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@3f
    add-int/lit8 v0, v0, -0x1

    #@41
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@43
    .line 82
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    #@45
    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    #@47
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->flip(I)V

    #@4a
    goto :goto_1

    #@4b
    .line 70
    :cond_2
    return-void
.end method
