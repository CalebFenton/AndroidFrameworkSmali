.class public final Landroid/net/wifi/rtt/ResponderLocation;
.super Ljava/lang/Object;
.source "ResponderLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/ResponderLocation$ExpectedToMoveType;,
        Landroid/net/wifi/rtt/ResponderLocation$DatumType;,
        Landroid/net/wifi/rtt/ResponderLocation$AltitudeType;
    }
.end annotation


# static fields
.field public static final whitelist ALTITUDE_FLOORS:I = 0x2

.field private static final blacklist ALTITUDE_FRACTION_BITS:I = 0x8

.field public static final whitelist ALTITUDE_METERS:I = 0x1

.field private static final blacklist ALTITUDE_UNCERTAINTY_BASE:I = 0x15

.field public static final whitelist ALTITUDE_UNDEFINED:I = 0x0

.field private static final blacklist BYTES_IN_A_BSSID:I = 0x6

.field private static final blacklist BYTE_MASK:I = 0xff

.field private static final blacklist CIVIC_COUNTRY_CODE_INDEX:I = 0x0

.field private static final blacklist CIVIC_TLV_LIST_INDEX:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/ResponderLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DATUM_NAD83_MLLW:I = 0x3

.field public static final whitelist DATUM_NAD83_NAV88:I = 0x2

.field public static final whitelist DATUM_UNDEFINED:I = 0x0

.field public static final whitelist DATUM_WGS84:I = 0x1

.field private static final blacklist LATLNG_FRACTION_BITS:I = 0x19

.field private static final blacklist LATLNG_UNCERTAINTY_BASE:I = 0x8

.field private static final blacklist LAT_ABS_LIMIT:D = 90.0

.field public static final whitelist LCI_VERSION_1:I = 0x1

