.class final enum Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
.super Ljava/lang/Enum;
.source "AccessNetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AccessNetworkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GeranBandArfcnFrequency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_450:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_480:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_850:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_DCS1800:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_E900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_E900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_ER900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_ER900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_P900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_PCS1900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_R900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_R900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;


# instance fields
.field blacklist arfcnOffset:I

.field blacklist arfcnRangeFirst:I

.field blacklist arfcnRangeLast:I

.field blacklist band:I

.field blacklist downlinkOffset:I

.field blacklist uplinkFrequencyFirst:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
    .registers 12

    .line 186
    sget-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_450:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v1, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_480:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v2, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_850:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v3, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_DCS1800:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v4, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_PCS1900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v5, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_E900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v6, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_E900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v7, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_R900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_R900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v9, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_P900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v10, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_ER900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v11, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_ER900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    filled-new-array/range {v0 .. v11}, [Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 18

    .line 195
    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v7, 0x125

    const/16 v8, 0xa

    const-string v1, "GERAN_ARFCN_FREQUENCY_BAND_450"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const v4, 0x6e028

    const/16 v5, 0x103

    const/16 v6, 0x103

    invoke-direct/range {v0 .. v8}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_450:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 196
    new-instance v1, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v8, 0x154

    const/16 v9, 0xa

    const-string v2, "GERAN_ARFCN_FREQUENCY_BAND_480"

    const/4 v3, 0x1

    const/4 v4, 0x4

    const v5, 0x74f18

    const/16 v6, 0x132

    const/16 v7, 0x132

    invoke-direct/range {v1 .. v9}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v1, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_480:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 197
    new-instance v2, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v9, 0xfb

    const/16 v10, 0x2d

    const-string v3, "GERAN_ARFCN_FREQUENCY_BAND_850"

    const/4 v4, 0x2

    const/16 v5, 0x8

    const v6, 0xc9388

    const/16 v7, 0x80

    const/16 v8, 0x80

    invoke-direct/range {v2 .. v10}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v2, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_850:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 198
    new-instance v3, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v10, 0x375

    const/16 v11, 0x5f

    const-string v4, "GERAN_ARFCN_FREQUENCY_BAND_DCS1800"

    const/4 v5, 0x3

    const/16 v6, 0xc

    const v7, 0x1a1878

    const/16 v8, 0x200

    const/16 v9, 0x200

    invoke-direct/range {v3 .. v11}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v3, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_DCS1800:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 199
    new-instance v4, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v11, 0x32a

    const/16 v12, 0x50

    const-string v5, "GERAN_ARFCN_FREQUENCY_BAND_PCS1900"

    const/4 v6, 0x4

    const/16 v7, 0xd

    const v8, 0x1c3b58

    const/16 v10, 0x200

    invoke-direct/range {v4 .. v12}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v4, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_PCS1900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 200
    new-instance v5, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v12, 0x7c

    const/16 v13, 0x2d

    const-string v6, "GERAN_ARFCN_FREQUENCY_BAND_E900_1"

    const/4 v7, 0x5

    const/16 v8, 0xa

    const v9, 0xd9490

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v13}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v5, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_E900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 201
    new-instance v6, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v13, 0x3ff

    const/16 v14, 0x2d

    const-string v7, "GERAN_ARFCN_FREQUENCY_BAND_E900_2"

    const/4 v8, 0x6

    const/16 v9, 0xa

    const v10, 0xd9490

    const/16 v11, 0x400

    const/16 v12, 0x3cf

    invoke-direct/range {v6 .. v14}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v6, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_E900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 202
    new-instance v7, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v14, 0x7c

    const/16 v15, 0x2d

    const-string v8, "GERAN_ARFCN_FREQUENCY_BAND_R900_1"

    const/4 v9, 0x7

    const/16 v10, 0xb

    const v11, 0xd9490

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v15}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v7, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_R900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 203
    new-instance v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v15, 0x3ff

    const/16 v16, 0x2d

    const-string v9, "GERAN_ARFCN_FREQUENCY_BAND_R900_2"

    const/16 v10, 0x8

    const/16 v11, 0xb

    const v12, 0xd9490

    const/16 v13, 0x400

    const/16 v14, 0x3bb

    invoke-direct/range {v8 .. v16}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_R900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 204
    new-instance v9, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v16, 0x7c

    const/16 v17, 0x2d

    const-string v10, "GERAN_ARFCN_FREQUENCY_BAND_P900"

    const/16 v11, 0x9

    const/16 v12, 0x9

    const v13, 0xd9490

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct/range {v9 .. v17}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v9, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_P900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 205
    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v7, 0x7c

    const/16 v8, 0x2d

    const-string v1, "GERAN_ARFCN_FREQUENCY_BAND_ER900_1"

    const/16 v2, 0xa

    const/16 v3, 0xe

    const v4, 0xd9490

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_ER900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 206
    new-instance v1, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v8, 0x3ff

    const/16 v9, 0x400

    const-string v2, "GERAN_ARFCN_FREQUENCY_BAND_ER900_2"

    const/16 v3, 0xb

    const/16 v4, 0xe

    const v5, 0xd9490

    const/16 v6, 0x400

    const/16 v7, 0x3ac

    invoke-direct/range {v1 .. v9}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v1, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_ER900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 186
    invoke-static {}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->$values()[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    move-result-object v0

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->$VALUES:[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIIIIII)V
    .registers 9
    .param p3, "band"    # I
    .param p4, "uplinkFrequencyFirstKhz"    # I
    .param p5, "arfcnOffset"    # I
    .param p6, "arfcnRangeFirst"    # I
    .param p7, "arfcnRangeLast"    # I
    .param p8, "downlinkOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)V"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 210
    iput p3, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->band:I

    .line 211
    iput p4, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->uplinkFrequencyFirst:I

    .line 212
    iput p5, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnOffset:I

    .line 213
    iput p6, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeFirst:I

    .line 214
    iput p7, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeLast:I

    .line 215
    iput p8, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->downlinkOffset:I

    .line 216
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 186
    const-class v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    return-object v0
.end method

.method public static blacklist values()[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
    .registers 1

    .line 186
    sget-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->$VALUES:[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    invoke-virtual {v0}, [Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    return-object v0
.end method
