.class public final Landroid/bluetooth/BluetoothQualityReport;
.super Ljava/lang/Object;
.source "BluetoothQualityReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothQualityReport$BqrCommon;,
        Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;,
        Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;,
        Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;,
        Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;,
        Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;,
        Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;,
        Landroid/bluetooth/BluetoothQualityReport$Builder;,
        Landroid/bluetooth/BluetoothQualityReport$AirMode;,
        Landroid/bluetooth/BluetoothQualityReport$LinkQuality;,
        Landroid/bluetooth/BluetoothQualityReport$ConnState;,
        Landroid/bluetooth/BluetoothQualityReport$PacketType;,
        Landroid/bluetooth/BluetoothQualityReport$QualityReportId;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothQualityReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist QUALITY_REPORT_ID_A2DP_CHOPPY:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUALITY_REPORT_ID_APPROACH_LSTO:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUALITY_REPORT_ID_CONN_FAIL:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUALITY_REPORT_ID_ENERGY_MONITOR:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUALITY_REPORT_ID_MONITOR:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUALITY_REPORT_ID_RF_STATS:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist QUALITY_REPORT_ID_SCO_CHOPPY:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAddr:Ljava/lang/String;

.field private final blacklist mBluetoothClass:Landroid/bluetooth/BluetoothClass;

.field private final blacklist mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

.field private blacklist mBqrConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;

.field private blacklist mBqrEnergyMonitor:Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;

.field private blacklist mBqrRfStats:Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;

.field private blacklist mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

.field private blacklist mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

.field private blacklist mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

.field private final blacklist mLmpSubVer:I

.field private final blacklist mLmpVer:I

