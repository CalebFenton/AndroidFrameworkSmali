.class public Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;
.super Ljava/lang/Object;
.source "PaintBundle.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field public static final blacklist ALPHA:I = 0xc

.field public static final blacklist ANTI_ALIAS:I = 0xe

.field public static final blacklist BLEND_MODE:I = 0x12

.field public static final blacklist BLEND_MODE_CLEAR:I = 0x0

.field public static final blacklist BLEND_MODE_COLOR:I = 0x1b

.field public static final blacklist BLEND_MODE_COLOR_BURN:I = 0x13

.field public static final blacklist BLEND_MODE_COLOR_DODGE:I = 0x12

.field public static final blacklist BLEND_MODE_DARKEN:I = 0x10

.field public static final blacklist BLEND_MODE_DIFFERENCE:I = 0x16

.field public static final blacklist BLEND_MODE_DST:I = 0x2

.field public static final blacklist BLEND_MODE_DST_ATOP:I = 0xa

.field public static final blacklist BLEND_MODE_DST_IN:I = 0x6

.field public static final blacklist BLEND_MODE_DST_OUT:I = 0x8

.field public static final blacklist BLEND_MODE_DST_OVER:I = 0x4

.field public static final blacklist BLEND_MODE_EXCLUSION:I = 0x17

.field public static final blacklist BLEND_MODE_HARD_LIGHT:I = 0x14

.field public static final blacklist BLEND_MODE_HUE:I = 0x19

.field public static final blacklist BLEND_MODE_LIGHTEN:I = 0x11

.field public static final blacklist BLEND_MODE_LUMINOSITY:I = 0x1c

.field public static final blacklist BLEND_MODE_MODULATE:I = 0xd

.field public static final blacklist BLEND_MODE_MULTIPLY:I = 0x18

.field public static final blacklist BLEND_MODE_NULL:I = 0x1d

.field public static final blacklist BLEND_MODE_OVERLAY:I = 0xf

.field public static final blacklist BLEND_MODE_PLUS:I = 0xc

.field public static final blacklist BLEND_MODE_SATURATION:I = 0x1a

.field public static final blacklist BLEND_MODE_SCREEN:I = 0xe

.field public static final blacklist BLEND_MODE_SOFT_LIGHT:I = 0x15

.field public static final blacklist BLEND_MODE_SRC:I = 0x1

.field public static final blacklist BLEND_MODE_SRC_ATOP:I = 0x9

.field public static final blacklist BLEND_MODE_SRC_IN:I = 0x5

.field public static final blacklist BLEND_MODE_SRC_OUT:I = 0x7

.field public static final blacklist BLEND_MODE_SRC_OVER:I = 0x3

.field public static final blacklist BLEND_MODE_XOR:I = 0xb

.field public static final blacklist CLEAR_COLOR_FILTER:I = 0x15

.field public static final blacklist COLOR:I = 0x4

.field public static final blacklist COLOR_FILTER:I = 0xd

.field public static final blacklist COLOR_FILTER_ID:I = 0x14

.field public static final blacklist COLOR_ID:I = 0x13

.field public static final blacklist FILTER_BITMAP:I = 0x11

.field public static final blacklist FONT_BOLD:I = 0x1

.field public static final blacklist FONT_BOLD_ITALIC:I = 0x3

.field public static final blacklist FONT_ITALIC:I = 0x2

.field public static final blacklist FONT_NORMAL:I = 0x0

.field public static final blacklist FONT_TYPE_DEFAULT:I = 0x0

.field public static final blacklist FONT_TYPE_MONOSPACE:I = 0x3

.field public static final blacklist FONT_TYPE_SANS_SERIF:I = 0x1

.field public static final blacklist FONT_TYPE_SERIF:I = 0x2

.field public static final blacklist GRADIENT:I = 0xb

.field public static final blacklist IMAGE_FILTER_QUALITY:I = 0xa

.field public static final blacklist LINEAR_GRADIENT:I = 0x0

.field public static final blacklist PORTER_MODE_ADD:I = 0x1e

.field public static final blacklist RADIAL_GRADIENT:I = 0x1

.field public static final blacklist SHADER:I = 0x9

.field public static final blacklist STROKE_CAP:I = 0x7

.field public static final blacklist STROKE_JOIN:I = 0xf

.field public static final blacklist STROKE_MITER:I = 0x6

.field public static final blacklist STROKE_WIDTH:I = 0x5

.field public static final blacklist STYLE:I = 0x8

.field public static final blacklist STYLE_FILL:I = 0x0

.field public static final blacklist STYLE_FILL_AND_STROKE:I = 0x2

.field public static final blacklist STYLE_STROKE:I = 0x1

.field public static final blacklist SWEEP_GRADIENT:I = 0x2

.field public static final blacklist TEXT_SIZE:I = 0x1

.field public static final blacklist TYPEFACE:I = 0x10


