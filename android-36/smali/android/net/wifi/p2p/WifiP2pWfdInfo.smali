.class public final Landroid/net/wifi/p2p/WifiP2pWfdInfo;
.super Ljava/lang/Object;
.source "WifiP2pWfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pWfdInfo$R2DeviceInfoMask;,
        Landroid/net/wifi/p2p/WifiP2pWfdInfo$DeviceInfoMask;,
        Landroid/net/wifi/p2p/WifiP2pWfdInfo$PreferredConnectivity;,
        Landroid/net/wifi/p2p/WifiP2pWfdInfo$DeviceType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pWfdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_INFO_AUDIO_ONLY_SUPPORT_AT_SOURCE:I = 0x800

.field public static final whitelist DEVICE_INFO_AUDIO_UNSUPPORTED_AT_PRIMARY_SINK:I = 0x400

.field public static final whitelist DEVICE_INFO_CONTENT_PROTECTION_SUPPORT:I = 0x100

.field public static final whitelist DEVICE_INFO_COUPLED_SINK_SUPPORT_AT_SINK:I = 0x8

.field public static final whitelist DEVICE_INFO_COUPLED_SINK_SUPPORT_AT_SOURCE:I = 0x4

.field public static final whitelist DEVICE_INFO_DEVICE_TYPE_MASK:I = 0x3

.field public static final whitelist DEVICE_INFO_PREFERRED_CONNECTIVITY_MASK:I = 0x80

.field public static final whitelist DEVICE_INFO_SESSION_AVAILABLE_MASK:I = 0x30

.field public static final whitelist DEVICE_INFO_TDLS_PERSISTENT_GROUP:I = 0x1000

.field public static final whitelist DEVICE_INFO_TDLS_PERSISTENT_GROUP_REINVOKE:I = 0x2000

.field public static final whitelist DEVICE_INFO_TIME_SYNCHRONIZATION_SUPPORT:I = 0x200

.field public static final whitelist DEVICE_INFO_WFD_SERVICE_DISCOVERY_SUPPORT:I = 0x40

.field public static final whitelist DEVICE_TYPE_PRIMARY_SINK:I = 0x1

.field public static final whitelist DEVICE_TYPE_SECONDARY_SINK:I = 0x2

.field public static final whitelist DEVICE_TYPE_SOURCE_OR_PRIMARY_SINK:I = 0x3

.field public static final whitelist DEVICE_TYPE_WFD_SOURCE:I = 0x0

.field public static final whitelist PREFERRED_CONNECTIVITY_P2P:I = 0x0

.field public static final whitelist PREFERRED_CONNECTIVITY_TDLS:I = 0x1

.field private static final greylist-max-o SESSION_AVAILABLE_BIT1:I = 0x10

.field private static final greylist-max-o SESSION_AVAILABLE_BIT2:I = 0x20


# instance fields
.field private greylist-max-o mCtrlPort:I

.field private greylist-max-o mDeviceInfo:I

.field private blacklist mEnabled:Z

.field private greylist-max-o mMaxThroughput:I

.field private blacklist mR2DeviceInfo:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreadFromParcel(Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 491
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    .line 202
    return-void
.end method

.method public constructor greylist <init>(III)V
    .registers 6
    .param p1, "devInfo"    # I
    .param p2, "ctrlPort"    # I
    .param p3, "maxTput"    # I

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    .line 207
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mEnabled:Z

    .line 208
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 209
    iput p2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 210
    iput p3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 211
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    .line 212
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    .line 463
    if-eqz p1, :cond_1c

    .line 464
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mEnabled:Z

    .line 465
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 466
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 467
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 468
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    .line 470
    :cond_1c
    return-void
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mEnabled:Z

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    .line 488
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getControlPort()I
    .registers 2

    .line 416
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    return v0
.end method

.method public whitelist getDeviceInfo()I
    .registers 2

    .line 221
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    return v0
.end method

.method public greylist-max-o getDeviceInfoHex()Ljava/lang/String;
    .registers 5

    .line 436
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 437
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 436
    const-string v2, "%04x%04x%04x"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceType()I
    .registers 2

    .line 301
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public whitelist getMaxThroughput()I
    .registers 2

    .line 431
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    return v0
.end method

.method public whitelist getR2DeviceInfo()I
    .registers 2

    .line 243
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    return v0
.end method

.method public blacklist getR2DeviceInfoHex()Ljava/lang/String;
    .registers 4

    .line 442
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%04x%04x"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getR2DeviceType()I
    .registers 2

    .line 311
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public whitelist isContentProtectionSupported()Z
    .registers 2

    .line 354
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isCoupledSinkSupportedAtSink()Z
    .registers 2

    .line 397
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isCoupledSinkSupportedAtSource()Z
    .registers 2

    .line 375
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isEnabled()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mEnabled:Z

    return v0
.end method

.method public whitelist isR2Supported()Z
    .registers 2

    .line 253
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isSessionAvailable()Z
    .registers 2

    .line 333
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x30

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist setContentProtectionSupported(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 363
    if-eqz p1, :cond_9

    .line 364
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_f

    .line 366
    :cond_9
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 368
    :goto_f
    return-void
.end method

.method public whitelist setControlPort(I)V
    .registers 2
    .param p1, "port"    # I

    .line 421
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 422
    return-void
.end method

.method public whitelist setCoupledSinkSupportAtSink(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 407
    if-eqz p1, :cond_9

    .line 408
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_f

    .line 410
    :cond_9
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 412
    :goto_f
    return-void
.end method

.method public whitelist setCoupledSinkSupportAtSource(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 385
    if-eqz p1, :cond_9

    .line 386
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_f

    .line 388
    :cond_9
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 390
    :goto_f
    return-void
.end method

.method public whitelist setDeviceType(I)Z
    .registers 3
    .param p1, "deviceType"    # I

    .line 322
    if-ltz p1, :cond_12

    const/4 v0, 0x3

    if-gt p1, v0, :cond_12

    .line 324
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 325
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 326
    const/4 v0, 0x1

    return v0

    .line 328
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 262
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mEnabled:Z

    .line 263
    return-void
.end method

.method public whitelist setMaxThroughput(I)V
    .registers 2
    .param p1, "maxThroughput"    # I

    .line 426
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 427
    return-void
.end method

.method public blacklist setR2DeviceInfo(I)V
    .registers 2
    .param p1, "r2DeviceInfo"    # I

    .line 233
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    .line 234
    return-void
.end method

.method public whitelist setR2DeviceType(I)Z
    .registers 5
    .param p1, "deviceType"    # I

    .line 280
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 283
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_10

    if-eq v1, p1, :cond_10

    const/4 v2, 0x3

    if-eq v2, p1, :cond_10

    .line 286
    return v0

    .line 288
    :cond_10
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isR2Supported()Z

    move-result v2

    if-nez v2, :cond_18

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    .line 289
    :cond_18
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    .line 290
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    .line 291
    return v1

    .line 281
    :cond_24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setSessionAvailable(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 342
    if-eqz p1, :cond_f

    .line 343
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 344
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_15

    .line 346
    :cond_f
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 348
    :goto_15
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 447
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 448
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "WFD enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 449
    const-string v1, "\n WFD DeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 450
    const-string v1, "\n WFD CtrlPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 451
    const-string v1, "\n WFD MaxThroughput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 452
    const-string v1, "\n WFD R2 DeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 475
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    return-void
.end method
