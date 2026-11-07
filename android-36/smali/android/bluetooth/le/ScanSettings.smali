.class public final Landroid/bluetooth/le/ScanSettings;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanSettings$Builder;
    }
.end annotation


# static fields
.field public static final whitelist AUTO_BATCH_MIN_REPORT_DELAY_MILLIS:J = 0x927c0L

.field public static final whitelist CALLBACK_TYPE_ALL_MATCHES:I = 0x1

.field public static final whitelist CALLBACK_TYPE_ALL_MATCHES_AUTO_BATCH:I = 0x8

.field public static final whitelist CALLBACK_TYPE_FIRST_MATCH:I = 0x2

.field public static final whitelist CALLBACK_TYPE_MATCH_LOST:I = 0x4

.field static final blacklist CHANGE_DEFAULT_TRACKABLE_ADV_NUMBER:J = 0x170cff29L

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MATCH_MODE_AGGRESSIVE:I = 0x1

.field public static final whitelist MATCH_MODE_STICKY:I = 0x2

.field public static final whitelist MATCH_NUM_FEW_ADVERTISEMENT:I = 0x2

.field public static final whitelist MATCH_NUM_MAX_ADVERTISEMENT:I = 0x3

.field public static final whitelist MATCH_NUM_ONE_ADVERTISEMENT:I = 0x1

.field public static final whitelist PHY_LE_ALL_SUPPORTED:I = 0xff

.field public static final whitelist SCAN_MODE_AMBIENT_DISCOVERY:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SCAN_MODE_BALANCED:I = 0x1

.field public static final whitelist SCAN_MODE_LOW_LATENCY:I = 0x2

.field public static final whitelist SCAN_MODE_LOW_POWER:I = 0x0

.field public static final whitelist SCAN_MODE_OPPORTUNISTIC:I = -0x1

.field public static final blacklist SCAN_MODE_SCREEN_OFF:I = 0x4

.field public static final blacklist SCAN_MODE_SCREEN_OFF_BALANCED:I = 0x5

.field public static final whitelist SCAN_RESULT_TYPE_ABBREVIATED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SCAN_RESULT_TYPE_FULL:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mCallbackType:I

.field private final blacklist mLegacy:Z

.field private final blacklist mMatchMode:I

.field private final blacklist mNumOfMatchesPerFilter:I

.field private final blacklist mPhy:I

.field private final blacklist mReportDelayMillis:J

.field private final blacklist mScanMode:I

.field private final blacklist mScanResultType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 287
    new-instance v0, Landroid/bluetooth/le/ScanSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIJIIZI)V
    .registers 10
    .param p1, "scanMode"    # I
    .param p2, "callbackType"    # I
    .param p3, "scanResultType"    # I
    .param p4, "reportDelayMillis"    # J
    .param p6, "matchMode"    # I
    .param p7, "numOfMatchesPerFilter"    # I
    .param p8, "legacy"    # Z
    .param p9, "phy"    # I

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput p1, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    .line 250
    iput p2, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    .line 251
    iput p3, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    .line 252
    iput-wide p4, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    .line 253
    iput p7, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    .line 254
    iput p6, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    .line 255
    iput-boolean p8, p0, Landroid/bluetooth/le/ScanSettings;->mLegacy:Z

    .line 256
    iput p9, p0, Landroid/bluetooth/le/ScanSettings;->mPhy:I

    .line 257
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIJIIZILandroid/bluetooth/le/ScanSettings-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/bluetooth/le/ScanSettings;-><init>(IIIJIIZI)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    iput-boolean v0, p0, Landroid/bluetooth/le/ScanSettings;->mLegacy:Z

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mPhy:I

    .line 268
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/ScanSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist getScanModeString(I)Ljava/lang/String;
    .registers 3
    .param p0, "scanMode"    # I

    .line 497
    packed-switch p0, :pswitch_data_2c

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 511
    :pswitch_17
    const-string v0, "SCAN_MODE_SCREEN_OFF_BALANCED"

    return-object v0

    .line 509
    :pswitch_1a
    const-string v0, "SCAN_MODE_SCREEN_OFF"

    return-object v0

    .line 507
    :pswitch_1d
    const-string v0, "SCAN_MODE_AMBIENT_DISCOVERY"

    return-object v0

    .line 505
    :pswitch_20
    const-string v0, "SCAN_MODE_LOW_LATENCY"

    return-object v0

    .line 503
    :pswitch_23
    const-string v0, "SCAN_MODE_BALANCED"

    return-object v0

    .line 501
    :pswitch_26
    const-string v0, "SCAN_MODE_LOW_POWER"

    return-object v0

    .line 499
    :pswitch_29
    const-string v0, "SCAN_MODE_OPPORTUNISTIC"

    return-object v0

    :pswitch_data_2c
    .packed-switch -0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallbackType()I
    .registers 2

    .line 205
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    return v0
.end method

.method public whitelist getLegacy()Z
    .registers 2

    .line 227
    iget-boolean v0, p0, Landroid/bluetooth/le/ScanSettings;->mLegacy:Z

    return v0
.end method

.method public blacklist getMatchMode()I
    .registers 2

    .line 214
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    return v0
.end method

.method public blacklist getNumOfMatches()I
    .registers 2

    .line 219
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    return v0
.end method

.method public whitelist getPhy()I
    .registers 2

    .line 232
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mPhy:I

    return v0
.end method

.method public whitelist getReportDelayMillis()J
    .registers 3

    .line 237
    iget-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    return-wide v0
.end method

.method public whitelist getScanMode()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    return v0
.end method

.method public whitelist getScanResultType()I
    .registers 2

    .line 209
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 272
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-boolean v0, p0, Landroid/bluetooth/le/ScanSettings;->mLegacy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    return-void
.end method