# instance fields
.field blacklist mArray:[I

.field private blacklist mColorFilterSet:Z

.field private blacklist mLastShaderSet:I

.field blacklist mOutArray:[I

.field blacklist mPos:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xc8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 606
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mLastShaderSet:I

    .line 607
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mColorFilterSet:Z

    return-void
.end method

.method private static blacklist asFloatStr(I)Ljava/lang/String;
    .registers 4
    .param p0, "value"    # I

    .line 170
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 171
    .local v0, "fValue":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 174
    :cond_28
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist blendModeString(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .line 965
    const-string v0, "null"

    packed-switch p0, :pswitch_data_62

    .line 1029
    return-object v0

    .line 1027
    :pswitch_6
    const-string v0, "ADD"

    return-object v0

    .line 1025
    :pswitch_9
    return-object v0

    .line 1023
    :pswitch_a
    const-string v0, "LUMINOSITY"

    return-object v0

    .line 1021
    :pswitch_d
    const-string v0, "COLOR"

    return-object v0

    .line 1019
    :pswitch_10
    const-string v0, "SATURATION"

    return-object v0

    .line 1017
    :pswitch_13
    const-string v0, "HUE"

    return-object v0

    .line 1015
    :pswitch_16
    const-string v0, "MULTIPLY"

    return-object v0

    .line 1013
    :pswitch_19
    const-string v0, "EXCLUSION"

    return-object v0

    .line 1011
    :pswitch_1c
    const-string v0, "DIFFERENCE"

    return-object v0

    .line 1009
    :pswitch_1f
    const-string v0, "SOFT_LIGHT"

    return-object v0

    .line 1007
    :pswitch_22
    const-string v0, "HARD_LIGHT"

    return-object v0

    .line 1005
    :pswitch_25
    const-string v0, "COLOR_BURN"

    return-object v0

    .line 1003
    :pswitch_28
    const-string v0, "COLOR_DODGE"

    return-object v0

    .line 1001
    :pswitch_2b
    const-string v0, "LIGHTEN"

    return-object v0

    .line 999
    :pswitch_2e
    const-string v0, "DARKEN"

    return-object v0

    .line 997
    :pswitch_31
    const-string v0, "OVERLAY"

    return-object v0

    .line 995
    :pswitch_34
    const-string v0, "SCREEN"

    return-object v0

    .line 993
    :pswitch_37
    const-string v0, "MODULATE"

    return-object v0

    .line 991
    :pswitch_3a
    const-string v0, "PLUS"

    return-object v0

    .line 989
    :pswitch_3d
    const-string v0, "XOR"

    return-object v0

    .line 987
    :pswitch_40
    const-string v0, "DST_ATOP"

    return-object v0

    .line 985
    :pswitch_43
    const-string v0, "SRC_ATOP"

    return-object v0

    .line 983
    :pswitch_46
    const-string v0, "DST_OUT"

    return-object v0

    .line 981
    :pswitch_49
    const-string v0, "SRC_OUT"

    return-object v0

    .line 979
    :pswitch_4c
    const-string v0, "DST_IN"

    return-object v0

    .line 977
    :pswitch_4f
    const-string v0, "SRC_IN"

    return-object v0

    .line 975
    :pswitch_52
    const-string v0, "DST_OVER"

    return-object v0

    .line 973
    :pswitch_55
    const-string v0, "SRC_OVER"

    return-object v0

    .line 971
    :pswitch_58
    const-string v0, "DST"

    return-object v0

    .line 969
    :pswitch_5b
    const-string v0, "SRC"

    return-object v0

    .line 967
    :pswitch_5e
    const-string v0, "CLEAR"

    return-object v0

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist colorInt(I)Ljava/lang/String;
    .registers 4
    .param p0, "color"    # I

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist colorInt([I)Ljava/lang/String;
    .registers 5
    .param p0, "color"    # [I

    .line 159
    const-string v0, "["

    .line 160
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v2, p0

    if-ge v1, v2, :cond_35

    .line 161
    if-lez v1, :cond_1b

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v1

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 166
    .end local v1    # "i":I
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .registers 4
    .param p1, "colorId"    # I
    .param p2, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 1140
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    .line 1141
    .local v0, "n":I
    return v0
.end method

.method private blacklist fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .registers 6
    .param p1, "val"    # I
    .param p2, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 1131
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 1132
    .local v0, "v":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1133
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    .line 1134
    .local v1, "id":I
    invoke-virtual {p2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    return v2

    .line 1136
    .end local v1    # "id":I
    :cond_17
    return p1
.end method

.method private static blacklist getVariable(I)Ljava/util/Map;
    .registers 6
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1341
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 1342
    .local v0, "fValue":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const-string/jumbo v2, "type"

    if-eqz v1, :cond_22

    .line 1343
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Variable"

    const-string v4, "id"

    filled-new-array {v2, v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    return-object v1

    .line 1345
    :cond_22
    const-string/jumbo v1, "value"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "Value"

    filled-new-array {v2, v4, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v1

    return-object v1
.end method

.method private blacklist registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .registers 6
    .param p1, "iv"    # I
    .param p2, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p3, "support"    # Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 262
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 263
    .local v0, "v":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 264
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p2, v1, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 266
    :cond_11
    return-void
.end method

.method private static blacklist serializeGradient(I[IILjava/util/List;)I
    .registers 30
    .param p0, "cmd"    # I
    .param p1, "array"    # [I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)I"
        }
    .end annotation

    .line 1351
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    move-object/from16 v0, p3

    move/from16 v1, p2

    .line 1352
    .local v1, "ret":I
    shr-int/lit8 v2, p0, 0x10

    .line 1354
    .local v2, "gradientType":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ret":I
    .local v3, "ret":I
    aget v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 1356
    .local v1, "len":I
    const/4 v4, 0x0

    .line 1357
    .local v4, "colors":[Ljava/lang/String;
    if-lez v1, :cond_25

    .line 1358
    new-array v4, v1, [Ljava/lang/String;

    .line 1359
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_12
    array-length v6, v4

    if-ge v5, v6, :cond_23

    .line 1360
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ret":I
    .local v6, "ret":I
    aget v3, p1, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    .line 1359
    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_12

    .end local v6    # "ret":I
    .restart local v3    # "ret":I
    :cond_23
    move-object v7, v4

    goto :goto_26

    .line 1357
    .end local v5    # "j":I
    :cond_25
    move-object v7, v4

    .line 1363
    .end local v4    # "colors":[Ljava/lang/String;
    .local v7, "colors":[Ljava/lang/String;
    :goto_26
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ret":I
    .local v4, "ret":I
    aget v1, p1, v3

    .line 1364
    const/4 v3, 0x0

    .line 1365
    .local v3, "stops":[F
    if-lez v1, :cond_41

    .line 1366
    new-array v3, v1, [F

    .line 1367
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_30
    array-length v6, v7

    if-ge v5, v6, :cond_41

    .line 1368
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "ret":I
    .restart local v6    # "ret":I
    aget v4, p1, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    aput v4, v3, v5

    .line 1367
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_30

    .line 1372
    .end local v5    # "j":I
    .end local v6    # "ret":I
    .restart local v4    # "ret":I
    :cond_41
    if-nez v7, :cond_44

    .line 1373
    return v4

    .line 1380
    :cond_44
    packed-switch v2, :pswitch_data_122

    goto/16 :goto_121

    .line 1429
    :pswitch_49
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ret":I
    .local v5, "ret":I
    aget v14, p1, v4

    .line 1430
    .local v14, "centerX":I
    add-int/lit8 v15, v5, 0x1

    .end local v5    # "ret":I
    .local v15, "ret":I
    aget v16, p1, v5

    .line 1431
    .local v16, "centerY":I
    nop

    .line 1438
    if-nez v3, :cond_5a

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v4

    move-object v9, v4

    goto :goto_5b

    :cond_5a
    move-object v9, v3

    .line 1440
    :goto_5b
    invoke-static {v14}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v11

    .line 1442
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v13

    const-string/jumbo v4, "type"

    const-string v5, "SweepGradient"

    const-string v6, "colors"

    const-string/jumbo v8, "stops"

    const-string v10, "centerX"

    const-string v12, "centerY"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/Object;

    move-result-object v4

    .line 1432
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 1431
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v15

    goto/16 :goto_121

    .line 1407
    .end local v14    # "centerX":I
    .end local v15    # "ret":I
    .end local v16    # "centerY":I
    .restart local v4    # "ret":I
    :pswitch_7f
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ret":I
    .restart local v5    # "ret":I
    aget v18, p1, v4

    .line 1408
    .local v18, "centerX":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ret":I
    .restart local v4    # "ret":I
    aget v19, p1, v5

    .line 1409
    .local v19, "centerY":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ret":I
    .restart local v5    # "ret":I
    aget v20, p1, v4

    .line 1410
    .local v20, "radius":I
    add-int/lit8 v21, v5, 0x1

    .end local v5    # "ret":I
    .local v21, "ret":I
    aget v22, p1, v5

    .line 1411
    .local v22, "tileMode":I
    nop

    .line 1418
    if-nez v3, :cond_98

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v4

    move-object v9, v4

    goto :goto_99

    :cond_98
    move-object v9, v3

    .line 1420
    :goto_99
    invoke-static/range {v18 .. v18}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v11

    .line 1422
    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v13

    .line 1424
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v15

    .line 1426
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string/jumbo v4, "type"

    const-string v5, "RadialGradient"

    const-string v6, "colors"

    const-string/jumbo v8, "stops"

    const-string v10, "centerX"

    const-string v12, "centerY"

    const-string/jumbo v14, "radius"

    const-string/jumbo v16, "tileMode"

    filled-new-array/range {v4 .. v17}, [Ljava/lang/Object;

    move-result-object v4

    .line 1412
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 1411
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    move/from16 v4, v21

    goto :goto_121

    .line 1382
    .end local v18    # "centerX":I
    .end local v19    # "centerY":I
    .end local v20    # "radius":I
    .end local v21    # "ret":I
    .end local v22    # "tileMode":I
    .restart local v4    # "ret":I
    :pswitch_cb
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ret":I
    .restart local v5    # "ret":I
    aget v20, p1, v4

    .line 1383
    .local v20, "startX":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ret":I
    .restart local v4    # "ret":I
    aget v21, p1, v5

    .line 1384
    .local v21, "startY":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ret":I
    .restart local v5    # "ret":I
    aget v22, p1, v4

    .line 1385
    .local v22, "endX":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ret":I
    .restart local v4    # "ret":I
    aget v23, p1, v5

    .line 1386
    .local v23, "endY":I
    add-int/lit8 v24, v4, 0x1

    .end local v4    # "ret":I
    .local v24, "ret":I
    aget v25, p1, v4

    .line 1387
    .local v25, "tileMode":I
    nop

    .line 1394
    if-nez v3, :cond_e8

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v4

    move-object v9, v4

    goto :goto_e9

    :cond_e8
    move-object v9, v3

    .line 1396
    :goto_e9
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v11

    .line 1398
    invoke-static/range {v21 .. v21}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v13

    .line 1400
    invoke-static/range {v22 .. v22}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v15

    .line 1402
    invoke-static/range {v23 .. v23}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v17

    .line 1404
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string/jumbo v4, "type"

    const-string v5, "LinearGradient"

    const-string v6, "colors"

    const-string/jumbo v8, "stops"

    const-string/jumbo v10, "startX"

    const-string/jumbo v12, "startY"

    const-string v14, "endX"

    const-string v16, "endY"

    const-string/jumbo v18, "tileMode"

    filled-new-array/range {v4 .. v19}, [Ljava/lang/Object;

    move-result-object v4

    .line 1388
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 1387
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1405
    move/from16 v4, v24

    .line 1445
    .end local v20    # "startX":I
    .end local v21    # "startY":I
    .end local v22    # "endX":I
    .end local v23    # "endY":I
    .end local v24    # "ret":I
    .end local v25    # "tileMode":I
    .restart local v4    # "ret":I
    :goto_121
    return v4

    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_7f
        :pswitch_49
    .end packed-switch
.end method


# virtual methods
.method public blacklist applyPaintChange(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)V
    .registers 11
    .param p1, "paintContext"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "p"    # Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "i":I
    const/4 v1, 0x0

    .line 51
    .local v1, "mask":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    if-nez v2, :cond_a

    .line 52
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    .line 54
    :cond_a
    :goto_a
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v0, v2, :cond_d8

    .line 55
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget v0, v2, v0

    .line 56
    .local v0, "cmd":I
    add-int/lit8 v2, v0, -0x1

    const/4 v4, 0x1

    shl-int v2, v4, v2

    or-int/2addr v1, v2

    .line 57
    const v2, 0xffff

    and-int/2addr v2, v0

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_da

    :pswitch_22
    goto/16 :goto_d5

    .line 111
    :pswitch_24
    const-wide/16 v4, 0x2000

    invoke-interface {p2, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->clear(J)V

    goto/16 :goto_d5

    .line 95
    :pswitch_2b
    shr-int/lit8 v2, v0, 0x10

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setBlendMode(I)V

    .line 96
    goto/16 :goto_d5

    .line 98
    :pswitch_32
    shr-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_37

    goto :goto_38

    :cond_37
    move v4, v5

    :goto_38
    invoke-interface {p2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setFilterBitmap(Z)V

    .line 99
    goto/16 :goto_d5

    .line 62
    :pswitch_3d
    shr-int/lit8 v2, v0, 0x10

    .line 63
    .local v2, "style":I
    and-int/lit16 v6, v2, 0x3ff

    .line 64
    .local v6, "weight":I
    shr-int/lit8 v7, v2, 0xa

    if-lez v7, :cond_46

    goto :goto_47

    :cond_46
    move v4, v5

    .line 65
    .local v4, "italic":Z
    :goto_47
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    aget v3, v5, v3

    .line 67
    .local v3, "font_type":I
    invoke-interface {p2, v3, v6, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setTypeFace(IIZ)V

    .line 68
    move v0, v7

    goto/16 :goto_d6

    .line 89
    .end local v2    # "style":I
    .end local v4    # "italic":Z
    .end local v6    # "weight":I
    .end local v7    # "i":I
    .local v3, "i":I
    :pswitch_53
    shr-int/lit8 v2, v0, 0x10

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeJoin(I)V

    .line 90
    goto/16 :goto_d5

    .line 105
    :pswitch_5a
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget v2, v2, v3

    shr-int/lit8 v3, v0, 0x10

    invoke-interface {p2, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setColorFilter(II)V

    .line 106
    move v0, v4

    goto/16 :goto_d6

    .line 108
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :pswitch_68
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setAlpha(F)V

    .line 109
    move v0, v4

    goto/16 :goto_d6

    .line 101
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :pswitch_78
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    invoke-virtual {p0, v0, v2, v3, p2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->callSetGradient(I[IILcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)I

    move-result v2

    .line 102
    .end local v3    # "i":I
    .local v2, "i":I
    move v0, v2

    goto :goto_d6

    .line 92
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :pswitch_80
    shr-int/lit8 v2, v0, 0x10

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setImageFilterQuality(I)V

    .line 93
    goto :goto_d5

    .line 86
    :pswitch_86
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget v2, v2, v3

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setShader(I)V

    .line 87
    move v0, v4

    goto :goto_d6

    .line 83
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :pswitch_91
    shr-int/lit8 v2, v0, 0x10

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStyle(I)V

    .line 84
    goto :goto_d5

    .line 80
    :pswitch_97
    shr-int/lit8 v2, v0, 0x10

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeCap(I)V

    .line 81
    goto :goto_d5

    .line 77
    :pswitch_9d
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeMiter(F)V

    .line 78
    move v0, v4

    goto :goto_d6

    .line 74
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :pswitch_ac
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeWidth(F)V

    .line 75
    move v0, v4

    goto :goto_d6

    .line 71
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :pswitch_bb
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget v2, v2, v3

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setColor(I)V

    .line 72
    move v0, v4

    goto :goto_d6

    .line 59
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :pswitch_c6
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setTextSize(F)V

    .line 60
    move v0, v4

    goto :goto_d6

    .line 114
    .end local v0    # "cmd":I
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_d5
    move v0, v3

    .end local v3    # "i":I
    .local v0, "i":I
    :goto_d6
    goto/16 :goto_a

    .line 115
    :cond_d8
    return-void

    nop

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_c6
        :pswitch_22
        :pswitch_22
        :pswitch_bb
        :pswitch_ac
        :pswitch_9d
        :pswitch_97
        :pswitch_91
        :pswitch_86
        :pswitch_80
        :pswitch_78
        :pswitch_68
        :pswitch_5a
        :pswitch_22
        :pswitch_53
        :pswitch_3d
        :pswitch_32
        :pswitch_2b
        :pswitch_bb
        :pswitch_5a
        :pswitch_24
    .end packed-switch
.end method

.method blacklist callPrintGradient(I[IILjava/lang/StringBuilder;)I
    .registers 23
    .param p1, "cmd"    # I
    .param p2, "array"    # [I
    .param p3, "i"    # I
    .param p4, "p"    # Ljava/lang/StringBuilder;

    .line 364
    move-object/from16 v0, p4

    move/from16 v1, p3

    .line 365
    .local v1, "ret":I
    shr-int/lit8 v2, p1, 0x10

    .line 366
    .local v2, "type":I
    const/4 v3, 0x0

    .line 367
    .local v3, "tileMode":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "ret":I
    .local v4, "ret":I
    aget v1, p2, v1

    .line 368
    .local v1, "len":I
    const/4 v5, 0x0

    .line 369
    .local v5, "colors":[I
    const/4 v6, 0x0

    .line 370
    .local v6, "stops":[Ljava/lang/String;
    const-string v7, "      center = "

    const-string v8, "\n    "

    const-string v9, "      tileMode = "

    const-string v10, "],\n"

    const-string v11, "      stops = "

    const-string v12, "      colors = "

    const-string v13, ", "

    const-string v14, "["

    const-string v15, ",\n"

    packed-switch v2, :pswitch_data_2e6

    .line 446
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "type":I
    .end local v3    # "tileMode":I
    .local v16, "type":I
    .local v17, "tileMode":I
    const-string v2, "GRADIENT_??????!!!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2e4

    .line 425
    .end local v16    # "type":I
    .end local v17    # "tileMode":I
    .restart local v2    # "type":I
    .restart local v3    # "tileMode":I
    :pswitch_2d
    const-string v8, "    SweepGradient(\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    if-lez v1, :cond_44

    .line 427
    new-array v5, v1, [I

    .line 428
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_37
    array-length v9, v5

    if-ge v8, v9, :cond_44

    .line 429
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "ret":I
    .local v9, "ret":I
    aget v4, p2, v4

    aput v4, v5, v8

    .line 428
    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_37

    .line 432
    .end local v8    # "j":I
    .end local v9    # "ret":I
    .restart local v4    # "ret":I
    :cond_44
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "ret":I
    .local v8, "ret":I
    aget v1, p2, v4

    .line 433
    if-lez v1, :cond_5f

    .line 434
    new-array v4, v1, [Ljava/lang/String;

    .line 435
    .end local v6    # "stops":[Ljava/lang/String;
    .local v4, "stops":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4d
    array-length v9, v4

    if-ge v6, v9, :cond_5e

    .line 436
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ret":I
    .restart local v9    # "ret":I
    aget v8, p2, v8

    invoke-static {v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    .line 435
    add-int/lit8 v6, v6, 0x1

    move v8, v9

    goto :goto_4d

    .end local v9    # "ret":I
    .restart local v8    # "ret":I
    :cond_5e
    move-object v6, v4

    .line 439
    .end local v4    # "stops":[Ljava/lang/String;
    .local v6, "stops":[Ljava/lang/String;
    :cond_5f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ret":I
    .local v7, "ret":I
    aget v8, p2, v8

    invoke-static {v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ret":I
    .restart local v8    # "ret":I
    aget v7, p2, v7

    invoke-static {v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "],\n    "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    move/from16 v16, v2

    move v4, v8

    goto/16 :goto_2e4

    .line 399
    .end local v8    # "ret":I
    .local v4, "ret":I
    :pswitch_dd
    move/from16 v16, v2

    .end local v2    # "type":I
    .restart local v16    # "type":I
    const-string v2, "    RadialGradient(\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    if-lez v1, :cond_fc

    .line 401
    new-array v2, v1, [I

    .line 402
    .end local v5    # "colors":[I
    .local v2, "colors":[I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_e9
    move/from16 v17, v3

    .end local v3    # "tileMode":I
    .restart local v17    # "tileMode":I
    array-length v3, v2

    if-ge v5, v3, :cond_fa

    .line 403
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ret":I
    .local v3, "ret":I
    aget v4, p2, v4

    aput v4, v2, v5

    .line 402
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    move/from16 v3, v17

    goto :goto_e9

    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    :cond_fa
    move-object v5, v2

    goto :goto_fe

    .line 400
    .end local v2    # "colors":[I
    .end local v17    # "tileMode":I
    .local v3, "tileMode":I
    .local v5, "colors":[I
    :cond_fc
    move/from16 v17, v3

    .line 406
    .end local v3    # "tileMode":I
    .restart local v17    # "tileMode":I
    :goto_fe
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "ret":I
    .local v2, "ret":I
    aget v1, p2, v4

    .line 407
    if-lez v1, :cond_119

    .line 408
    new-array v3, v1, [Ljava/lang/String;

    .line 409
    .end local v6    # "stops":[Ljava/lang/String;
    .local v3, "stops":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_107
    array-length v6, v3

    if-ge v4, v6, :cond_118

    .line 410
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ret":I
    .local v6, "ret":I
    aget v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 409
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_107

    .end local v6    # "ret":I
    .restart local v2    # "ret":I
    :cond_118
    move-object v6, v3

    .line 414
    .end local v3    # "stops":[Ljava/lang/String;
    .end local v4    # "j":I
    .local v6, "stops":[Ljava/lang/String;
    :cond_119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "ret":I
    .local v4, "ret":I
    aget v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ret":I
    .local v3, "ret":I
    aget v4, p2, v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v2, "      radius ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "ret":I
    .restart local v2    # "ret":I
    aget v3, p2, v4

    .line 422
    .end local v17    # "tileMode":I
    .local v3, "tileMode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    move v4, v2

    goto/16 :goto_2e4

    .line 372
    .end local v16    # "type":I
    .local v2, "type":I
    .restart local v4    # "ret":I
    :pswitch_1d6
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "type":I
    .end local v3    # "tileMode":I
    .restart local v16    # "type":I
    .restart local v17    # "tileMode":I
    const-string v2, "    LinearGradient(\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    if-lez v1, :cond_1f2

    .line 374
    new-array v2, v1, [I

    .line 375
    .end local v5    # "colors":[I
    .local v2, "colors":[I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1e4
    array-length v5, v2

    if-ge v3, v5, :cond_1f1

    .line 376
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ret":I
    .local v5, "ret":I
    aget v4, p2, v4

    aput v4, v2, v3

    .line 375
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_1e4

    .end local v5    # "ret":I
    .restart local v4    # "ret":I
    :cond_1f1
    move-object v5, v2

    .line 379
    .end local v2    # "colors":[I
    .end local v3    # "j":I
    .local v5, "colors":[I
    :cond_1f2
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "ret":I
    .local v2, "ret":I
    aget v1, p2, v4

    .line 380
    if-lez v1, :cond_20d

    .line 381
    new-array v3, v1, [Ljava/lang/String;

    .line 382
    .end local v6    # "stops":[Ljava/lang/String;
    .local v3, "stops":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1fb
    array-length v6, v3

    if-ge v4, v6, :cond_20c

    .line 383
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ret":I
    .local v6, "ret":I
    aget v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 382
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_1fb

    .end local v6    # "ret":I
    .restart local v2    # "ret":I
    :cond_20c
    move-object v6, v3

    .line 387
    .end local v3    # "stops":[Ljava/lang/String;
    .end local v4    # "j":I
    .local v6, "stops":[Ljava/lang/String;
    :cond_20d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v3, "      start = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "ret":I
    .local v4, "ret":I
    aget v2, p2, v2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ret":I
    .local v3, "ret":I
    aget v4, p2, v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string v2, "      end = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ret":I
    .restart local v3    # "ret":I
    aget v4, p2, v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    aget v3, p2, v3

    .line 396
    .end local v17    # "tileMode":I
    .local v3, "tileMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    nop

    .line 449
    :goto_2e4
    return v4

    nop

    :pswitch_data_2e6
    .packed-switch 0x0
        :pswitch_1d6
        :pswitch_dd
        :pswitch_2d
    .end packed-switch
.end method

.method blacklist callRegisterGradient(I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)I
    .registers 16
    .param p1, "cmd"    # I
    .param p2, "array"    # [I
    .param p3, "i"    # I
    .param p4, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p5, "support"    # Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 274
    move v0, p3

    .line 275
    .local v0, "ret":I
    shr-int/lit8 v1, p1, 0x10

    .line 276
    .local v1, "type":I
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ret":I
    .local v2, "ret":I
    aget v0, p2, v0

    .line 277
    .local v0, "control":I
    and-int/lit16 v3, v0, 0xff

    .line 278
    .local v3, "len":I
    const v4, 0xffff

    shr-int/lit8 v5, v0, 0x10

    and-int/2addr v4, v5

    .line 279
    .local v4, "register":I
    const/4 v5, 0x0

    .line 280
    .local v5, "tileMode":I
    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_e2

    .line 357
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "error "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 338
    :pswitch_1d
    if-lez v3, :cond_32

    .line 340
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_20
    if-ge v7, v3, :cond_32

    .line 341
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "ret":I
    .local v8, "ret":I
    aget v2, p2, v2

    .line 342
    .local v2, "color":I
    shl-int v9, v6, v7

    and-int/2addr v9, v4

    if-eqz v9, :cond_2e

    .line 343
    invoke-virtual {p4, v2, p5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 340
    .end local v2    # "color":I
    :cond_2e
    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_20

    .line 347
    .end local v7    # "j":I
    .end local v8    # "ret":I
    .local v2, "ret":I
    :cond_32
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ret":I
    .local v6, "ret":I
    aget v3, p2, v2

    .line 348
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_37
    if-ge v2, v3, :cond_44

    .line 349
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ret":I
    .local v7, "ret":I
    aget v6, p2, v6

    invoke-direct {p0, v6, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 348
    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_37

    .line 352
    .end local v2    # "j":I
    .end local v7    # "ret":I
    .restart local v6    # "ret":I
    :cond_44
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "ret":I
    .local v2, "ret":I
    aget v6, p2, v6

    invoke-direct {p0, v6, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 354
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ret":I
    .restart local v6    # "ret":I
    aget v2, p2, v2

    invoke-direct {p0, v2, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 355
    move v2, v6

    goto/16 :goto_e1

    .line 313
    .end local v6    # "ret":I
    .restart local v2    # "ret":I
    :pswitch_55
    if-lez v3, :cond_6a

    .line 315
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_58
    if-ge v7, v3, :cond_6a

    .line 316
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "ret":I
    .restart local v8    # "ret":I
    aget v2, p2, v2

    .line 317
    .local v2, "color":I
    shl-int v9, v6, v7

    and-int/2addr v9, v4

    if-eqz v9, :cond_66

    .line 318
    invoke-virtual {p4, v2, p5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 315
    .end local v2    # "color":I
    :cond_66
    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_58

    .line 322
    .end local v7    # "j":I
    .end local v8    # "ret":I
    .local v2, "ret":I
    :cond_6a
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ret":I
    .restart local v6    # "ret":I
    aget v3, p2, v2

    .line 323
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_6f
    if-ge v2, v3, :cond_7c

    .line 324
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ret":I
    .local v7, "ret":I
    aget v6, p2, v6

    invoke-direct {p0, v6, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 323
    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_6f

    .line 328
    .end local v2    # "j":I
    .end local v7    # "ret":I
    .restart local v6    # "ret":I
    :cond_7c
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "ret":I
    .local v2, "ret":I
    aget v6, p2, v6

    invoke-direct {p0, v6, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 330
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ret":I
    .restart local v6    # "ret":I
    aget v2, p2, v2

    invoke-direct {p0, v2, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 332
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "ret":I
    .restart local v2    # "ret":I
    aget v6, p2, v6

    invoke-direct {p0, v6, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 334
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ret":I
    .restart local v6    # "ret":I
    aget v5, p2, v2

    .line 335
    move v2, v6

    goto :goto_e1

    .line 283
    .end local v6    # "ret":I
    .restart local v2    # "ret":I
    :pswitch_97
    if-lez v3, :cond_ac

    .line 285
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_9a
    if-ge v7, v3, :cond_ac

    .line 286
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "ret":I
    .restart local v8    # "ret":I
    aget v2, p2, v2

    .line 287
    .local v2, "color":I
    shl-int v9, v6, v7

    and-int/2addr v9, v4

    if-eqz v9, :cond_a8

    .line 288
    invoke-virtual {p4, v2, p5}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 285
    .end local v2    # "color":I
    :cond_a8
    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_9a

    .line 292
    .end local v7    # "j":I
    .end local v8    # "ret":I
    .local v2, "ret":I
    :cond_ac
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ret":I
    .restart local v6    # "ret":I
    aget v3, p2, v2

    .line 294
    if-lez v3, :cond_c0

    .line 296
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_b3
    if-ge v2, v3, :cond_c0

    .line 297
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ret":I
    .local v7, "ret":I
    aget v6, p2, v6

    invoke-direct {p0, v6, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 296
    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_b3

    .line 302
    .end local v2    # "j":I
    .end local v7    # "ret":I
    .restart local v6    # "ret":I
    :cond_c0
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "ret":I
    .local v2, "ret":I
    aget v6, p2, v6

    invoke-direct {p0, v6, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 304
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ret":I
    .restart local v6    # "ret":I
    aget v2, p2, v2

    invoke-direct {p0, v2, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 306
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "ret":I
    .restart local v2    # "ret":I
    aget v6, p2, v6

    invoke-direct {p0, v6, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 308
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ret":I
    .restart local v6    # "ret":I
    aget v2, p2, v2

    invoke-direct {p0, v2, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerFloat(ILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 309
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "ret":I
    .restart local v2    # "ret":I
    aget v5, p2, v6

    .line 310
    nop

    .line 360
    :goto_e1
    return v2

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_97
        :pswitch_55
        :pswitch_1d
    .end packed-switch
.end method

.method blacklist callSetGradient(I[IILcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)I
    .registers 20
    .param p1, "cmd"    # I
    .param p2, "array"    # [I
    .param p3, "i"    # I
    .param p4, "p"    # Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;

    .line 453
    move/from16 v0, p3

    .line 454
    .local v0, "ret":I
    shr-int/lit8 v1, p1, 0x10

    .line 456
    .local v1, "gradientType":I
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ret":I
    .local v2, "ret":I
    aget v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    .line 458
    .local v0, "len":I
    const/4 v3, 0x0

    .line 459
    .local v3, "colors":[I
    if-lez v0, :cond_1f

    .line 460
    new-array v3, v0, [I

    .line 461
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_10
    array-length v5, v3

    if-ge v4, v5, :cond_1d

    .line 462
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "ret":I
    .local v5, "ret":I
    aget v2, p2, v2

    aput v2, v3, v4

    .line 461
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_10

    .end local v5    # "ret":I
    .restart local v2    # "ret":I
    :cond_1d
    move-object v4, v3

    goto :goto_20

    .line 459
    .end local v4    # "j":I
    :cond_1f
    move-object v4, v3

    .line 465
    .end local v3    # "colors":[I
    .local v4, "colors":[I
    :goto_20
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ret":I
    .local v3, "ret":I
    aget v0, p2, v2

    .line 466
    const/4 v2, 0x0

    .line 467
    .local v2, "stops":[F
    if-lez v0, :cond_3d

    .line 468
    new-array v2, v0, [F

    .line 469
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2a
    array-length v6, v4

    if-ge v5, v6, :cond_3b

    .line 470
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ret":I
    .local v6, "ret":I
    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v2, v5

    .line 469
    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_2a

    .end local v6    # "ret":I
    .restart local v3    # "ret":I
    :cond_3b
    move-object v5, v2

    goto :goto_3e

    .line 467
    .end local v5    # "j":I
    :cond_3d
    move-object v5, v2

    .line 474
    .end local v2    # "stops":[F
    .local v5, "stops":[F
    :goto_3e
    if-nez v4, :cond_41

    .line 475
    return v3

    .line 478
    :cond_41
    const/4 v2, 0x0

    .line 479
    .local v2, "tileMode":I
    const/4 v11, 0x0

    .line 480
    .local v11, "centerX":F
    const/4 v12, 0x0

    .line 482
    .local v12, "centerY":F
    packed-switch v1, :pswitch_data_b8

    goto/16 :goto_b7

    .line 499
    :pswitch_49
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ret":I
    .restart local v6    # "ret":I
    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    .line 500
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "ret":I
    .restart local v3    # "ret":I
    aget v6, p2, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 501
    move-object/from16 v6, p4

    invoke-interface {v6, v4, v5, v11, v12}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setSweepGradient([I[FFF)V

    goto :goto_b7

    .line 492
    :pswitch_5f
    move-object/from16 v6, p4

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "ret":I
    .local v7, "ret":I
    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 493
    .end local v11    # "centerX":F
    .local v3, "centerX":F
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ret":I
    .local v8, "ret":I
    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 494
    .end local v12    # "centerY":F
    .local v7, "centerY":F
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ret":I
    .local v9, "ret":I
    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 495
    .local v8, "radius":F
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "ret":I
    .local v10, "ret":I
    aget v9, p2, v9

    .line 496
    .end local v2    # "tileMode":I
    .local v9, "tileMode":I
    move-object v14, v6

    move v6, v3

    move-object v3, v14

    .end local v3    # "centerX":F
    .local v6, "centerX":F
    invoke-interface/range {v3 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setRadialGradient([I[FFFFI)V

    .line 497
    move v11, v6

    move v12, v7

    move v2, v9

    move v3, v10

    goto :goto_b7

    .line 484
    .end local v6    # "centerX":F
    .end local v7    # "centerY":F
    .end local v8    # "radius":F
    .end local v9    # "tileMode":I
    .end local v10    # "ret":I
    .restart local v2    # "tileMode":I
    .local v3, "ret":I
    .restart local v11    # "centerX":F
    .restart local v12    # "centerY":F
    :pswitch_88
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "ret":I
    .local v6, "ret":I
    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 485
    .local v3, "startX":F
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ret":I
    .local v7, "ret":I
    aget v6, p2, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 486
    .local v6, "startY":F
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ret":I
    .local v8, "ret":I
    aget v7, p2, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    .line 487
    .local v7, "endX":F
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "ret":I
    .local v9, "ret":I
    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    .line 488
    .local v8, "endY":F
    add-int/lit8 v13, v9, 0x1

    .end local v9    # "ret":I
    .local v13, "ret":I
    aget v10, p2, v9

    .line 489
    .end local v2    # "tileMode":I
    .local v10, "tileMode":I
    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v3

    move-object/from16 v3, p4

    .end local v3    # "startX":F
    .local v6, "startX":F
    .local v7, "startY":F
    .local v8, "endX":F
    .local v9, "endY":F
    invoke-interface/range {v3 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setLinearGradient([I[FFFFFI)V

    .line 490
    move v2, v10

    move v3, v13

    .line 504
    .end local v6    # "startX":F
    .end local v7    # "startY":F
    .end local v8    # "endX":F
    .end local v9    # "endY":F
    .end local v10    # "tileMode":I
    .end local v13    # "ret":I
    .restart local v2    # "tileMode":I
    .local v3, "ret":I
    :goto_b7
    return v3

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_88
        :pswitch_5f
        :pswitch_49
    .end packed-switch
.end method

.method public blacklist clear(J)V
    .registers 3
    .param p1, "mask"    # J

    .line 945
    return-void
.end method

.method public blacklist clearColorFilter()V
    .registers 4

    .line 749
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0x15

    aput v2, v0, v1

    .line 750
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mColorFilterSet:Z

    .line 752
    return-void
.end method

.method public blacklist readBundle(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 525
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 526
    .local v0, "len":I
    if-lez v0, :cond_22

    const/16 v1, 0x400

    if-gt v0, v1, :cond_22

    .line 529
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    .line 530
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 531
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 533
    .end local v1    # "i":I
    :cond_1f
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 534
    return-void

    .line 527
    :cond_22
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer corrupt paint len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist registerVars(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .registers 11
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "support"    # Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v0, v1, :cond_5a

    .line 1041
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .local v5, "i":I
    aget v3, v1, v0

    .line 1042
    .local v3, "cmd":I
    const v0, 0xffff

    and-int/2addr v0, v3

    .line 1043
    .local v0, "type":I
    packed-switch v0, :pswitch_data_5c

    :pswitch_12
    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    .local v6, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v7, "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    goto :goto_56

    .line 1055
    .end local v6    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v7    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    :pswitch_16
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v5, 0x1

    .end local v5    # "i":I
    .local v2, "i":I
    aget v1, v1, v5

    invoke-virtual {p1, v1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 1056
    move-object v6, p1

    move-object v7, p2

    move v0, v2

    move-object v2, p0

    goto :goto_57

    .line 1074
    .end local v2    # "i":I
    .restart local v5    # "i":I
    :pswitch_24
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    .restart local v6    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v7    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->callRegisterGradient(I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)I

    move-result p1

    move v0, p1

    .end local v5    # "i":I
    .local p1, "i":I
    goto :goto_57

    .line 1071
    .end local v6    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v7    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    .restart local v5    # "i":I
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    :pswitch_2f
    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    .restart local v6    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v7    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    goto :goto_56

    .line 1062
    .end local v6    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v7    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    :pswitch_33
    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    .restart local v6    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v7    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    add-int/lit8 v5, v5, 0x1

    .line 1063
    move v0, v5

    goto :goto_57

    .line 1048
    .end local v6    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v7    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p2    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    :pswitch_3a
    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local p2    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    .restart local v6    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v7    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    iget-object p1, v2, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 p2, v5, 0x1

    .end local v5    # "i":I
    .local p2, "i":I
    aget p1, p1, v5

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 1049
    .local p1, "v":F
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1050
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 1076
    .end local v0    # "type":I
    .end local v3    # "cmd":I
    .end local p1    # "v":F
    :cond_54
    move v0, p2

    goto :goto_57

    .end local p2    # "i":I
    .restart local v5    # "i":I
    :goto_56
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    :goto_57
    move-object p1, v6

    move-object p2, v7

    goto :goto_1

    .line 1077
    .end local v6    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .end local v7    # "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local p2, "support":Lcom/android/internal/widget/remotecompose/core/VariableSupport;
    :cond_5a
    return-void

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_12
        :pswitch_12
        :pswitch_33
        :pswitch_3a
        :pswitch_3a
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_2f
        :pswitch_24
        :pswitch_3a
        :pswitch_33
        :pswitch_2f
        :pswitch_2f
        :pswitch_33
        :pswitch_2f
        :pswitch_2f
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public blacklist reset()V
    .registers 4

    .line 949
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 950
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mColorFilterSet:Z

    if-eqz v1, :cond_a

    .line 951
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->clearColorFilter()V

    .line 953
    :cond_a
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mLastShaderSet:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mLastShaderSet:I

    if-eqz v1, :cond_16

    .line 954
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setShader(I)V

    .line 956
    :cond_16
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 14
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1251
    const-string v0, "PaintBundle"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1253
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .line 1254
    .local v1, "i":I
    :goto_b
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v1, v2, :cond_240

    .line 1255
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget v1, v2, v1

    .line 1256
    .local v1, "cmd":I
    const v2, 0xffff

    and-int/2addr v2, v1

    .line 1257
    .local v2, "type":I
    const-string v4, "enabled"

    const-string v5, "id"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "type"

    packed-switch v2, :pswitch_data_246

    :pswitch_25
    goto/16 :goto_23d

    .line 1309
    :pswitch_27
    const-string v4, "ClearColorFilter"

    filled-new-array {v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1310
    goto/16 :goto_23d

    .line 1299
    :pswitch_36
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    aget v3, v4, v3

    .line 1304
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    shr-int/lit8 v3, v1, 0x10

    .line 1306
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v6, "type"

    const-string v7, "ColorFilterID"

    const-string v8, "id"

    const-string v10, "mode"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v3

    .line 1300
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 1299
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1307
    move v1, v5

    goto/16 :goto_23e

    .line 1274
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :pswitch_5d
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aget v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ColorId"

    filled-new-array {v8, v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    move v1, v6

    goto/16 :goto_23e

    .line 1321
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :pswitch_77
    shr-int/lit8 v4, v1, 0x10

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BlendMode"

    const-string v6, "mode"

    filled-new-array {v8, v5, v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1322
    goto/16 :goto_23d

    .line 1324
    :pswitch_8e
    shr-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_93

    move v6, v7

    :cond_93
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "FilterBitmap"

    filled-new-array {v8, v6, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    goto/16 :goto_23d

    .line 1262
    :pswitch_a6
    shr-int/lit8 v4, v1, 0x10

    .line 1263
    .local v4, "style":I
    and-int/lit16 v5, v4, 0x3ff

    int-to-float v5, v5

    .line 1264
    .local v5, "weight":F
    shr-int/lit8 v9, v4, 0xa

    if-lez v9, :cond_b0

    move v6, v7

    .line 1265
    .local v6, "italic":Z
    :cond_b0
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "i":I
    .local v9, "i":I
    aget v3, v7, v3

    .line 1266
    .local v3, "fontFamily":I
    const-string v7, "fontFamily"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "FontFamily"

    filled-new-array {v8, v11, v7, v10}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    const-string/jumbo v7, "weight"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v11, "FontWeight"

    filled-new-array {v8, v11, v7, v10}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    const-string v7, "italic"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "TypeFace"

    filled-new-array {v8, v11, v7, v10}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    move v1, v9

    goto/16 :goto_23e

    .line 1327
    .end local v4    # "style":I
    .end local v5    # "weight":F
    .end local v6    # "italic":Z
    .end local v9    # "i":I
    .local v3, "i":I
    :pswitch_f3
    shr-int/lit8 v4, v1, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "StrokeJoin"

    const-string/jumbo v6, "strokeJoin"

    filled-new-array {v8, v5, v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    goto/16 :goto_23d

    .line 1330
    :pswitch_10b
    shr-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_110

    move v6, v7

    :cond_110
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "AntiAlias"

    filled-new-array {v8, v6, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    goto/16 :goto_23d

    .line 1289
    :pswitch_123
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    aget v3, v4, v3

    .line 1294
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v9

    shr-int/lit8 v3, v1, 0x10

    .line 1296
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v6, "type"

    const-string v7, "ColorFilter"

    const-string v8, "color"

    const-string v10, "mode"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v3

    .line 1290
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 1289
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    move v1, v5

    goto/16 :goto_23e

    .line 1315
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :pswitch_14a
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    aget v3, v4, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v3

    const-string v4, "Alpha"

    const-string v6, "alpha"

    filled-new-array {v8, v4, v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    move v1, v5

    goto/16 :goto_23e

    .line 1333
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :pswitch_166
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    invoke-static {v1, v4, v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->serializeGradient(I[IILjava/util/List;)I

    move-result v3

    move v1, v3

    goto/16 :goto_23e

    .line 1318
    :pswitch_16f
    shr-int/lit8 v4, v1, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ImageFilterQuality"

    const-string/jumbo v6, "quality"

    filled-new-array {v8, v5, v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    goto/16 :goto_23d

    .line 1312
    :pswitch_187
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aget v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Shader"

    filled-new-array {v8, v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    move v1, v6

    goto/16 :goto_23e

    .line 1286
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :pswitch_1a1
    shr-int/lit8 v4, v1, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Style"

    const-string/jumbo v6, "style"

    filled-new-array {v8, v5, v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1287
    goto/16 :goto_23d

    .line 1283
    :pswitch_1b9
    shr-int/lit8 v4, v1, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "StrokeCap"

    const-string v6, "cap"

    filled-new-array {v8, v5, v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    goto :goto_23d

    .line 1280
    :pswitch_1cf
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    aget v3, v4, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v3

    const-string v4, "StrokeMiter"

    const-string v6, "miter"

    filled-new-array {v8, v4, v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1281
    move v1, v5

    goto :goto_23e

    .line 1277
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :pswitch_1ea
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    aget v3, v4, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v3

    const-string v4, "StrokeWidth"

    const-string/jumbo v6, "width"

    filled-new-array {v8, v4, v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1278
    move v1, v5

    goto :goto_23e

    .line 1271
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :pswitch_206
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    aget v3, v4, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Color"

    const-string v6, "color"

    filled-new-array {v8, v4, v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    move v1, v5

    goto :goto_23e

    .line 1259
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :pswitch_221
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    aget v3, v4, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->getVariable(I)Ljava/util/Map;

    move-result-object v3

    const-string v4, "TextSize"

    const-string/jumbo v6, "size"

    filled-new-array {v8, v4, v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->orderedOf([Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    move v1, v5

    goto :goto_23e

    .line 1335
    .end local v1    # "cmd":I
    .end local v2    # "type":I
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :goto_23d
    move v1, v3

    .end local v3    # "i":I
    .local v1, "i":I
    :goto_23e
    goto/16 :goto_b

    .line 1336
    :cond_240
    const-string v2, "operations"

    invoke-interface {p1, v2, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 1337
    return-void

    :pswitch_data_246
    .packed-switch 0x1
        :pswitch_221
        :pswitch_25
        :pswitch_25
        :pswitch_206
        :pswitch_1ea
        :pswitch_1cf
        :pswitch_1b9
        :pswitch_1a1
        :pswitch_187
        :pswitch_16f
        :pswitch_166
        :pswitch_14a
        :pswitch_123
        :pswitch_10b
        :pswitch_f3
        :pswitch_a6
        :pswitch_8e
        :pswitch_77
        :pswitch_5d
        :pswitch_36
        :pswitch_27
    .end packed-switch
.end method

.method public blacklist setAlpha(F)V
    .registers 5
    .param p1, "alpha"    # F

    .line 876
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0xc

    aput v2, v0, v1

    .line 877
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 878
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    .line 879
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 880
    return-void
.end method

.method public blacklist setAntiAlias(Z)V
    .registers 5
    .param p1, "aa"    # Z

    .line 935
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p1, 0x10

    or-int/lit8 v2, v2, 0xe

    aput v2, v0, v1

    .line 936
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 937
    return-void
.end method

.method public blacklist setBlendMode(I)V
    .registers 5
    .param p1, "blendmode"    # I

    .line 923
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p1, 0x10

    or-int/lit8 v2, v2, 0x12

    aput v2, v0, v1

    .line 924
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 925
    return-void
.end method

.method public blacklist setColor(FFFF)V
    .registers 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 825
    invoke-static {p4, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->toARGB(FFFF)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 826
    return-void
.end method

.method public blacklist setColor(I)V
    .registers 5
    .param p1, "color"    # I

    .line 797
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 798
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 799
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v1

    .line 800
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 801
    return-void
.end method

.method public blacklist setColor(IIII)V
    .registers 7
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I

    .line 812
    shl-int/lit8 v0, p4, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    .line 813
    .local v0, "color":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 814
    return-void
.end method

.method public blacklist setColorFilter(II)V
    .registers 6
    .param p1, "color"    # I
    .param p2, "mode"    # I

    .line 729
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p2, 0x10

    or-int/lit8 v2, v2, 0xd

    aput v2, v0, v1

    .line 730
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v1

    .line 732
    return-void
.end method

.method public blacklist setColorFilterId(II)V
    .registers 7
    .param p1, "color"    # I
    .param p2, "mode"    # I

    .line 741
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p2, 0x10

    or-int/lit8 v2, v2, 0x14

    aput v2, v0, v1

    .line 742
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 743
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v2

    .line 744
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mColorFilterSet:Z

    .line 745
    return-void
.end method

.method public blacklist setColorId(I)V
    .registers 5
    .param p1, "color"    # I

    .line 834
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0x13

    aput v2, v0, v1

    .line 835
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 836
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v1

    .line 837
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 838
    return-void
.end method

.method public blacklist setFilterBitmap(Z)V
    .registers 5
    .param p1, "filter"    # Z

    .line 912
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-eqz p1, :cond_9

    const/high16 v2, 0x10000

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    or-int/lit8 v2, v2, 0x11

    aput v2, v0, v1

    .line 913
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 914
    return-void
.end method

.method public blacklist setLinearGradient([II[FFFFFI)V
    .registers 14
    .param p1, "colors"    # [I
    .param p2, "idMask"    # I
    .param p3, "stops"    # [F
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "endX"    # F
    .param p7, "endY"    # F
    .param p8, "tileMode"    # I

    .line 632
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0xb

    aput v2, v0, v1

    .line 633
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p2, 0x10

    array-length v3, p1

    move v4, v3

    .local v4, "len":I
    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 634
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    if-ge v0, v4, :cond_2d

    .line 635
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v3, p1, v0

    aput v3, v1, v2

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 638
    .end local v0    # "i":I
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-nez p3, :cond_39

    const/4 v2, 0x0

    goto :goto_3a

    :cond_39
    array-length v2, p3

    :goto_3a
    move v3, v2

    .end local v4    # "len":I
    .local v3, "len":I
    aput v2, v0, v1

    .line 639
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3e
    if-ge v0, v3, :cond_53

    .line 640
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v4, p3, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    aput v4, v1, v2

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 642
    .end local v0    # "i":I
    :cond_53
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    .line 643
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    .line 644
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    .line 645
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    .line 646
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p8, v0, v1

    .line 647
    return-void
.end method

.method public blacklist setRadialGradient([II[FFFFI)V
    .registers 14
    .param p1, "colors"    # [I
    .param p2, "idMask"    # I
    .param p3, "stops"    # [F
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F
    .param p6, "radius"    # F
    .param p7, "tileMode"    # I

    .line 706
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const v2, 0x1000b

    aput v2, v0, v1

    .line 707
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p2, 0x10

    const/4 v3, 0x0

    if-nez p1, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    array-length v4, p1

    :goto_1d
    move v5, v4

    .local v5, "len":I
    or-int/2addr v2, v4

    aput v2, v0, v1

    .line 708
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    if-ge v0, v5, :cond_33

    .line 709
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v4, p1, v0

    aput v4, v1, v2

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 711
    .end local v0    # "i":I
    :cond_33
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-nez p3, :cond_3e

    goto :goto_3f

    :cond_3e
    array-length v3, p3

    :goto_3f
    move v2, v3

    .end local v5    # "len":I
    .local v2, "len":I
    aput v3, v0, v1

    .line 713
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_43
    if-ge v0, v2, :cond_58

    .line 714
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v4, p3, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    aput v4, v1, v3

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 716
    .end local v0    # "i":I
    :cond_58
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v0, v1

    .line 717
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v0, v1

    .line 718
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v0, v1

    .line 719
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p7, v0, v1

    .line 720
    return-void
.end method

.method public blacklist setShader(I)V
    .registers 5
    .param p1, "shaderId"    # I

    .line 867
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mLastShaderSet:I

    .line 868
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0x9

    aput v2, v0, v1

    .line 869
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 870
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v1

    .line 871
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 872
    return-void
.end method

.method public blacklist setStrokeCap(I)V
    .registers 5
    .param p1, "cap"    # I

    .line 847
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p1, 0x10

    or-int/lit8 v2, v2, 0x7

    aput v2, v0, v1

    .line 848
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 849
    return-void
.end method

.method public blacklist setStrokeJoin(I)V
    .registers 5
    .param p1, "join"    # I

    .line 902
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p1, 0x10

    or-int/lit8 v2, v2, 0xf

    aput v2, v0, v1

    .line 903
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 904
    return-void
.end method

.method public blacklist setStrokeMiter(F)V
    .registers 5
    .param p1, "miter"    # F

    .line 890
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 891
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 892
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    .line 893
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 894
    return-void
.end method

.method public blacklist setStrokeWidth(F)V
    .registers 5
    .param p1, "width"    # F

    .line 785
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 786
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 787
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    .line 788
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 789
    return-void
.end method

.method public blacklist setStyle(I)V
    .registers 5
    .param p1, "style"    # I

    .line 857
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p1, 0x10

    or-int/lit8 v2, v2, 0x8

    aput v2, v0, v1

    .line 858
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 859
    return-void
.end method

.method public blacklist setSweepGradient([II[FFF)V
    .registers 12
    .param p1, "colors"    # [I
    .param p2, "idMask"    # I
    .param p3, "stops"    # [F
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F

    .line 669
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const v2, 0x2000b

    aput v2, v0, v1

    .line 670
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p2, 0x10

    const/4 v3, 0x0

    if-nez p1, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    array-length v4, p1

    :goto_1d
    move v5, v4

    .local v5, "len":I
    or-int/2addr v2, v4

    aput v2, v0, v1

    .line 671
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    if-ge v0, v5, :cond_33

    .line 672
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v4, p1, v0

    aput v4, v1, v2

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 675
    .end local v0    # "i":I
    :cond_33
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-nez p3, :cond_3e

    goto :goto_3f

    :cond_3e
    array-length v3, p3

    :goto_3f
    move v2, v3

    .end local v5    # "len":I
    .local v2, "len":I
    aput v3, v0, v1

    .line 676
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_43
    if-ge v0, v2, :cond_58

    .line 677
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v4, p3, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    aput v4, v1, v3

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 679
    .end local v0    # "i":I
    :cond_58
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v0, v1

    .line 680
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v0, v1

    .line 681
    return-void
.end method

.method public blacklist setTextSize(F)V
    .registers 6
    .param p1, "size"    # F

    .line 760
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 761
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 762
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v0, v1

    .line 763
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    .line 764
    return-void
.end method

.method public blacklist setTextStyle(IIZ)V
    .registers 8
    .param p1, "fontType"    # I
    .param p2, "weight"    # I
    .param p3, "italic"    # Z

    .line 772
    and-int/lit16 v0, p2, 0x3ff

    if-eqz p3, :cond_7

    const/16 v1, 0x800

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    or-int/2addr v0, v1

    .line 773
    .local v0, "style":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v3, v0, 0x10

    or-int/lit8 v3, v3, 0x10

    aput v3, v1, v2

    .line 774
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v1, v2

    .line 775
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 182
    .local v1, "i":I
    :goto_8
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v1, v2, :cond_275

    .line 183
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget v1, v2, v1

    .line 184
    .local v1, "cmd":I
    const v2, 0xffff

    and-int/2addr v2, v1

    .line 185
    .local v2, "type":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_27a

    :pswitch_1b
    goto/16 :goto_26c

    .line 229
    :pswitch_1d
    const-string v4, "    clearColorFilter"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    goto/16 :goto_26c

    .line 222
    :pswitch_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ColorFilterID(color=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aget v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v1, 0x10

    .line 226
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    goto/16 :goto_26d

    .line 200
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :pswitch_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ColorId(["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .restart local v6    # "i":I
    aget v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    goto/16 :goto_26d

    .line 241
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :pswitch_76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    BlendMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x10

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    goto/16 :goto_26c

    .line 244
    :pswitch_94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    FilterBitmap("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_a4

    move v4, v5

    :cond_a4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    goto/16 :goto_26c

    .line 190
    :pswitch_b1
    shr-int/lit8 v6, v1, 0x10

    .line 191
    .local v6, "style":I
    and-int/lit16 v7, v6, 0x3ff

    .line 192
    .local v7, "weight":I
    shr-int/lit8 v8, v6, 0xa

    if-lez v8, :cond_ba

    move v4, v5

    .line 193
    .local v4, "italic":Z
    :cond_ba
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "i":I
    .local v8, "i":I
    aget v3, v5, v3

    .line 194
    .local v3, "font_type":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    TypeFace("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    move v6, v8

    goto/16 :goto_26d

    .line 247
    .end local v4    # "italic":Z
    .end local v6    # "style":I
    .end local v7    # "weight":I
    .end local v8    # "i":I
    .local v3, "i":I
    :pswitch_eb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    StrokeJoin("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    goto/16 :goto_26c

    .line 250
    :pswitch_105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    AntiAlias("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    goto/16 :goto_26c

    .line 215
    :pswitch_11f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ColorFilter(color="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aget v3, v5, v3

    .line 217
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v1, 0x10

    .line 219
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    goto/16 :goto_26d

    .line 235
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :pswitch_151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Alpha("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .restart local v6    # "i":I
    aget v3, v5, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    goto/16 :goto_26d

    .line 253
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :pswitch_173
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    invoke-virtual {p0, v1, v4, v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->callPrintGradient(I[IILjava/lang/StringBuilder;)I

    move-result v3

    move v6, v3

    goto/16 :goto_26d

    .line 238
    :pswitch_17c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ImageFilterQuality("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    goto/16 :goto_26c

    .line 232
    :pswitch_196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Shader("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .restart local v6    # "i":I
    aget v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    goto/16 :goto_26d

    .line 212
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :pswitch_1b4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Style("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    goto/16 :goto_26c

    .line 209
    :pswitch_1ce
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    StrokeCap("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    goto/16 :goto_26c

    .line 206
    :pswitch_1e8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    StrokeMiter("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .restart local v6    # "i":I
    aget v3, v5, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    goto :goto_26d

    .line 203
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :pswitch_209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    StrokeWidth("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .restart local v6    # "i":I
    aget v3, v5, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    goto :goto_26d

    .line 197
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :pswitch_22a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Color("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .restart local v6    # "i":I
    aget v3, v5, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    goto :goto_26d

    .line 187
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :pswitch_24b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    TextSize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .restart local v6    # "i":I
    aget v3, v5, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    goto :goto_26d

    .line 255
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :goto_26c
    move v6, v3

    .end local v3    # "i":I
    .restart local v6    # "i":I
    :goto_26d
    const-string v3, "),\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .end local v1    # "cmd":I
    .end local v2    # "type":I
    move v1, v6

    goto/16 :goto_8

    .line 257
    .end local v6    # "i":I
    .local v1, "i":I
    :cond_275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_27a
    .packed-switch 0x1
        :pswitch_24b
        :pswitch_1b
        :pswitch_1b
        :pswitch_22a
        :pswitch_209
        :pswitch_1e8
        :pswitch_1ce
        :pswitch_1b4
        :pswitch_196
        :pswitch_17c
        :pswitch_173
        :pswitch_151
        :pswitch_11f
        :pswitch_105
        :pswitch_eb
        :pswitch_b1
        :pswitch_94
        :pswitch_76
        :pswitch_52
        :pswitch_24
        :pswitch_1d
    .end packed-switch
.end method

.method blacklist updateFloatsInGradient(I[I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .registers 15
    .param p1, "cmd"    # I
    .param p2, "out"    # [I
    .param p3, "array"    # [I
    .param p4, "i"    # I
    .param p5, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 1146
    move v0, p4

    .line 1147
    .local v0, "ret":I
    shr-int/lit8 v1, p1, 0x10

    .line 1148
    .local v1, "type":I
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ret":I
    .local v2, "ret":I
    aget v0, p3, v0

    .line 1149
    .local v0, "control":I
    and-int/lit16 v3, v0, 0xff

    .line 1150
    .local v3, "len":I
    const v4, 0xffff

    shr-int/lit8 v5, v0, 0x10

    and-int/2addr v4, v5

    .line 1151
    .local v4, "register":I
    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_106

    .line 1243
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "gradient type unknown"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_104

    .line 1215
    :pswitch_1c
    if-lez v3, :cond_34

    .line 1217
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1f
    if-ge v6, v3, :cond_34

    .line 1218
    aget v7, p3, v2

    .line 1219
    .local v7, "color":I
    shl-int v8, v5, v6

    and-int/2addr v8, v4

    if-eqz v8, :cond_2e

    .line 1220
    invoke-direct {p0, v7, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v8

    aput v8, p2, v2

    .line 1222
    :cond_2e
    nop

    .end local v7    # "color":I
    add-int/lit8 v2, v2, 0x1

    .line 1217
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 1225
    .end local v6    # "j":I
    :cond_34
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ret":I
    .local v6, "ret":I
    aget v3, p3, v2

    .line 1226
    const/4 v2, 0x0

    .line 1227
    .local v2, "stops":[F
    if-lez v3, :cond_4e

    .line 1228
    new-array v2, v3, [F

    .line 1229
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3e
    array-length v8, v2

    if-ge v7, v8, :cond_4e

    .line 1230
    aget v8, p3, v6

    invoke-direct {p0, v8, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v8

    aput v8, p2, v6

    .line 1231
    add-int/lit8 v6, v6, 0x1

    .line 1229
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 1236
    .end local v7    # "j":I
    :cond_4e
    aget v7, p3, v6

    invoke-direct {p0, v7, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v7

    aput v7, p2, v6

    .line 1237
    add-int/2addr v6, v5

    .line 1238
    aget v7, p3, v6

    invoke-direct {p0, v7, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v7

    aput v7, p2, v6

    .line 1239
    add-int/2addr v5, v6

    .line 1241
    .end local v6    # "ret":I
    .local v5, "ret":I
    move v2, v5

    goto/16 :goto_104

    .line 1185
    .end local v5    # "ret":I
    .local v2, "ret":I
    :pswitch_63
    if-lez v3, :cond_7b

    .line 1187
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_66
    if-ge v6, v3, :cond_7b

    .line 1188
    aget v7, p3, v2

    .line 1189
    .local v7, "color":I
    shl-int v8, v5, v6

    and-int/2addr v8, v4

    if-eqz v8, :cond_75

    .line 1190
    invoke-direct {p0, v7, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v8

    aput v8, p2, v2

    .line 1192
    :cond_75
    nop

    .end local v7    # "color":I
    add-int/lit8 v2, v2, 0x1

    .line 1187
    add-int/lit8 v6, v6, 0x1

    goto :goto_66

    .line 1195
    .end local v6    # "j":I
    :cond_7b
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ret":I
    .local v6, "ret":I
    aget v3, p3, v2

    .line 1196
    if-lez v3, :cond_91

    .line 1197
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_82
    if-ge v2, v3, :cond_91

    .line 1198
    aget v7, p3, v6

    invoke-direct {p0, v7, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v7

    aput v7, p2, v6

    .line 1199
    add-int/lit8 v6, v6, 0x1

    .line 1197
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 1204
    .end local v2    # "j":I
    :cond_91
    aget v2, p3, v6

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v6

    .line 1205
    add-int/2addr v6, v5

    .line 1206
    aget v2, p3, v6

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v6

    .line 1207
    add-int/2addr v6, v5

    .line 1209
    aget v2, p3, v6

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v6

    .line 1210
    add-int/2addr v6, v5

    .line 1211
    add-int/lit8 v2, v6, 0x1

    .line 1212
    .end local v6    # "ret":I
    .local v2, "ret":I
    goto :goto_104

    .line 1153
    :pswitch_af
    if-lez v3, :cond_c7

    .line 1155
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_b2
    if-ge v6, v3, :cond_c7

    .line 1156
    aget v7, p3, v2

    .line 1157
    .restart local v7    # "color":I
    shl-int v8, v5, v6

    and-int/2addr v8, v4

    if-eqz v8, :cond_c1

    .line 1158
    invoke-direct {p0, v7, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v8

    aput v8, p2, v2

    .line 1160
    :cond_c1
    nop

    .end local v7    # "color":I
    add-int/lit8 v2, v2, 0x1

    .line 1155
    add-int/lit8 v6, v6, 0x1

    goto :goto_b2

    .line 1163
    .end local v6    # "j":I
    :cond_c7
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ret":I
    .local v6, "ret":I
    aget v3, p3, v2

    .line 1164
    if-lez v3, :cond_dd

    .line 1165
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_ce
    if-ge v2, v3, :cond_dd

    .line 1166
    aget v7, p3, v6

    invoke-direct {p0, v7, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v7

    aput v7, p2, v6

    .line 1167
    add-int/lit8 v6, v6, 0x1

    .line 1165
    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    .line 1171
    .end local v2    # "j":I
    :cond_dd
    aget v2, p3, v6

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v6

    .line 1172
    add-int/2addr v6, v5

    .line 1173
    aget v2, p3, v6

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v6

    .line 1174
    add-int/2addr v6, v5

    .line 1177
    aget v2, p3, v6

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v6

    .line 1178
    add-int/2addr v6, v5

    .line 1179
    aget v2, p3, v6

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v6

    .line 1180
    add-int/2addr v6, v5

    .line 1181
    add-int/lit8 v2, v6, 0x1

    .line 1182
    .end local v6    # "ret":I
    .local v2, "ret":I
    nop

    .line 1246
    :goto_104
    return v2

    nop

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_af
        :pswitch_63
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 10
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 1085
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    if-nez v0, :cond_10

    .line 1086
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    goto :goto_1b

    .line 1088
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1090
    :goto_1b
    const/4 v0, 0x0

    .line 1091
    .local v0, "i":I
    :goto_1c
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v0, v1, :cond_6c

    .line 1092
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v0, 0x1

    .end local v0    # "i":I
    .local v6, "i":I
    aget v3, v1, v0

    .line 1093
    .local v3, "cmd":I
    const v0, 0xffff

    and-int/2addr v0, v3

    .line 1094
    .local v0, "type":I
    packed-switch v0, :pswitch_data_6e

    :pswitch_2d
    move-object v2, p0

    move-object v7, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v7, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    goto :goto_69

    .line 1104
    .end local v7    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    :pswitch_30
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    aget v2, v2, v6

    invoke-direct {p0, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, v1, v6

    .line 1105
    add-int/lit8 v6, v6, 0x1

    .line 1106
    move-object v2, p0

    move-object v7, p1

    move v0, v6

    goto :goto_6a

    .line 1125
    :pswitch_42
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    move-object v2, p0

    move-object v7, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v7    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->updateFloatsInGradient(I[I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p1

    move v0, p1

    .end local v6    # "i":I
    .local p1, "i":I
    goto :goto_6a

    .line 1121
    .end local v7    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v6    # "i":I
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    :pswitch_4e
    move-object v2, p0

    move-object v7, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v7    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    goto :goto_69

    .line 1111
    .end local v7    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    :pswitch_51
    move-object v2, p0

    move-object v7, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v7    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    add-int/lit8 v6, v6, 0x1

    .line 1112
    move v0, v6

    goto :goto_6a

    .line 1099
    .end local v7    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    :pswitch_57
    move-object v2, p0

    move-object v7, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local v7    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    iget-object p1, v2, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    iget-object v1, v2, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    aget v1, v1, v6

    invoke-direct {p0, v1, v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v1

    aput v1, p1, v6

    .line 1100
    add-int/lit8 v6, v6, 0x1

    .line 1101
    move v0, v6

    goto :goto_6a

    .line 1127
    .end local v0    # "type":I
    .end local v3    # "cmd":I
    :goto_69
    move v0, v6

    .end local v6    # "i":I
    .local v0, "i":I
    :goto_6a
    move-object p1, v7

    goto :goto_1c

    .line 1128
    .end local v7    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    :cond_6c
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_57
        :pswitch_2d
        :pswitch_2d
        :pswitch_51
        :pswitch_57
        :pswitch_57
        :pswitch_4e
        :pswitch_4e
        :pswitch_51
        :pswitch_4e
        :pswitch_42
        :pswitch_57
        :pswitch_51
        :pswitch_4e
        :pswitch_4e
        :pswitch_51
        :pswitch_4e
        :pswitch_4e
        :pswitch_30
        :pswitch_30
        :pswitch_4e
    .end packed-switch
.end method

.method public blacklist writeBundle(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 513
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 514
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_6
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v0, v1, :cond_14

    .line 515
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 517
    .end local v0    # "index":I
    :cond_14
    return-void
.end method
