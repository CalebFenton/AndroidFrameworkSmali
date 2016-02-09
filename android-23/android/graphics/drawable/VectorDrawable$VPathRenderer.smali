.class Landroid/graphics/drawable/VectorDrawable$VPathRenderer;
.super Ljava/lang/Object;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPathRenderer"
.end annotation


# instance fields
.field mBaseHeight:F

.field mBaseWidth:F

.field private mChangingConfigurations:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private final mFinalPathMatrix:Landroid/graphics/Matrix;

.field mOpticalInsets:Landroid/graphics/Insets;

.field private final mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mRenderPath:Landroid/graphics/Path;

.field mRootAlpha:I

.field private final mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

.field mRootName:Ljava/lang/String;

.field private mStrokePaint:Landroid/graphics/Paint;

.field mTargetDensity:I

.field final mVGTargetsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mViewportHeight:F

.field mViewportWidth:F


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/drawable/VectorDrawable$VGroup;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)Landroid/graphics/Paint;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 918
    new-instance v0, Landroid/graphics/Matrix;

    #@6
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@9
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@b
    .line 928
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    #@d
    .line 929
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    #@f
    .line 930
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    #@11
    .line 931
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    #@13
    .line 932
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@15
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@17
    .line 933
    const/16 v0, 0xff

    #@19
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    #@1b
    .line 934
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    #@1e
    .line 936
    const/16 v0, 0xa0

    #@20
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mTargetDensity:I

    #@22
    .line 938
    new-instance v0, Landroid/util/ArrayMap;

    #@24
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@27
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@29
    .line 941
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@2b
    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    #@2e
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@30
    .line 942
    new-instance v0, Landroid/graphics/Path;

    #@32
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@35
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    #@37
    .line 943
    new-instance v0, Landroid/graphics/Path;

    #@39
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@3c
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@3e
    .line 940
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VPathRenderer;)V
    .locals 3
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VPathRenderer;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 918
    new-instance v0, Landroid/graphics/Matrix;

    #@7
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@a
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@c
    .line 928
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    #@e
    .line 929
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    #@10
    .line 930
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    #@12
    .line 931
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    #@14
    .line 932
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@16
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@18
    .line 933
    const/16 v0, 0xff

    #@1a
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    #@1c
    .line 934
    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    #@1e
    .line 936
    const/16 v0, 0xa0

    #@20
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mTargetDensity:I

    #@22
    .line 938
    new-instance v0, Landroid/util/ArrayMap;

    #@24
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@27
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@29
    .line 966
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@2b
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@2d
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@2f
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    #@32
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@34
    .line 967
    new-instance v0, Landroid/graphics/Path;

    #@36
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    #@38
    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    #@3b
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    #@3d
    .line 968
    new-instance v0, Landroid/graphics/Path;

    #@3f
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@41
    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    #@44
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@46
    .line 969
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    #@48
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseWidth:F

    #@4a
    .line 970
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    #@4c
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mBaseHeight:F

    #@4e
    .line 971
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    #@50
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    #@52
    .line 972
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    #@54
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    #@56
    .line 973
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@58
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mOpticalInsets:Landroid/graphics/Insets;

    #@5a
    .line 974
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mChangingConfigurations:I

    #@5c
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mChangingConfigurations:I

    #@5e
    .line 975
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    #@60
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    #@62
    .line 976
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    #@64
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    #@66
    .line 977
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mTargetDensity:I

    #@68
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mTargetDensity:I

    #@6a
    .line 978
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    #@6c
    if-eqz v0, :cond_0

    #@6e
    .line 979
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@70
    iget-object v1, p1, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootName:Ljava/lang/String;

    #@72
    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 965
    :cond_0
    return-void
.end method

