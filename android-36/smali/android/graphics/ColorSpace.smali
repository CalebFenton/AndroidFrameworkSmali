.class public abstract Landroid/graphics/ColorSpace;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Model;,
        Landroid/graphics/ColorSpace$RenderIntent;,
        Landroid/graphics/ColorSpace$Connector;,
        Landroid/graphics/ColorSpace$Rgb;,
        Landroid/graphics/ColorSpace$Named;,
        Landroid/graphics/ColorSpace$Adaptation;,
        Landroid/graphics/ColorSpace$Xyz;,
        Landroid/graphics/ColorSpace$Lab;,
        Landroid/graphics/ColorSpace$OkLab;
    }
.end annotation


# static fields
.field private static final blacklist BT2020_HLG_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

.field private static final blacklist BT2020_PQ_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

.field private static final blacklist BT2020_PRIMARIES:[F

.field private static final blacklist DCI_P3_PRIMARIES:[F

.field private static final blacklist GRAY_PRIMARIES:[F

.field public static final whitelist ILLUMINANT_A:[F

.field public static final whitelist ILLUMINANT_B:[F

.field public static final whitelist ILLUMINANT_C:[F

.field public static final whitelist ILLUMINANT_D50:[F

.field private static final greylist-max-o ILLUMINANT_D50_XYZ:[F

.field public static final whitelist ILLUMINANT_D55:[F

.field public static final whitelist ILLUMINANT_D60:[F

.field public static final whitelist ILLUMINANT_D65:[F

.field public static final whitelist ILLUMINANT_D75:[F

.field public static final whitelist ILLUMINANT_E:[F

.field public static final whitelist MAX_ID:I = 0x3f

.field public static final whitelist MIN_ID:I = -0x1

.field private static final greylist-max-o NTSC_1953_PRIMARIES:[F

.field private static final blacklist SMPTE_170M_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

.field private static final greylist-max-o SRGB_PRIMARIES:[F

.field private static final blacklist SRGB_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

.field private static final blacklist sDataToColorSpaces:Landroid/util/SparseIntArray;

.field private static final blacklist sNamedColorSpaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/ColorSpace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mId:I

.field private final greylist-max-o mModel:Landroid/graphics/ColorSpace$Model;

.field private final greylist-max-o mName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetBT2020_HLG_TRANSFER_PARAMETERS()Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .registers 1

    sget-object v0, Landroid/graphics/ColorSpace;->BT2020_HLG_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetBT2020_PQ_TRANSFER_PARAMETERS()Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .registers 1

    sget-object v0, Landroid/graphics/ColorSpace;->BT2020_PQ_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetGRAY_PRIMARIES()[F
    .registers 1

    sget-object v0, Landroid/graphics/ColorSpace;->GRAY_PRIMARIES:[F

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetILLUMINANT_D50_XYZ()[F
    .registers 1

    sget-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetNTSC_1953_PRIMARIES()[F
    .registers 1

    sget-object v0, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSRGB_PRIMARIES()[F
    .registers 1

    sget-object v0, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smadaptToIlluminantD50([F[F)[F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->adaptToIlluminantD50([F[F)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smchromaticAdaptation([F[F[F)[F
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smclamp(FFF)F
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->clamp(FFF)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcompare([F[F)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminverse3x3([F)[F
    .registers 1

    invoke-static {p0}, Landroid/graphics/ColorSpace;->inverse3x3([F)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmul3x3([F[F)[F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmul3x3Diag([F[F)[F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Diag([F[F)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smmul3x3Float3([F[F)[F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smrcpResponse(DDDDDD)D
    .registers 12

    invoke-static/range {p0 .. p11}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smrcpResponse(DDDDDDDD)D
    .registers 16

    invoke-static/range {p0 .. p15}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smresponse(DDDDDD)D
    .registers 12

    invoke-static/range {p0 .. p11}, Landroid/graphics/ColorSpace;->response(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smresponse(DDDDDDDD)D
    .registers 16

    invoke-static/range {p0 .. p15}, Landroid/graphics/ColorSpace;->response(DDDDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtransferHLGEOTF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->transferHLGEOTF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtransferHLGOETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->transferHLGOETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtransferST2048OETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->transferST2048OETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smxyYToXyz([F)[F
    .registers 1

    invoke-static {p0}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 21

    .line 151
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_4de

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_A:[F

    .line 156
    new-array v1, v0, [F

    fill-array-data v1, :array_4e6

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_B:[F

    .line 161
    new-array v1, v0, [F

    fill-array-data v1, :array_4ee

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_C:[F

    .line 167
    new-array v1, v0, [F

    fill-array-data v1, :array_4f6

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    .line 172
    new-array v1, v0, [F

    fill-array-data v1, :array_4fe

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_D55:[F

    .line 177
    new-array v1, v0, [F

    fill-array-data v1, :array_506

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_D60:[F

    .line 183
    new-array v1, v0, [F

    fill-array-data v1, :array_50e

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    .line 188
    new-array v1, v0, [F

    fill-array-data v1, :array_516

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_D75:[F

    .line 193
    new-array v1, v0, [F

    fill-array-data v1, :array_51e

    sput-object v1, Landroid/graphics/ColorSpace;->ILLUMINANT_E:[F

    .line 208
    const/4 v1, 0x6

    new-array v2, v1, [F

    fill-array-data v2, :array_526

    sput-object v2, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    .line 209
    new-array v2, v1, [F

    fill-array-data v2, :array_536

    sput-object v2, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    .line 210
    new-array v2, v1, [F

    fill-array-data v2, :array_546

    sput-object v2, Landroid/graphics/ColorSpace;->DCI_P3_PRIMARIES:[F

    .line 212
    new-array v2, v1, [F

    fill-array-data v2, :array_556

    sput-object v2, Landroid/graphics/ColorSpace;->BT2020_PRIMARIES:[F

    .line 217
    new-array v2, v1, [F

    fill-array-data v2, :array_566

    sput-object v2, Landroid/graphics/ColorSpace;->GRAY_PRIMARIES:[F

    .line 219
    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_576

    sput-object v2, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    .line 221
    new-instance v3, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v10, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v12, 0x4003333333333333L    # 2.4

    const-wide v4, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v6, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v8, 0x3fb3d0722149b580L    # 0.07739938080495357

    invoke-direct/range {v3 .. v13}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sput-object v3, Landroid/graphics/ColorSpace;->SRGB_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 224
    new-instance v4, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v11, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v13, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v5, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v7, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v9, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    invoke-direct/range {v4 .. v14}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sput-object v4, Landroid/graphics/ColorSpace;->SMPTE_170M_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 228
    new-instance v5, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v16, -0x401a1076f23e9022L    # -0.685490157

    const-wide/high16 v18, -0x3ff8000000000000L    # -3.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide v10, 0x40165e05183e19b4L    # 5.591816309728916

    const-wide v12, 0x3fd23803fd659be6L    # 0.28466892

    const-wide v14, 0x3fe1eac9e840f18dL    # 0.55991073

    invoke-direct/range {v5 .. v19}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    sput-object v5, Landroid/graphics/ColorSpace;->BT2020_HLG_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 233
    new-instance v6, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v17, 0x40191c0d56e7162bL    # 6.277394636015326

    const-wide/high16 v19, -0x4000000000000000L    # -2.0

    const-wide v7, -0x40071dce7cd03537L    # -1.555223

    const-wide v9, 0x3ffdc46b69db65edL    # 1.860454

    const-wide v11, 0x3f89f9b5860989b1L    # 0.012683313515655966

    const-wide v13, 0x4032da0000000000L    # 18.8515625

    const-wide v15, -0x3fcd500000000000L    # -18.6875

    invoke-direct/range {v6 .. v20}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    sput-object v6, Landroid/graphics/ColorSpace;->BT2020_PQ_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 238
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    .line 241
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v2, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    .line 1597
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    sget-object v6, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v9, Landroid/graphics/ColorSpace;->SRGB_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    sget-object v5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1603
    invoke-virtual {v5}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v10

    const/4 v11, 0x0

    const-string/jumbo v5, "sRGB IEC61966-2.1"

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V

    .line 1597
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    sget-object v2, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    const/high16 v4, 0x8810000

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1606
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    sget-object v6, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v5, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1612
    invoke-virtual {v5}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    const/4 v13, 0x0

    const-string/jumbo v5, "sRGB IEC61966-2.1 (Linear)"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v13}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace-IA;)V

    .line 1606
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    sget-object v2, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    const/high16 v4, 0x8410000

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1615
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    sget-object v6, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v9, Landroid/graphics/ColorSpace$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Landroid/graphics/ColorSpace$$ExternalSyntheticLambda0;-><init>()V

    new-instance v10, Landroid/graphics/ColorSpace$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Landroid/graphics/ColorSpace$$ExternalSyntheticLambda1;-><init>()V

    sget-object v13, Landroid/graphics/ColorSpace;->SRGB_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    sget-object v5, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1624
    invoke-virtual {v5}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v14

    const/4 v15, 0x0

    const-string/jumbo v5, "scRGB-nl IEC 61966-2-2:2003"

    const/4 v8, 0x0

    const v11, -0x40b374bc    # -0.799f

    const v12, 0x40198937    # 2.399f

    invoke-direct/range {v4 .. v15}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V

    .line 1615
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    sget-object v2, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    const/high16 v4, 0x18810000

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1627
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    sget-object v6, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v5, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1633
    invoke-virtual {v5}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    const/4 v13, 0x0

    const-string/jumbo v5, "scRGB IEC 61966-2-2:2003"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/high16 v10, -0x41000000    # -0.5f

    const v11, 0x40eff7cf    # 7.499f

    invoke-direct/range {v4 .. v13}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace-IA;)V

    .line 1627
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    sget-object v2, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1636
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    .line 1635
    const/high16 v4, 0x18410000

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1637
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    sget-object v6, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v9, Landroid/graphics/ColorSpace;->SMPTE_170M_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    sget-object v5, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    .line 1643
    invoke-virtual {v5}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v10

    const/4 v11, 0x0

    const-string v5, "Rec. ITU-R BT.709-5"

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V

    .line 1637
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    sget-object v2, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    const/high16 v4, 0x10c10000

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1646
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    sget-object v6, Landroid/graphics/ColorSpace;->BT2020_PRIMARIES:[F

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v8, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v15, 0x3fb4d9e83e425aeeL    # 0.08145

    const-wide v17, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v9, 0x3fed1c03d1b450c3L    # 0.9096697898662786

    const-wide v11, 0x3fb71fe1725d79e9L    # 0.09033021013372146

    const-wide v13, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    invoke-direct/range {v8 .. v18}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v5, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    .line 1652
    invoke-virtual {v5}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v10

    const/4 v11, 0x0

    const-string v5, "Rec. ITU-R BT.2020-1"

    move-object v9, v8

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V

    .line 1646
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    sget-object v2, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    const/high16 v4, 0x8c60000

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1656
    sget-object v2, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    sget-object v6, Landroid/graphics/ColorSpace;->DCI_P3_PRIMARIES:[F

    new-array v7, v0, [F

    fill-array-data v7, :array_580

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    .line 1662
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    const/4 v13, 0x0

    const-string v5, "SMPTE RP 431-2-2007 DCI (P3)"

    const-wide v8, 0x4004cccccccccccdL    # 2.6

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v13}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace-IA;)V

    .line 1656
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    sget-object v0, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    const/high16 v3, 0x94a0000

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1665
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/graphics/ColorSpace$Rgb;

    sget-object v5, Landroid/graphics/ColorSpace;->DCI_P3_PRIMARIES:[F

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v8, Landroid/graphics/ColorSpace;->SRGB_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    sget-object v4, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    .line 1671
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v9

    const/4 v10, 0x0

    const-string v4, "Display P3"

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V

    .line 1665
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    sget-object v0, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    const/high16 v3, 0x88a0000

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1674
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/graphics/ColorSpace$Rgb;

    sget-object v5, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_C:[F

    sget-object v8, Landroid/graphics/ColorSpace;->SMPTE_170M_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    sget-object v4, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    .line 1680
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v9

    const-string v4, "NTSC (1953)"

    invoke-direct/range {v3 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V

    .line 1674
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/graphics/ColorSpace$Rgb;

    new-array v5, v1, [F

    fill-array-data v5, :array_588

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v8, Landroid/graphics/ColorSpace;->SMPTE_170M_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    sget-object v4, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    .line 1688
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v9

    const-string v4, "SMPTE-C RGB"

    invoke-direct/range {v3 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V

    .line 1682
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/graphics/ColorSpace$Rgb;

    new-array v5, v1, [F

    fill-array-data v5, :array_598

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v4, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    .line 1696
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    const/4 v12, 0x0

    const-string v4, "Adobe RGB (1998)"

    const-wide v7, 0x400199999999999aL    # 2.2

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct/range {v3 .. v12}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace-IA;)V

    .line 1690
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    sget-object v0, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    const/high16 v3, 0x90b0000

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1699
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/graphics/ColorSpace$Rgb;

    new-array v5, v1, [F

    fill-array-data v5, :array_5a8

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    new-instance v7, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v14, 0x3f9fff79c842fa51L    # 0.031248

    const-wide v16, 0x3ffccccccccccccdL    # 1.8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3fb0000000000000L    # 0.0625

    invoke-direct/range {v7 .. v17}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v4, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    .line 1705
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v9

    const/4 v10, 0x0

    const-string v4, "ROMM RGB ISO 22028-2:2013"

    move-object v8, v7

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V

    .line 1699
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/graphics/ColorSpace$Rgb;

    new-array v5, v1, [F

    fill-array-data v5, :array_5b8

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D60:[F

    sget-object v4, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    .line 1713
    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    const/4 v12, 0x0

    const-string v4, "SMPTE ST 2065-1:2012 ACES"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const v9, -0x38802000    # -65504.0f

    const v10, 0x477fe000    # 65504.0f

    invoke-direct/range {v3 .. v12}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace-IA;)V

    .line 1707
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/graphics/ColorSpace$Rgb;

    new-array v5, v1, [F

    fill-array-data v5, :array_5c8

    sget-object v6, Landroid/graphics/ColorSpace;->ILLUMINANT_D60:[F

    sget-object v1, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    .line 1721
    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    const-string v4, "Academy S-2014-004 ACEScg"

    invoke-direct/range {v3 .. v12}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace-IA;)V

    .line 1715
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/graphics/ColorSpace$Xyz;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    .line 1725
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    const-string v4, "Generic XYZ"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Landroid/graphics/ColorSpace$Xyz;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace-IA;)V

    .line 1723
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/graphics/ColorSpace$Lab;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    .line 1729
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    const-string v4, "Generic L*a*b*"

    invoke-direct {v2, v4, v3, v5}, Landroid/graphics/ColorSpace$Lab;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace-IA;)V

    .line 1727
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT2020_HLG:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Landroid/graphics/ColorSpace$Rgb;

    sget-object v8, Landroid/graphics/ColorSpace;->BT2020_PRIMARIES:[F

    sget-object v9, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v11, Landroid/graphics/ColorSpace$$ExternalSyntheticLambda2;

    invoke-direct {v11}, Landroid/graphics/ColorSpace$$ExternalSyntheticLambda2;-><init>()V

    new-instance v12, Landroid/graphics/ColorSpace$$ExternalSyntheticLambda3;

    invoke-direct {v12}, Landroid/graphics/ColorSpace$$ExternalSyntheticLambda3;-><init>()V

    sget-object v15, Landroid/graphics/ColorSpace;->BT2020_HLG_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020_HLG:Landroid/graphics/ColorSpace$Named;

    .line 1740
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v16

    const/16 v17, 0x0

    const-string v7, "Hybrid Log Gamma encoding"

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct/range {v6 .. v17}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V

    .line 1731
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    sget-object v0, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT2020_HLG:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    const/high16 v2, 0xa060000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1743
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT2020_PQ:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Landroid/graphics/ColorSpace$Rgb;

    sget-object v8, Landroid/graphics/ColorSpace;->BT2020_PRIMARIES:[F

    sget-object v9, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v11, Landroid/graphics/ColorSpace$$ExternalSyntheticLambda4;

    invoke-direct {v11}, Landroid/graphics/ColorSpace$$ExternalSyntheticLambda4;-><init>()V

    new-instance v12, Landroid/graphics/ColorSpace$$ExternalSyntheticLambda5;

    invoke-direct {v12}, Landroid/graphics/ColorSpace$$ExternalSyntheticLambda5;-><init>()V

    sget-object v15, Landroid/graphics/ColorSpace;->BT2020_PQ_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020_PQ:Landroid/graphics/ColorSpace$Named;

    .line 1752
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v16

    const-string v7, "Perceptual Quantizer encoding"

    invoke-direct/range {v6 .. v17}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V

    .line 1743
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    sget-object v0, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT2020_PQ:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    const/high16 v2, 0x9c60000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1755
    invoke-static {}, Lcom/android/graphics/flags/Flags;->okLabColorspace()Z

    move-result v0

    if-eqz v0, :cond_4a6

    .line 1756
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->OK_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/graphics/ColorSpace$OkLab;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->OK_LAB:Landroid/graphics/ColorSpace$Named;

    .line 1758
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v3

    const-string v4, "Oklab"

    invoke-direct {v2, v4, v3, v5}, Landroid/graphics/ColorSpace$OkLab;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace-IA;)V

    .line 1756
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    :cond_4a6
    invoke-static {}, Lcom/android/graphics/flags/Flags;->displayBt2020Colorspace()Z

    move-result v0

    if-eqz v0, :cond_4dd

    .line 1763
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_BT2020:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/graphics/ColorSpace$Rgb;

    sget-object v4, Landroid/graphics/ColorSpace;->BT2020_PRIMARIES:[F

    sget-object v5, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v7, Landroid/graphics/ColorSpace;->SRGB_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    sget-object v3, Landroid/graphics/ColorSpace$Named;->DISPLAY_BT2020:Landroid/graphics/ColorSpace$Named;

    .line 1769
    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    const/4 v9, 0x0

    const-string v3, "Display BT. 2020"

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace-IA;)V

    .line 1763
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    sget-object v0, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_BT2020:Landroid/graphics/ColorSpace$Named;

    .line 1772
    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    .line 1771
    const/high16 v2, 0x8860000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1774
    :cond_4dd
    return-void

    :array_4de
    .array-data 4
        0x3ee527e5    # 0.44757f
        0x3ed09d49    # 0.40745f
    .end array-data

    :array_4e6
    .array-data 4
        0x3eb2641b    # 0.34842f
        0x3eb4063a    # 0.35161f
    .end array-data

    :array_4ee
    .array-data 4
        0x3e9ec02f    # 0.31006f
        0x3ea1dfb9    # 0.31616f
    .end array-data

    :array_4f6
    .array-data 4
        0x3eb0fba9
        0x3eb78d50    # 0.3585f
    .end array-data

    :array_4fe
    .array-data 4
        0x3eaa32f4    # 0.33242f
        0x3eb1e258    # 0.34743f
    .end array-data

    :array_506
    .array-data 4
        0x3ea4b33e    # 0.32168f
        0x3eace315    # 0.33767f
    .end array-data

    :array_50e
    .array-data 4
        0x3ea01b86
        0x3ea8754f    # 0.32902f
    .end array-data

    :array_516
    .array-data 4
        0x3e991926    # 0.29902f
        0x3ea13405    # 0.31485f
    .end array-data

    :array_51e
    .array-data 4
        0x3eaaaa3b    # 0.33333f
        0x3eaaaa3b    # 0.33333f
    .end array-data

    :array_526
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_536
    .array-data 4
        0x3f2b851f    # 0.67f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e0f5c29    # 0.14f
        0x3da3d70a    # 0.08f
    .end array-data

    :array_546
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_556
    .array-data 4
        0x3f353f7d    # 0.708f
        0x3e958106    # 0.292f
        0x3e2e147b    # 0.17f
        0x3f4c0831    # 0.797f
        0x3e0624dd    # 0.131f
        0x3d3c6a7f    # 0.046f
    .end array-data

    :array_566
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_576
    .array-data 4
        0x3f76d699    # 0.964212f
        0x3f800000    # 1.0f
        0x3f533f85
    .end array-data

    :array_580
    .array-data 4
        0x3ea0c49c    # 0.314f
        0x3eb3b646    # 0.351f
    .end array-data

    :array_588
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3eae147b    # 0.34f
        0x3e9eb852    # 0.31f
        0x3f1851ec    # 0.595f
        0x3e1eb852    # 0.155f
        0x3d8f5c29    # 0.07f
    .end array-data

    :array_598
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_5a8
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x3e236e2f    # 0.1596f
        0x3f572474    # 0.8404f
        0x3d15e9e2    # 0.0366f
        0x38d1b717    # 1.0E-4f
    .end array-data

    :array_5b8
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x0
        0x3f800000    # 1.0f
        0x38d1b717    # 1.0E-4f
        -0x42624dd3    # -0.077f
    .end array-data

    :array_5c8
    .array-data 4
        0x3f36872b    # 0.713f
        0x3e960419    # 0.293f
        0x3e28f5c3    # 0.165f
        0x3f547ae1    # 0.83f
        0x3e03126f    # 0.128f
        0x3d343958    # 0.044f
    .end array-data
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Landroid/graphics/ColorSpace$Model;
    .param p3, "id"    # I

    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 983
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2c

    .line 988
    if-eqz p2, :cond_24

    .line 992
    const/4 v0, -0x1

    if-lt p3, v0, :cond_1c

    const/16 v0, 0x3f

    if-gt p3, v0, :cond_1c

    .line 997
    iput-object p1, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    .line 998
    iput-object p2, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    .line 999
    iput p3, p0, Landroid/graphics/ColorSpace;->mId:I

    .line 1000
    return-void

    .line 993
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The id must be between -1 and 63"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A color space must have a model"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name of a color space cannot be null and must contain at least 1 character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o absRcpResponse(DDDDDD)D
    .registers 28
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    .line 1856
    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_b

    neg-double v2, v0

    move-wide v4, v2

    goto :goto_c

    :cond_b
    move-wide v4, v0

    :goto_c
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    invoke-static/range {v4 .. v15}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method private static greylist-max-o absResponse(DDDDDD)D
    .registers 28
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    .line 1863
    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_b

    neg-double v2, v0

    move-wide v4, v2

    goto :goto_c

    :cond_b
    move-wide v4, v0

    :goto_c
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    invoke-static/range {v4 .. v15}, Landroid/graphics/ColorSpace;->response(DDDDDD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    return-wide v2
.end method

.method public static whitelist adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;
    .registers 3
    .param p0, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p1, "whitePoint"    # [F

    .line 1411
    sget-object v0, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    invoke-static {p0, p1, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[FLandroid/graphics/ColorSpace$Adaptation;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist adapt(Landroid/graphics/ColorSpace;[FLandroid/graphics/ColorSpace$Adaptation;)Landroid/graphics/ColorSpace;
    .registers 9
    .param p0, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p1, "whitePoint"    # [F
    .param p2, "adaptation"    # Landroid/graphics/ColorSpace$Adaptation;

    .line 1441
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_40

    .line 1442
    move-object v0, p0

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    .line 1443
    .local v0, "rgb":Landroid/graphics/ColorSpace$Rgb;
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmWhitePoint(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v1

    if-eqz v1, :cond_16

    return-object p0

    .line 1445
    :cond_16
    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1f

    .line 1446
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    goto :goto_23

    :cond_1f
    invoke-static {p1}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v1

    .line 1447
    .local v1, "xyz":[F
    :goto_23
    iget-object v2, p2, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    .line 1448
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getWhitePoint()[F

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v3

    .line 1447
    invoke-static {v2, v3, v1}, Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F

    move-result-object v2

    .line 1449
    .local v2, "adaptationTransform":[F
    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmTransform(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v3

    .line 1451
    .local v3, "transform":[F
    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v3, p1, v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;[F[FLandroid/graphics/ColorSpace-IA;)V

    return-object v4

    .line 1453
    .end local v0    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    .end local v1    # "xyz":[F
    .end local v2    # "adaptationTransform":[F
    .end local v3    # "transform":[F
    :cond_40
    return-object p0
.end method

.method private static blacklist adaptToIlluminantD50([F[F)[F
    .registers 6
    .param p0, "origWhitePoint"    # [F
    .param p1, "origTransform"    # [F

    .line 1467
    sget-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    .line 1468
    .local v0, "desired":[F
    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object p1

    .line 1470
    :cond_9
    invoke-static {v0}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v1

    .line 1471
    .local v1, "xyz":[F
    sget-object v2, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    iget-object v2, v2, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    .line 1472
    invoke-static {p0}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v3

    .line 1471
    invoke-static {v2, v3, v1}, Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F

    move-result-object v2

    .line 1473
    .local v2, "adaptationTransform":[F
    invoke-static {v2, p1}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v3

    return-object v3
.end method

.method public static whitelist cctToXyz(I)[F
    .registers 9
    .param p0, "cct"    # I

    .line 2061
    const/4 v0, 0x1

    if-lt p0, v0, :cond_90

    .line 2065
    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v2, p0

    div-float/2addr v1, v2

    .line 2066
    .local v1, "icct":F
    mul-float v2, v1, v1

    .line 2067
    .local v2, "icct2":F
    int-to-float v3, p0

    const/high16 v4, 0x457a0000    # 4000.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_24

    .line 2068
    const v3, 0x3f60b0a9

    mul-float/2addr v3, v1

    const v5, 0x3e383a54    # 0.17991f

    add-float/2addr v3, v5

    const v5, 0x3e6ffbc8

    mul-float/2addr v5, v2

    sub-float/2addr v3, v5

    const v5, 0x3e884164

    mul-float/2addr v5, v2

    mul-float/2addr v5, v1

    sub-float/2addr v3, v5

    goto :goto_37

    .line 2069
    :cond_24
    const v3, 0x3e63fa5a

    mul-float/2addr v3, v1

    const v5, 0x3e7628cc    # 0.24039f

    add-float/2addr v3, v5

    const v5, 0x4006d9b5

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    const v5, 0x4041a77a

    mul-float/2addr v5, v2

    mul-float/2addr v5, v1

    sub-float/2addr v3, v5

    :goto_37
    nop

    .line 2071
    .local v3, "x":F
    mul-float v5, v3, v3

    .line 2072
    .local v5, "x2":F
    int-to-float v6, p0

    const v7, 0x450ae000    # 2222.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_56

    .line 2073
    const v4, 0x400be030

    mul-float/2addr v4, v3

    const v6, -0x41b0f350

    add-float/2addr v4, v6

    const v6, 0x3fac8ee0

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    const v6, 0x3f8d9de8

    mul-float/2addr v6, v5

    mul-float/2addr v6, v3

    sub-float/2addr v4, v6

    goto :goto_82

    .line 2074
    :cond_56
    int-to-float v6, p0

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_6f

    .line 2075
    const v4, 0x4005d902

    mul-float/2addr v4, v3

    const v6, -0x41d47dda

    add-float/2addr v4, v6

    const v6, 0x3fafe553

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    const v6, 0x3f747772

    mul-float/2addr v6, v5

    mul-float/2addr v6, v3

    sub-float/2addr v4, v6

    goto :goto_82

    .line 2076
    :cond_6f
    const v4, 0x40701283

    mul-float/2addr v4, v3

    const v6, -0x41428d6b

    add-float/2addr v4, v6

    const v6, 0x40bbf2c9

    mul-float/2addr v6, v5

    sub-float/2addr v4, v6

    const v6, 0x40453b86

    mul-float/2addr v6, v5

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    :goto_82
    nop

    .line 2078
    .local v4, "y":F
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    aput v4, v6, v0

    invoke-static {v6}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v0

    return-object v0

    .line 2062
    .end local v1    # "icct":F
    .end local v2    # "icct2":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "x2":F
    :cond_90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Temperature must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist chromaticAdaptation(Landroid/graphics/ColorSpace$Adaptation;[F[F)[F
    .registers 6
    .param p0, "adaptation"    # Landroid/graphics/ColorSpace$Adaptation;
    .param p1, "srcWhitePoint"    # [F
    .param p2, "dstWhitePoint"    # [F

    .line 2100
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    array-length v0, p1

    if-ne v0, v1, :cond_f

    :cond_8
    array-length v0, p2

    if-eq v0, v2, :cond_17

    array-length v0, p2

    if-ne v0, v1, :cond_f

    goto :goto_17

    .line 2102
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A white point array must have 2 or 3 floats"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2104
    :cond_17
    :goto_17
    array-length v0, p1

    if-ne v0, v1, :cond_1f

    .line 2105
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    goto :goto_23

    :cond_1f
    invoke-static {p1}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v0

    .line 2106
    .local v0, "srcXyz":[F
    :goto_23
    array-length v2, p2

    if-ne v2, v1, :cond_2b

    .line 2107
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    goto :goto_2f

    :cond_2b
    invoke-static {p2}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v1

    .line 2109
    .local v1, "dstXyz":[F
    :goto_2f
    invoke-static {v0, v1}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 2110
    const/16 v2, 0x9

    new-array v2, v2, [F

    fill-array-data v2, :array_44

    return-object v2

    .line 2116
    :cond_3d
    iget-object v2, p0, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    invoke-static {v2, v0, v1}, Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F

    move-result-object v2

    return-object v2

    :array_44
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static greylist-max-o chromaticAdaptation([F[F[F)[F
    .registers 12
    .param p0, "matrix"    # [F
    .param p1, "srcWhitePoint"    # [F
    .param p2, "dstWhitePoint"    # [F

    .line 2037
    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    move-result-object v0

    .line 2038
    .local v0, "srcLMS":[F
    invoke-static {p0, p2}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    move-result-object v1

    .line 2040
    .local v1, "dstLMS":[F
    const/4 v2, 0x0

    aget v3, v1, v2

    aget v4, v0, v2

    div-float/2addr v3, v4

    const/4 v4, 0x1

    aget v5, v1, v4

    aget v6, v0, v4

    div-float/2addr v5, v6

    const/4 v6, 0x2

    aget v7, v1, v6

    aget v8, v0, v6

    div-float/2addr v7, v8

    const/4 v8, 0x3

    new-array v8, v8, [F

    aput v3, v8, v2

    aput v5, v8, v4

    aput v7, v8, v6

    .line 2041
    .local v8, "LMS":[F
    invoke-static {p0}, Landroid/graphics/ColorSpace;->inverse3x3([F)[F

    move-result-object v2

    invoke-static {v8, p0}, Landroid/graphics/ColorSpace;->mul3x3Diag([F[F)[F

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v2

    return-object v2
.end method

.method private static blacklist clamp(FFF)F
    .registers 4
    .param p0, "x"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 2237
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p1

    goto :goto_d

    :cond_6
    cmpl-float v0, p0, p2

    if-lez v0, :cond_c

    move v0, p2

    goto :goto_d

    :cond_c
    move v0, p0

    :goto_d
    return v0
.end method

.method private static greylist-max-o compare(Landroid/graphics/ColorSpace$Rgb$TransferParameters;Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z
    .registers 9
    .param p0, "a"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "b"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 1877
    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    .line 1878
    :cond_6
    if-eqz p0, :cond_70

    if-eqz p1, :cond_70

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v3, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    sub-double/2addr v1, v3

    .line 1879
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v1, v3

    if-gez v1, :cond_70

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    sub-double/2addr v1, v5

    .line 1880
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_70

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    sub-double/2addr v1, v5

    .line 1881
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_70

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    sub-double/2addr v1, v5

    .line 1882
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v5, 0x3f60624dd2f1a9fcL    # 0.002

    cmpg-double v1, v1, v5

    if-gez v1, :cond_70

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    sub-double/2addr v1, v5

    .line 1883
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_70

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    sub-double/2addr v1, v5

    .line 1884
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_70

    iget-wide v1, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    iget-wide v5, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    sub-double/2addr v1, v5

    .line 1885
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_70

    goto :goto_71

    :cond_70
    const/4 v0, 0x0

    .line 1878
    :goto_71
    return v0
.end method

.method private static greylist-max-o compare([F[F)Z
    .registers 6
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .line 1896
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1897
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_27

    .line 1898
    aget v2, p0, v1

    aget v3, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_24

    aget v2, p0, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_24

    const/4 v0, 0x0

    return v0

    .line 1897
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1900
    .end local v1    # "i":I
    :cond_27
    return v0
.end method

.method public static whitelist connect(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .registers 2
    .param p0, "source"    # Landroid/graphics/ColorSpace;

    .line 1359
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;
    .registers 5
    .param p0, "source"    # Landroid/graphics/ColorSpace;
    .param p1, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .line 1381
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Landroid/graphics/ColorSpace$Connector;->identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0

    .line 1383
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_24

    .line 1384
    new-instance v0, Landroid/graphics/ColorSpace$Connector$Rgb;

    move-object v1, p0

    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorSpace$Rgb;

    invoke-direct {v0, v1, v2, p1}, Landroid/graphics/ColorSpace$Connector$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0

    .line 1387
    :cond_24
    new-instance v0, Landroid/graphics/ColorSpace$Connector;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method

.method public static whitelist connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .registers 3
    .param p0, "source"    # Landroid/graphics/ColorSpace;
    .param p1, "destination"    # Landroid/graphics/ColorSpace;

    .line 1303
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {p0, p1, v0}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;
    .registers 6
    .param p0, "source"    # Landroid/graphics/ColorSpace;
    .param p1, "destination"    # Landroid/graphics/ColorSpace;
    .param p2, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .line 1329
    invoke-virtual {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Landroid/graphics/ColorSpace$Connector;->identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0

    .line 1331
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_27

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_27

    .line 1332
    new-instance v0, Landroid/graphics/ColorSpace$Connector$Rgb;

    move-object v1, p0

    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    move-object v2, p1

    check-cast v2, Landroid/graphics/ColorSpace$Rgb;

    invoke-direct {v0, v1, v2, p2}, Landroid/graphics/ColorSpace$Connector$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0

    .line 1335
    :cond_27
    new-instance v0, Landroid/graphics/ColorSpace$Connector;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method

.method static greylist-max-o get(I)Landroid/graphics/ColorSpace;
    .registers 5
    .param p0, "index"    # I

    .line 1491
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace;

    .line 1492
    .local v0, "colorspace":Landroid/graphics/ColorSpace;
    if-eqz v0, :cond_f

    .line 1495
    return-object v0

    .line 1493
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;
    .registers 4
    .param p0, "name"    # Landroid/graphics/ColorSpace$Named;

    .line 1557
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace;

    .line 1558
    .local v0, "colorSpace":Landroid/graphics/ColorSpace;
    if-nez v0, :cond_25

    .line 1559
    sget-object v1, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorSpace;

    return-object v1

    .line 1561
    :cond_25
    return-object v0
.end method

.method public static whitelist getFromDataSpace(I)Landroid/graphics/ColorSpace;
    .registers 3
    .param p0, "dataSpace"    # I

    .line 1512
    sget-object v0, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1513
    .local v0, "index":I
    if-eq v0, v1, :cond_e

    .line 1514
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(I)Landroid/graphics/ColorSpace;

    move-result-object v1

    return-object v1

    .line 1516
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o inverse3x3([F)[F
    .registers 26
    .param p0, "m"    # [F

    .line 1912
    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget v2, v0, v1

    .line 1913
    .local v2, "a":F
    const/4 v3, 0x3

    aget v4, v0, v3

    .line 1914
    .local v4, "b":F
    const/4 v5, 0x6

    aget v6, v0, v5

    .line 1915
    .local v6, "c":F
    const/4 v7, 0x1

    aget v8, v0, v7

    .line 1916
    .local v8, "d":F
    const/4 v9, 0x4

    aget v10, v0, v9

    .line 1917
    .local v10, "e":F
    const/4 v11, 0x7

    aget v12, v0, v11

    .line 1918
    .local v12, "f":F
    const/4 v13, 0x2

    aget v14, v0, v13

    .line 1919
    .local v14, "g":F
    const/4 v15, 0x5

    aget v16, v0, v15

    .line 1920
    .local v16, "h":F
    const/16 v17, 0x8

    aget v18, v0, v17

    .line 1922
    .local v18, "i":F
    mul-float v19, v10, v18

    mul-float v20, v12, v16

    sub-float v19, v19, v20

    .line 1923
    .local v19, "A":F
    mul-float v20, v12, v14

    mul-float v21, v8, v18

    sub-float v20, v20, v21

    .line 1924
    .local v20, "B":F
    mul-float v21, v8, v16

    mul-float v22, v10, v14

    sub-float v21, v21, v22

    .line 1926
    .local v21, "C":F
    mul-float v22, v2, v19

    mul-float v23, v4, v20

    add-float v22, v22, v23

    mul-float v23, v6, v21

    add-float v22, v22, v23

    .line 1928
    .local v22, "det":F
    move/from16 v23, v1

    array-length v1, v0

    new-array v1, v1, [F

    .line 1929
    .local v1, "inverted":[F
    div-float v24, v19, v22

    aput v24, v1, v23

    .line 1930
    div-float v23, v20, v22

    aput v23, v1, v7

    .line 1931
    div-float v7, v21, v22

    aput v7, v1, v13

    .line 1932
    mul-float v7, v6, v16

    mul-float v13, v4, v18

    sub-float/2addr v7, v13

    div-float v7, v7, v22

    aput v7, v1, v3

    .line 1933
    mul-float v3, v2, v18

    mul-float v7, v6, v14

    sub-float/2addr v3, v7

    div-float v3, v3, v22

    aput v3, v1, v9

    .line 1934
    mul-float v3, v4, v14

    mul-float v7, v2, v16

    sub-float/2addr v3, v7

    div-float v3, v3, v22

    aput v3, v1, v15

    .line 1935
    mul-float v3, v4, v12

    mul-float v7, v6, v10

    sub-float/2addr v3, v7

    div-float v3, v3, v22

    aput v3, v1, v5

    .line 1936
    mul-float v3, v6, v8

    mul-float v5, v2, v12

    sub-float/2addr v3, v5

    div-float v3, v3, v22

    aput v3, v1, v11

    .line 1937
    mul-float v3, v2, v10

    mul-float v5, v4, v8

    sub-float/2addr v3, v5

    div-float v3, v3, v22

    aput v3, v1, v17

    .line 1938
    return-object v1
.end method

.method static synthetic blacklist lambda$static$0(D)D
    .registers 14
    .param p0, "x"    # D

    .line 1620
    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    move-wide v0, p0

    .end local p0    # "x":D
    .local v0, "x":D
    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->absRcpResponse(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic blacklist lambda$static$1(D)D
    .registers 14
    .param p0, "x"    # D

    .line 1621
    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    move-wide v0, p0

    .end local p0    # "x":D
    .local v0, "x":D
    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->absResponse(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic blacklist lambda$static$2(D)D
    .registers 4
    .param p0, "x"    # D

    .line 1736
    sget-object v0, Landroid/graphics/ColorSpace;->BT2020_HLG_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p0, p1}, Landroid/graphics/ColorSpace;->transferHLGOETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$static$3(D)D
    .registers 4
    .param p0, "x"    # D

    .line 1737
    sget-object v0, Landroid/graphics/ColorSpace;->BT2020_HLG_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p0, p1}, Landroid/graphics/ColorSpace;->transferHLGEOTF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$static$4(D)D
    .registers 4
    .param p0, "x"    # D

    .line 1748
    sget-object v0, Landroid/graphics/ColorSpace;->BT2020_PQ_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p0, p1}, Landroid/graphics/ColorSpace;->transferST2048OETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$static$5(D)D
    .registers 4
    .param p0, "x"    # D

    .line 1749
    sget-object v0, Landroid/graphics/ColorSpace;->BT2020_PQ_TRANSFER_PARAMETERS:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p0, p1}, Landroid/graphics/ColorSpace;->transferST2048EOTF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist match([FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/ColorSpace;
    .registers 7
    .param p0, "toXYZD50"    # [F
    .param p1, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 1582
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1583
    .local v0, "colorspaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/ColorSpace;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorSpace;

    .line 1584
    .local v2, "colorSpace":Landroid/graphics/ColorSpace;
    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v3

    sget-object v4, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v3, v4, :cond_3b

    .line 1585
    sget-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    invoke-static {v2, v3}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorSpace$Rgb;

    .line 1586
    .local v3, "rgb":Landroid/graphics/ColorSpace$Rgb;
    invoke-static {v3}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmTransform(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v4

    invoke-static {p0, v4}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-static {v3}, Landroid/graphics/ColorSpace$Rgb;->-$$Nest$fgetmTransferParameters(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v4

    .line 1587
    invoke-static {p1, v4}, Landroid/graphics/ColorSpace;->compare(Landroid/graphics/ColorSpace$Rgb$TransferParameters;Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1588
    return-object v2

    .line 1591
    .end local v2    # "colorSpace":Landroid/graphics/ColorSpace;
    .end local v3    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    :cond_3b
    goto :goto_a

    .line 1593
    :cond_3c
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o mul3x3([F[F)[F
    .registers 15
    .param p0, "lhs"    # [F
    .param p1, "rhs"    # [F

    .line 1952
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1953
    .local v0, "r":[F
    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    mul-float/2addr v2, v3

    const/4 v3, 0x3

    aget v4, p0, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    const/4 v4, 0x6

    aget v6, p0, v4

    const/4 v7, 0x2

    aget v8, p1, v7

    mul-float/2addr v6, v8

    add-float/2addr v2, v6

    aput v2, v0, v1

    .line 1954
    aget v2, p0, v5

    aget v6, p1, v1

    mul-float/2addr v2, v6

    const/4 v6, 0x4

    aget v8, p0, v6

    aget v9, p1, v5

    mul-float/2addr v8, v9

    add-float/2addr v2, v8

    const/4 v8, 0x7

    aget v9, p0, v8

    aget v10, p1, v7

    mul-float/2addr v9, v10

    add-float/2addr v2, v9

    aput v2, v0, v5

    .line 1955
    aget v2, p0, v7

    aget v9, p1, v1

    mul-float/2addr v2, v9

    const/4 v9, 0x5

    aget v10, p0, v9

    aget v11, p1, v5

    mul-float/2addr v10, v11

    add-float/2addr v2, v10

    const/16 v10, 0x8

    aget v11, p0, v10

    aget v12, p1, v7

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aput v2, v0, v7

    .line 1956
    aget v2, p0, v1

    aget v11, p1, v3

    mul-float/2addr v2, v11

    aget v11, p0, v3

    aget v12, p1, v6

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aget v11, p0, v4

    aget v12, p1, v9

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aput v2, v0, v3

    .line 1957
    aget v2, p0, v5

    aget v11, p1, v3

    mul-float/2addr v2, v11

    aget v11, p0, v6

    aget v12, p1, v6

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aget v11, p0, v8

    aget v12, p1, v9

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aput v2, v0, v6

    .line 1958
    aget v2, p0, v7

    aget v11, p1, v3

    mul-float/2addr v2, v11

    aget v11, p0, v9

    aget v12, p1, v6

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aget v11, p0, v10

    aget v12, p1, v9

    mul-float/2addr v11, v12

    add-float/2addr v2, v11

    aput v2, v0, v9

    .line 1959
    aget v1, p0, v1

    aget v2, p1, v4

    mul-float/2addr v1, v2

    aget v2, p0, v3

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p0, v4

    aget v3, p1, v10

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 1960
    aget v1, p0, v5

    aget v2, p1, v4

    mul-float/2addr v1, v2

    aget v2, p0, v6

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p0, v8

    aget v3, p1, v10

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v8

    .line 1961
    aget v1, p0, v7

    aget v2, p1, v4

    mul-float/2addr v1, v2

    aget v2, p0, v9

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p0, v10

    aget v3, p1, v10

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v10

    .line 1962
    return-object v0
.end method

.method private static greylist-max-o mul3x3Diag([F[F)[F
    .registers 21
    .param p0, "lhs"    # [F
    .param p1, "rhs"    # [F

    .line 1999
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    mul-float/2addr v3, v4

    const/4 v4, 0x2

    aget v5, p0, v4

    aget v6, p1, v4

    mul-float/2addr v5, v6

    aget v6, p0, v0

    const/4 v7, 0x3

    aget v8, p1, v7

    mul-float/2addr v6, v8

    aget v8, p0, v2

    const/4 v9, 0x4

    aget v10, p1, v9

    mul-float/2addr v8, v10

    aget v10, p0, v4

    const/4 v11, 0x5

    aget v12, p1, v11

    mul-float/2addr v10, v12

    aget v12, p0, v0

    const/4 v13, 0x6

    aget v14, p1, v13

    mul-float/2addr v12, v14

    aget v14, p0, v2

    const/4 v15, 0x7

    aget v16, p1, v15

    mul-float v14, v14, v16

    aget v16, p0, v4

    const/16 v17, 0x8

    aget v18, p1, v17

    mul-float v16, v16, v18

    move/from16 v18, v0

    const/16 v0, 0x9

    new-array v0, v0, [F

    aput v1, v0, v18

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v7

    aput v8, v0, v9

    aput v10, v0, v11

    aput v12, v0, v13

    aput v14, v0, v15

    aput v16, v0, v17

    return-object v0
.end method

.method private static greylist-max-o mul3x3Float3([F[F)[F
    .registers 10
    .param p0, "lhs"    # [F
    .param p1, "rhs"    # [F

    .line 1977
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 1978
    .local v1, "r0":F
    const/4 v2, 0x1

    aget v3, p1, v2

    .line 1979
    .local v3, "r1":F
    const/4 v4, 0x2

    aget v5, p1, v4

    .line 1980
    .local v5, "r2":F
    aget v6, p0, v0

    mul-float/2addr v6, v1

    const/4 v7, 0x3

    aget v7, p0, v7

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const/4 v7, 0x6

    aget v7, p0, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    aput v6, p1, v0

    .line 1981
    aget v0, p0, v2

    mul-float/2addr v0, v1

    const/4 v6, 0x4

    aget v6, p0, v6

    mul-float/2addr v6, v3

    add-float/2addr v0, v6

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v6, v5

    add-float/2addr v0, v6

    aput v0, p1, v2

    .line 1982
    aget v0, p0, v4

    mul-float/2addr v0, v1

    const/4 v2, 0x5

    aget v2, p0, v2

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    aput v0, p1, v4

    .line 1983
    return-object p1
.end method

.method private static greylist-max-o rcpResponse(DDDDDD)D
    .registers 14
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    .line 1832
    mul-double v0, p8, p6

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p10

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, p4

    div-double/2addr v0, p2

    goto :goto_12

    :cond_10
    div-double v0, p0, p6

    :goto_12
    return-wide v0
.end method

.method private static greylist-max-o rcpResponse(DDDDDDDD)D
    .registers 20
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "e"    # D
    .param p12, "f"    # D
    .param p14, "g"    # D

    .line 1843
    mul-double v0, p8, p6

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_13

    sub-double v0, p0, p10

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v2, v2, p14

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, p4

    div-double/2addr v0, p2

    goto :goto_16

    :cond_13
    sub-double v0, p0, p12

    div-double/2addr v0, p6

    :goto_16
    return-wide v0
.end method

.method private static greylist-max-o response(DDDDDD)D
    .registers 14
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    .line 1837
    cmpl-double v0, p0, p8

    if-ltz v0, :cond_c

    mul-double v0, p2, p0

    add-double/2addr v0, p4

    invoke-static {v0, v1, p10, p11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_e

    :cond_c
    mul-double v0, p6, p0

    :goto_e
    return-wide v0
.end method

.method private static greylist-max-o response(DDDDDDDD)D
    .registers 20
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "e"    # D
    .param p12, "f"    # D
    .param p14, "g"    # D

    .line 1849
    cmpl-double v0, p0, p8

    if-ltz v0, :cond_f

    mul-double v0, p2, p0

    add-double/2addr v0, p4

    move-wide/from16 v2, p14

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, p10

    goto :goto_15

    :cond_f
    move-wide/from16 v2, p14

    mul-double v0, p6, p0

    add-double v0, v0, p12

    :goto_15
    return-wide v0
.end method

.method private static blacklist transferHLGEOTF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 25
    .param p0, "params"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 1793
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    if-gez v1, :cond_b

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    goto :goto_d

    :cond_b
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1794
    .local v4, "sign":D
    :goto_d
    mul-double v6, p1, v4

    .line 1797
    .end local p1    # "x":D
    .local v6, "x":D
    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    .line 1798
    .local v8, "R":D
    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    .line 1799
    .local v10, "G":D
    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    .line 1800
    .local v12, "a":D
    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    .line 1801
    .local v14, "b":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    iget-wide v2, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    .line 1802
    .local v2, "c":D
    move-wide/from16 p1, v2

    .end local v2    # "c":D
    .local p1, "c":D
    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    add-double v1, v1, v16

    .line 1804
    .local v1, "K":D
    mul-double v18, v1, v4

    mul-double v20, v6, v8

    cmpg-double v3, v20, v16

    if-gtz v3, :cond_32

    move-wide/from16 v16, v1

    .end local v1    # "K":D
    .local v16, "K":D
    mul-double v0, v6, v8

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_3c

    .end local v16    # "K":D
    .restart local v1    # "K":D
    :cond_32
    move-wide/from16 v16, v1

    .end local v1    # "K":D
    .restart local v16    # "K":D
    sub-double v0, v6, p1

    mul-double/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    add-double/2addr v0, v14

    :goto_3c
    mul-double v18, v18, v0

    return-wide v18
.end method

.method private static blacklist transferHLGOETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 21
    .param p0, "params"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 1777
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-gez v1, :cond_d

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    goto :goto_e

    :cond_d
    move-wide v4, v2

    .line 1778
    .local v4, "sign":D
    :goto_e
    mul-double v6, p1, v4

    .line 1781
    .end local p1    # "x":D
    .local v6, "x":D
    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    div-double v8, v2, v8

    .line 1782
    .local v8, "R":D
    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    div-double v10, v2, v10

    .line 1783
    .local v10, "G":D
    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    div-double v12, v2, v12

    .line 1784
    .local v12, "a":D
    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    .line 1785
    .local v14, "b":D
    move-wide/from16 v16, v2

    iget-wide v2, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    .line 1786
    .local v2, "c":D
    move-wide/from16 p1, v2

    .end local v2    # "c":D
    .local p1, "c":D
    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    add-double v1, v1, v16

    .line 1788
    .local v1, "K":D
    div-double/2addr v6, v1

    .line 1789
    cmpg-double v3, v6, v16

    if-gtz v3, :cond_34

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v16, v16, v8

    goto :goto_3e

    :cond_34
    sub-double v16, v6, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    mul-double v16, v16, v12

    add-double v16, v16, p1

    :goto_3e
    mul-double v16, v16, v4

    return-wide v16
.end method

.method private static blacklist transferST2048EOTF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 13
    .param p0, "pq"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 1823
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_9

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_b

    :cond_9
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1824
    .local v2, "sign":D
    :goto_b
    mul-double/2addr p1, v2

    .line 1826
    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {p1, p2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1827
    .local v0, "tmp":D
    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-static {p1, p2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    div-double v4, v0, v4

    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    return-wide v4
.end method

.method private static blacklist transferST2048OETF(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .registers 23
    .param p0, "params"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .line 1808
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v3, p1, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-gez v3, :cond_d

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto :goto_e

    :cond_d
    move-wide v6, v4

    .line 1809
    .local v6, "sign":D
    :goto_e
    mul-double v8, p1, v6

    .line 1811
    .end local p1    # "x":D
    .local v8, "x":D
    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    neg-double v10, v10

    .line 1812
    .local v10, "a":D
    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    .line 1813
    .local v12, "b":D
    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    div-double v14, v4, v14

    .line 1814
    .local v14, "c":D
    move-wide/from16 v16, v4

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    .line 1815
    .local v4, "d":D
    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    neg-double v1, v1

    .line 1816
    .local v1, "e":D
    move-wide/from16 p1, v1

    .end local v1    # "e":D
    .local p1, "e":D
    iget-wide v1, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    div-double v1, v16, v1

    .line 1818
    .local v1, "f":D
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v16, v16, v12

    move-wide/from16 v18, v4

    .end local v4    # "d":D
    .local v18, "d":D
    add-double v3, v10, v16

    move-wide/from16 v16, v6

    const-wide/16 v5, 0x0

    .end local v6    # "sign":D
    .local v16, "sign":D
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 1819
    .local v3, "tmp":D
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v5, v5, p1

    add-double v5, v18, v5

    div-double v5, v3, v5

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double v6, v16, v5

    return-wide v6
.end method

.method private static greylist-max-o xyYToXyz([F)[F
    .registers 7
    .param p0, "xyY"    # [F

    .line 2016
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    div-float/2addr v1, v3

    aget v3, p0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    aget v5, p0, v2

    sub-float/2addr v3, v5

    aget v5, p0, v2

    div-float/2addr v3, v5

    const/4 v5, 0x3

    new-array v5, v5, [F

    aput v1, v5, v0

    aput v4, v5, v2

    const/4 v0, 0x2

    aput v3, v5, v0

    return-object v5
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1260
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1261
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 1263
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/ColorSpace;

    .line 1265
    .local v2, "that":Landroid/graphics/ColorSpace;
    iget v3, p0, Landroid/graphics/ColorSpace;->mId:I

    iget v4, v2, Landroid/graphics/ColorSpace;->mId:I

    if-eq v3, v4, :cond_1c

    return v1

    .line 1267
    :cond_1c
    iget-object v3, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    return v1

    .line 1268
    :cond_27
    iget-object v3, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    iget-object v4, v2, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    if-ne v3, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 1261
    .end local v2    # "that":Landroid/graphics/ColorSpace;
    :cond_30
    :goto_30
    return v1
.end method

.method public whitelist fromXyz(FFF)[F
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 1206
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Model;->getComponentCount()I

    move-result v0

    new-array v0, v0, [F

    .line 1207
    .local v0, "xyz":[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1208
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1209
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1210
    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace;->fromXyz([F)[F

    move-result-object v1

    return-object v1
.end method

.method public abstract whitelist fromXyz([F)[F
.end method

.method public whitelist getComponentCount()I
    .registers 2

    .line 1073
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Model;->getComponentCount()I

    move-result v0

    return v0
.end method

.method public whitelist getDataSpace()I
    .registers 3

    .line 1531
    sget-object v0, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    .line 1532
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 1533
    sget-object v1, Landroid/graphics/ColorSpace;->sDataToColorSpaces:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    return v1

    .line 1535
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getId()I
    .registers 2

    .line 1046
    iget v0, p0, Landroid/graphics/ColorSpace;->mId:I

    return v0
.end method

.method public abstract whitelist getMaxValue(I)F
.end method

.method public abstract whitelist getMinValue(I)F
.end method

.method public whitelist getModel()Landroid/graphics/ColorSpace$Model;
    .registers 2

    .line 1059
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 1034
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getNativeInstance()J
    .registers 3

    .line 2339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colorSpace must be an RGB color space"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1274
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1275
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Model;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1276
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/graphics/ColorSpace;->mId:I

    add-int/2addr v0, v2

    .line 1277
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist isSrgb()Z
    .registers 2

    .line 1114
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist isWideGamut()Z
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/ColorSpace;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist toXyz(FFF)[F
    .registers 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 1164
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace;->toXyz([F)[F

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist toXyz([F)[F
.end method