.field private final blacklist mManufacturerId:I

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothQualityReport;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    const-class v0, Landroid/bluetooth/BluetoothQualityReport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport;->TAG:Ljava/lang/String;

    .line 501
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothQualityReport$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    .line 332
    new-instance v0, Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:Landroid/bluetooth/BluetoothClass;

    .line 334
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;-><init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    .line 335
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    .line 336
    .local v0, "id":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_45

    .line 337
    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    invoke-direct {v2, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;-><init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    goto :goto_66

    .line 338
    :cond_45
    const/4 v2, 0x3

    if-ne v0, v2, :cond_50

    .line 339
    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    invoke-direct {v2, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;-><init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    goto :goto_66

    .line 340
    :cond_50
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5b

    .line 341
    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    invoke-direct {v2, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;-><init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    goto :goto_66

    .line 342
    :cond_5b
    const/16 v2, 0x8

    if-ne v0, v2, :cond_66

    .line 343
    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;

    invoke-direct {v2, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;-><init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;

    .line 346
    :cond_66
    :goto_66
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->supportBluetoothQualityReportV6()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 347
    const/4 v2, 0x6

    if-ne v0, v2, :cond_77

    .line 348
    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;

    invoke-direct {v2, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;-><init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrEnergyMonitor:Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;

    goto :goto_82

    .line 349
    :cond_77
    const/16 v2, 0x9

    if-ne v0, v2, :cond_82

    .line 350
    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;

    invoke-direct {v2, p1, v1}, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;-><init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrRfStats:Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;

    .line 353
    :cond_82
    :goto_82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothQualityReport;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIILjava/lang/String;Landroid/bluetooth/BluetoothClass;[B)V
    .registers 13
    .param p1, "remoteAddr"    # Ljava/lang/String;
    .param p2, "lmpVer"    # I
    .param p3, "lmpSubVer"    # I
    .param p4, "manufacturerId"    # I
    .param p5, "remoteName"    # Ljava/lang/String;
    .param p6, "bluetoothClass"    # Landroid/bluetooth/BluetoothClass;
    .param p7, "rawData"    # [B

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    .line 293
    iput p2, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    .line 294
    iput p3, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    .line 295
    iput p4, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    .line 296
    iput-object p5, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    .line 297
    iput-object p6, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:Landroid/bluetooth/BluetoothClass;

    .line 299
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p7, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;-><init>([BILandroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    .line 300
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    .line 301
    .local v0, "id":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    return-void

    .line 303
    :cond_22
    const/16 v3, 0x55

    .line 304
    .local v3, "vsPartOffset":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2f

    .line 305
    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    invoke-direct {v1, p7, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;-><init>([BILandroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    goto :goto_50

    .line 306
    :cond_2f
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3a

    .line 307
    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    invoke-direct {v1, p7, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;-><init>([BILandroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    goto :goto_50

    .line 308
    :cond_3a
    const/4 v4, 0x4

    if-ne v0, v4, :cond_45

    .line 309
    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    invoke-direct {v1, p7, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;-><init>([BILandroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    goto :goto_50

    .line 310
    :cond_45
    const/16 v4, 0x8

    if-ne v0, v4, :cond_51

    .line 311
    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;

    invoke-direct {v1, p7, v3, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;-><init>([BILandroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;

    .line 324
    :goto_50
    return-void

    .line 313
    :cond_51
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->supportBluetoothQualityReportV6()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 314
    const/4 v4, 0x6

    if-ne v0, v4, :cond_62

    .line 315
    new-instance v4, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;

    invoke-direct {v4, p7, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;-><init>([BILandroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrEnergyMonitor:Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;

    .line 316
    return-void

    .line 317
    :cond_62
    const/16 v4, 0x9

    if-ne v0, v4, :cond_6e

    .line 318
    new-instance v4, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;

    invoke-direct {v4, p7, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;-><init>([BILandroid/bluetooth/BluetoothQualityReport-IA;)V

    iput-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrRfStats:Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;

    .line 319
    return-void

    .line 322
    :cond_6e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/bluetooth/BluetoothQualityReport;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": unknown quality report id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIILjava/lang/String;Landroid/bluetooth/BluetoothClass;[BLandroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/bluetooth/BluetoothQualityReport;-><init>(Ljava/lang/String;IIILjava/lang/String;Landroid/bluetooth/BluetoothClass;[B)V

    return-void
.end method

.method public static whitelist qualityReportIdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "id"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 373
    invoke-static {p0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->qualityReportIdToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 439
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method public whitelist getBqrCommon()Landroid/bluetooth/BluetoothQualityReport$BqrCommon;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 450
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    return-object v0
.end method

.method public whitelist getBqrEvent()Landroid/os/Parcelable;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 470
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 471
    return-object v1

    .line 473
    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    .line 475
    .local v0, "id":I
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->supportBluetoothQualityReportV6()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 476
    const/4 v2, 0x6

    if-ne v0, v2, :cond_18

    .line 477
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrEnergyMonitor:Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;

    return-object v1

    .line 478
    :cond_18
    const/16 v2, 0x9

    if-ne v0, v2, :cond_1f

    .line 479
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrRfStats:Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;

    return-object v1

    .line 483
    :cond_1f
    packed-switch v0, :pswitch_data_32

    .line 495
    :pswitch_22
    return-object v1

    .line 493
    :pswitch_23
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;

    return-object v1

    .line 491
    :pswitch_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    return-object v1

    .line 489
    :pswitch_29
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    return-object v1

    .line 487
    :pswitch_2c
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    return-object v1

    .line 485
    :pswitch_2f
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    return-object v1

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method public whitelist getLmpSubVersion()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 406
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    return v0
.end method

.method public whitelist getLmpVersion()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 395
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    return v0
.end method

.method public whitelist getManufacturerId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 417
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    return v0
.end method

.method public whitelist getQualityReportId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 362
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    return v0
.end method

.method public whitelist getRemoteAddress()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 384
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRemoteName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 428
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BQR: {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mAddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLmpVer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    .line 560
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLmpSubVer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    .line 561
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%04X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    .line 562
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBluetoothClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:Landroid/bluetooth/BluetoothClass;

    .line 564
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v1

    .line 570
    .local v1, "id":I
    const/4 v2, 0x2

    const-string v3, "\n}"

    if-ne v1, v2, :cond_b8

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_120

    .line 572
    :cond_b8
    const/4 v2, 0x3

    if-ne v1, v2, :cond_d3

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_120

    .line 574
    :cond_d3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_ee

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_120

    .line 576
    :cond_ee
    const/16 v2, 0x8

    if-ne v1, v2, :cond_10a

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_120

    .line 578
    :cond_10a
    const/4 v2, 0x1

    if-ne v1, v2, :cond_120

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    :cond_120
    :goto_120
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->supportBluetoothQualityReportV6()Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 583
    const/4 v2, 0x6

    if-ne v1, v2, :cond_141

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrEnergyMonitor:Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15c

    .line 585
    :cond_141
    const/16 v2, 0x9

    if-ne v1, v2, :cond_15c

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrRfStats:Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    :cond_15c
    :goto_15c
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 525
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mAddr:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 526
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpVer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mLmpSubVer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mManufacturerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBluetoothClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getClassOfDevice()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 532
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrCommon:Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getQualityReportId()I

    move-result v0

    .line 533
    .local v0, "id":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 534
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsLsto:Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_51

    .line 535
    :cond_36
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3f

    .line 536
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsA2dpChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_51

    .line 537
    :cond_3f
    const/4 v1, 0x4

    if-ne v0, v1, :cond_48

    .line 538
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrVsScoChoppy:Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_51

    .line 539
    :cond_48
    const/16 v1, 0x8

    if-ne v0, v1, :cond_51

    .line 540
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrConnectFail:Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 543
    :cond_51
    :goto_51
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->supportBluetoothQualityReportV6()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 544
    const/4 v1, 0x6

    if-ne v0, v1, :cond_60

    .line 545
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrEnergyMonitor:Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrEnergyMonitor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_69

    .line 546
    :cond_60
    const/16 v1, 0x9

    if-ne v0, v1, :cond_69

    .line 547
    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport;->mBqrRfStats:Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrRfStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 550
    :cond_69
    :goto_69
    return-void
.end method
