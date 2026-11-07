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


# static fields
.field private static final greylist-max-o FILL_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FILL_ALPHA_INDEX:I = 0x4

.field private static final greylist-max-o FILL_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FILL_COLOR_INDEX:I = 0x3

.field private static final greylist-max-o FILL_TYPE_INDEX:I = 0xb

.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:I = 0x108

.field private static final greylist-max-o STROKE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STROKE_ALPHA_INDEX:I = 0x2

.field private static final greylist-max-o STROKE_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STROKE_COLOR_INDEX:I = 0x1

.field private static final greylist-max-o STROKE_LINE_CAP_INDEX:I = 0x8

.field private static final greylist-max-o STROKE_LINE_JOIN_INDEX:I = 0x9

.field private static final greylist-max-o STROKE_MITER_LIMIT_INDEX:I = 0xa

.field private static final greylist-max-o STROKE_WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STROKE_WIDTH_INDEX:I = 0x0

.field private static final greylist-max-o TOTAL_PROPERTY_COUNT:I = 0xc

.field private static final greylist-max-o TRIM_PATH_END:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRIM_PATH_END_INDEX:I = 0x6

.field private static final greylist-max-o TRIM_PATH_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRIM_PATH_OFFSET_INDEX:I = 0x7

.field private static final greylist-max-o TRIM_PATH_START:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRIM_PATH_START_INDEX:I = 0x5

.field private static final blacklist sPropertyIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o mFillColors:Landroid/content/res/ComplexColor;

.field private final greylist-max-o mNativePtr:J

