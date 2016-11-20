.class Landroid/graphics/drawable/VectorDrawable$VFullPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VFullPath"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VFullPath$1;
    }
.end annotation


# static fields
.field private static final FILL_ALPHA_INDEX:I = 0x4

.field private static final FILL_COLOR_INDEX:I = 0x3

.field private static final FILL_TYPE_INDEX:I = 0xb

.field private static final NATIVE_ALLOCATION_SIZE:I = 0x108

.field private static final STROKE_ALPHA_INDEX:I = 0x2

.field private static final STROKE_COLOR_INDEX:I = 0x1

.field private static final STROKE_LINE_CAP_INDEX:I = 0x8

.field private static final STROKE_LINE_JOIN_INDEX:I = 0x9

.field private static final STROKE_MITER_LIMIT_INDEX:I = 0xa

.field private static final STROKE_WIDTH_INDEX:I = 0x0

.field private static final TOTAL_PROPERTY_COUNT:I = 0xc

.field private static final TRIM_PATH_END_INDEX:I = 0x6

.field private static final TRIM_PATH_OFFSET_INDEX:I = 0x7

.field private static final TRIM_PATH_START_INDEX:I = 0x5

.field private static final sPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFillColors:Landroid/content/res/ComplexColor;

.field private final mNativePtr:J

