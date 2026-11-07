.class public Landroid/renderscript/FieldPacker;
.super Ljava/lang/Object;
.source "FieldPacker.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mAlignment:Ljava/util/BitSet;

.field private greylist-max-o mData:[B

.field private greylist-max-o mLen:I

.field private greylist-max-o mPos:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "len"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 37
    iput p1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    .line 38
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 39
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    .line 40
    return-void
.end method

.method public constructor whitelist <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    array-length v0, p1

    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 46
    array-length v0, p1

    iput v0, p0, Landroid/renderscript/FieldPacker;->mLen:I

    .line 47
    iput-object p1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 48
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    .line 52
    return-void
.end method

.method private greylist-max-o add(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 635
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 636
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addBoolean(Z)V

    .line 637
    return-void

    .line 640
    :cond_f
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1e

    .line 641
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 642
    return-void

    .line 645
    :cond_1e
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2d

    .line 646
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 647
    return-void

    .line 650
    :cond_2d
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3c

    .line 651
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 652
    return-void

    .line 655
    :cond_3c
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4b

    .line 656
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 657
    return-void

    .line 660
    :cond_4b
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5a

    .line 661
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 662
    return-void

    .line 665
    :cond_5a
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_69

    .line 666
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 667
    return-void

    .line 670
    :cond_69
    instance-of v0, p1, Landroid/renderscript/Byte2;

    if-eqz v0, :cond_74

    .line 671
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Byte2;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte2;)V

    .line 672
    return-void

    .line 675
    :cond_74
    instance-of v0, p1, Landroid/renderscript/Byte3;

    if-eqz v0, :cond_7f

    .line 676
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Byte3;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte3;)V

    .line 677
    return-void

    .line 680
    :cond_7f
    instance-of v0, p1, Landroid/renderscript/Byte4;

    if-eqz v0, :cond_8a

    .line 681
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Byte4;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(Landroid/renderscript/Byte4;)V

    .line 682
    return-void

    .line 685
    :cond_8a
    instance-of v0, p1, Landroid/renderscript/Short2;

    if-eqz v0, :cond_95

    .line 686
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Short2;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short2;)V

    .line 687
    return-void

    .line 690
    :cond_95
    instance-of v0, p1, Landroid/renderscript/Short3;

    if-eqz v0, :cond_a0

    .line 691
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Short3;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short3;)V

    .line 692
    return-void

    .line 695
    :cond_a0
    instance-of v0, p1, Landroid/renderscript/Short4;

    if-eqz v0, :cond_ab

    .line 696
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Short4;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(Landroid/renderscript/Short4;)V

    .line 697
    return-void

    .line 700
    :cond_ab
    instance-of v0, p1, Landroid/renderscript/Int2;

    if-eqz v0, :cond_b6

    .line 701
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Int2;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int2;)V

    .line 702
    return-void

    .line 705
    :cond_b6
    instance-of v0, p1, Landroid/renderscript/Int3;

    if-eqz v0, :cond_c1

    .line 706
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Int3;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int3;)V

    .line 707
    return-void

    .line 710
    :cond_c1
    instance-of v0, p1, Landroid/renderscript/Int4;

    if-eqz v0, :cond_cc

    .line 711
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Int4;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(Landroid/renderscript/Int4;)V

    .line 712
    return-void

    .line 715
    :cond_cc
    instance-of v0, p1, Landroid/renderscript/Long2;

    if-eqz v0, :cond_d7

    .line 716
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Long2;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long2;)V

    .line 717
    return-void

    .line 720
    :cond_d7
    instance-of v0, p1, Landroid/renderscript/Long3;

    if-eqz v0, :cond_e2

    .line 721
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Long3;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long3;)V

    .line 722
    return-void

    .line 725
    :cond_e2
    instance-of v0, p1, Landroid/renderscript/Long4;

    if-eqz v0, :cond_ed

    .line 726
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Long4;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI64(Landroid/renderscript/Long4;)V

    .line 727
    return-void

    .line 730
    :cond_ed
    instance-of v0, p1, Landroid/renderscript/Float2;

    if-eqz v0, :cond_f8

    .line 731
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Float2;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float2;)V

    .line 732
    return-void

    .line 735
    :cond_f8
    instance-of v0, p1, Landroid/renderscript/Float3;

    if-eqz v0, :cond_103

    .line 736
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Float3;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float3;)V

    .line 737
    return-void

    .line 740
    :cond_103
    instance-of v0, p1, Landroid/renderscript/Float4;

    if-eqz v0, :cond_10e

    .line 741
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Float4;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 742
    return-void

    .line 745
    :cond_10e
    instance-of v0, p1, Landroid/renderscript/Double2;

    if-eqz v0, :cond_119

    .line 746
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Double2;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double2;)V

    .line 747
    return-void

    .line 750
    :cond_119
    instance-of v0, p1, Landroid/renderscript/Double3;

    if-eqz v0, :cond_124

    .line 751
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Double3;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double3;)V

    .line 752
    return-void

    .line 755
    :cond_124
    instance-of v0, p1, Landroid/renderscript/Double4;

    if-eqz v0, :cond_12f

    .line 756
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Double4;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF64(Landroid/renderscript/Double4;)V

    .line 757
    return-void

    .line 760
    :cond_12f
    instance-of v0, p1, Landroid/renderscript/Matrix2f;

    if-eqz v0, :cond_13a

    .line 761
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Matrix2f;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix2f;)V

    .line 762
    return-void

    .line 765
    :cond_13a
    instance-of v0, p1, Landroid/renderscript/Matrix3f;

    if-eqz v0, :cond_145

    .line 766
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Matrix3f;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix3f;)V

    .line 767
    return-void

    .line 770
    :cond_145
    instance-of v0, p1, Landroid/renderscript/Matrix4f;

    if-eqz v0, :cond_150

    .line 771
    move-object v0, p1

    check-cast v0, Landroid/renderscript/Matrix4f;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 772
    return-void

    .line 775
    :cond_150
    instance-of v0, p1, Landroid/renderscript/BaseObj;

    if-eqz v0, :cond_15b

    .line 776
    move-object v0, p1

    check-cast v0, Landroid/renderscript/BaseObj;

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 777
    return-void

    .line 779
    :cond_15b
    return-void
