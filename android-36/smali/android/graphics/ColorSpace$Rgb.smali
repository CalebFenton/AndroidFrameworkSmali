.class public Landroid/graphics/ColorSpace$Rgb;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rgb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Rgb$TransferParameters;,
        Landroid/graphics/ColorSpace$Rgb$Native;,
        Landroid/graphics/ColorSpace$Rgb$NoImagePreloadHolder;
    }
.end annotation


# instance fields
.field private final greylist-max-o mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final greylist-max-o mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final greylist-max-o mEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final greylist-max-o mInverseTransform:[F

.field private final greylist-max-o mIsSrgb:Z

.field private final greylist-max-o mIsWideGamut:Z

.field private final greylist-max-o mMax:F

.field private final greylist-max-o mMin:F

.field private final blacklist mNativePtr:J

.field private final greylist-max-o mOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final greylist-max-o mPrimaries:[F

.field private final greylist-max-o mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

.field private final greylist-max-o mTransform:[F

.field private final greylist-max-o mWhitePoint:[F


# direct methods
.method public static synthetic blacklist $r8$lambda$cIGQ-czByRuI3xD2gBDbU3RBmkg(Landroid/graphics/ColorSpace$Rgb;D)D
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->clamp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClampedEotf(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .registers 1

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClampedOetf(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .registers 1

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInverseTransform(Landroid/graphics/ColorSpace$Rgb;)[F
    .registers 1

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferParameters(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .registers 1

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransform(Landroid/graphics/ColorSpace$Rgb;)[F
    .registers 1

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F
    .registers 1

    iget-object p0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V
    .registers 15
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace$Rgb;
    .param p2, "transform"    # [F
    .param p3, "whitePoint"    # [F

    .line 3181
    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Rgb;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v5, p1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v6, p1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iget v7, p1, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iget v8, p1, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iget-object v9, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const/4 v10, -0x1

    move-object v0, p0

    move-object v4, p2

    move-object v3, p3

    .end local p2    # "transform":[F
    .end local p3    # "whitePoint":[F
    .local v3, "whitePoint":[F
    .local v4, "transform":[F
    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 3184
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/ColorSpace$Rgb;[F[FLandroid/graphics/ColorSpace-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ColorSpace$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[FD)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "toXYZ"    # [F
    .param p3, "gamma"    # D

    .line 2942
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "gamma":D
    .local v1, "name":Ljava/lang/String;
    .local v4, "gamma":D
    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    .line 2943
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "toXYZ"    # [F
    .param p3, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 2825
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->isGray([F)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetGRAY_PRIMARIES()[F

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v0

    :goto_f
    move-object v3, v0

    .line 2826
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v4

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->isGray([F)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object v5, p2

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    move-object v5, v0

    .line 2825
    :goto_1e
    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "function":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .local v2, "name":Ljava/lang/String;
    .local v6, "function":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    invoke-direct/range {v1 .. v7}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2827
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "toXYZ"    # [F
    .param p3, "oetf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p4, "eotf"    # Ljava/util/function/DoubleUnaryOperator;

    .line 2744
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p3    # "oetf":Ljava/util/function/DoubleUnaryOperator;
    .end local p4    # "eotf":Ljava/util/function/DoubleUnaryOperator;
    .local v1, "name":Ljava/lang/String;
    .local v5, "oetf":Ljava/util/function/DoubleUnaryOperator;
    .local v6, "eotf":Ljava/util/function/DoubleUnaryOperator;
    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2746
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[F[FD)V
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "gamma"    # D

    .line 2982
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "primaries":[F
    .end local p3    # "whitePoint":[F
    .end local p4    # "gamma":D
    .local v1, "name":Ljava/lang/String;
    .local v2, "primaries":[F
    .local v3, "whitePoint":[F
    .local v4, "gamma":D
    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    .line 2983
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;[F[FDFFI)V
    .registers 23
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "gamma"    # D
    .param p6, "min"    # F
    .param p7, "max"    # F
    .param p8, "id"    # I

    .line 3030
    move-wide/from16 v9, p4

    .line 3031
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v9, v0

    if-nez v2, :cond_e

    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v2

    move-object v11, v2

    goto :goto_14

    .line 3032
    :cond_e
    new-instance v2, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda0;

    invoke-direct {v2, v9, v10}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda0;-><init>(D)V

    move-object v11, v2

    .line 3033
    :goto_14
    cmpl-double v0, v9, v0

    if-nez v0, :cond_1e

    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    move-object v12, v0

    goto :goto_24

    .line 3034
    :cond_1e
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda1;

    invoke-direct {v0, v9, v10}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda1;-><init>(D)V

    move-object v12, v0

    :goto_24
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 3030
    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v10, p6

    move/from16 v13, p8

    move-object v8, v11

    move-object v9, v12

    move/from16 v11, p7

    move-object v12, v0

    invoke-direct/range {v3 .. v13}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 3036
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 2866
    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "primaries":[F
    .end local p3    # "whitePoint":[F
    .end local p4    # "function":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .local v1, "name":Ljava/lang/String;
    .local v2, "primaries":[F
    .local v3, "whitePoint":[F
    .local v5, "function":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    invoke-direct/range {v0 .. v6}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2867
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FF)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "oetf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p5, "eotf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p6, "min"    # F
    .param p7, "max"    # F

    .line 2795
    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2796
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V
    .registers 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "transform"    # [F
    .param p5, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p6, "id"    # I

    .line 2912
    nop

    .line 2913
    invoke-static/range {p5 .. p5}, Landroid/graphics/ColorSpace$Rgb;->generateOETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v5

    .line 2914
    invoke-static/range {p5 .. p5}, Landroid/graphics/ColorSpace$Rgb;->generateEOTF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v6

    .line 2912
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2916
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V
    .registers 33
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "transform"    # [F
    .param p5, "oetf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p6, "eotf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p7, "min"    # F
    .param p8, "max"    # F
    .param p9, "transferParameters"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p10, "id"    # I

    .line 3091
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    sget-object v4, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    move-object/from16 v11, p1

    move/from16 v10, p10

    invoke-direct {v0, v11, v4, v10}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    .line 3093
    if-eqz v1, :cond_17e

    array-length v4, v1

    const/4 v5, 0x6

    const/16 v12, 0x9

    if-eq v4, v5, :cond_29

    array-length v4, v1

    if-ne v4, v12, :cond_25

    goto :goto_29

    :cond_25
    move-object/from16 v13, p9

    goto/16 :goto_180

    .line 3098
    :cond_29
    :goto_29
    if-eqz v2, :cond_174

    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_38

    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_34

    goto :goto_38

    :cond_34
    move-object/from16 v13, p9

    goto/16 :goto_176

    .line 3103
    :cond_38
    :goto_38
    if-eqz v6, :cond_16a

    if-eqz v7, :cond_16a

    .line 3108
    cmpl-float v4, v8, v9

    if-gez v4, :cond_13f

    .line 3113
    invoke-static {v2}, Landroid/graphics/ColorSpace$Rgb;->xyWhitePoint([F)[F

    move-result-object v4

    iput-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 3114
    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->xyPrimaries([F)[F

    move-result-object v4

    iput-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    .line 3116
    if-nez v3, :cond_59

    .line 3117
    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v4, v5}, Landroid/graphics/ColorSpace$Rgb;->computeXYZMatrix([F[F)[F

    move-result-object v4

    iput-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    goto :goto_5e

    .line 3119
    :cond_59
    array-length v4, v3

    if-ne v4, v12, :cond_123

    .line 3123
    iput-object v3, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    .line 3125
    :goto_5e
    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {v4}, Landroid/graphics/ColorSpace;->-$$Nest$sminverse3x3([F)[F

    move-result-object v4

    iput-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    .line 3127
    iput-object v6, v0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 3128
    iput-object v7, v0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 3130
    iput v8, v0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    .line 3131
    iput v9, v0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    .line 3133
    new-instance v4, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda6;-><init>(Landroid/graphics/ColorSpace$Rgb;)V

    move-object v12, v4

    .line 3134
    .local v12, "clamp":Ljava/util/function/DoubleUnaryOperator;
    invoke-interface {v6, v12}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v4

    iput-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 3135
    invoke-interface {v12, v7}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v4

    iput-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 3137
    move-object/from16 v13, p9

    iput-object v13, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 3141
    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v4, v8, v9}, Landroid/graphics/ColorSpace$Rgb;->isWideGamut([FFF)Z

    move-result v4

    iput-boolean v4, v0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    .line 3142
    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static/range {v4 .. v10}, Landroid/graphics/ColorSpace$Rgb;->isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z

    move-result v4

    iput-boolean v4, v0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    .line 3144
    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v4, :cond_11e

    .line 3145
    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    if-eqz v4, :cond_e5

    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    if-eqz v4, :cond_e5

    .line 3153
    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {v4, v5}, Landroid/graphics/ColorSpace;->-$$Nest$smadaptToIlluminantD50([F[F)[F

    move-result-object v21

    .line 3154
    .local v21, "nativeTransform":[F
    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v4, v4, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    double-to-float v14, v4

    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v4, v4, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    double-to-float v15, v4

    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v4, v4, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    double-to-float v4, v4

    iget-object v5, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v5, v5, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    double-to-float v5, v5

    iget-object v6, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v6, v6, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    double-to-float v6, v6

    iget-object v7, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-wide v1, v7, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    double-to-float v1, v1

    iget-object v2, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move/from16 v19, v1

    iget-wide v1, v2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    double-to-float v1, v1

    move/from16 v20, v1

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-static/range {v14 .. v21}, Landroid/graphics/ColorSpace$Rgb$Native;->nativeCreate(FFFFFFF[F)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    .line 3162
    sget-object v1, Landroid/graphics/ColorSpace$Rgb$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    invoke-virtual {v1, v0, v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 3163
    .end local v21    # "nativeTransform":[F
    goto :goto_122

    .line 3146
    :cond_e5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColorSpace ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") cannot create native object! mWhitePoint: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 3148
    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mTransform: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    .line 3149
    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3164
    :cond_11e
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    .line 3166
    :goto_122
    return-void

    .line 3120
    .end local v12    # "clamp":Ljava/util/function/DoubleUnaryOperator;
    :cond_123
    move-object/from16 v13, p9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transform must have 9 entries! Has "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3109
    :cond_13f
    move-object/from16 v13, p9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid range: min="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", max="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; min must be strictly < max"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3103
    :cond_16a
    move-object/from16 v13, p9

    .line 3104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The transfer functions of a color space cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3098
    :cond_174
    move-object/from16 v13, p9

    .line 3099
    :goto_176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The color space\'s white point must be defined as an array of 2 floats in xyY or 3 float in XYZ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3093
    :cond_17e
    move-object/from16 v13, p9

    .line 3094
    :goto_180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The color space\'s primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method private static greylist-max-o area([F)F
    .registers 10
    .param p0, "primaries"    # [F

    .line 3699
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 3700
    .local v0, "Rx":F
    const/4 v1, 0x1

    aget v1, p0, v1

    .line 3701
    .local v1, "Ry":F
    const/4 v2, 0x2

    aget v2, p0, v2

    .line 3702
    .local v2, "Gx":F
    const/4 v3, 0x3

    aget v3, p0, v3

    .line 3703
    .local v3, "Gy":F
    const/4 v4, 0x4

    aget v4, p0, v4

    .line 3704
    .local v4, "Bx":F
    const/4 v5, 0x5

    aget v5, p0, v5

    .line 3705
    .local v5, "By":F
    mul-float v6, v0, v3

    mul-float v7, v1, v4

    add-float/2addr v6, v7

    mul-float v7, v2, v5

    add-float/2addr v6, v7

    mul-float v7, v3, v4

    sub-float/2addr v6, v7

    mul-float v7, v1, v2

    sub-float/2addr v6, v7

    mul-float v7, v0, v5

    sub-float/2addr v6, v7

    .line 3706
    .local v6, "det":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v6

    .line 3707
    .local v7, "r":F
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_2d

    neg-float v8, v7

    goto :goto_2e

    :cond_2d
    move v8, v7

    :goto_2e
    return v8
.end method

.method private greylist-max-o clamp(D)D
    .registers 5
    .param p1, "x"    # D

    .line 3563
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    float-to-double v0, v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_b

    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    :goto_9
    float-to-double v0, v0

    goto :goto_16

    :cond_b
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    float-to-double v0, v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_15

    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    goto :goto_9

    :cond_15
    move-wide v0, p1

    :goto_16
    return-wide v0
.end method

.method private static blacklist compare(DLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Z
    .registers 12
    .param p0, "point"    # D
    .param p2, "a"    # Ljava/util/function/DoubleUnaryOperator;
    .param p3, "b"    # Ljava/util/function/DoubleUnaryOperator;

    .line 3663
    invoke-interface {p2, p0, p1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    .line 3664
    .local v0, "rA":D
    invoke-interface {p3, p0, p1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    .line 3665
    .local v2, "rB":D
    sub-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_19

    const/4 v4, 0x1

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    :goto_1a
    return v4
.end method

.method private static greylist-max-o computePrimaries([F)[F
    .registers 19
    .param p0, "toXYZ"    # [F

    .line 3821
    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_60

    invoke-static {v0, v2}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object v2

    .line 3822
    .local v2, "r":[F
    new-array v3, v1, [F

    fill-array-data v3, :array_6a

    invoke-static {v0, v3}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object v3

    .line 3823
    .local v3, "g":[F
    new-array v4, v1, [F

    fill-array-data v4, :array_74

    invoke-static {v0, v4}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object v4

    .line 3825
    .local v4, "b":[F
    const/4 v5, 0x0

    aget v6, v2, v5

    const/4 v7, 0x1

    aget v8, v2, v7

    add-float/2addr v6, v8

    const/4 v8, 0x2

    aget v9, v2, v8

    add-float/2addr v6, v9

    .line 3826
    .local v6, "rSum":F
    aget v9, v3, v5

    aget v10, v3, v7

    add-float/2addr v9, v10

    aget v10, v3, v8

    add-float/2addr v9, v10

    .line 3827
    .local v9, "gSum":F
    aget v10, v4, v5

    aget v11, v4, v7

    add-float/2addr v10, v11

    aget v11, v4, v8

    add-float/2addr v10, v11

    .line 3829
    .local v10, "bSum":F
    aget v11, v2, v5

    div-float/2addr v11, v6

    aget v12, v2, v7

    div-float/2addr v12, v6

    aget v13, v3, v5

    div-float/2addr v13, v9

    aget v14, v3, v7

    div-float/2addr v14, v9

    aget v15, v4, v5

    div-float/2addr v15, v10

    aget v16, v4, v7

    div-float v16, v16, v10

    move/from16 v17, v1

    const/4 v1, 0x6

    new-array v1, v1, [F

    aput v11, v1, v5

    aput v12, v1, v7

    aput v13, v1, v8

    aput v14, v1, v17

    const/4 v5, 0x4

    aput v15, v1, v5

    const/4 v5, 0x5

    aput v16, v1, v5

    return-object v1

    :array_60
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_6a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_74
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static greylist-max-o computeWhitePoint([F)[F
    .registers 8
    .param p0, "toXYZ"    # [F

    .line 3848
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_22

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object v0

    .line 3849
    .local v0, "w":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    add-float/2addr v2, v4

    const/4 v4, 0x2

    aget v5, v0, v4

    add-float/2addr v2, v5

    .line 3850
    .local v2, "sum":F
    aget v5, v0, v1

    div-float/2addr v5, v2

    aget v6, v0, v3

    div-float/2addr v6, v2

    new-array v4, v4, [F

    aput v5, v4, v1

    aput v6, v4, v3

    return-object v4

    :array_22
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static greylist-max-o computeXYZMatrix([F[F)[F
    .registers 37
    .param p0, "primaries"    # [F
    .param p1, "whitePoint"    # [F

    .line 3927
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 3928
    .local v1, "Rx":F
    const/4 v2, 0x1

    aget v3, p0, v2

    .line 3929
    .local v3, "Ry":F
    const/4 v4, 0x2

    aget v5, p0, v4

    .line 3930
    .local v5, "Gx":F
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 3931
    .local v7, "Gy":F
    const/4 v8, 0x4

    aget v9, p0, v8

    .line 3932
    .local v9, "Bx":F
    const/4 v10, 0x5

    aget v11, p0, v10

    .line 3933
    .local v11, "By":F
    aget v12, p1, v0

    .line 3934
    .local v12, "Wx":F
    aget v13, p1, v2

    .line 3936
    .local v13, "Wy":F
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v15, v14, v1

    div-float/2addr v15, v3

    .line 3937
    .local v15, "oneRxRy":F
    sub-float v16, v14, v5

    div-float v16, v16, v7

    .line 3938
    .local v16, "oneGxGy":F
    sub-float v17, v14, v9

    div-float v17, v17, v11

    .line 3939
    .local v17, "oneBxBy":F
    sub-float v18, v14, v12

    div-float v18, v18, v13

    .line 3941
    .local v18, "oneWxWy":F
    div-float v19, v1, v3

    .line 3942
    .local v19, "RxRy":F
    div-float v20, v5, v7

    .line 3943
    .local v20, "GxGy":F
    div-float v21, v9, v11

    .line 3944
    .local v21, "BxBy":F
    div-float v22, v12, v13

    .line 3946
    .local v22, "WxWy":F
    sub-float v23, v18, v15

    sub-float v24, v20, v19

    mul-float v23, v23, v24

    sub-float v24, v22, v19

    sub-float v25, v16, v15

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    sub-float v24, v17, v15

    sub-float v25, v20, v19

    mul-float v24, v24, v25

    sub-float v25, v21, v19

    sub-float v26, v16, v15

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    div-float v23, v23, v24

    .line 3949
    .local v23, "BY":F
    sub-float v24, v22, v19

    sub-float v25, v21, v19

    mul-float v25, v25, v23

    sub-float v24, v24, v25

    sub-float v25, v20, v19

    div-float v24, v24, v25

    .line 3950
    .local v24, "GY":F
    sub-float v25, v14, v24

    sub-float v25, v25, v23

    .line 3952
    .local v25, "RY":F
    div-float v26, v25, v3

    .line 3953
    .local v26, "RYRy":F
    div-float v27, v24, v7

    .line 3954
    .local v27, "GYGy":F
    div-float v28, v23, v11

    .line 3956
    .local v28, "BYBy":F
    mul-float v29, v26, v1

    sub-float v30, v14, v1

    sub-float v30, v30, v3

    mul-float v30, v30, v26

    mul-float v31, v27, v5

    sub-float v32, v14, v5

    sub-float v32, v32, v7

    mul-float v32, v32, v27

    mul-float v33, v28, v9

    sub-float/2addr v14, v9

    sub-float/2addr v14, v11

    mul-float v14, v14, v28

    move/from16 v34, v0

    const/16 v0, 0x9

    new-array v0, v0, [F

    aput v29, v0, v34

    aput v25, v0, v2

    aput v30, v0, v4

    aput v31, v0, v6

    aput v24, v0, v8

    aput v32, v0, v10

    const/4 v2, 0x6

    aput v33, v0, v2

    const/4 v2, 0x7

    aput v23, v0, v2

    const/16 v2, 0x8

    aput v14, v0, v2

    return-object v0
.end method

.method private static greylist-max-o contains([F[F)Z
    .registers 15
    .param p0, "p1"    # [F
    .param p1, "p2"    # [F

    .line 3786
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    const/4 v4, 0x2

    aget v5, p0, v4

    aget v6, p1, v4

    sub-float/2addr v5, v6

    const/4 v6, 0x3

    aget v7, p0, v6

    aget v8, p1, v6

    sub-float/2addr v7, v8

    const/4 v8, 0x4

    aget v9, p0, v8

    aget v10, p1, v8

    sub-float/2addr v9, v10

    const/4 v10, 0x5

    aget v11, p0, v10

    aget v12, p1, v10

    sub-float/2addr v11, v12

    const/4 v12, 0x6

    new-array v12, v12, [F

    aput v1, v12, v0

    aput v3, v12, v2

    aput v5, v12, v4

    aput v7, v12, v6

    aput v9, v12, v8

    aput v11, v12, v10

    .line 3792
    .local v12, "p0":[F
    aget v1, v12, v0

    aget v3, v12, v2

    aget v5, p1, v0

    aget v7, p1, v8

    sub-float/2addr v5, v7

    aget v7, p1, v2

    aget v9, p1, v10

    sub-float/2addr v7, v9

    invoke-static {v1, v3, v5, v7}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_be

    aget v1, p1, v0

    aget v5, p1, v4

    sub-float/2addr v1, v5

    aget v5, p1, v2

    aget v7, p1, v6

    sub-float/2addr v5, v7

    aget v7, v12, v0

    aget v9, v12, v2

    .line 3793
    invoke-static {v1, v5, v7, v9}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_61

    goto :goto_be

    .line 3797
    :cond_61
    aget v1, v12, v4

    aget v5, v12, v6

    aget v7, p1, v4

    aget v9, p1, v0

    sub-float/2addr v7, v9

    aget v9, p1, v6

    aget v11, p1, v2

    sub-float/2addr v9, v11

    invoke-static {v1, v5, v7, v9}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_bd

    aget v1, p1, v4

    aget v5, p1, v8

    sub-float/2addr v1, v5

    aget v5, p1, v6

    aget v7, p1, v10

    sub-float/2addr v5, v7

    aget v7, v12, v4

    aget v9, v12, v6

    .line 3798
    invoke-static {v1, v5, v7, v9}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_8e

    goto :goto_bd

    .line 3802
    :cond_8e
    aget v1, v12, v8

    aget v5, v12, v10

    aget v7, p1, v8

    aget v4, p1, v4

    sub-float/2addr v7, v4

    aget v4, p1, v10

    aget v6, p1, v6

    sub-float/2addr v4, v6

    invoke-static {v1, v5, v7, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_bc

    aget v1, p1, v8

    aget v4, p1, v0

    sub-float/2addr v1, v4

    aget v4, p1, v10

    aget v5, p1, v2

    sub-float/2addr v4, v5

    aget v5, v12, v8

    aget v6, v12, v10

    .line 3803
    invoke-static {v1, v4, v5, v6}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_bb

    goto :goto_bc

    .line 3806
    :cond_bb
    return v2

    .line 3804
    :cond_bc
    :goto_bc
    return v0

    .line 3799
    :cond_bd
    :goto_bd
    return v0

    .line 3794
    :cond_be
    :goto_be
    return v0
.end method

.method private static greylist-max-o cross(FFFF)F
    .registers 6
    .param p0, "ax"    # F
    .param p1, "ay"    # F
    .param p2, "bx"    # F
    .param p3, "by"    # F

    .line 3720
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method private static blacklist generateEOTF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Ljava/util/function/DoubleUnaryOperator;
    .registers 5
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 2704
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->-$$Nest$misHLGish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2705
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda7;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    return-object v0

    .line 2706
    :cond_c
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->-$$Nest$misPQish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2707
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda8;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    return-object v0

    .line 2709
    :cond_18
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2c

    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2c

    .line 2710
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda9;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    goto :goto_31

    .line 2712
    :cond_2c
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda10;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    .line 2709
    :goto_31
    return-object v0
.end method

.method private static blacklist generateOETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Ljava/util/function/DoubleUnaryOperator;
    .registers 5
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 2690
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->-$$Nest$misHLGish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2691
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    return-object v0

    .line 2692
    :cond_c
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->-$$Nest$misPQish(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2693
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda3;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    return-object v0

    .line 2695
    :cond_18
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2c

    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2c

    .line 2696
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda4;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    goto :goto_31

    .line 2698
    :cond_2c
    new-instance v0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda5;-><init>(Landroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    .line 2695
    :goto_31
    return-object v0
.end method

.method private static blacklist isGray([F)Z
    .registers 4
    .param p0, "toXYZ"    # [F

    .line 3657
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_31

    const/4 v0, 0x1

    aget v1, p0, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_31

    const/4 v1, 0x2

    aget v1, p0, v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_31

    const/4 v1, 0x3

    aget v1, p0, v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_31

    const/4 v1, 0x5

    aget v1, p0, v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_31

    const/4 v1, 0x6

    aget v1, p0, v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_31

    const/4 v1, 0x7

    aget v1, p0, v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0
.end method

.method private static greylist-max-o isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z
    .registers 14
    .param p0, "primaries"    # [F
    .param p1, "whitePoint"    # [F
    .param p2, "OETF"    # Ljava/util/function/DoubleUnaryOperator;
    .param p3, "EOTF"    # Ljava/util/function/DoubleUnaryOperator;
    .param p4, "min"    # F
    .param p5, "max"    # F
    .param p6, "id"    # I

    .line 3628
    const/4 v0, 0x1

    if-nez p6, :cond_4

    return v0

    .line 3629
    :cond_4
    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetSRGB_PRIMARIES()[F

    move-result-object v1

    invoke-static {p0, v1}, Landroid/graphics/ColorSpace;->-$$Nest$smcompare([F[F)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 3630
    return v2

    .line 3632
    :cond_10
    sget-object v1, Landroid/graphics/ColorSpace$Rgb;->ILLUMINANT_D65:[F

    invoke-static {p1, v1}, Landroid/graphics/ColorSpace;->-$$Nest$smcompare([F[F)Z

    move-result v1

    if-nez v1, :cond_19

    .line 3633
    return v2

    .line 3636
    :cond_19
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_1f

    return v2

    .line 3637
    :cond_1f
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p5, v1

    if-eqz v1, :cond_26

    return v2

    .line 3641
    :cond_26
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    .line 3643
    .local v1, "srgb":Landroid/graphics/ColorSpace$Rgb;
    const-wide/16 v3, 0x0

    .local v3, "x":D
    :goto_30
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_4f

    .line 3644
    iget-object v5, v1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-static {v3, v4, p2, v5}, Landroid/graphics/ColorSpace$Rgb;->compare(DLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Z

    move-result v5

    if-nez v5, :cond_3f

    return v2

    .line 3645
    :cond_3f
    iget-object v5, v1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-static {v3, v4, p3, v5}, Landroid/graphics/ColorSpace$Rgb;->compare(DLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Z

    move-result v5

    if-nez v5, :cond_48

    return v2

    .line 3643
    :cond_48
    const-wide v5, 0x3f70101010101010L    # 0.00392156862745098

    add-double/2addr v3, v5

    goto :goto_30

    .line 3648
    .end local v3    # "x":D
    :cond_4f
    return v0
.end method

.method private static greylist-max-o isWideGamut([FFF)Z
    .registers 5
    .param p0, "primaries"    # [F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 3685
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v0

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetNTSC_1953_PRIMARIES()[F

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v1

    div-float/2addr v0, v1

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetSRGB_PRIMARIES()[F

    move-result-object v0

    .line 3686
    invoke-static {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->contains([F[F)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_1e
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2b

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2b

    :cond_29
    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 3685
    :goto_2c
    return v0
.end method

.method static synthetic blacklist lambda$generateEOTF$4(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 5
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 2705
    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->-$$Nest$smtransferHLGEOTF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$generateEOTF$5(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 5
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 2707
    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->-$$Nest$smtransferST2048OETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$generateEOTF$6(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 15
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 2710
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    .end local p1    # "x":D
    .local v0, "x":D
    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->-$$Nest$smresponse(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method static synthetic blacklist lambda$generateEOTF$7(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 21
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 2712
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v6, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide/from16 v16, v1

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v17}, Landroid/graphics/ColorSpace;->-$$Nest$smresponse(DDDDDDDD)D

    move-result-wide v4

    return-wide v4
.end method

.method static synthetic blacklist lambda$generateOETF$0(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 5
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 2691
    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->-$$Nest$smtransferHLGOETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$generateOETF$1(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 5
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 2693
    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->-$$Nest$smtransferST2048OETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$generateOETF$2(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 15
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 2696
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    .end local p1    # "x":D
    .local v0, "x":D
    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->-$$Nest$smrcpResponse(DDDDDD)D

    move-result-wide p1

    return-wide p1
.end method

.method static synthetic blacklist lambda$generateOETF$3(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 21
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 2698
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v6, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide/from16 v16, v1

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v17}, Landroid/graphics/ColorSpace;->-$$Nest$smrcpResponse(DDDDDDDD)D

    move-result-wide v4

    return-wide v4
.end method

.method static synthetic blacklist lambda$new$8(DD)D
    .registers 8
    .param p0, "gamma"    # D
    .param p2, "x"    # D

    .line 3032
    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_7

    goto :goto_8

    :cond_7
    move-wide v0, p2

    :goto_8
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$new$9(DD)D
    .registers 7
    .param p0, "gamma"    # D
    .param p2, "x"    # D

    .line 3034
    const-wide/16 v0, 0x0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_7

    goto :goto_8

    :cond_7
    move-wide v0, p2

    :goto_8
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static greylist-max-o xyPrimaries([F)[F
    .registers 10
    .param p0, "primaries"    # [F

    .line 3864
    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 3867
    .local v1, "xyPrimaries":[F
    array-length v2, p0

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-ne v2, v3, :cond_48

    .line 3870
    aget v2, p0, v4

    const/4 v3, 0x1

    aget v5, p0, v3

    add-float/2addr v2, v5

    const/4 v5, 0x2

    aget v6, p0, v5

    add-float/2addr v2, v6

    .line 3871
    .local v2, "sum":F
    aget v6, p0, v4

    div-float/2addr v6, v2

    aput v6, v1, v4

    .line 3872
    aget v4, p0, v3

    div-float/2addr v4, v2

    aput v4, v1, v3

    .line 3874
    const/4 v3, 0x3

    aget v4, p0, v3

    const/4 v6, 0x4

    aget v7, p0, v6

    add-float/2addr v4, v7

    const/4 v7, 0x5

    aget v8, p0, v7

    add-float/2addr v4, v8

    .line 3875
    .end local v2    # "sum":F
    .local v4, "sum":F
    aget v2, p0, v3

    div-float/2addr v2, v4

    aput v2, v1, v5

    .line 3876
    aget v2, p0, v6

    div-float/2addr v2, v4

    aput v2, v1, v3

    .line 3878
    aget v2, p0, v0

    const/4 v3, 0x7

    aget v5, p0, v3

    add-float/2addr v2, v5

    const/16 v5, 0x8

    aget v5, p0, v5

    add-float/2addr v2, v5

    .line 3879
    .end local v4    # "sum":F
    .restart local v2    # "sum":F
    aget v0, p0, v0

    div-float/2addr v0, v2

    aput v0, v1, v6

    .line 3880
    aget v0, p0, v3

    div-float/2addr v0, v2

    aput v0, v1, v7

    .line 3881
    .end local v2    # "sum":F
    goto :goto_4b

    .line 3882
    :cond_48
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3885
    :goto_4b
    return-object v1
.end method

.method private static greylist-max-o xyWhitePoint([F)[F
    .registers 7
    .param p0, "whitePoint"    # [F

    .line 3899
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 3902
    .local v1, "xyWhitePoint":[F
    array-length v2, p0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1c

    .line 3903
    aget v2, p0, v4

    const/4 v3, 0x1

    aget v5, p0, v3

    add-float/2addr v2, v5

    aget v0, p0, v0

    add-float/2addr v2, v0

    .line 3904
    .local v2, "sum":F
    aget v0, p0, v4

    div-float/2addr v0, v2

    aput v0, v1, v4

    .line 3905
    aget v0, p0, v3

    div-float/2addr v0, v2

    aput v0, v1, v3

    .line 3906
    .end local v2    # "sum":F
    goto :goto_1f

    .line 3907
    :cond_1c
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3910
    :goto_1f
    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 3568
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 3569
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6e

    .line 3570
    :cond_12
    invoke-super {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 3572
    :cond_19
    move-object v2, p1

    check-cast v2, Landroid/graphics/ColorSpace$Rgb;

    .line 3574
    .local v2, "rgb":Landroid/graphics/ColorSpace$Rgb;
    iget v3, v2, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iget v4, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_27

    return v1

    .line 3575
    :cond_27
    iget v3, v2, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iget v4, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_32

    return v1

    .line 3576
    :cond_32
    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object v4, v2, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_3d

    return v1

    .line 3577
    :cond_3d
    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v4, v2, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_48

    return v1

    .line 3578
    :cond_48
    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v3, :cond_55

    .line 3579
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-object v1, v2, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3580
    :cond_55
    iget-object v3, v2, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v3, :cond_5a

    .line 3581
    return v0

    .line 3584
    :cond_5a
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v3, v2, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v0, v3}, Ljava/util/function/DoubleUnaryOperator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    return v1

    .line 3585
    :cond_65
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v1, v2, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v0, v1}, Ljava/util/function/DoubleUnaryOperator;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3569
    .end local v2    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    :cond_6e
    :goto_6e
    return v1
.end method

.method public whitelist fromLinear(FFF)[F
    .registers 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 3512
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->fromLinear([F)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist fromLinear([F)[F
    .registers 6
    .param p1, "v"    # [F

    .line 3535
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3536
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3537
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3538
    return-object p1
.end method

.method public whitelist fromXyz([F)[F
    .registers 6
    .param p1, "v"    # [F

    .line 3555
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    .line 3556
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3557
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3558
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3559
    return-object p1
.end method

.method public whitelist getEotf()Ljava/util/function/DoubleUnaryOperator;
    .registers 2

    .line 3397
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public whitelist getInverseTransform()[F
    .registers 3

    .line 3348
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInverseTransform([F)[F
    .registers 5
    .param p1, "inverseTransform"    # [F

    .line 3328
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3329
    return-object p1
.end method

.method public whitelist getMaxValue(I)F
    .registers 3
    .param p1, "component"    # I

    .line 3440
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    return v0
.end method

.method public whitelist getMinValue(I)F
    .registers 3
    .param p1, "component"    # I

    .line 3435
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    return v0
.end method

.method blacklist getNativeInstance()J
    .registers 5

    .line 2670
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 2675
    iget-wide v0, p0, Landroid/graphics/ColorSpace$Rgb;->mNativePtr:J

    return-wide v0

    .line 2672
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorSpace must use an ICC parametric transfer function! used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getOetf()Ljava/util/function/DoubleUnaryOperator;
    .registers 2

    .line 3373
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public whitelist getPrimaries()[F
    .registers 3

    .line 3264
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrimaries([F)[F
    .registers 5
    .param p1, "primaries"    # [F

    .line 3243
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3244
    return-object p1
.end method

.method public whitelist getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .registers 3

    .line 3415
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetBT2020_PQ_TRANSFER_PARAMETERS()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v1

    .line 3416
    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {}, Landroid/graphics/ColorSpace;->-$$Nest$sfgetBT2020_HLG_TRANSFER_PARAMETERS()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v1

    .line 3417
    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3418
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object v0

    .line 3420
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTransform()[F
    .registers 3

    .line 3306
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTransform([F)[F
    .registers 5
    .param p1, "transform"    # [F

    .line 3286
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3287
    return-object p1
.end method

.method public whitelist getWhitePoint()[F
    .registers 3

    .line 3220
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWhitePoint([F)[F
    .registers 4
    .param p1, "whitePoint"    # [F

    .line 3202
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, p1, v1

    .line 3203
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, p1, v1

    .line 3204
    return-object p1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 3590
    invoke-super {p0}, Landroid/graphics/ColorSpace;->hashCode()I

    move-result v0

    .line 3591
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    .line 3592
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    .line 3593
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_27

    iget v2, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_28

    :cond_27
    move v2, v4

    :goto_28
    add-int/2addr v1, v2

    .line 3594
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_38

    iget v2, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_39

    :cond_38
    move v2, v4

    :goto_39
    add-int/2addr v0, v2

    .line 3595
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    .line 3596
    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v2, :cond_46

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->hashCode()I

    move-result v4

    :cond_46
    add-int/2addr v1, v4

    .line 3597
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v0, :cond_5d

    .line 3598
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v2}, Ljava/util/function/DoubleUnaryOperator;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 3599
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-interface {v2}, Ljava/util/function/DoubleUnaryOperator;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 3601
    .end local v0    # "result":I
    .restart local v1    # "result":I
    :cond_5d
    return v1
.end method

.method public whitelist isSrgb()Z
    .registers 2

    .line 3425
    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    return v0
.end method

.method public whitelist isWideGamut()Z
    .registers 2

    .line 3430
    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    return v0
.end method

.method public whitelist toLinear(FFF)[F
    .registers 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 3463
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->toLinear([F)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist toLinear([F)[F
    .registers 6
    .param p1, "v"    # [F

    .line 3486
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3487
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3488
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3489
    return-object p1
.end method

.method public whitelist toXyz([F)[F
    .registers 6
    .param p1, "v"    # [F

    .line 3545
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3546
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3547
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3548
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-$$Nest$smmul3x3Float3([F[F)[F

    move-result-object v0

    return-object v0
.end method