.field private mPropertyData:[B

.field mStrokeColors:Landroid/content/res/ComplexColor;

.field private mThemeAttrs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1419
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;

    #@2
    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;-><init>()V

    #@5
    .line 1418
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    #@7
    .line 1401
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1442
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    #@4
    .line 1438
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@6
    .line 1439
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@8
    .line 1443
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-wrap21()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@e
    .line 1442
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .locals 2
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1447
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    #@4
    .line 1438
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@6
    .line 1439
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@8
    .line 1448
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@a
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap22(J)J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@10
    .line 1449
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    #@12
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    #@14
    .line 1450
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@16
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@18
    .line 1451
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@1a
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@1c
    .line 1446
    return-void
.end method

.method private canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z
    .locals 1
    .param p1, "complexColor"    # Landroid/content/res/ComplexColor;

    #@0
    .prologue
    .line 1674
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 28
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 1512
    const/16 v16, 0x30

    #@2
    .line 1513
    .local v16, "byteCount":I
    move-object/from16 v0, p0

    #@4
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1516
    move/from16 v0, v16

    #@a
    new-array v2, v0, [B

    #@c
    move-object/from16 v0, p0

    #@e
    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    #@10
    .line 1521
    :cond_0
    move-object/from16 v0, p0

    #@12
    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@14
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    #@18
    move-object/from16 v25, v0

    #@1a
    move-object/from16 v0, v25

    #@1c
    move/from16 v1, v16

    #@1e
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap0(J[BI)Z

    #@21
    move-result v24

    #@22
    .line 1522
    .local v24, "success":Z
    if-nez v24, :cond_1

    #@24
    .line 1523
    new-instance v2, Ljava/lang/RuntimeException;

    #@26
    const-string/jumbo v3, "Error: inconsistent property count"

    #@29
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 1526
    :cond_1
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    #@31
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@34
    move-result-object v21

    #@35
    .line 1527
    .local v21, "properties":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@38
    move-result-object v2

    #@39
    move-object/from16 v0, v21

    #@3b
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@3e
    .line 1528
    const/4 v2, 0x0

    #@3f
    move-object/from16 v0, v21

    #@41
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    #@44
    move-result v4

    #@45
    .line 1529
    .local v4, "strokeWidth":F
    const/4 v2, 0x4

    #@46
    move-object/from16 v0, v21

    #@48
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@4b
    move-result v5

    #@4c
    .line 1530
    .local v5, "strokeColor":I
    const/16 v2, 0x8

    #@4e
    move-object/from16 v0, v21

    #@50
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    #@53
    move-result v6

    #@54
    .line 1531
    .local v6, "strokeAlpha":F
    const/16 v2, 0xc

    #@56
    move-object/from16 v0, v21

    #@58
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@5b
    move-result v7

    #@5c
    .line 1532
    .local v7, "fillColor":I
    const/16 v2, 0x10

    #@5e
    move-object/from16 v0, v21

    #@60
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    #@63
    move-result v8

    #@64
    .line 1533
    .local v8, "fillAlpha":F
    const/16 v2, 0x14

    #@66
    move-object/from16 v0, v21

    #@68
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    #@6b
    move-result v9

    #@6c
    .line 1534
    .local v9, "trimPathStart":F
    const/16 v2, 0x18

    #@6e
    move-object/from16 v0, v21

    #@70
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    #@73
    move-result v10

    #@74
    .line 1535
    .local v10, "trimPathEnd":F
    const/16 v2, 0x1c

    #@76
    move-object/from16 v0, v21

    #@78
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    #@7b
    move-result v11

    #@7c
    .line 1536
    .local v11, "trimPathOffset":F
    const/16 v2, 0x20

    #@7e
    move-object/from16 v0, v21

    #@80
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@83
    move-result v13

    #@84
    .line 1537
    .local v13, "strokeLineCap":I
    const/16 v2, 0x24

    #@86
    move-object/from16 v0, v21

    #@88
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@8b
    move-result v14

    #@8c
    .line 1538
    .local v14, "strokeLineJoin":I
    const/16 v2, 0x28

    #@8e
    move-object/from16 v0, v21

    #@90
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    #@93
    move-result v12

    #@94
    .line 1539
    .local v12, "strokeMiterLimit":F
    const/16 v2, 0x2c

    #@96
    move-object/from16 v0, v21

    #@98
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@9b
    move-result v15

    #@9c
    .line 1540
    .local v15, "fillType":I
    const/16 v18, 0x0

    #@9e
    .line 1541
    .local v18, "fillGradient":Landroid/graphics/Shader;
    const/16 v23, 0x0

    #@a0
    .line 1543
    .local v23, "strokeGradient":Landroid/graphics/Shader;
    move-object/from16 v0, p0

    #@a2
    iget v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    #@a4
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@a7
    move-result v3

    #@a8
    or-int/2addr v2, v3

    #@a9
    move-object/from16 v0, p0

    #@ab
    iput v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    #@ad
    .line 1546
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@b0
    move-result-object v2

    #@b1
    move-object/from16 v0, p0

    #@b3
    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    #@b5
    .line 1548
    const/4 v2, 0x0

    #@b6
    move-object/from16 v0, p1

    #@b8
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@bb
    move-result-object v19

    #@bc
    .line 1549
    .local v19, "pathName":Ljava/lang/String;
    if-eqz v19, :cond_2

    #@be
    .line 1550
    move-object/from16 v0, v19

    #@c0
    move-object/from16 v1, p0

    #@c2
    iput-object v0, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    #@c4
    .line 1551
    move-object/from16 v0, p0

    #@c6
    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    #@cc
    move-object/from16 v25, v0

    #@ce
    move-object/from16 v0, v25

    #@d0
    invoke-static {v2, v3, v0}, Landroid/graphics/drawable/VectorDrawable;->-wrap30(JLjava/lang/String;)V

    #@d3
    .line 1554
    :cond_2
    const/4 v2, 0x2

    #@d4
    move-object/from16 v0, p1

    #@d6
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@d9
    move-result-object v20

    #@da
    .line 1555
    .local v20, "pathString":Ljava/lang/String;
    if-eqz v20, :cond_3

    #@dc
    .line 1556
    new-instance v2, Landroid/util/PathParser$PathData;

    #@de
    move-object/from16 v0, v20

    #@e0
    invoke-direct {v2, v0}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    #@e3
    move-object/from16 v0, p0

    #@e5
    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathData:Landroid/util/PathParser$PathData;

    #@e7
    .line 1557
    move-object/from16 v0, p0

    #@e9
    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@eb
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    #@ee
    move-result v25

    #@ef
    move-object/from16 v0, v20

    #@f1
    move/from16 v1, v25

    #@f3
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap32(JLjava/lang/String;I)V

    #@f6
    .line 1561
    :cond_3
    const/4 v2, 0x1

    #@f7
    .line 1560
    move-object/from16 v0, p1

    #@f9
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    #@fc
    move-result-object v17

    #@fd
    .line 1562
    .local v17, "fillColors":Landroid/content/res/ComplexColor;
    if-eqz v17, :cond_4

    #@ff
    .line 1565
    move-object/from16 v0, v17

    #@101
    instance-of v2, v0, Landroid/content/res/GradientColor;

    #@103
    if-eqz v2, :cond_6

    #@105
    .line 1566
    move-object/from16 v0, v17

    #@107
    move-object/from16 v1, p0

    #@109
    iput-object v0, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@10b
    move-object/from16 v2, v17

    #@10d
    .line 1567
    check-cast v2, Landroid/content/res/GradientColor;

    #@10f
    invoke-virtual {v2}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    #@112
    move-result-object v18

    #@113
    .line 1573
    .end local v18    # "fillGradient":Landroid/graphics/Shader;
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    #@116
    move-result v7

    #@117
    .line 1577
    :cond_4
    const/4 v2, 0x3

    #@118
    .line 1576
    move-object/from16 v0, p1

    #@11a
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    #@11d
    move-result-object v22

    #@11e
    .line 1578
    .local v22, "strokeColors":Landroid/content/res/ComplexColor;
    if-eqz v22, :cond_5

    #@120
    .line 1581
    move-object/from16 v0, v22

    #@122
    instance-of v2, v0, Landroid/content/res/GradientColor;

    #@124
    if-eqz v2, :cond_8

    #@126
    .line 1582
    move-object/from16 v0, v22

    #@128
    move-object/from16 v1, p0

    #@12a
    iput-object v0, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@12c
    move-object/from16 v2, v22

    #@12e
    .line 1583
    check-cast v2, Landroid/content/res/GradientColor;

    #@130
    invoke-virtual {v2}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    #@133
    move-result-object v23

    #@134
    .line 1589
    .end local v23    # "strokeGradient":Landroid/graphics/Shader;
    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    #@137
    move-result v5

    #@138
    .line 1592
    :cond_5
    move-object/from16 v0, p0

    #@13a
    iget-wide v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@13c
    move-wide/from16 v26, v0

    #@13e
    .line 1593
    if-eqz v18, :cond_a

    #@140
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Shader;->getNativeInstance()J

    #@143
    move-result-wide v2

    #@144
    .line 1592
    :goto_2
    move-wide/from16 v0, v26

    #@146
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap47(JJ)V

    #@149
    .line 1594
    move-object/from16 v0, p0

    #@14b
    iget-wide v0, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@14d
    move-wide/from16 v26, v0

    #@14f
    .line 1595
    if-eqz v23, :cond_b

    #@151
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Shader;->getNativeInstance()J

    #@154
    move-result-wide v2

    #@155
    .line 1594
    :goto_3
    move-wide/from16 v0, v26

    #@157
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap49(JJ)V

    #@15a
    .line 1597
    const/16 v2, 0xc

    #@15c
    move-object/from16 v0, p1

    #@15e
    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@161
    move-result v8

    #@162
    .line 1600
    const/16 v2, 0x8

    #@164
    .line 1599
    move-object/from16 v0, p1

    #@166
    invoke-virtual {v0, v2, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    #@169
    move-result v13

    #@16a
    .line 1602
    const/16 v2, 0x9

    #@16c
    .line 1601
    move-object/from16 v0, p1

    #@16e
    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    #@171
    move-result v14

    #@172
    .line 1604
    const/16 v2, 0xa

    #@174
    .line 1603
    move-object/from16 v0, p1

    #@176
    invoke-virtual {v0, v2, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@179
    move-result v12

    #@17a
    .line 1605
    const/16 v2, 0xb

    #@17c
    move-object/from16 v0, p1

    #@17e
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@181
    move-result v6

    #@182
    .line 1607
    const/4 v2, 0x4

    #@183
    move-object/from16 v0, p1

    #@185
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@188
    move-result v4

    #@189
    .line 1609
    const/4 v2, 0x6

    #@18a
    move-object/from16 v0, p1

    #@18c
    invoke-virtual {v0, v2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@18f
    move-result v10

    #@190
    .line 1612
    const/4 v2, 0x7

    #@191
    .line 1611
    move-object/from16 v0, p1

    #@193
    invoke-virtual {v0, v2, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@196
    move-result v11

    #@197
    .line 1614
    const/4 v2, 0x5

    #@198
    .line 1613
    move-object/from16 v0, p1

    #@19a
    invoke-virtual {v0, v2, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@19d
    move-result v9

    #@19e
    .line 1615
    const/16 v2, 0xd

    #@1a0
    move-object/from16 v0, p1

    #@1a2
    invoke-virtual {v0, v2, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1a5
    move-result v15

    #@1a6
    .line 1617
    move-object/from16 v0, p0

    #@1a8
    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@1aa
    invoke-static/range {v2 .. v15}, Landroid/graphics/drawable/VectorDrawable;->-wrap48(JFIFIFFFFFIII)V

    #@1ad
    .line 1511
    return-void

    #@1ae
    .line 1568
    .end local v22    # "strokeColors":Landroid/content/res/ComplexColor;
    .restart local v18    # "fillGradient":Landroid/graphics/Shader;
    .restart local v23    # "strokeGradient":Landroid/graphics/Shader;
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/ComplexColor;->isStateful()Z

    #@1b1
    move-result v2

    #@1b2
    if-eqz v2, :cond_7

    #@1b4
    .line 1569
    move-object/from16 v0, v17

    #@1b6
    move-object/from16 v1, p0

    #@1b8
    iput-object v0, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@1ba
    goto/16 :goto_0

    #@1bc
    .line 1571
    :cond_7
    const/4 v2, 0x0

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@1c1
    goto/16 :goto_0

    #@1c3
    .line 1584
    .end local v18    # "fillGradient":Landroid/graphics/Shader;
    .restart local v22    # "strokeColors":Landroid/content/res/ComplexColor;
    :cond_8
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/ComplexColor;->isStateful()Z

    #@1c6
    move-result v2

    #@1c7
    if-eqz v2, :cond_9

    #@1c9
    .line 1585
    move-object/from16 v0, v22

    #@1cb
    move-object/from16 v1, p0

    #@1cd
    iput-object v0, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@1cf
    goto/16 :goto_1

    #@1d1
    .line 1587
    :cond_9
    const/4 v2, 0x0

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@1d6
    goto/16 :goto_1

    #@1d8
    .line 1593
    .end local v23    # "strokeGradient":Landroid/graphics/Shader;
    :cond_a
    const-wide/16 v2, 0x0

    #@1da
    goto/16 :goto_2

    #@1dc
    .line 1595
    :cond_b
    const-wide/16 v2, 0x0

    #@1de
    goto/16 :goto_3
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 8
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1640
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 1641
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    #@6
    sget-object v4, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    #@8
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 1642
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@f
    .line 1643
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@12
    .line 1649
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@14
    invoke-direct {p0, v3}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    #@17
    move-result v1

    #@18
    .line 1650
    .local v1, "fillCanApplyTheme":Z
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@1a
    invoke-direct {p0, v3}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    #@1d
    move-result v2

    #@1e
    .line 1652
    .local v2, "strokeCanApplyTheme":Z
    if-eqz v1, :cond_1

    #@20
    .line 1653
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@22
    invoke-virtual {v3, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    #@25
    move-result-object v3

    #@26
    iput-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@28
    .line 1654
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@2a
    instance-of v3, v3, Landroid/content/res/GradientColor;

    #@2c
    if-eqz v3, :cond_3

    #@2e
    .line 1655
    iget-wide v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@30
    .line 1656
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@32
    check-cast v3, Landroid/content/res/GradientColor;

    #@34
    invoke-virtual {v3}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Landroid/graphics/Shader;->getNativeInstance()J

    #@3b
    move-result-wide v6

    #@3c
    .line 1655
    invoke-static {v4, v5, v6, v7}, Landroid/graphics/drawable/VectorDrawable;->-wrap47(JJ)V

    #@3f
    .line 1662
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    #@41
    .line 1663
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@43
    invoke-virtual {v3, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    #@46
    move-result-object v3

    #@47
    iput-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@49
    .line 1664
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@4b
    instance-of v3, v3, Landroid/content/res/GradientColor;

    #@4d
    if-eqz v3, :cond_4

    #@4f
    .line 1665
    iget-wide v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@51
    .line 1666
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@53
    check-cast v3, Landroid/content/res/GradientColor;

    #@55
    invoke-virtual {v3}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Landroid/graphics/Shader;->getNativeInstance()J

    #@5c
    move-result-wide v6

    #@5d
    .line 1665
    invoke-static {v4, v5, v6, v7}, Landroid/graphics/drawable/VectorDrawable;->-wrap49(JJ)V

    #@60
    .line 1638
    :cond_2
    :goto_1
    return-void

    #@61
    .line 1657
    :cond_3
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@63
    instance-of v3, v3, Landroid/content/res/ColorStateList;

    #@65
    if-eqz v3, :cond_1

    #@67
    .line 1658
    iget-wide v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@69
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@6b
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    #@6e
    move-result v3

    #@6f
    invoke-static {v4, v5, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap29(JI)V

    #@72
    goto :goto_0

    #@73
    .line 1667
    :cond_4
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@75
    instance-of v3, v3, Landroid/content/res/ColorStateList;

    #@77
    if-eqz v3, :cond_2

    #@79
    .line 1668
    iget-wide v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@7b
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@7d
    invoke-virtual {v3}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    #@80
    move-result v3

    #@81
    invoke-static {v4, v5, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap40(JI)V

    #@84
    goto :goto_1
.end method

.method public canApplyTheme()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1624
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 1625
    return v3

    #@6
    .line 1628
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@8
    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    #@b
    move-result v0

    #@c
    .line 1629
    .local v0, "fillCanApplyTheme":Z
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@e
    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    #@11
    move-result v1

    #@12
    .line 1630
    .local v1, "strokeCanApplyTheme":Z
    if-nez v0, :cond_1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 1631
    :cond_1
    return v3

    #@17
    .line 1633
    :cond_2
    const/4 v2, 0x0

    #@18
    return v2
.end method

.method getFillAlpha()F
    .locals 2

    #@0
    .prologue
    .line 1730
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap3(J)F

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method getFillColor()I
    .locals 2

    #@0
    .prologue
    .line 1717
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap17(J)I

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public getNativePtr()J
    .locals 2

    #@0
    .prologue
    .line 1500
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@2
    return-wide v0
.end method

.method getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 1495
    const/16 v0, 0x108

    #@2
    return v0
.end method

.method getPropertyIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1455
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1456
    const/4 v0, -0x1

    #@9
    return v0

    #@a
    .line 1458
    :cond_0
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/Integer;

    #@12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method getStrokeAlpha()F
    .locals 2

    #@0
    .prologue
    .line 1705
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap10(J)F

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method getStrokeColor()I
    .locals 2

    #@0
    .prologue
    .line 1680
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap18(J)I

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method getStrokeWidth()F
    .locals 2

    #@0
    .prologue
    .line 1693
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap11(J)F

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method getTrimPathEnd()F
    .locals 2

    #@0
    .prologue
    .line 1754
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap14(J)F

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method getTrimPathOffset()F
    .locals 2

    #@0
    .prologue
    .line 1766
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap15(J)F

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method getTrimPathStart()F
    .locals 2

    #@0
    .prologue
    .line 1742
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap16(J)F

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1506
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    #@2
    .line 1505
    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 1507
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@9
    .line 1508
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@c
    .line 1504
    return-void
.end method

.method public isStateful()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1490
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public onStateChange([I)Z
    .locals 10
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 1464
    const/4 v0, 0x0

    #@3
    .line 1466
    .local v0, "changed":Z
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@5
    if-eqz v5, :cond_0

    #@7
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@9
    instance-of v5, v5, Landroid/content/res/ColorStateList;

    #@b
    if-eqz v5, :cond_0

    #@d
    .line 1467
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeColor()I

    #@10
    move-result v4

    #@11
    .line 1469
    .local v4, "oldStrokeColor":I
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@13
    check-cast v5, Landroid/content/res/ColorStateList;

    #@15
    invoke-virtual {v5, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@18
    move-result v2

    #@19
    .line 1470
    .local v2, "newStrokeColor":I
    if-eq v4, v2, :cond_2

    #@1b
    move v0, v6

    #@1c
    .line 1471
    .local v0, "changed":Z
    :goto_0
    if-eq v4, v2, :cond_0

    #@1e
    .line 1472
    iget-wide v8, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@20
    invoke-static {v8, v9, v2}, Landroid/graphics/drawable/VectorDrawable;->-wrap40(JI)V

    #@23
    .line 1476
    .end local v0    # "changed":Z
    .end local v2    # "newStrokeColor":I
    .end local v4    # "oldStrokeColor":I
    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@25
    if-eqz v5, :cond_1

    #@27
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@29
    instance-of v5, v5, Landroid/content/res/ColorStateList;

    #@2b
    if-eqz v5, :cond_1

    #@2d
    .line 1477
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getFillColor()I

    #@30
    move-result v3

    #@31
    .line 1478
    .local v3, "oldFillColor":I
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@33
    check-cast v5, Landroid/content/res/ColorStateList;

    #@35
    invoke-virtual {v5, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@38
    move-result v1

    #@39
    .line 1479
    .local v1, "newFillColor":I
    if-eq v3, v1, :cond_3

    #@3b
    move v5, v6

    #@3c
    :goto_1
    or-int/2addr v0, v5

    #@3d
    .line 1480
    .restart local v0    # "changed":Z
    if-eq v3, v1, :cond_1

    #@3f
    .line 1481
    iget-wide v6, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@41
    invoke-static {v6, v7, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap29(JI)V

    #@44
    .line 1485
    .end local v0    # "changed":Z
    .end local v1    # "newFillColor":I
    .end local v3    # "oldFillColor":I
    :cond_1
    return v0

    #@45
    .local v0, "changed":Z
    .restart local v2    # "newStrokeColor":I
    .restart local v4    # "oldStrokeColor":I
    :cond_2
    move v0, v7

    #@46
    .line 1470
    goto :goto_0

    #@47
    .end local v0    # "changed":Z
    .end local v2    # "newStrokeColor":I
    .end local v4    # "oldStrokeColor":I
    .restart local v1    # "newFillColor":I
    .restart local v3    # "oldFillColor":I
    :cond_3
    move v5, v7

    #@48
    .line 1479
    goto :goto_1
.end method

.method setFillAlpha(F)V
    .locals 2
    .param p1, "fillAlpha"    # F

    #@0
    .prologue
    .line 1735
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1736
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap28(JF)V

    #@b
    .line 1734
    :cond_0
    return-void
.end method

.method setFillColor(I)V
    .locals 2
    .param p1, "fillColor"    # I

    #@0
    .prologue
    .line 1722
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    #@3
    .line 1723
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1724
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@b
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap29(JI)V

    #@e
    .line 1721
    :cond_0
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 2
    .param p1, "strokeAlpha"    # F

    #@0
    .prologue
    .line 1710
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1711
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap39(JF)V

    #@b
    .line 1709
    :cond_0
    return-void
.end method

.method setStrokeColor(I)V
    .locals 2
    .param p1, "strokeColor"    # I

    #@0
    .prologue
    .line 1685
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    #@3
    .line 1686
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1687
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@b
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap40(JI)V

    #@e
    .line 1684
    :cond_0
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 2
    .param p1, "strokeWidth"    # F

    #@0
    .prologue
    .line 1698
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1699
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap41(JF)V

    #@b
    .line 1697
    :cond_0
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 2
    .param p1, "trimPathEnd"    # F

    #@0
    .prologue
    .line 1759
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1760
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap44(JF)V

    #@b
    .line 1758
    :cond_0
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 2
    .param p1, "trimPathOffset"    # F

    #@0
    .prologue
    .line 1771
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1772
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap45(JF)V

    #@b
    .line 1770
    :cond_0
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 2
    .param p1, "trimPathStart"    # F

    #@0
    .prologue
    .line 1747
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1748
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap46(JF)V

    #@b
    .line 1746
    :cond_0
    return-void
.end method