.method private drawGroupTree(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 11
    .param p1, "currentGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p2, "currentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 1043
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get3(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@7
    .line 1044
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get3(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    #@a
    move-result-object v0

    #@b
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get1(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    #@12
    .line 1047
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    #@15
    .line 1049
    const/4 v10, 0x0

    #@16
    .local v10, "i":I
    :goto_0
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v0

    #@1c
    if-ge v10, v0, :cond_2

    #@1e
    .line 1050
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v9

    #@24
    .line 1051
    .local v9, "child":Ljava/lang/Object;
    instance-of v0, v9, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@26
    if-eqz v0, :cond_1

    #@28
    move-object v1, v9

    #@29
    .line 1052
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@2b
    .line 1053
    .local v1, "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    invoke-static {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get3(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    #@2e
    move-result-object v2

    #@2f
    move-object v0, p0

    #@30
    move-object v3, p3

    #@31
    move v4, p4

    #@32
    move/from16 v5, p5

    #@34
    move-object/from16 v6, p6

    #@36
    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->drawGroupTree(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    #@39
    .line 1049
    .end local v1    # "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1055
    :cond_1
    instance-of v0, v9, Landroid/graphics/drawable/VectorDrawable$VPath;

    #@3e
    if-eqz v0, :cond_0

    #@40
    move-object v4, v9

    #@41
    .line 1056
    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VPath;

    #@43
    .local v4, "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    move-object v2, p0

    #@44
    move-object v3, p1

    #@45
    move-object v5, p3

    #@46
    move v6, p4

    #@47
    move/from16 v7, p5

    #@49
    move-object/from16 v8, p6

    #@4b
    .line 1057
    invoke-direct/range {v2 .. v8}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->drawPath(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/drawable/VectorDrawable$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    #@4e
    goto :goto_1

    #@4f
    .line 1060
    .end local v4    # "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    .end local v9    # "child":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    #@52
    .line 1038
    return-void
.end method

.method private drawPath(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/drawable/VectorDrawable$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 17
    .param p1, "vGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p2, "vPath"    # Landroid/graphics/drawable/VectorDrawable$VPath;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "filter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 1070
    move/from16 v0, p4

    #@2
    int-to-float v14, v0

    #@3
    move-object/from16 v0, p0

    #@5
    iget v15, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportWidth:F

    #@7
    div-float v10, v14, v15

    #@9
    .line 1071
    .local v10, "scaleX":F
    move/from16 v0, p5

    #@b
    int-to-float v14, v0

    #@c
    move-object/from16 v0, p0

    #@e
    iget v15, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mViewportHeight:F

    #@10
    div-float v11, v14, v15

    #@12
    .line 1072
    .local v11, "scaleY":F
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    #@15
    move-result v8

    #@16
    .line 1073
    .local v8, "minScale":F
    invoke-static/range {p1 .. p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get3(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;

    #@19
    move-result-object v5

    #@1a
    .line 1075
    .local v5, "groupStackedMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    #@1c
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@1e
    invoke-virtual {v14, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@21
    .line 1076
    move-object/from16 v0, p0

    #@23
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@25
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@28
    .line 1078
    move-object/from16 v0, p0

    #@2a
    invoke-direct {v0, v5}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getMatrixScale(Landroid/graphics/Matrix;)F

    #@2d
    move-result v7

    #@2e
    .line 1079
    .local v7, "matrixScale":F
    const/4 v14, 0x0

    #@2f
    cmpl-float v14, v7, v14

    #@31
    if-nez v14, :cond_0

    #@33
    .line 1081
    return-void

    #@34
    .line 1083
    :cond_0
    move-object/from16 v0, p0

    #@36
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    #@38
    move-object/from16 v0, p2

    #@3a
    invoke-virtual {v0, v14}, Landroid/graphics/drawable/VectorDrawable$VPath;->toPath(Landroid/graphics/Path;)V

    #@3d
    .line 1084
    move-object/from16 v0, p0

    #@3f
    iget-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    #@41
    .line 1086
    .local v9, "path":Landroid/graphics/Path;
    move-object/from16 v0, p0

    #@43
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@45
    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    #@48
    .line 1088
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->isClipPath()Z

    #@4b
    move-result v14

    #@4c
    if-eqz v14, :cond_2

    #@4e
    .line 1089
    move-object/from16 v0, p0

    #@50
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@52
    move-object/from16 v0, p0

    #@54
    iget-object v15, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@56
    invoke-virtual {v14, v9, v15}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    #@59
    .line 1090
    move-object/from16 v0, p0

    #@5b
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@5d
    move-object/from16 v0, p3

    #@5f
    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    #@62
    .line 1069
    :cond_1
    :goto_0
    return-void

    #@63
    :cond_2
    move-object/from16 v4, p2

    #@65
    .line 1092
    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@67
    .line 1093
    .local v4, "fullPath":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    #@69
    const/4 v15, 0x0

    #@6a
    cmpl-float v14, v14, v15

    #@6c
    if-nez v14, :cond_3

    #@6e
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    #@70
    const/high16 v15, 0x3f800000    # 1.0f

    #@72
    cmpl-float v14, v14, v15

    #@74
    if-eqz v14, :cond_5

    #@76
    .line 1094
    :cond_3
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathStart:F

    #@78
    iget v15, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    #@7a
    add-float/2addr v14, v15

    #@7b
    const/high16 v15, 0x3f800000    # 1.0f

    #@7d
    rem-float v12, v14, v15

    #@7f
    .line 1095
    .local v12, "start":F
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathEnd:F

    #@81
    iget v15, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mTrimPathOffset:F

    #@83
    add-float/2addr v14, v15

    #@84
    const/high16 v15, 0x3f800000    # 1.0f

    #@86
    rem-float v1, v14, v15

    #@88
    .line 1097
    .local v1, "end":F
    move-object/from16 v0, p0

    #@8a
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@8c
    if-nez v14, :cond_4

    #@8e
    .line 1098
    new-instance v14, Landroid/graphics/PathMeasure;

    #@90
    invoke-direct {v14}, Landroid/graphics/PathMeasure;-><init>()V

    #@93
    move-object/from16 v0, p0

    #@95
    iput-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@97
    .line 1100
    :cond_4
    move-object/from16 v0, p0

    #@99
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v15, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPath:Landroid/graphics/Path;

    #@9f
    const/16 v16, 0x0

    #@a1
    invoke-virtual/range {v14 .. v16}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    #@a4
    .line 1102
    move-object/from16 v0, p0

    #@a6
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@a8
    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    #@ab
    move-result v6

    #@ac
    .line 1103
    .local v6, "len":F
    mul-float/2addr v12, v6

    #@ad
    .line 1104
    mul-float/2addr v1, v6

    #@ae
    .line 1105
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    #@b1
    .line 1106
    cmpl-float v14, v12, v1

    #@b3
    if-lez v14, :cond_b

    #@b5
    .line 1107
    move-object/from16 v0, p0

    #@b7
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@b9
    const/4 v15, 0x1

    #@ba
    invoke-virtual {v14, v12, v6, v9, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    #@bd
    .line 1108
    move-object/from16 v0, p0

    #@bf
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@c1
    const/4 v15, 0x0

    #@c2
    const/16 v16, 0x1

    #@c4
    move/from16 v0, v16

    #@c6
    invoke-virtual {v14, v15, v1, v9, v0}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    #@c9
    .line 1112
    :goto_1
    const/4 v14, 0x0

    #@ca
    const/4 v15, 0x0

    #@cb
    invoke-virtual {v9, v14, v15}, Landroid/graphics/Path;->rLineTo(FF)V

    #@ce
    .line 1114
    .end local v1    # "end":F
    .end local v6    # "len":F
    .end local v12    # "start":F
    :cond_5
    move-object/from16 v0, p0

    #@d0
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-object v15, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFinalPathMatrix:Landroid/graphics/Matrix;

    #@d6
    invoke-virtual {v14, v9, v15}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    #@d9
    .line 1116
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    #@db
    if-eqz v14, :cond_7

    #@dd
    .line 1117
    move-object/from16 v0, p0

    #@df
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    #@e1
    if-nez v14, :cond_6

    #@e3
    .line 1118
    new-instance v14, Landroid/graphics/Paint;

    #@e5
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    #@e8
    move-object/from16 v0, p0

    #@ea
    iput-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    #@ec
    .line 1119
    move-object/from16 v0, p0

    #@ee
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    #@f0
    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@f2
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@f5
    .line 1120
    move-object/from16 v0, p0

    #@f7
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    #@f9
    const/4 v15, 0x1

    #@fa
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@fd
    .line 1123
    :cond_6
    move-object/from16 v0, p0

    #@ff
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mFillPaint:Landroid/graphics/Paint;

    #@101
    .line 1124
    .local v2, "fillPaint":Landroid/graphics/Paint;
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColor:I

    #@103
    iget v15, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillAlpha:F

    #@105
    invoke-static {v14, v15}, Landroid/graphics/drawable/VectorDrawable;->-wrap0(IF)I

    #@108
    move-result v14

    #@109
    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    #@10c
    .line 1125
    move-object/from16 v0, p6

    #@10e
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@111
    .line 1126
    move-object/from16 v0, p0

    #@113
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@115
    move-object/from16 v0, p3

    #@117
    invoke-virtual {v0, v14, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@11a
    .line 1129
    .end local v2    # "fillPaint":Landroid/graphics/Paint;
    :cond_7
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    #@11c
    if-eqz v14, :cond_1

    #@11e
    .line 1130
    move-object/from16 v0, p0

    #@120
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    #@122
    if-nez v14, :cond_8

    #@124
    .line 1131
    new-instance v14, Landroid/graphics/Paint;

    #@126
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    #@129
    move-object/from16 v0, p0

    #@12b
    iput-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    #@12d
    .line 1132
    move-object/from16 v0, p0

    #@12f
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    #@131
    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@133
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@136
    .line 1133
    move-object/from16 v0, p0

    #@138
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    #@13a
    const/4 v15, 0x1

    #@13b
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@13e
    .line 1136
    :cond_8
    move-object/from16 v0, p0

    #@140
    iget-object v13, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mStrokePaint:Landroid/graphics/Paint;

    #@142
    .line 1137
    .local v13, "strokePaint":Landroid/graphics/Paint;
    iget-object v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    #@144
    if-eqz v14, :cond_9

    #@146
    .line 1138
    iget-object v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    #@148
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@14b
    .line 1141
    :cond_9
    iget-object v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    #@14d
    if-eqz v14, :cond_a

    #@14f
    .line 1142
    iget-object v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    #@151
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@154
    .line 1145
    :cond_a
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeMiterlimit:F

    #@156
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    #@159
    .line 1146
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColor:I

    #@15b
    iget v15, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeAlpha:F

    #@15d
    invoke-static {v14, v15}, Landroid/graphics/drawable/VectorDrawable;->-wrap0(IF)I

    #@160
    move-result v14

    #@161
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    #@164
    .line 1147
    move-object/from16 v0, p6

    #@166
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@169
    .line 1148
    mul-float v3, v8, v7

    #@16b
    .line 1149
    .local v3, "finalStrokeScale":F
    iget v14, v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeWidth:F

    #@16d
    mul-float/2addr v14, v3

    #@16e
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@171
    .line 1150
    move-object/from16 v0, p0

    #@173
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRenderPath:Landroid/graphics/Path;

    #@175
    move-object/from16 v0, p3

    #@177
    invoke-virtual {v0, v14, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@17a
    goto/16 :goto_0

    #@17c
    .line 1110
    .end local v3    # "finalStrokeScale":F
    .end local v13    # "strokePaint":Landroid/graphics/Paint;
    .restart local v1    # "end":F
    .restart local v6    # "len":F
    .restart local v12    # "start":F
    :cond_b
    move-object/from16 v0, p0

    #@17e
    iget-object v14, v0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mPathMeasure:Landroid/graphics/PathMeasure;

    #@180
    const/4 v15, 0x1

    #@181
    invoke-virtual {v14, v12, v1, v9, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    #@184
    goto/16 :goto_1
.end method

.method private getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 12
    .param p1, "groupStackedMatrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v10, 0x2

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    .line 1166
    const/4 v6, 0x4

    #@5
    new-array v5, v6, [F

    #@7
    .local v5, "unitVectors":[F
    fill-array-data v5, :array_0

    #@a
    .line 1167
    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->mapVectors([F)V

    #@d
    .line 1168
    aget v6, v5, v8

    #@f
    aget v7, v5, v9

    #@11
    invoke-static {v6, v7}, Landroid/util/MathUtils;->mag(FF)F

    #@14
    move-result v3

    #@15
    .line 1169
    .local v3, "scaleX":F
    aget v6, v5, v10

    #@17
    aget v7, v5, v11

    #@19
    invoke-static {v6, v7}, Landroid/util/MathUtils;->mag(FF)F

    #@1c
    move-result v4

    #@1d
    .line 1170
    .local v4, "scaleY":F
    aget v6, v5, v8

    #@1f
    aget v7, v5, v9

    #@21
    .line 1171
    aget v8, v5, v10

    #@23
    aget v9, v5, v11

    #@25
    .line 1170
    invoke-static {v6, v7, v8, v9}, Landroid/util/MathUtils;->cross(FFFF)F

    #@28
    move-result v0

    #@29
    .line 1172
    .local v0, "crossProduct":F
    invoke-static {v3, v4}, Landroid/util/MathUtils;->max(FF)F

    #@2c
    move-result v2

    #@2d
    .line 1174
    .local v2, "maxScale":F
    const/4 v1, 0x0

    #@2e
    .line 1175
    .local v1, "matrixScale":F
    const/4 v6, 0x0

    #@2f
    cmpl-float v6, v2, v6

    #@31
    if-lez v6, :cond_0

    #@33
    .line 1176
    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    #@36
    move-result v6

    #@37
    div-float v1, v6, v2

    #@39
    .line 1181
    :cond_0
    return v1

    #@3a
    .line 1166
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private recursiveApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/content/res/Resources$Theme;)V
    .locals 6
    .param p1, "currentGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .param p2, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1019
    iget-object v3, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@2
    .line 1020
    .local v3, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    #@3
    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v5

    #@7
    if-ge v4, v5, :cond_3

    #@9
    .line 1021
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    .line 1022
    .local v0, "child":Ljava/lang/Object;
    instance-of v5, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@f
    if-eqz v5, :cond_2

    #@11
    move-object v1, v0

    #@12
    .line 1023
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@14
    .line 1024
    .local v1, "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->canApplyTheme()Z

    #@17
    move-result v5

    #@18
    if-eqz v5, :cond_0

    #@1a
    .line 1025
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@1d
    .line 1027
    :cond_0
    invoke-direct {p0, v1, p2}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->recursiveApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/content/res/Resources$Theme;)V

    #@20
    .line 1020
    .end local v1    # "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1028
    :cond_2
    instance-of v5, v0, Landroid/graphics/drawable/VectorDrawable$VPath;

    #@25
    if-eqz v5, :cond_1

    #@27
    move-object v2, v0

    #@28
    .line 1029
    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VPath;

    #@2a
    .line 1030
    .local v2, "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VPath;->canApplyTheme()Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_1

    #@30
    .line 1031
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/VectorDrawable$VPath;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@33
    goto :goto_1

    #@34
    .line 1016
    .end local v0    # "child":Ljava/lang/Object;
    .end local v2    # "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_3
    return-void
.end method

.method private recursiveCanApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;)Z
    .locals 7
    .param p1, "currentGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 991
    iget-object v3, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@3
    .line 993
    .local v3, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    #@4
    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v5

    #@8
    if-ge v4, v5, :cond_3

    #@a
    .line 994
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 995
    .local v0, "child":Ljava/lang/Object;
    instance-of v5, v0, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@10
    if-eqz v5, :cond_1

    #@12
    move-object v1, v0

    #@13
    .line 996
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@15
    .line 997
    .local v1, "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->canApplyTheme()Z

    #@18
    move-result v5

    #@19
    if-nez v5, :cond_0

    #@1b
    .line 998
    invoke-direct {p0, v1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->recursiveCanApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;)Z

    #@1e
    move-result v5

    #@1f
    .line 997
    if-eqz v5, :cond_2

    #@21
    .line 999
    :cond_0
    return v6

    #@22
    .line 1001
    .end local v1    # "childGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_1
    instance-of v5, v0, Landroid/graphics/drawable/VectorDrawable$VPath;

    #@24
    if-eqz v5, :cond_2

    #@26
    move-object v2, v0

    #@27
    .line 1002
    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VPath;

    #@29
    .line 1003
    .local v2, "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VPath;->canApplyTheme()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_2

    #@2f
    .line 1004
    return v6

    #@30
    .line 993
    .end local v2    # "childPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_0

    #@33
    .line 1008
    .end local v0    # "child":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x0

    #@34
    return v5
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1013
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@2
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->recursiveApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/content/res/Resources$Theme;)V

    #@5
    .line 1011
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 985
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@2
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->recursiveCanApplyTheme(Landroid/graphics/drawable/VectorDrawable$VGroup;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "filter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 1065
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@2
    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@4
    move-object v0, p0

    #@5
    move-object v3, p1

    #@6
    move v4, p2

    #@7
    move v5, p3

    #@8
    move-object v6, p4

    #@9
    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->drawGroupTree(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    #@c
    .line 1063
    return-void
.end method

.method public getAlpha()F
    .locals 2

    #@0
    .prologue
    .line 962
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->getRootAlpha()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    const/high16 v1, 0x437f0000    # 255.0f

    #@7
    div-float/2addr v0, v1

    #@8
    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    #@0
    .prologue
    .line 951
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    #@2
    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    #@0
    .prologue
    .line 957
    const/high16 v0, 0x437f0000    # 255.0f

    #@2
    mul-float/2addr v0, p1

    #@3
    float-to-int v0, v0

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->setRootAlpha(I)V

    #@7
    .line 956
    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 947
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VPathRenderer;->mRootAlpha:I

    #@2
    .line 946
    return-void
.end method