.field private greylist-max-o mPropertyData:[B

.field greylist-max-o mStrokeColors:Landroid/content/res/ComplexColor;

.field private greylist-max-o mThemeAttrs:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 18

    .line 1758
    nop

    .line 1759
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1760
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1761
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1762
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1763
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1764
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1765
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1766
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 1758
    const-string/jumbo v1, "strokeWidth"

    const-string/jumbo v3, "strokeColor"

    const-string/jumbo v5, "strokeAlpha"

    const-string v7, "fillColor"

    const-string v9, "fillAlpha"

    const-string/jumbo v11, "trimPathStart"

    const-string/jumbo v13, "trimPathEnd"

    const-string/jumbo v15, "trimPathOffset"

    invoke-static/range {v1 .. v16}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/Map;

    .line 1769
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;

    const-string/jumbo v1, "strokeWidth"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    .line 1782
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;

    const-string/jumbo v1, "strokeColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    .line 1795
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;

    const-string/jumbo v1, "strokeAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    .line 1808
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;

    const-string v1, "fillColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    .line 1821
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;

    const-string v1, "fillAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    .line 1834
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;

    const-string/jumbo v1, "trimPathStart"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    .line 1847
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;

    const-string/jumbo v1, "trimPathEnd"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    .line 1860
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;

    const-string/jumbo v1, "trimPathOffset"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    .line 1873
    sget-object v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    sget-object v5, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    sget-object v7, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    sget-object v9, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    sget-object v11, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    sget-object v13, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    sget-object v15, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    const-string/jumbo v16, "trimPathOffset"

    sget-object v17, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    const-string/jumbo v2, "strokeWidth"

    const-string/jumbo v4, "strokeColor"

    const-string/jumbo v6, "strokeAlpha"

    const-string v8, "fillColor"

    const-string v10, "fillAlpha"

    const-string/jumbo v12, "trimPathStart"

    const-string/jumbo v14, "trimPathEnd"

    invoke-static/range {v2 .. v17}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/Map;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 1893
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    .line 1889
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1890
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1894
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateFullPath()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1895
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .registers 4
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .line 1898
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    .line 1889
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1890
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1899
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateFullPath(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1900
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 1901
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1902
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1903
    return-void
.end method

.method private greylist-max-o canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z
    .registers 3
    .param p1, "complexColor"    # Landroid/content/res/ComplexColor;

    .line 2146
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 41
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1984
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x30

    .line 1985
    .local v2, "byteCount":I
    iget-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    if-nez v3, :cond_e

    .line 1988
    new-array v3, v2, [B

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    .line 1993
    :cond_e
    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v5, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetFullPathProperties(J[BI)Z

    move-result v3

    .line 1994
    .local v3, "success":Z
    if-eqz v3, :cond_18d

    .line 1998
    iget-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1999
    .local v4, "properties":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2000
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    .line 2001
    .local v6, "strokeWidth":F
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    .line 2002
    .local v8, "strokeColor":I
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v10

    .line 2003
    .local v10, "strokeAlpha":F
    const/16 v11, 0xc

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v12

    .line 2004
    .local v12, "fillColor":I
    const/16 v13, 0x10

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v13

    .line 2005
    .local v13, "fillAlpha":F
    const/16 v14, 0x14

    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v14

    .line 2006
    .local v14, "trimPathStart":F
    const/16 v15, 0x18

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v15

    .line 2007
    .local v15, "trimPathEnd":F
    const/16 v7, 0x1c

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v7

    .line 2008
    .local v7, "trimPathOffset":F
    const/16 v9, 0x20

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    .line 2009
    .local v9, "strokeLineCap":I
    const/16 v11, 0x24

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    .line 2010
    .local v11, "strokeLineJoin":I
    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v5

    .line 2011
    .local v5, "strokeMiterLimit":F
    move/from16 v17, v2

    .end local v2    # "byteCount":I
    .local v17, "byteCount":I
    const/16 v2, 0x2c

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 2012
    .local v2, "fillType":I
    const/16 v18, 0x0

    .line 2013
    .local v18, "fillGradient":Landroid/graphics/Shader;
    const/16 v19, 0x0

    .line 2015
    .local v19, "strokeGradient":Landroid/graphics/Shader;
    move/from16 v20, v3

    .end local v3    # "success":Z
    .local v20, "success":Z
    iget v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v21

    or-int v3, v3, v21

    iput v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    .line 2018
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v3

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 2020
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2021
    .local v3, "pathName":Ljava/lang/String;
    if-eqz v3, :cond_9a

    .line 2022
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    .line 2023
    move-object/from16 v21, v3

    move-object/from16 v16, v4

    .end local v3    # "pathName":Ljava/lang/String;
    .end local v4    # "properties":Ljava/nio/ByteBuffer;
    .local v16, "properties":Ljava/nio/ByteBuffer;
    .local v21, "pathName":Ljava/lang/String;
    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move/from16 v22, v8

    .end local v8    # "strokeColor":I
    .local v22, "strokeColor":I
    iget-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    invoke-static {v3, v4, v8}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetName(JLjava/lang/String;)V

    goto :goto_a0

    .line 2021
    .end local v16    # "properties":Ljava/nio/ByteBuffer;
    .end local v21    # "pathName":Ljava/lang/String;
    .end local v22    # "strokeColor":I
    .restart local v3    # "pathName":Ljava/lang/String;
    .restart local v4    # "properties":Ljava/nio/ByteBuffer;
    .restart local v8    # "strokeColor":I
    :cond_9a
    move-object/from16 v21, v3

    move-object/from16 v16, v4

    move/from16 v22, v8

    .line 2026
    .end local v3    # "pathName":Ljava/lang/String;
    .end local v4    # "properties":Ljava/nio/ByteBuffer;
    .end local v8    # "strokeColor":I
    .restart local v16    # "properties":Ljava/nio/ByteBuffer;
    .restart local v21    # "pathName":Ljava/lang/String;
    .restart local v22    # "strokeColor":I
    :goto_a0
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2027
    .local v3, "pathString":Ljava/lang/String;
    if-eqz v3, :cond_bb

    .line 2028
    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v3}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 2029
    move v4, v7

    .end local v7    # "trimPathOffset":F
    .local v4, "trimPathOffset":F
    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move/from16 v23, v4

    .end local v4    # "trimPathOffset":F
    .local v23, "trimPathOffset":F
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v7, v8, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetPathString(JLjava/lang/String;I)V

    goto :goto_bd

    .line 2027
    .end local v23    # "trimPathOffset":F
    .restart local v7    # "trimPathOffset":F
    :cond_bb
    move/from16 v23, v7

    .line 2032
    .end local v7    # "trimPathOffset":F
    .restart local v23    # "trimPathOffset":F
    :goto_bd
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v4

    .line 2034
    .local v4, "fillColors":Landroid/content/res/ComplexColor;
    const/4 v7, 0x0

    if-eqz v4, :cond_ee

    .line 2037
    instance-of v8, v4, Landroid/content/res/GradientColor;

    if-eqz v8, :cond_d5

    .line 2038
    iput-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2039
    move-object v8, v4

    check-cast v8, Landroid/content/res/GradientColor;

    invoke-virtual {v8}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v8

    move-object/from16 v18, v8

    .end local v18    # "fillGradient":Landroid/graphics/Shader;
    .local v8, "fillGradient":Landroid/graphics/Shader;
    goto :goto_e7

    .line 2040
    .end local v8    # "fillGradient":Landroid/graphics/Shader;
    .restart local v18    # "fillGradient":Landroid/graphics/Shader;
    :cond_d5
    invoke-virtual {v4}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v8

    if-nez v8, :cond_e5

    invoke-virtual {v4}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v8

    if-eqz v8, :cond_e2

    goto :goto_e5

    .line 2043
    :cond_e2
    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    goto :goto_e7

    .line 2041
    :cond_e5
    :goto_e5
    iput-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2045
    :goto_e7
    invoke-virtual {v4}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v12

    move/from16 v29, v12

    goto :goto_f0

    .line 2034
    :cond_ee
    move/from16 v29, v12

    .line 2048
    .end local v12    # "fillColor":I
    .local v29, "fillColor":I
    :goto_f0
    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v8

    .line 2050
    .local v8, "strokeColors":Landroid/content/res/ComplexColor;
    if-eqz v8, :cond_120

    .line 2053
    instance-of v12, v8, Landroid/content/res/GradientColor;

    if-eqz v12, :cond_107

    .line 2054
    iput-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2055
    move-object v7, v8

    check-cast v7, Landroid/content/res/GradientColor;

    invoke-virtual {v7}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v7

    move-object/from16 v19, v7

    .end local v19    # "strokeGradient":Landroid/graphics/Shader;
    .local v7, "strokeGradient":Landroid/graphics/Shader;
    goto :goto_119

    .line 2056
    .end local v7    # "strokeGradient":Landroid/graphics/Shader;
    .restart local v19    # "strokeGradient":Landroid/graphics/Shader;
    :cond_107
    invoke-virtual {v8}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v12

    if-nez v12, :cond_117

    invoke-virtual {v8}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v12

    if-eqz v12, :cond_114

    goto :goto_117

    .line 2059
    :cond_114
    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    goto :goto_119

    .line 2057
    :cond_117
    :goto_117
    iput-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2061
    :goto_119
    invoke-virtual {v8}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v7

    move/from16 v27, v7

    .end local v22    # "strokeColor":I
    .local v7, "strokeColor":I
    goto :goto_122

    .line 2050
    .end local v7    # "strokeColor":I
    .restart local v22    # "strokeColor":I
    :cond_120
    move/from16 v27, v22

    .line 2064
    .end local v22    # "strokeColor":I
    .local v27, "strokeColor":I
    :goto_122
    move-object v7, v3

    move-object v12, v4

    .end local v3    # "pathString":Ljava/lang/String;
    .end local v4    # "fillColors":Landroid/content/res/ComplexColor;
    .local v7, "pathString":Ljava/lang/String;
    .local v12, "fillColors":Landroid/content/res/ComplexColor;
    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 2065
    const-wide/16 v24, 0x0

    if-eqz v18, :cond_135

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v30

    move-object/from16 v38, v7

    move-object/from16 v22, v8

    move-wide/from16 v7, v30

    goto :goto_13b

    :cond_135
    move-object/from16 v38, v7

    move-object/from16 v22, v8

    move-wide/from16 v7, v24

    .line 2064
    .end local v7    # "pathString":Ljava/lang/String;
    .end local v8    # "strokeColors":Landroid/content/res/ComplexColor;
    .local v22, "strokeColors":Landroid/content/res/ComplexColor;
    .local v38, "pathString":Ljava/lang/String;
    :goto_13b
    invoke-static {v3, v4, v7, v8}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathFillGradient(JJ)V

    .line 2066
    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 2067
    if-eqz v19, :cond_146

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v24

    :cond_146
    move-wide/from16 v7, v24

    .line 2066
    invoke-static {v3, v4, v7, v8}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathStrokeGradient(JJ)V

    .line 2069
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v30

    .line 2071
    .end local v13    # "fillAlpha":F
    .local v30, "fillAlpha":F
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v35

    .line 2073
    .end local v9    # "strokeLineCap":I
    .local v35, "strokeLineCap":I
    const/16 v3, 0x9

    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v36

    .line 2075
    .end local v11    # "strokeLineJoin":I
    .local v36, "strokeLineJoin":I
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v34

    .line 2077
    .end local v5    # "strokeMiterLimit":F
    .local v34, "strokeMiterLimit":F
    const/16 v3, 0xb

    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    .line 2079
    .end local v10    # "strokeAlpha":F
    .local v28, "strokeAlpha":F
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v26

    .line 2081
    .end local v6    # "strokeWidth":F
    .local v26, "strokeWidth":F
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v32

    .line 2083
    .end local v15    # "trimPathEnd":F
    .local v32, "trimPathEnd":F
    const/4 v3, 0x7

    move/from16 v4, v23

    .end local v23    # "trimPathOffset":F
    .local v4, "trimPathOffset":F
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v33

    .line 2085
    .end local v4    # "trimPathOffset":F
    .local v33, "trimPathOffset":F
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    .line 2087
    .end local v14    # "trimPathStart":F
    .local v31, "trimPathStart":F
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v37

    .line 2089
    .end local v2    # "fillType":I
    .local v37, "fillType":I
    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move-wide/from16 v24, v2

    invoke-static/range {v24 .. v37}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathProperties(JFIFIFFFFFIII)V

    .line 2092
    return-void

    .line 1995
    .end local v12    # "fillColors":Landroid/content/res/ComplexColor;
    .end local v16    # "properties":Ljava/nio/ByteBuffer;
    .end local v17    # "byteCount":I
    .end local v18    # "fillGradient":Landroid/graphics/Shader;
    .end local v19    # "strokeGradient":Landroid/graphics/Shader;
    .end local v20    # "success":Z
    .end local v21    # "pathName":Ljava/lang/String;
    .end local v22    # "strokeColors":Landroid/content/res/ComplexColor;
    .end local v26    # "strokeWidth":F
    .end local v27    # "strokeColor":I
    .end local v28    # "strokeAlpha":F
    .end local v29    # "fillColor":I
    .end local v30    # "fillAlpha":F
    .end local v31    # "trimPathStart":F
    .end local v32    # "trimPathEnd":F
    .end local v33    # "trimPathOffset":F
    .end local v34    # "strokeMiterLimit":F
    .end local v35    # "strokeLineCap":I
    .end local v36    # "strokeLineJoin":I
    .end local v37    # "fillType":I
    .end local v38    # "pathString":Ljava/lang/String;
    .local v2, "byteCount":I
    .local v3, "success":Z
    :cond_18d
    move/from16 v17, v2

    move/from16 v20, v3

    .end local v2    # "byteCount":I
    .end local v3    # "success":Z
    .restart local v17    # "byteCount":I
    .restart local v20    # "success":Z
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error: inconsistent property count"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 8
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 2112
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_12

    .line 2113
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2114
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 2115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2121
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_12
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    .line 2122
    .local v0, "fillCanApplyTheme":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v1

    .line 2124
    .local v1, "strokeCanApplyTheme":Z
    if-eqz v0, :cond_51

    .line 2125
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v2, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2126
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v2, v2, Landroid/content/res/GradientColor;

    if-eqz v2, :cond_40

    .line 2127
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/GradientColor;

    .line 2128
    invoke-virtual {v4}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v4

    .line 2127
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathFillGradient(JJ)V

    goto :goto_51

    .line 2129
    :cond_40
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v2, v2, Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_51

    .line 2130
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v4}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillColor(JI)V

    .line 2134
    :cond_51
    :goto_51
    if-eqz v1, :cond_84

    .line 2135
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v2, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2136
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v2, v2, Landroid/content/res/GradientColor;

    if-eqz v2, :cond_73

    .line 2137
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/GradientColor;

    .line 2138
    invoke-virtual {v4}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v4

    .line 2137
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathStrokeGradient(JJ)V

    goto :goto_84

    .line 2139
    :cond_73
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v2, v2, Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_84

    .line 2140
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v4}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeColor(JI)V

    .line 2143
    :cond_84
    :goto_84
    return-void
.end method

.method public greylist-max-o canApplyTheme()Z
    .registers 4

    .line 2096
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 2097
    return v1

    .line 2100
    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    .line 2101
    .local v0, "fillCanApplyTheme":Z
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v2

    .line 2102
    .local v2, "strokeCanApplyTheme":Z
    if-nez v0, :cond_19

    if-eqz v2, :cond_17

    goto :goto_19

    .line 2105
    :cond_17
    const/4 v1, 0x0

    return v1

    .line 2103
    :cond_19
    :goto_19
    return v1
.end method

.method greylist-max-o getFillAlpha()F
    .registers 3

    .line 2202
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetFillAlpha(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getFillColor()I
    .registers 3

    .line 2189
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetFillColor(J)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o getNativePtr()J
    .registers 3

    .line 1972
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    return-wide v0
.end method

.method greylist-max-o getNativeSize()I
    .registers 2

    .line 1967
    const/16 v0, 0x108

    return v0
.end method

.method greylist-max-o getProperty(Ljava/lang/String;)Landroid/util/Property;
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1906
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    .line 1907
    .local v0, "p":Landroid/util/Property;
    if-eqz v0, :cond_7

    .line 1908
    return-object v0

    .line 1910
    :cond_7
    sget-object v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1911
    sget-object v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    return-object v1

    .line 1914
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o getPropertyIndex(Ljava/lang/String;)I
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1919
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1920
    const/4 v0, -0x1

    return v0

    .line 1922
    :cond_a
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method greylist-max-o getStrokeAlpha()F
    .registers 3

    .line 2177
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetStrokeAlpha(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getStrokeColor()I
    .registers 3

    .line 2152
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetStrokeColor(J)I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getStrokeWidth()F
    .registers 3

    .line 2165
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetStrokeWidth(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getTrimPathEnd()F
    .registers 3

    .line 2226
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetTrimPathEnd(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getTrimPathOffset()F
    .registers 3

    .line 2238
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetTrimPathOffset(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getTrimPathStart()F
    .registers 3

    .line 2214
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetTrimPathStart(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o hasFocusStateSpecified()Z
    .registers 2

    .line 1959
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v0, v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 1960
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v0, v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 1962
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 1959
    :goto_2b
    return v0
.end method

.method public greylist-max-o inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1977
    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1979
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1980
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1981
    return-void
.end method

.method public greylist-max-o isStateful()Z
    .registers 2

    .line 1954
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public greylist-max-o onStateChange([I)Z
    .registers 9
    .param p1, "stateSet"    # [I

    .line 1928
    const/4 v0, 0x0

    .line 1930
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    instance-of v1, v1, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_26

    .line 1931
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeColor()I

    move-result v1

    .line 1932
    .local v1, "oldStrokeColor":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/ColorStateList;

    .line 1933
    invoke-virtual {v4, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1934
    .local v4, "newStrokeColor":I
    if-eq v1, v4, :cond_1d

    move v5, v2

    goto :goto_1e

    :cond_1d
    move v5, v3

    :goto_1e
    or-int/2addr v0, v5

    .line 1935
    if-eq v1, v4, :cond_26

    .line 1936
    iget-wide v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v5, v6, v4}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeColor(JI)V

    .line 1940
    .end local v1    # "oldStrokeColor":I
    .end local v4    # "newStrokeColor":I
    :cond_26
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    instance-of v1, v1, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_48

    .line 1941
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getFillColor()I

    move-result v1

    .line 1942
    .local v1, "oldFillColor":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1943
    .local v4, "newFillColor":I
    if-eq v1, v4, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v3

    :goto_40
    or-int/2addr v0, v2

    .line 1944
    if-eq v1, v4, :cond_48

    .line 1945
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillColor(JI)V

    .line 1949
    .end local v1    # "oldFillColor":I
    .end local v4    # "newFillColor":I
    :cond_48
    return v0
.end method

.method greylist-max-o setFillAlpha(F)V
    .registers 4
    .param p1, "fillAlpha"    # F

    .line 2207
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2208
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillAlpha(JF)V

    .line 2210
    :cond_b
    return-void
.end method

.method greylist-max-o setFillColor(I)V
    .registers 4
    .param p1, "fillColor"    # I

    .line 2194
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2195
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2196
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillColor(JI)V

    .line 2198
    :cond_e
    return-void
.end method

.method greylist-max-o setStrokeAlpha(F)V
    .registers 4
    .param p1, "strokeAlpha"    # F

    .line 2182
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2183
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeAlpha(JF)V

    .line 2185
    :cond_b
    return-void
.end method

.method greylist-max-o setStrokeColor(I)V
    .registers 4
    .param p1, "strokeColor"    # I

    .line 2157
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2158
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2159
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeColor(JI)V

    .line 2161
    :cond_e
    return-void
.end method

.method greylist-max-o setStrokeWidth(F)V
    .registers 4
    .param p1, "strokeWidth"    # F

    .line 2170
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2171
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeWidth(JF)V

    .line 2173
    :cond_b
    return-void
.end method

.method greylist-max-o setTrimPathEnd(F)V
    .registers 4
    .param p1, "trimPathEnd"    # F

    .line 2231
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2232
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTrimPathEnd(JF)V

    .line 2234
    :cond_b
    return-void
.end method

.method greylist-max-o setTrimPathOffset(F)V
    .registers 4
    .param p1, "trimPathOffset"    # F

    .line 2243
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2244
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTrimPathOffset(JF)V

    .line 2246
    :cond_b
    return-void
.end method

.method greylist-max-o setTrimPathStart(F)V
    .registers 4
    .param p1, "trimPathStart"    # F

    .line 2219
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2220
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTrimPathStart(JF)V

    .line 2222
    :cond_b
    return-void
.end method