.field private static final blacklist LEAD_LCI_ELEMENT_BYTES:[B

.field private static final blacklist LEAD_LCR_ELEMENT_BYTES:[B

.field private static final blacklist LNG_ABS_LIMIT:D = 180.0

.field public static final whitelist LOCATION_FIXED:I = 0x0

.field public static final whitelist LOCATION_MOVEMENT_UNKNOWN:I = 0x2

.field private static final blacklist LOCATION_PROVIDER:Ljava/lang/String; = "WiFi Access Point"

.field public static final whitelist LOCATION_RESERVED:I = 0x3

.field public static final whitelist LOCATION_VARIABLE:I = 0x1

.field private static final blacklist LSB_IN_BYTE:I = 0x1

.field private static final blacklist MAP_TYPE_URL_DEFINED:I = 0x0

.field private static final blacklist MAX_BUFFER_SIZE:I = 0x100

.field private static final blacklist MEASUREMENT_REPORT_MODE:B = 0x0t

.field private static final blacklist MEASUREMENT_TOKEN_AUTONOMOUS:B = 0x1t

.field private static final blacklist MEASUREMENT_TYPE_LCI:B = 0x8t

.field private static final blacklist MEASUREMENT_TYPE_LCR:B = 0xbt

.field private static final blacklist MIN_BUFFER_SIZE:I = 0x3

.field private static final blacklist MSB_IN_BYTE:I = 0x80

.field private static final blacklist SUBELEMENT_BSSID_LIST:B = 0x7t

.field private static final blacklist SUBELEMENT_BSSID_LIST_INDEX:I = 0x1

.field private static final blacklist SUBELEMENT_BSSID_LIST_MIN_BUFFER_LENGTH:I = 0x1

.field private static final blacklist SUBELEMENT_BSSID_MAX_INDICATOR_INDEX:I = 0x0

.field private static final blacklist SUBELEMENT_IMAGE_MAP_TYPE_INDEX:I = 0x0

.field private static final blacklist SUBELEMENT_LCI:B = 0x0t

.field private static final blacklist SUBELEMENT_LCI_ALT_INDEX:I = 0x6

.field private static final blacklist SUBELEMENT_LCI_ALT_TYPE_INDEX:I = 0x4

.field private static final blacklist SUBELEMENT_LCI_ALT_UNCERTAINTY_INDEX:I = 0x5

.field private static final blacklist SUBELEMENT_LCI_BIT_FIELD_LENGTHS:[I

.field private static final blacklist SUBELEMENT_LCI_DATUM_INDEX:I = 0x7

.field private static final blacklist SUBELEMENT_LCI_DEPENDENT_STA_INDEX:I = 0xa

.field private static final blacklist SUBELEMENT_LCI_LAT_INDEX:I = 0x1

.field private static final blacklist SUBELEMENT_LCI_LAT_UNCERTAINTY_INDEX:I = 0x0

.field private static final blacklist SUBELEMENT_LCI_LENGTH:I = 0x10

.field private static final blacklist SUBELEMENT_LCI_LNG_INDEX:I = 0x3

.field private static final blacklist SUBELEMENT_LCI_LNG_UNCERTAINTY_INDEX:I = 0x2

.field private static final blacklist SUBELEMENT_LCI_REGLOC_AGREEMENT_INDEX:I = 0x8

.field private static final blacklist SUBELEMENT_LCI_REGLOC_DSE_INDEX:I = 0x9

.field private static final blacklist SUBELEMENT_LCI_VERSION_INDEX:I = 0xb

.field private static final blacklist SUBELEMENT_LOCATION_CIVIC:B = 0x0t

.field private static final blacklist SUBELEMENT_LOCATION_CIVIC_MAX_LENGTH:I = 0x100

.field private static final blacklist SUBELEMENT_LOCATION_CIVIC_MIN_LENGTH:I = 0x2

.field private static final blacklist SUBELEMENT_MAP_IMAGE:B = 0x5t

.field private static final blacklist SUBELEMENT_MAP_IMAGE_URL_MAX_LENGTH:I = 0x100

.field private static final blacklist SUBELEMENT_USAGE:B = 0x6t

.field private static final blacklist SUBELEMENT_USAGE_LENGTH1:I = 0x1

.field private static final blacklist SUBELEMENT_USAGE_LENGTH3:I = 0x3

.field private static final blacklist SUBELEMENT_USAGE_MASK_RETENTION_EXPIRES:I = 0x2

.field private static final blacklist SUBELEMENT_USAGE_MASK_RETRANSMIT:I = 0x1

.field private static final blacklist SUBELEMENT_USAGE_MASK_STA_LOCATION_POLICY:I = 0x4

.field private static final blacklist SUBELEMENT_USAGE_PARAMS_INDEX:I = 0x0

.field private static final blacklist SUBELEMENT_Z:B = 0x4t

.field private static final blacklist SUBELEMENT_Z_BIT_FIELD_LENGTHS:[I

.field private static final blacklist SUBELEMENT_Z_FLOOR_NUMBER_INDEX:I = 0x1

.field private static final blacklist SUBELEMENT_Z_HEIGHT_ABOVE_FLOOR_INDEX:I = 0x2

.field private static final blacklist SUBELEMENT_Z_HEIGHT_ABOVE_FLOOR_UNCERTAINTY_INDEX:I = 0x3

.field private static final blacklist SUBELEMENT_Z_LAT_EXPECTED_TO_MOVE_INDEX:I = 0x0

.field private static final blacklist SUBELEMENT_Z_LENGTH:I = 0x6

.field private static final blacklist SUPPORTED_IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

.field private static final blacklist UNCERTAINTY_UNDEFINED:I = 0x0

.field private static final blacklist Z_FLOOR_HEIGHT_FRACTION_BITS:I = 0xc

.field private static final blacklist Z_FLOOR_NUMBER_FRACTION_BITS:I = 0x4

.field private static final blacklist Z_MAX_HEIGHT_UNCERTAINTY_FACTOR:I = 0x19


# instance fields
.field private blacklist mAltitude:D

.field private blacklist mAltitudeType:I

.field private blacklist mAltitudeUncertainty:D

.field private blacklist mBssidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

.field private blacklist mCivicLocationCountryCode:Ljava/lang/String;

.field private blacklist mCivicLocationString:Ljava/lang/String;

.field private blacklist mDatum:I

.field private blacklist mExpectedToMove:I

.field private blacklist mFloorNumber:D

.field private blacklist mHeightAboveFloorMeters:D

.field private blacklist mHeightAboveFloorUncertaintyMeters:D

.field private blacklist mIsBssidListValid:Z

.field private blacklist mIsLciValid:Z

.field private blacklist mIsLocationCivicValid:Z

.field private blacklist mIsMapImageValid:Z

.field private blacklist mIsUsageValid:Z

.field private final blacklist mIsValid:Z

.field private blacklist mIsZValid:Z

.field private blacklist mLatitude:D

.field private blacklist mLatitudeUncertainty:D

.field private blacklist mLciDependentStation:Z

.field private blacklist mLciRegisteredLocationAgreement:Z

.field private blacklist mLciRegisteredLocationDse:Z

.field private blacklist mLciVersion:I

.field private blacklist mLongitude:D

.field private blacklist mLongitudeUncertainty:D

.field private blacklist mMapImageType:I

.field private blacklist mMapImageUri:Landroid/net/Uri;

.field private blacklist mUsageExtraInfoOnAssociation:Z

.field private blacklist mUsageRetentionExpires:Z

.field private blacklist mUsageRetransmit:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 19

    .line 85
    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_58

    sput-object v1, Landroid/net/wifi/rtt/ResponderLocation;->LEAD_LCI_ELEMENT_BYTES:[B

    .line 93
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_5e

    sput-object v1, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_LCI_BIT_FIELD_LENGTHS:[I

    .line 165
    const/16 v1, 0xe

    const/16 v2, 0x18

    const/4 v3, 0x2

    const/16 v4, 0x8

    filled-new-array {v3, v1, v2, v4}, [I

    move-result-object v1

    sput-object v1, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_Z_BIT_FIELD_LENGTHS:[I

    .line 217
    new-array v0, v0, [B

    fill-array-data v0, :array_7a

    sput-object v0, Landroid/net/wifi/rtt/ResponderLocation;->LEAD_LCR_ELEMENT_BYTES:[B

    .line 228
    const-string v17, "xpm"

    const-string v18, "ico"

    const-string v1, ""

    const-string v2, "png"

    const-string v3, "gif"

    const-string v4, "jpg"

    const-string v5, "svg"

    const-string v6, "dxf"

    const-string v7, "dwg"

    const-string v8, "dwf"

    const-string v9, "cad"

    const-string v10, "tif"

    const-string v11, "gml"

    const-string v12, "kml"

    const-string v13, "bmp"

    const-string v14, "pgm"

    const-string v15, "ppm"

    const-string v16, "xbm"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/rtt/ResponderLocation;->SUPPORTED_IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    .line 395
    new-instance v0, Landroid/net/wifi/rtt/ResponderLocation$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/ResponderLocation$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/ResponderLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_58
    .array-data 1
        0x1t
        0x0t
        0x8t
    .end array-data

    :array_5e
    .array-data 4
        0x6
        0x22
        0x6
        0x22
        0x4
        0x6
        0x1e
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_7a
    .array-data 1
        0x1t
        0x0t
        0xbt
    .end array-data
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    .line 257
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    .line 258
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    .line 259
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    .line 260
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    .line 261
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_19

    move v2, v1

    goto :goto_1a

    :cond_19
    move v2, v0

    :goto_1a
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_24

    move v2, v1

    goto :goto_25

    :cond_24
    move v2, v0

    :goto_25
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2f

    move v2, v1

    goto :goto_30

    :cond_2f
    move v2, v0

    :goto_30
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3a

    move v2, v1

    goto :goto_3b

    :cond_3a
    move v2, v0

    :goto_3b
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_45

    move v2, v1

    goto :goto_46

    :cond_45
    move v2, v0

    :goto_46
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_50

    move v2, v1

    goto :goto_51

    :cond_50
    move v2, v0

    :goto_51
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5b

    move v2, v1

    goto :goto_5c

    :cond_5b
    move v2, v0

    :goto_5c
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_96

    move v2, v1

    goto :goto_97

    :cond_96
    move v2, v0

    :goto_97
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_a1

    move v2, v1

    goto :goto_a2

    :cond_a1
    move v2, v0

    :goto_a2
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_ac

    move v2, v1

    goto :goto_ad

    :cond_ac
    move v2, v0

    :goto_ad
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_d5

    move v2, v1

    goto :goto_d6

    :cond_d5
    move v2, v0

    :goto_d6
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_e0

    move v2, v1

    goto :goto_e1

    :cond_e0
    move v2, v0

    :goto_e1
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_ea

    move v0, v1

    :cond_ea
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    .line 378
    const-class v0, Landroid/net/MacAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    .line 383
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/rtt/CivicLocation;

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "urlString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 389
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    goto :goto_12e

    .line 391
    :cond_128
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    .line 393
    :goto_12e
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/rtt/ResponderLocation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/ResponderLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>([B[B)V
    .registers 9
    .param p1, "lciBuffer"    # [B
    .param p2, "lcrBuffer"    # [B

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    .line 257
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    .line 258
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    .line 259
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    .line 260
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    .line 261
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    .line 309
    const/4 v2, 0x0

    .line 310
    .local v2, "isLciIeValid":Z
    const/4 v3, 0x0

    .line 311
    .local v3, "isLcrIeValid":Z
    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setLciSubelementDefaults()V

    .line 312
    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setZaxisSubelementDefaults()V

    .line 313
    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setUsageSubelementDefaults()V

    .line 314
    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setBssidListSubelementDefaults()V

    .line 315
    invoke-virtual {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setCivicLocationSubelementDefaults()V

    .line 316
    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setMapImageSubelementDefaults()V

    .line 317
    if-eqz p1, :cond_35

    array-length v4, p1

    sget-object v5, Landroid/net/wifi/rtt/ResponderLocation;->LEAD_LCI_ELEMENT_BYTES:[B

    array-length v5, v5

    if-le v4, v5, :cond_35

    .line 318
    const/16 v4, 0x8

    sget-object v5, Landroid/net/wifi/rtt/ResponderLocation;->LEAD_LCI_ELEMENT_BYTES:[B

    invoke-direct {p0, v4, p1, v5}, Landroid/net/wifi/rtt/ResponderLocation;->parseInformationElementBuffer(I[B[B)Z

    move-result v2

    .line 321
    :cond_35
    if-eqz p2, :cond_45

    array-length v4, p2

    sget-object v5, Landroid/net/wifi/rtt/ResponderLocation;->LEAD_LCR_ELEMENT_BYTES:[B

    array-length v5, v5

    if-le v4, v5, :cond_45

    .line 322
    const/16 v4, 0xb

    sget-object v5, Landroid/net/wifi/rtt/ResponderLocation;->LEAD_LCR_ELEMENT_BYTES:[B

    invoke-direct {p0, v4, p2, v5}, Landroid/net/wifi/rtt/ResponderLocation;->parseInformationElementBuffer(I[B[B)Z

    move-result v3

    .line 326
    :cond_45
    if-eqz v2, :cond_59

    iget-boolean v4, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    if-eqz v4, :cond_59

    iget-boolean v4, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-nez v4, :cond_57

    iget-boolean v4, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-nez v4, :cond_57

    iget-boolean v4, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    if-eqz v4, :cond_59

    :cond_57
    move v4, v1

    goto :goto_5a

    :cond_59
    move v4, v0

    .line 329
    .local v4, "isLciValid":Z
    :goto_5a
    if-eqz v3, :cond_6a

    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    if-eqz v5, :cond_6a

    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    if-nez v5, :cond_68

    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    if-eqz v5, :cond_6a

    :cond_68
    move v5, v1

    goto :goto_6b

    :cond_6a
    move v5, v0

    .line 332
    .local v5, "isLcrValid":Z
    :goto_6b
    if-nez v4, :cond_6f

    if-eqz v5, :cond_70

    :cond_6f
    move v0, v1

    :cond_70
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    .line 334
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    if-nez v0, :cond_82

    .line 335
    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setLciSubelementDefaults()V

    .line 336
    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setZaxisSubelementDefaults()V

    .line 337
    invoke-virtual {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setCivicLocationSubelementDefaults()V

    .line 338
    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setMapImageSubelementDefaults()V

    .line 340
    :cond_82
    return-void
.end method

.method private blacklist decodeLciAltUncertainty(J)D
    .registers 7
    .param p1, "encodedValue"    # J

    .line 643
    const-wide/16 v0, 0x15

    sub-long/2addr v0, p1

    long-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist decodeLciLatLng([J[IID)D
    .registers 14
    .param p1, "fields"    # [J
    .param p2, "bitFieldSizes"    # [I
    .param p3, "offset"    # I
    .param p4, "limit"    # D

    .line 608
    aget-wide v0, p1, p3

    aget v2, p2, p3

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, -0x19

    if-eqz v0, :cond_27

    .line 612
    aget-wide v2, p1, p3

    long-to-double v2, v2

    aget v0, p2, p3

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3, v1}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v0

    .local v0, "angle":D
    goto :goto_2e

    .line 616
    .end local v0    # "angle":D
    :cond_27
    aget-wide v2, p1, p3

    long-to-double v2, v2

    invoke-static {v2, v3, v1}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v0

    .line 618
    .restart local v0    # "angle":D
    :goto_2e
    cmpl-double v2, v0, p4

    if-lez v2, :cond_34

    .line 619
    move-wide v0, p4

    goto :goto_3a

    .line 620
    :cond_34
    neg-double v2, p4

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3a

    .line 621
    neg-double v0, p4

    .line 623
    :cond_3a
    :goto_3a
    return-wide v0
.end method

.method private blacklist decodeLciLatLngUncertainty(J)D
    .registers 7
    .param p1, "encodedValue"    # J

    .line 633
    const-wide/16 v0, 0x8

    sub-long/2addr v0, p1

    long-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist decodeZUnsignedToSignedValue([J[III)D
    .registers 14
    .param p1, "fieldValues"    # [J
    .param p2, "fieldLengths"    # [I
    .param p3, "index"    # I
    .param p4, "fraction"    # I

    .line 694
    aget-wide v0, p1, p3

    long-to-int v0, v0

    .line 695
    .local v0, "value":I
    aget v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 696
    .local v1, "maxPositiveValue":I
    if-le v0, v1, :cond_1d

    .line 697
    int-to-double v5, v0

    aget v2, p2, p3

    int-to-double v7, v2

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v5, v2

    double-to-int v0, v5

    .line 699
    :cond_1d
    int-to-float v2, v0

    neg-int v3, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->scalb(FI)F

    move-result v2

    float-to-double v2, v2

    return-wide v2
.end method

.method private blacklist getBitAtBitOffsetInByteArray([BI)I
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "bufferBitOffset"    # I

    .line 865
    div-int/lit8 v0, p2, 0x8

    .line 866
    .local v0, "bufferIndex":I
    rem-int/lit8 v1, p2, 0x8

    .line 867
    .local v1, "bitOffsetInByte":I
    aget-byte v2, p1, v0

    const/16 v3, 0x80

    shr-int/2addr v3, v1

    and-int/2addr v2, v3

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto :goto_f

    :cond_e
    const/4 v2, 0x1

    .line 868
    .local v2, "result":I
    :goto_f
    return v2
.end method

.method private blacklist getFieldData([B[I)[J
    .registers 14
    .param p1, "buffer"    # [B
    .param p2, "bitFieldSizes"    # [I

    .line 831
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 832
    .local v0, "bufferLengthBits":I
    const/4 v1, 0x0

    .line 833
    .local v1, "sumBitFieldSizes":I
    array-length v2, p2

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x0

    if-ge v3, v2, :cond_14

    aget v5, p2, v3

    .line 834
    .local v5, "i":I
    const/16 v6, 0x40

    if-le v5, v6, :cond_10

    .line 835
    return-object v4

    .line 837
    :cond_10
    add-int/2addr v1, v5

    .line 833
    .end local v5    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 839
    :cond_14
    if-eq v0, v1, :cond_17

    .line 840
    return-object v4

    .line 842
    :cond_17
    array-length v2, p2

    new-array v2, v2, [J

    .line 843
    .local v2, "fieldData":[J
    const/4 v3, 0x0

    .line 844
    .local v3, "bufferBitPos":I
    const/4 v4, 0x0

    .local v4, "fieldIndex":I
    :goto_1c
    array-length v5, p2

    if-ge v4, v5, :cond_38

    .line 845
    aget v5, p2, v4

    .line 846
    .local v5, "bitFieldSize":I
    const-wide/16 v6, 0x0

    .line 847
    .local v6, "field":J
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_24
    if-ge v8, v5, :cond_32

    .line 848
    add-int v9, v3, v8

    invoke-direct {p0, p1, v9}, Landroid/net/wifi/rtt/ResponderLocation;->getBitAtBitOffsetInByteArray([BI)I

    move-result v9

    int-to-long v9, v9

    shl-long/2addr v9, v8

    or-long/2addr v6, v9

    .line 847
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 850
    .end local v8    # "n":I
    :cond_32
    aput-wide v6, v2, v4

    .line 851
    add-int/2addr v3, v5

    .line 844
    .end local v5    # "bitFieldSize":I
    .end local v6    # "field":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 853
    .end local v4    # "fieldIndex":I
    :cond_38
    return-object v2
.end method

.method private blacklist imageTypeToMime(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "imageTypeCode"    # I
    .param p2, "imageUrl"    # Ljava/lang/String;

    .line 809
    sget-object v0, Landroid/net/wifi/rtt/ResponderLocation;->SUPPORTED_IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 810
    .local v0, "supportedExtensionsMax":I
    if-nez p1, :cond_9

    if-eqz p2, :cond_b

    :cond_9
    if-le p1, v0, :cond_d

    .line 811
    :cond_b
    const/4 v1, 0x0

    return-object v1

    .line 813
    :cond_d
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 814
    .local v1, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    if-nez p1, :cond_1d

    .line 815
    nop

    .line 816
    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 818
    :cond_1d
    sget-object v2, Landroid/net/wifi/rtt/ResponderLocation;->SUPPORTED_IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist parseInformationElementBuffer(I[B[B)Z
    .registers 13
    .param p1, "ieType"    # I
    .param p2, "buffer"    # [B
    .param p3, "expectedLeadBytes"    # [B

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "bufferPtr":I
    array-length v1, p2

    .line 477
    .local v1, "bufferLength":I
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-lt v1, v2, :cond_a1

    const/16 v2, 0x100

    if-le v1, v2, :cond_c

    goto/16 :goto_a1

    .line 482
    :cond_c
    array-length v2, p3

    invoke-static {p2, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 484
    .local v2, "leadBufferBytes":[B
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_12
    array-length v5, v2

    if-ge v4, v5, :cond_1f

    .line 485
    aget-byte v5, v2, v4

    aget-byte v6, p3, v4

    if-eq v5, v6, :cond_1c

    .line 486
    return v3

    .line 484
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 491
    .end local v4    # "i":I
    :cond_1f
    array-length v4, p3

    add-int/2addr v0, v4

    .line 493
    :goto_21
    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x1

    if-ge v4, v1, :cond_a0

    .line 494
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "bufferPtr":I
    .local v4, "bufferPtr":I
    aget-byte v0, p2, v0

    .line 495
    .local v0, "subelement":B
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "bufferPtr":I
    .local v6, "bufferPtr":I
    aget-byte v4, p2, v4

    .line 497
    .local v4, "subelementLength":I
    add-int v7, v6, v4

    if-gt v7, v1, :cond_9f

    if-gtz v4, :cond_36

    goto/16 :goto_9f

    .line 501
    :cond_36
    add-int v7, v6, v4

    .line 502
    invoke-static {p2, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 504
    .local v7, "subelementData":[B
    const/16 v8, 0x8

    if-ne p1, v8, :cond_79

    .line 505
    sparse-switch v0, :sswitch_data_a2

    .line 530
    goto :goto_9c

    .line 524
    :sswitch_44
    invoke-direct {p0, v7}, Landroid/net/wifi/rtt/ResponderLocation;->parseSubelementBssidList([B)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    .line 525
    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    if-nez v5, :cond_9c

    .line 526
    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setBssidListSubelementDefaults()V

    goto :goto_9c

    .line 519
    :sswitch_52
    invoke-direct {p0, v7}, Landroid/net/wifi/rtt/ResponderLocation;->parseSubelementUsage([B)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    .line 522
    goto :goto_9c

    .line 513
    :sswitch_59
    invoke-direct {p0, v7}, Landroid/net/wifi/rtt/ResponderLocation;->parseSubelementZ([B)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    .line 514
    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-nez v5, :cond_9c

    .line 515
    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setZaxisSubelementDefaults()V

    goto :goto_9c

    .line 507
    :sswitch_67
    invoke-direct {p0, v7}, Landroid/net/wifi/rtt/ResponderLocation;->parseSubelementLci([B)Z

    move-result v8

    iput-boolean v8, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    .line 508
    iget-boolean v8, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v8, :cond_75

    iget v8, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    if-eq v8, v5, :cond_9c

    .line 509
    :cond_75
    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setLciSubelementDefaults()V

    goto :goto_9c

    .line 532
    :cond_79
    const/16 v5, 0xb

    if-ne p1, v5, :cond_9c

    .line 533
    sparse-switch v0, :sswitch_data_b4

    goto :goto_9c

    .line 541
    :sswitch_81
    invoke-direct {p0, v7}, Landroid/net/wifi/rtt/ResponderLocation;->parseSubelementMapImage([B)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    .line 542
    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    if-nez v5, :cond_9c

    .line 543
    invoke-direct {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setMapImageSubelementDefaults()V

    goto :goto_9c

    .line 535
    :sswitch_8f
    invoke-direct {p0, v7}, Landroid/net/wifi/rtt/ResponderLocation;->parseSubelementLocationCivic([B)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    .line 536
    iget-boolean v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    if-nez v5, :cond_9c

    .line 537
    invoke-virtual {p0}, Landroid/net/wifi/rtt/ResponderLocation;->setCivicLocationSubelementDefaults()V

    .line 551
    :cond_9c
    :goto_9c
    add-int v0, v6, v4

    .line 552
    .end local v4    # "subelementLength":I
    .end local v6    # "bufferPtr":I
    .end local v7    # "subelementData":[B
    .local v0, "bufferPtr":I
    goto :goto_21

    .line 498
    .local v0, "subelement":B
    .restart local v4    # "subelementLength":I
    .restart local v6    # "bufferPtr":I
    :cond_9f
    :goto_9f
    return v3

    .line 553
    .end local v4    # "subelementLength":I
    .end local v6    # "bufferPtr":I
    .local v0, "bufferPtr":I
    :cond_a0
    return v5

    .line 478
    .end local v2    # "leadBufferBytes":[B
    :cond_a1
    :goto_a1
    return v3

    :sswitch_data_a2
    .sparse-switch
        0x0 -> :sswitch_67
        0x4 -> :sswitch_59
        0x6 -> :sswitch_52
        0x7 -> :sswitch_44
    .end sparse-switch

    :sswitch_data_b4
    .sparse-switch
        0x0 -> :sswitch_8f
        0x5 -> :sswitch_81
    .end sparse-switch
.end method

.method private blacklist parseSubelementBssidList([B)Z
    .registers 10
    .param p1, "buffer"    # [B

    .line 730
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    .line 731
    return v1

    .line 733
    :cond_6
    array-length v0, p1

    sub-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_d

    .line 734
    return v1

    .line 737
    :cond_d
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    .line 738
    .local v0, "maxBssidIndicator":I
    array-length v1, p1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    .line 745
    .local v1, "bssidListLength":I
    const/4 v3, 0x1

    .line 746
    .local v3, "bssidOffset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v1, :cond_2e

    .line 747
    add-int/lit8 v5, v3, 0x6

    invoke-static {p1, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 748
    .local v5, "bssid":[B
    invoke-static {v5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v6

    .line 749
    .local v6, "macAddress":Landroid/net/MacAddress;
    iget-object v7, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    nop

    .end local v5    # "bssid":[B
    .end local v6    # "macAddress":Landroid/net/MacAddress;
    add-int/lit8 v3, v3, 0x6

    .line 746
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 752
    .end local v4    # "i":I
    :cond_2e
    return v2
.end method

.method private blacklist parseSubelementLci([B)Z
    .registers 11
    .param p1, "buffer"    # [B

    .line 563
    array-length v0, p1

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-le v0, v1, :cond_7

    .line 564
    return v2

    .line 566
    :cond_7
    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/ResponderLocation;->swapEndianByteByByte([B)V

    .line 567
    sget-object v0, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_LCI_BIT_FIELD_LENGTHS:[I

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/rtt/ResponderLocation;->getFieldData([B[I)[J

    move-result-object v4

    .line 568
    .local v4, "subelementLciFields":[J
    if-nez v4, :cond_13

    .line 569
    return v2

    .line 572
    :cond_13
    aget-wide v0, v4, v2

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/rtt/ResponderLocation;->decodeLciLatLngUncertainty(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    .line 574
    sget-object v5, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_LCI_BIT_FIELD_LENGTHS:[I

    const/4 v6, 0x1

    const-wide v7, 0x4056800000000000L    # 90.0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/net/wifi/rtt/ResponderLocation;->decodeLciLatLng([J[IID)D

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    .line 576
    const/4 v0, 0x2

    aget-wide v0, v4, v0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/rtt/ResponderLocation;->decodeLciLatLngUncertainty(J)D

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    .line 578
    sget-object v5, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_LCI_BIT_FIELD_LENGTHS:[I

    .line 579
    const/4 v6, 0x3

    const-wide v7, 0x4066800000000000L    # 180.0

    invoke-direct/range {v3 .. v8}, Landroid/net/wifi/rtt/ResponderLocation;->decodeLciLatLng([J[IID)D

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    .line 581
    const/4 v0, 0x4

    aget-wide v0, v4, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v3, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    .line 582
    const/4 v0, 0x5

    aget-wide v0, v4, v0

    .line 583
    invoke-direct {p0, v0, v1}, Landroid/net/wifi/rtt/ResponderLocation;->decodeLciAltUncertainty(J)D

    move-result-wide v0

    iput-wide v0, v3, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    .line 584
    const/4 v0, 0x6

    aget-wide v0, v4, v0

    long-to-float v0, v0

    .line 585
    const/4 v1, -0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, v3, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    .line 586
    const/4 v0, 0x7

    aget-wide v0, v4, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v3, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    .line 587
    const/16 v0, 0x8

    aget-wide v0, v4, v0

    const-wide/16 v5, 0x1

    cmp-long v0, v0, v5

    const/4 v1, 0x1

    if-nez v0, :cond_73

    move v0, v1

    goto :goto_74

    :cond_73
    move v0, v2

    :goto_74
    iput-boolean v0, v3, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    .line 589
    const/16 v0, 0x9

    aget-wide v7, v4, v0

    cmp-long v0, v7, v5

    if-nez v0, :cond_80

    move v0, v1

    goto :goto_81

    :cond_80
    move v0, v2

    :goto_81
    iput-boolean v0, v3, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    .line 591
    const/16 v0, 0xa

    aget-wide v7, v4, v0

    cmp-long v0, v7, v5

    if-nez v0, :cond_8c

    move v2, v1

    :cond_8c
    iput-boolean v2, v3, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    .line 593
    const/16 v0, 0xb

    aget-wide v5, v4, v0

    long-to-int v0, v5

    iput v0, v3, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    .line 594
    return v1
.end method

.method private blacklist parseSubelementLocationCivic([B)Z
    .registers 6
    .param p1, "buffer"    # [B

    .line 762
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_37

    array-length v0, p1

    const/16 v3, 0x100

    if-le v0, v3, :cond_b

    goto :goto_37

    .line 766
    :cond_b
    new-instance v0, Ljava/lang/String;

    .line 767
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 768
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    .line 769
    new-instance v0, Landroid/net/wifi/rtt/CivicLocation;

    array-length v3, p1

    .line 771
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/net/wifi/rtt/CivicLocation;-><init>([BLjava/lang/String;)V

    .line 773
    .local v0, "civicLocation":Landroid/net/wifi/rtt/CivicLocation;
    invoke-virtual {v0}, Landroid/net/wifi/rtt/CivicLocation;->isValid()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 774
    return v1

    .line 776
    :cond_2d
    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    .line 777
    invoke-virtual {v0}, Landroid/net/wifi/rtt/CivicLocation;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    .line 778
    const/4 v1, 0x1

    return v1

    .line 764
    .end local v0    # "civicLocation":Landroid/net/wifi/rtt/CivicLocation;
    :cond_37
    :goto_37
    return v1
.end method

.method private blacklist parseSubelementMapImage([B)Z
    .registers 8
    .param p1, "buffer"    # [B

    .line 788
    array-length v0, p1

    const/16 v1, 0x100

    const/4 v2, 0x0

    if-le v0, v1, :cond_7

    .line 789
    return v2

    .line 791
    :cond_7
    aget-byte v0, p1, v2

    .line 792
    .local v0, "mapImageType":I
    sget-object v1, Landroid/net/wifi/rtt/ResponderLocation;->SUPPORTED_IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    array-length v1, v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 793
    .local v1, "supportedTypesMax":I
    if-ltz v0, :cond_28

    if-le v0, v1, :cond_13

    goto :goto_28

    .line 796
    :cond_13
    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    .line 797
    array-length v2, p1

    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 798
    .local v2, "urlBytes":[B
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    .line 799
    return v3

    .line 794
    .end local v2    # "urlBytes":[B
    :cond_28
    :goto_28
    return v2
.end method

.method private blacklist parseSubelementUsage([B)Z
    .registers 6
    .param p1, "buffer"    # [B

    .line 706
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    array-length v0, p1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a

    .line 708
    return v1

    .line 710
    :cond_a
    aget-byte v0, p1, v1

    and-int/2addr v0, v2

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    .line 712
    aget-byte v0, p1, v1

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    .line 715
    aget-byte v0, p1, v1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    .line 720
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    if-nez v0, :cond_33

    move v1, v2

    :cond_33
    return v1
.end method

.method private blacklist parseSubelementZ([B)Z
    .registers 13
    .param p1, "buffer"    # [B

    .line 653
    array-length v0, p1

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    .line 654
    return v2

    .line 656
    :cond_6
    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/ResponderLocation;->swapEndianByteByByte([B)V

    .line 657
    sget-object v0, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_Z_BIT_FIELD_LENGTHS:[I

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/rtt/ResponderLocation;->getFieldData([B[I)[J

    move-result-object v0

    .line 658
    .local v0, "subelementZFields":[J
    if-nez v0, :cond_12

    .line 659
    return v2

    .line 662
    :cond_12
    aget-wide v3, v0, v2

    long-to-int v1, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    .line 664
    sget-object v1, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_Z_BIT_FIELD_LENGTHS:[I

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-direct {p0, v0, v1, v4, v3}, Landroid/net/wifi/rtt/ResponderLocation;->decodeZUnsignedToSignedValue([J[III)D

    move-result-wide v5

    iput-wide v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    .line 668
    sget-object v1, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_Z_BIT_FIELD_LENGTHS:[I

    const/4 v3, 0x2

    const/16 v5, 0xc

    invoke-direct {p0, v0, v1, v3, v5}, Landroid/net/wifi/rtt/ResponderLocation;->decodeZUnsignedToSignedValue([J[III)D

    move-result-wide v5

    iput-wide v5, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    .line 672
    const/4 v1, 0x3

    aget-wide v5, v0, v1

    .line 674
    .local v5, "zHeightUncertainty":J
    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_54

    const-wide/16 v9, 0x19

    cmp-long v1, v5, v9

    if-gez v1, :cond_54

    .line 675
    cmp-long v1, v5, v7

    if-nez v1, :cond_44

    .line 676
    const-wide/16 v1, 0x0

    goto :goto_51

    :cond_44
    const-wide/16 v1, 0xc

    sub-long/2addr v1, v5

    const-wide/16 v7, 0x1

    sub-long/2addr v1, v7

    long-to-double v1, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    :goto_51
    iput-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    .line 680
    return v4

    .line 678
    :cond_54
    return v2
.end method

.method private blacklist setBssidListSubelementDefaults()V
    .registers 2

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    .line 936
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    .line 937
    return-void
.end method

.method private blacklist setLciSubelementDefaults()V
    .registers 4

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    .line 897
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    .line 898
    iput-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    .line 899
    iput-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    .line 900
    iput-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    .line 901
    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    .line 902
    iput-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    .line 903
    iput-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    .line 904
    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    .line 905
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    .line 906
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    .line 907
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    .line 908
    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    .line 909
    return-void
.end method

.method private blacklist setMapImageSubelementDefaults()V
    .registers 2

    .line 955
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    .line 956
    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    .line 958
    return-void
.end method

.method private blacklist setUsageSubelementDefaults()V
    .registers 2

    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    .line 927
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    .line 928
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    .line 929
    return-void
.end method

.method private blacklist setZaxisSubelementDefaults()V
    .registers 3

    .line 915
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    .line 916
    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    .line 917
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    .line 918
    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    .line 919
    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    .line 920
    return-void
.end method

.method private blacklist swapEndianByteByByte([B)V
    .registers 8
    .param p1, "buffer"    # [B

    .line 877
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_22

    .line 878
    aget-byte v1, p1, v0

    .line 879
    .local v1, "currentByte":B
    const/4 v2, 0x0

    .line 880
    .local v2, "reversedByte":B
    const/4 v3, 0x1

    .line 881
    .local v3, "bitSelectorMask":B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1d

    .line 882
    shl-int/lit8 v5, v2, 0x1

    int-to-byte v2, v5

    .line 883
    and-int v5, v1, v3

    if-eqz v5, :cond_17

    .line 884
    or-int/lit8 v5, v2, 0x1

    int-to-byte v2, v5

    .line 886
    :cond_17
    shl-int/lit8 v5, v3, 0x1

    int-to-byte v3, v5

    .line 881
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 888
    .end local v4    # "i":I
    :cond_1d
    aput-byte v2, p1, v0

    .line 877
    .end local v1    # "currentByte":B
    .end local v2    # "reversedByte":B
    .end local v3    # "bitSelectorMask":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 890
    .end local v0    # "n":I
    :cond_22
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 962
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 963
    return v0

    .line 965
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_ff

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_ff

    .line 968
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/net/wifi/rtt/ResponderLocation;

    .line 969
    .local v2, "other":Landroid/net/wifi/rtt/ResponderLocation;
    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    if-ne v3, v4, :cond_fd

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-ne v3, v4, :cond_fd

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-ne v3, v4, :cond_fd

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    if-ne v3, v4, :cond_fd

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    if-ne v3, v4, :cond_fd

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    if-ne v3, v4, :cond_fd

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    if-ne v3, v4, :cond_fd

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_fd

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_fd

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_fd

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_fd

    iget v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    iget v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    if-ne v3, v4, :cond_fd

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_fd

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_fd

    iget v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    iget v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    if-ne v3, v4, :cond_fd

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    if-ne v3, v4, :cond_fd

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    if-ne v3, v4, :cond_fd

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    if-ne v3, v4, :cond_fd

    iget v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    iget v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    if-ne v3, v4, :cond_fd

    iget v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    iget v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    if-ne v3, v4, :cond_fd

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_fd

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_fd

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    iget-wide v5, v2, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_fd

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    if-ne v3, v4, :cond_fd

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    if-ne v3, v4, :cond_fd

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    iget-boolean v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    if-ne v3, v4, :cond_fd

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    .line 996
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    .line 997
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    .line 998
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    iget-object v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    .line 999
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    iget v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    iget v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    if-ne v3, v4, :cond_fd

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    iget-object v4, v2, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    .line 1001
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    goto :goto_fe

    :cond_fd
    move v0, v1

    .line 969
    :goto_fe
    return v0

    .line 966
    .end local v2    # "other":Landroid/net/wifi/rtt/ResponderLocation;
    :cond_ff
    :goto_ff
    return v1
.end method

.method public whitelist getAltitude()D
    .registers 3

    .line 1134
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_7

    .line 1138
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    return-wide v0

    .line 1135
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAltitude(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAltitudeType()I
    .registers 3

    .line 1106
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_7

    .line 1110
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    return v0

    .line 1107
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLatitudeUncertainty(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAltitudeUncertainty()D
    .registers 3

    .line 1121
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_7

    .line 1125
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    return-wide v0

    .line 1122
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLatitudeUncertainty(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCivicLocationCountryCode()Ljava/lang/String;
    .registers 2

    .line 1392
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCivicLocationElementValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # I

    .line 1406
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {v0, p1}, Landroid/net/wifi/rtt/CivicLocation;->getCivicElementValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColocatedBssids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation

    .line 1348
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDatum()I
    .registers 3

    .line 1148
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_7

    .line 1152
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    return v0

    .line 1149
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDatum(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getDependentStationIndication()Z
    .registers 3

    .line 1199
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_7

    .line 1204
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    return v0

    .line 1200
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDependentStationIndication(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getExpectedToMove()I
    .registers 3

    .line 1258
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-eqz v0, :cond_7

    .line 1262
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    return v0

    .line 1259
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getExpectedToMove(): invoked on an invalid result: mIsZValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getExtraInfoOnAssociationIndication()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1339
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    return v0
.end method

.method public whitelist getFloorNumber()D
    .registers 3

    .line 1274
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-eqz v0, :cond_7

    .line 1278
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    return-wide v0

    .line 1275
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getFloorNumber(): invoked on an invalid result: mIsZValid = false)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getHeightAboveFloorMeters()D
    .registers 3

    .line 1289
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-eqz v0, :cond_7

    .line 1293
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    return-wide v0

    .line 1290
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getHeightAboveFloorMeters(): invoked on an invalid result: mIsZValid = false)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getHeightAboveFloorUncertaintyMeters()D
    .registers 3

    .line 1304
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-eqz v0, :cond_7

    .line 1309
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    return-wide v0

    .line 1305
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getHeightAboveFloorUncertaintyMeters():invoked on an invalid result: mIsZValid = false)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLatitude()D
    .registers 3

    .line 1064
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_7

    .line 1068
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    return-wide v0

    .line 1065
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLatitude(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLatitudeUncertainty()D
    .registers 3

    .line 1051
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_7

    .line 1055
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    return-wide v0

    .line 1052
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLatitudeUncertainty(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLciVersion()I
    .registers 3

    .line 1214
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_7

    .line 1219
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    return v0

    .line 1215
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLciVersion(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLongitude()D
    .registers 3

    .line 1092
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_7

    .line 1096
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    return-wide v0

    .line 1093
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLatitudeUncertainty(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLongitudeUncertainty()D
    .registers 3

    .line 1079
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_7

    .line 1083
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    return-wide v0

    .line 1080
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLongitudeUncertainty(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMapImageMimeType()Ljava/lang/String;
    .registers 3

    .line 1414
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    if-nez v0, :cond_6

    .line 1415
    const/4 v0, 0x0

    return-object v0

    .line 1417
    :cond_6
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/rtt/ResponderLocation;->imageTypeToMime(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMapImageUri()Landroid/net/Uri;
    .registers 2

    .line 1428
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getRegisteredLocationAgreementIndication()Z
    .registers 3

    .line 1163
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_7

    .line 1168
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    return v0

    .line 1164
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getRegisteredLocationAgreementIndication(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRegisteredLocationDseIndication()Z
    .registers 3

    .line 1181
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_7

    .line 1186
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    return v0

    .line 1182
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getRegisteredLocationDseIndication(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRetentionExpiresIndication()Z
    .registers 2

    .line 1329
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    return v0
.end method

.method public blacklist getRetransmitPolicyIndication()Z
    .registers 2

    .line 1319
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 35

    .line 1006
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    .line 1007
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-wide v9, v0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-wide v10, v0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget-wide v11, v0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    .line 1008
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    iget-wide v12, v0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iget v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-wide v14, v0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object v15, v2

    iget-wide v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    .line 1009
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-boolean v2, v0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    iget-boolean v2, v0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    .line 1010
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    iget-boolean v2, v0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    iget v2, v0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v2, v0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    .line 1011
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v22, v1

    iget-wide v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v23, v1

    iget-wide v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v24, v1

    iget-wide v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    .line 1012
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-boolean v2, v0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    iget-boolean v2, v0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    iget-boolean v2, v0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    .line 1013
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    iget-object v2, v0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    move-object/from16 v28, v1

    iget-object v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-object v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    move-object/from16 v30, v1

    iget-object v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    move-object/from16 v31, v1

    iget v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    .line 1014
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    iget-object v1, v0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    move-object/from16 v33, v28

    move-object/from16 v28, v2

    move-object v2, v15

    move-object/from16 v15, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v33

    move-object/from16 v33, v1

    filled-new-array/range {v2 .. v33}, [Ljava/lang/Object;

    move-result-object v1

    .line 1006
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isLciSubelementValid()Z
    .registers 2

    .line 1040
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    return v0
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 1025
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    return v0
.end method

.method public whitelist isZaxisSubelementValid()Z
    .registers 2

    .line 1248
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    return v0
.end method

.method public blacklist setCivicLocationSubelementDefaults()V
    .registers 2

    .line 945
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    .line 946
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    .line 947
    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    .line 948
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    .line 949
    return-void
.end method

.method public whitelist toCivicLocationAddress()Landroid/location/Address;
    .registers 2

    .line 1358
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {v0}, Landroid/net/wifi/rtt/CivicLocation;->isValid()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1359
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {v0}, Landroid/net/wifi/rtt/CivicLocation;->toAddress()Landroid/location/Address;

    move-result-object v0

    return-object v0

    .line 1361
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist toCivicLocationSparseArray()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1376
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {v0}, Landroid/net/wifi/rtt/CivicLocation;->isValid()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1377
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {v0}, Landroid/net/wifi/rtt/CivicLocation;->toSparseArray()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0

    .line 1379
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist toLocation()Landroid/location/Location;
    .registers 6

    .line 1229
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-eqz v0, :cond_34

    .line 1234
    new-instance v0, Landroid/location/Location;

    const-string v1, "WiFi Access Point"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1235
    .local v0, "location":Landroid/location/Location;
    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 1236
    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 1237
    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    add-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 1238
    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 1239
    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    .line 1240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 1241
    return-object v0

    .line 1230
    .end local v0    # "location":Landroid/location/Location;
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "toLocation(): invoked on an invalid result: mIsLciValid = false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 415
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 416
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 417
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 418
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 419
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 420
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 421
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 424
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 425
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 426
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 427
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 428
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 430
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 431
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 433
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 434
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 435
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 440
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 441
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 444
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 445
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 446
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 449
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 452
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 457
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_b6

    .line 459
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_bb

    .line 461
    :cond_b6
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 463
    :goto_bb
    return-void
.end method