.end method

.method private greylist-max-o addSafely(Ljava/lang/Object;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 795
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 797
    .local v0, "oldPos":I
    :cond_2
    const/4 v1, 0x0

    .line 799
    .local v1, "retry":Z
    :try_start_3
    invoke-direct {p0, p1}, Landroid/renderscript/FieldPacker;->add(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_6} :catch_7

    .line 804
    goto :goto_12

    .line 800
    :catch_7
    move-exception v2

    .line 801
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 802
    iget v3, p0, Landroid/renderscript/FieldPacker;->mLen:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Landroid/renderscript/FieldPacker;->resize(I)Z

    .line 803
    const/4 v1, 0x1

    .line 805
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_12
    if-nez v1, :cond_2

    .line 806
    return-void
.end method

.method static greylist-max-o createFromArray([Ljava/lang/Object;)Landroid/renderscript/FieldPacker;
    .registers 5
    .param p0, "args"    # [Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/renderscript/FieldPacker;

    sget v1, Landroid/renderscript/RenderScript;->sPointerSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 56
    .local v0, "fp":Landroid/renderscript/FieldPacker;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 57
    .local v3, "arg":Ljava/lang/Object;
    invoke-direct {v0, v3}, Landroid/renderscript/FieldPacker;->addSafely(Ljava/lang/Object;)V

    .line 56
    .end local v3    # "arg":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 59
    :cond_15
    iget v1, v0, Landroid/renderscript/FieldPacker;->mPos:I

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;->resize(I)Z

    .line 60
    return-object v0
.end method

.method private greylist-max-o resize(I)Z
    .registers 6
    .param p1, "newSize"    # I

    .line 782
    iget v0, p0, Landroid/renderscript/FieldPacker;->mLen:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 783
    return v1

    .line 786
    :cond_6
    new-array v0, p1, [B

    .line 787
    .local v0, "newData":[B
    iget-object v2, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v3, p0, Landroid/renderscript/FieldPacker;->mPos:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    iput-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    .line 789
    iput p1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    .line 790
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public whitelist addBoolean(Z)V
    .registers 3
    .param p1, "v"    # Z

    .line 610
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 611
    return-void
.end method

.method public whitelist addF32(F)V
    .registers 3
    .param p1, "v"    # F

    .line 235
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 236
    return-void
.end method

.method public whitelist addF32(Landroid/renderscript/Float2;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Float2;

    .line 273
    iget v0, p1, Landroid/renderscript/Float2;->x:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 274
    iget v0, p1, Landroid/renderscript/Float2;->y:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 275
    return-void
.end method

.method public whitelist addF32(Landroid/renderscript/Float3;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Float3;

    .line 277
    iget v0, p1, Landroid/renderscript/Float3;->x:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 278
    iget v0, p1, Landroid/renderscript/Float3;->y:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 279
    iget v0, p1, Landroid/renderscript/Float3;->z:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 280
    return-void
.end method

.method public whitelist addF32(Landroid/renderscript/Float4;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Float4;

    .line 282
    iget v0, p1, Landroid/renderscript/Float4;->x:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 283
    iget v0, p1, Landroid/renderscript/Float4;->y:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 284
    iget v0, p1, Landroid/renderscript/Float4;->z:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 285
    iget v0, p1, Landroid/renderscript/Float4;->w:F

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 286
    return-void
.end method

.method public whitelist addF64(D)V
    .registers 5
    .param p1, "v"    # D

    .line 243
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 244
    return-void
.end method

.method public whitelist addF64(Landroid/renderscript/Double2;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Double2;

    .line 289
    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 290
    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 291
    return-void
.end method

.method public whitelist addF64(Landroid/renderscript/Double3;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Double3;

    .line 293
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 294
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 295
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 296
    return-void
.end method

.method public whitelist addF64(Landroid/renderscript/Double4;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Double4;

    .line 298
    iget-wide v0, p1, Landroid/renderscript/Double4;->x:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 299
    iget-wide v0, p1, Landroid/renderscript/Double4;->y:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 300
    iget-wide v0, p1, Landroid/renderscript/Double4;->z:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 301
    iget-wide v0, p1, Landroid/renderscript/Double4;->w:D

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addF64(D)V

    .line 302
    return-void
.end method

.method public whitelist addI16(Landroid/renderscript/Short2;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Short2;

    .line 337
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 338
    iget-short v0, p1, Landroid/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 339
    return-void
.end method

.method public whitelist addI16(Landroid/renderscript/Short3;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Short3;

    .line 341
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 342
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 343
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 344
    return-void
.end method

.method public whitelist addI16(Landroid/renderscript/Short4;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Short4;

    .line 346
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 347
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 348
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 349
    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI16(S)V

    .line 350
    return-void
.end method

.method public whitelist addI16(S)V
    .registers 5
    .param p1, "v"    # S

    .line 120
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 121
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 122
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 123
    return-void
.end method

.method public whitelist addI32(I)V
    .registers 5
    .param p1, "v"    # I

    .line 135
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 136
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 139
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 140
    return-void
.end method

.method public whitelist addI32(Landroid/renderscript/Int2;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Int2;

    .line 369
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 370
    iget v0, p1, Landroid/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 371
    return-void
.end method

.method public whitelist addI32(Landroid/renderscript/Int3;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Int3;

    .line 373
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 374
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 375
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 376
    return-void
.end method

.method public whitelist addI32(Landroid/renderscript/Int4;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Int4;

    .line 378
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 379
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 380
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 381
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 382
    return-void
.end method

.method public whitelist addI64(J)V
    .registers 10
    .param p1, "v"    # J

    .line 154
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 155
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 156
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-long v5, p1, v0

    and-long/2addr v5, v3

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 157
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 158
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 159
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 160
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 161
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 162
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long v5, p1, v2

    and-long v2, v5, v3

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 163
    return-void
.end method

.method public whitelist addI64(Landroid/renderscript/Long2;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long2;

    .line 401
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 402
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 403
    return-void
.end method

.method public whitelist addI64(Landroid/renderscript/Long3;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long3;

    .line 405
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 406
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 407
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 408
    return-void
.end method

.method public whitelist addI64(Landroid/renderscript/Long4;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long4;

    .line 410
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 411
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 412
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 413
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 414
    return-void
.end method

.method public whitelist addI8(B)V
    .registers 5
    .param p1, "v"    # B

    .line 111
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aput-byte p1, v0, v1

    .line 112
    return-void
.end method

.method public whitelist addI8(Landroid/renderscript/Byte2;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Byte2;

    .line 305
    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 306
    iget-byte v0, p1, Landroid/renderscript/Byte2;->y:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 307
    return-void
.end method

.method public whitelist addI8(Landroid/renderscript/Byte3;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Byte3;

    .line 309
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 310
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 311
    iget-byte v0, p1, Landroid/renderscript/Byte3;->z:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 312
    return-void
.end method

.method public whitelist addI8(Landroid/renderscript/Byte4;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Byte4;

    .line 314
    iget-byte v0, p1, Landroid/renderscript/Byte4;->x:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 315
    iget-byte v0, p1, Landroid/renderscript/Byte4;->y:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 316
    iget-byte v0, p1, Landroid/renderscript/Byte4;->z:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 317
    iget-byte v0, p1, Landroid/renderscript/Byte4;->w:B

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI8(B)V

    .line 318
    return-void
.end method

.method public whitelist addMatrix(Landroid/renderscript/Matrix2f;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Matrix2f;

    .line 596
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 597
    iget-object v1, p1, Landroid/renderscript/Matrix2f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 599
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public whitelist addMatrix(Landroid/renderscript/Matrix3f;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Matrix3f;

    .line 582
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 583
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 585
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public whitelist addMatrix(Landroid/renderscript/Matrix4f;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Matrix4f;

    .line 568
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 569
    iget-object v1, p1, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 571
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public whitelist addObj(Landroid/renderscript/BaseObj;)V
    .registers 7
    .param p1, "obj"    # Landroid/renderscript/BaseObj;

    .line 251
    const/16 v0, 0x8

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_25

    .line 252
    sget v3, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/4 v4, 0x0

    if-ne v3, v0, :cond_1c

    .line 253
    invoke-virtual {p1, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 254
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 255
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 256
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    goto :goto_3a

    .line 258
    :cond_1c
    invoke-virtual {p1, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    goto :goto_3a

    .line 261
    :cond_25
    sget v3, Landroid/renderscript/RenderScript;->sPointerSize:I

    if-ne v3, v0, :cond_36

    .line 262
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 263
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 264
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    .line 265
    invoke-virtual {p0, v1, v2}, Landroid/renderscript/FieldPacker;->addI64(J)V

    goto :goto_3a

    .line 267
    :cond_36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 270
    :goto_3a
    return-void
.end method

.method public whitelist addU16(I)V
    .registers 5
    .param p1, "v"    # I

    .line 197
    if-ltz p1, :cond_26

    const v0, 0xffff

    if-gt p1, v0, :cond_26

    .line 201
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 202
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 203
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 204
    return-void

    .line 198
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldPacker.addU16( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rs"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addU16(Landroid/renderscript/Int2;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Int2;

    .line 353
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 354
    iget v0, p1, Landroid/renderscript/Int2;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 355
    return-void
.end method

.method public whitelist addU16(Landroid/renderscript/Int3;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Int3;

    .line 357
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 358
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 359
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 360
    return-void
.end method

.method public whitelist addU16(Landroid/renderscript/Int4;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Int4;

    .line 362
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 363
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 364
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 365
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU16(I)V

    .line 366
    return-void
.end method

.method public whitelist addU32(J)V
    .registers 9
    .param p1, "v"    # J

    .line 207
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_57

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_57

    .line 211
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 212
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 213
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v4, 0x8

    shr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 214
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v4, 0x10

    shr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 215
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v4, 0x18

    shr-long v4, p1, v4

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 216
    return-void

    .line 208
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldPacker.addU32( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rs"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addU32(Landroid/renderscript/Long2;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long2;

    .line 385
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 386
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 387
    return-void
.end method

.method public whitelist addU32(Landroid/renderscript/Long3;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long3;

    .line 389
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 390
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 391
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 392
    return-void
.end method

.method public whitelist addU32(Landroid/renderscript/Long4;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long4;

    .line 394
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 395
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 396
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 397
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU32(J)V

    .line 398
    return-void
.end method

.method public whitelist addU64(J)V
    .registers 10
    .param p1, "v"    # J

    .line 219
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_92

    .line 223
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->align(I)V

    .line 224
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 225
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    shr-long v5, p1, v0

    and-long/2addr v5, v3

    long-to-int v0, v5

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 226
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x10

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 227
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x18

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 228
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x20

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 229
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x28

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 230
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x30

    shr-long v5, p1, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 231
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/16 v2, 0x38

    shr-long v5, p1, v2

    and-long v2, v5, v3

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 232
    return-void

    .line 220
    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldPacker.addU64( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rs"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addU64(Landroid/renderscript/Long2;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long2;

    .line 417
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 418
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 419
    return-void
.end method

.method public whitelist addU64(Landroid/renderscript/Long3;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long3;

    .line 421
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 422
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 423
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 424
    return-void
.end method

.method public whitelist addU64(Landroid/renderscript/Long4;)V
    .registers 4
    .param p1, "v"    # Landroid/renderscript/Long4;

    .line 426
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 427
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 428
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 429
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    invoke-virtual {p0, v0, v1}, Landroid/renderscript/FieldPacker;->addU64(J)V

    .line 430
    return-void
.end method

.method public whitelist addU8(Landroid/renderscript/Short2;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Short2;

    .line 321
    iget-short v0, p1, Landroid/renderscript/Short2;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 322
    iget-short v0, p1, Landroid/renderscript/Short2;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 323
    return-void
.end method

.method public whitelist addU8(Landroid/renderscript/Short3;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Short3;

    .line 325
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 326
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 327
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 328
    return-void
.end method

.method public whitelist addU8(Landroid/renderscript/Short4;)V
    .registers 3
    .param p1, "v"    # Landroid/renderscript/Short4;

    .line 330
    iget-short v0, p1, Landroid/renderscript/Short4;->x:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 331
    iget-short v0, p1, Landroid/renderscript/Short4;->y:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 332
    iget-short v0, p1, Landroid/renderscript/Short4;->z:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 333
    iget-short v0, p1, Landroid/renderscript/Short4;->w:S

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->addU8(S)V

    .line 334
    return-void
.end method

.method public whitelist addU8(S)V
    .registers 5
    .param p1, "v"    # S

    .line 189
    if-ltz p1, :cond_12

    const/16 v0, 0xff

    if-gt p1, v0, :cond_12

    .line 193
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 194
    return-void

    .line 190
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldPacker.addU8( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rs"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Saving value out of range for type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist align(I)V
    .registers 5
    .param p1, "v"    # I

    .line 64
    if-lez p1, :cond_22

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_22

    .line 68
    :goto_7
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_21

    .line 69
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->flip(I)V

    .line 70
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_7

    .line 72
    :cond_21
    return-void

    .line 65
    :cond_22
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getData()[B
    .registers 2

    .line 622
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mData:[B

    return-object v0
.end method

.method public greylist-max-o getPos()I
    .registers 2

    .line 631
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    return v0
.end method

.method public whitelist reset()V
    .registers 2

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 94
    return-void
.end method

.method public whitelist reset(I)V
    .registers 5
    .param p1, "i"    # I

    .line 96
    if-ltz p1, :cond_9

    iget v0, p0, Landroid/renderscript/FieldPacker;->mLen:I

    if-gt p1, v0, :cond_9

    .line 99
    iput p1, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 100
    return-void

    .line 97
    :cond_9
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "out of range argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist skip(I)V
    .registers 6
    .param p1, "i"    # I

    .line 103
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/2addr v0, p1

    .line 104
    .local v0, "res":I
    if-ltz v0, :cond_c

    iget v1, p0, Landroid/renderscript/FieldPacker;->mLen:I

    if-gt v0, v1, :cond_c

    .line 107
    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 108
    return-void

    .line 105
    :cond_c
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "out of range argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist subBoolean()Z
    .registers 3

    .line 614
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v0

    .line 615
    .local v0, "v":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 616
    return v1

    .line 618
    :cond_8
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist subByte2()Landroid/renderscript/Byte2;
    .registers 3

    .line 478
    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    .line 479
    .local v0, "v":Landroid/renderscript/Byte2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->y:B

    .line 480
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    .line 481
    return-object v0
.end method

.method public whitelist subByte3()Landroid/renderscript/Byte3;
    .registers 3

    .line 484
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 485
    .local v0, "v":Landroid/renderscript/Byte3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 486
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 487
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 488
    return-object v0
.end method

.method public whitelist subByte4()Landroid/renderscript/Byte4;
    .registers 3

    .line 491
    new-instance v0, Landroid/renderscript/Byte4;

    invoke-direct {v0}, Landroid/renderscript/Byte4;-><init>()V

    .line 492
    .local v0, "v":Landroid/renderscript/Byte4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->w:B

    .line 493
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->z:B

    .line 494
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->y:B

    .line 495
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI8()B

    move-result v1

    iput-byte v1, v0, Landroid/renderscript/Byte4;->x:B

    .line 496
    return-object v0
.end method

.method public whitelist subDouble2()Landroid/renderscript/Double2;
    .registers 4

    .line 456
    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    .line 457
    .local v0, "v":Landroid/renderscript/Double2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    .line 458
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    .line 459
    return-object v0
.end method

.method public whitelist subDouble3()Landroid/renderscript/Double3;
    .registers 4

    .line 462
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 463
    .local v0, "v":Landroid/renderscript/Double3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double3;->z:D

    .line 464
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double3;->y:D

    .line 465
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double3;->x:D

    .line 466
    return-object v0
.end method

.method public whitelist subDouble4()Landroid/renderscript/Double4;
    .registers 4

    .line 469
    new-instance v0, Landroid/renderscript/Double4;

    invoke-direct {v0}, Landroid/renderscript/Double4;-><init>()V

    .line 470
    .local v0, "v":Landroid/renderscript/Double4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double4;->w:D

    .line 471
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double4;->z:D

    .line 472
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double4;->y:D

    .line 473
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF64()D

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Double4;->x:D

    .line 474
    return-object v0
.end method

.method public whitelist subF32()F
    .registers 2

    .line 239
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public whitelist subF64()D
    .registers 3

    .line 247
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist subFloat2()Landroid/renderscript/Float2;
    .registers 3

    .line 434
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    .line 435
    .local v0, "v":Landroid/renderscript/Float2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float2;->y:F

    .line 436
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float2;->x:F

    .line 437
    return-object v0
.end method

.method public whitelist subFloat3()Landroid/renderscript/Float3;
    .registers 3

    .line 440
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    .line 441
    .local v0, "v":Landroid/renderscript/Float3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float3;->z:F

    .line 442
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    .line 443
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    .line 444
    return-object v0
.end method

.method public whitelist subFloat4()Landroid/renderscript/Float4;
    .registers 3

    .line 447
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    .line 448
    .local v0, "v":Landroid/renderscript/Float4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 449
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 450
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 451
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v1

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 452
    return-object v0
.end method

.method public whitelist subI16()S
    .registers 4

    .line 126
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "v":S
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-short v0, v1

    .line 129
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 130
    return v0
.end method

.method public whitelist subI32()I
    .registers 4

    .line 143
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "v":I
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    .line 146
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 147
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 148
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 149
    return v0
.end method

.method public whitelist subI64()J
    .registers 10

    .line 166
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 167
    const-wide/16 v1, 0x0

    .line 168
    .local v1, "v":J
    const/4 v3, 0x0

    .line 169
    .local v3, "x":B
    iget-object v4, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v3, v4, v5

    .line 170
    int-to-long v4, v3

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v8, 0x38

    shl-long/2addr v4, v8

    or-long/2addr v1, v4

    .line 171
    iget-object v4, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v3, v4, v5

    .line 172
    int-to-long v4, v3

    and-long/2addr v4, v6

    const/16 v8, 0x30

    shl-long/2addr v4, v8

    or-long/2addr v1, v4

    .line 173
    iget-object v4, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v3, v4, v5

    .line 174
    int-to-long v4, v3

    and-long/2addr v4, v6

    const/16 v8, 0x28

    shl-long/2addr v4, v8

    or-long/2addr v1, v4

    .line 175
    iget-object v4, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v3, v4, v5

    .line 176
    int-to-long v4, v3

    and-long/2addr v4, v6

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    or-long/2addr v1, v4

    .line 177
    iget-object v4, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v3, v4, v5

    .line 178
    int-to-long v4, v3

    and-long/2addr v4, v6

    const/16 v8, 0x18

    shl-long/2addr v4, v8

    or-long/2addr v1, v4

    .line 179
    iget-object v4, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v3, v4, v5

    .line 180
    int-to-long v4, v3

    and-long/2addr v4, v6

    const/16 v8, 0x10

    shl-long/2addr v4, v8

    or-long/2addr v1, v4

    .line 181
    iget-object v4, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v3, v4, v5

    .line 182
    int-to-long v4, v3

    and-long/2addr v4, v6

    shl-long/2addr v4, v0

    or-long v0, v1, v4

    .line 183
    .end local v1    # "v":J
    .local v0, "v":J
    iget-object v2, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v2, v2, v4

    .line 184
    .end local v3    # "x":B
    .local v2, "x":B
    int-to-long v3, v2

    and-long/2addr v3, v6

    or-long/2addr v0, v3

    .line 185
    return-wide v0
.end method

.method public whitelist subI8()B
    .registers 4

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/renderscript/FieldPacker;->subalign(I)V

    .line 116
    iget-object v1, p0, Landroid/renderscript/FieldPacker;->mData:[B

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    aget-byte v0, v1, v2

    return v0
.end method

.method public whitelist subInt2()Landroid/renderscript/Int2;
    .registers 3

    .line 522
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 523
    .local v0, "v":Landroid/renderscript/Int2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 524
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 525
    return-object v0
.end method

.method public whitelist subInt3()Landroid/renderscript/Int3;
    .registers 3

    .line 528
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 529
    .local v0, "v":Landroid/renderscript/Int3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 530
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 531
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 532
    return-object v0
.end method

.method public whitelist subInt4()Landroid/renderscript/Int4;
    .registers 3

    .line 535
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 536
    .local v0, "v":Landroid/renderscript/Int4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 537
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 538
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 539
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI32()I

    move-result v1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 540
    return-object v0
.end method

.method public whitelist subLong2()Landroid/renderscript/Long2;
    .registers 4

    .line 544
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 545
    .local v0, "v":Landroid/renderscript/Long2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long2;->y:J

    .line 546
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long2;->x:J

    .line 547
    return-object v0
.end method

.method public whitelist subLong3()Landroid/renderscript/Long3;
    .registers 4

    .line 550
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 551
    .local v0, "v":Landroid/renderscript/Long3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long3;->z:J

    .line 552
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long3;->y:J

    .line 553
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long3;->x:J

    .line 554
    return-object v0
.end method

.method public whitelist subLong4()Landroid/renderscript/Long4;
    .registers 4

    .line 557
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 558
    .local v0, "v":Landroid/renderscript/Long4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long4;->w:J

    .line 559
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long4;->z:J

    .line 560
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long4;->y:J

    .line 561
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI64()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/renderscript/Long4;->x:J

    .line 562
    return-object v0
.end method

.method public whitelist subMatrix2f()Landroid/renderscript/Matrix2f;
    .registers 5

    .line 602
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    .line 603
    .local v0, "v":Landroid/renderscript/Matrix2f;
    iget-object v1, v0, Landroid/renderscript/Matrix2f;->mMat:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_17

    .line 604
    iget-object v2, v0, Landroid/renderscript/Matrix2f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v1

    .line 603
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 606
    .end local v1    # "i":I
    :cond_17
    return-object v0
.end method

.method public whitelist subMatrix3f()Landroid/renderscript/Matrix3f;
    .registers 5

    .line 588
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 589
    .local v0, "v":Landroid/renderscript/Matrix3f;
    iget-object v1, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_17

    .line 590
    iget-object v2, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v1

    .line 589
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 592
    .end local v1    # "i":I
    :cond_17
    return-object v0
.end method

.method public whitelist subMatrix4f()Landroid/renderscript/Matrix4f;
    .registers 5

    .line 574
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 575
    .local v0, "v":Landroid/renderscript/Matrix4f;
    iget-object v1, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_17

    .line 576
    iget-object v2, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subF32()F

    move-result v3

    aput v3, v2, v1

    .line 575
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 578
    .end local v1    # "i":I
    :cond_17
    return-object v0
.end method

.method public whitelist subShort2()Landroid/renderscript/Short2;
    .registers 3

    .line 500
    new-instance v0, Landroid/renderscript/Short2;

    invoke-direct {v0}, Landroid/renderscript/Short2;-><init>()V

    .line 501
    .local v0, "v":Landroid/renderscript/Short2;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short2;->y:S

    .line 502
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short2;->x:S

    .line 503
    return-object v0
.end method

.method public whitelist subShort3()Landroid/renderscript/Short3;
    .registers 3

    .line 506
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 507
    .local v0, "v":Landroid/renderscript/Short3;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 508
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 509
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 510
    return-object v0
.end method

.method public whitelist subShort4()Landroid/renderscript/Short4;
    .registers 3

    .line 513
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    .line 514
    .local v0, "v":Landroid/renderscript/Short4;
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->w:S

    .line 515
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->z:S

    .line 516
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->y:S

    .line 517
    invoke-virtual {p0}, Landroid/renderscript/FieldPacker;->subI16()S

    move-result v1

    iput-short v1, v0, Landroid/renderscript/Short4;->x:S

    .line 518
    return-object v0
.end method

.method public whitelist subalign(I)V
    .registers 5
    .param p1, "v"    # I

    .line 75
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_30

    .line 79
    :goto_5
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 80
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    goto :goto_5

    .line 83
    :cond_13
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    if-lez v0, :cond_2f

    .line 84
    :goto_17
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-ne v0, v1, :cond_2f

    .line 85
    iget v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/FieldPacker;->mPos:I

    .line 86
    iget-object v0, p0, Landroid/renderscript/FieldPacker;->mAlignment:Ljava/util/BitSet;

    iget v2, p0, Landroid/renderscript/FieldPacker;->mPos:I

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->flip(I)V

    goto :goto_17

    .line 90
    :cond_2f
    return-void

    .line 76
    :cond_30
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "argument must be a non-negative non-zero power of 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
