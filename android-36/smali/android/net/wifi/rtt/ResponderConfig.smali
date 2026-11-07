.class public final Landroid/net/wifi/rtt/ResponderConfig;
.super Ljava/lang/Object;
.source "ResponderConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/rtt/ResponderConfig$Builder;,
        Landroid/net/wifi/rtt/ResponderConfig$PreambleType;,
        Landroid/net/wifi/rtt/ResponderConfig$ChannelWidth;,
        Landroid/net/wifi/rtt/ResponderConfig$ResponderType;
    }
.end annotation


# static fields
.field private static final greylist-max-o AWARE_BAND_2_DISCOVERY_CHANNEL:I = 0x985

.field public static final whitelist CHANNEL_WIDTH_160MHZ:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CHANNEL_WIDTH_20MHZ:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CHANNEL_WIDTH_320MHZ:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CHANNEL_WIDTH_40MHZ:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CHANNEL_WIDTH_80MHZ:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_NTB_MAX_TIME_BETWEEN_MEASUREMENTS_MICROS:J = 0xe4e1c0L

.field private static final blacklist DEFAULT_NTB_MIN_TIME_BETWEEN_MEASUREMENTS_MICROS:J = 0x3d090L

.field public static final whitelist PREAMBLE_EHT:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREAMBLE_HE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREAMBLE_HT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREAMBLE_LEGACY:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREAMBLE_VHT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESPONDER_AP:I = 0x0

.field public static final whitelist RESPONDER_AWARE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESPONDER_P2P_CLIENT:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESPONDER_P2P_GO:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESPONDER_STA:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ResponderConfig"


# instance fields
.field public final whitelist centerFreq0:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public final whitelist centerFreq1:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public final whitelist channelWidth:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public final whitelist frequency:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private blacklist mNtbMaxMeasurementTime:J

.field private blacklist mNtbMinMeasurementTime:J

.field private final blacklist mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

.field public final whitelist macAddress:Landroid/net/MacAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public final whitelist peerHandle:Landroid/net/wifi/aware/PeerHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public final whitelist preamble:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public final whitelist responderType:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public final whitelist supports80211azNtb:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public final whitelist supports80211mc:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisResponderTypeSupported(I)Z
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/rtt/ResponderConfig;->isResponderTypeSupported(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1039
    new-instance v0, Landroid/net/wifi/rtt/ResponderConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/ResponderConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/ResponderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/MacAddress;IZIIIII)V
    .registers 15
    .param p1, "macAddress"    # Landroid/net/MacAddress;
    .param p2, "responderType"    # I
    .param p3, "supports80211mc"    # Z
    .param p4, "channelWidth"    # I
    .param p5, "frequency"    # I
    .param p6, "centerFreq0"    # I
    .param p7, "centerFreq1"    # I
    .param p8, "preamble"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const-wide/32 v0, 0x3d090

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    .line 266
    const-wide/32 v2, 0xe4e1c0

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    .line 321
    if-eqz p1, :cond_2c

    .line 325
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    .line 326
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 327
    iput p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 328
    iput-boolean p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    .line 329
    iput p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    .line 330
    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 331
    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    .line 332
    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    .line 333
    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    .line 334
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211azNtb:Z

    .line 335
    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    .line 336
    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    .line 337
    iput-object v4, p0, Landroid/net/wifi/rtt/ResponderConfig;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    .line 338
    return-void

    .line 322
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ResponderConfig - must specify a MAC address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/net/MacAddress;Landroid/net/wifi/aware/PeerHandle;IZIIIII)V
    .registers 15
    .param p1, "macAddress"    # Landroid/net/MacAddress;
    .param p2, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p3, "responderType"    # I
    .param p4, "supports80211mc"    # Z
    .param p5, "channelWidth"    # I
    .param p6, "frequency"    # I
    .param p7, "centerFreq0"    # I
    .param p8, "centerFreq1"    # I
    .param p9, "preamble"    # I

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const-wide/32 v0, 0x3d090

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    .line 266
    const-wide/32 v2, 0xe4e1c0

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    .line 411
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    .line 412
    iput-object p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 413
    iput p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 414
    iput-boolean p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    .line 415
    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    .line 416
    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 417
    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    .line 418
    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    .line 419
    iput p9, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    .line 420
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211azNtb:Z

    .line 421
    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    .line 422
    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    .line 424
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/aware/PeerHandle;IZIIIII)V
    .registers 15
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "responderType"    # I
    .param p3, "supports80211mc"    # Z
    .param p4, "channelWidth"    # I
    .param p5, "frequency"    # I
    .param p6, "centerFreq0"    # I
    .param p7, "centerFreq1"    # I
    .param p8, "preamble"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const-wide/32 v0, 0x3d090

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    .line 266
    const-wide/32 v2, 0xe4e1c0

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    .line 366
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    .line 367
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 368
    iput p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 369
    iput-boolean p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    .line 370
    iput p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    .line 371
    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 372
    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    .line 373
    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    .line 374
    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    .line 375
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211azNtb:Z

    .line 376
    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    .line 377
    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    .line 378
    iput-object v4, p0, Landroid/net/wifi/rtt/ResponderConfig;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    .line 379
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/rtt/ResponderConfig$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/net/wifi/rtt/ResponderConfig$Builder;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const-wide/32 v0, 0x3d090

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    .line 266
    const-wide/32 v0, 0xe4e1c0

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    .line 275
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmMacAddress(Landroid/net/wifi/rtt/ResponderConfig$Builder;)Landroid/net/MacAddress;

    move-result-object v0

    if-nez v0, :cond_22

    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmPeerHandle(Landroid/net/wifi/rtt/ResponderConfig$Builder;)Landroid/net/wifi/aware/PeerHandle;

    move-result-object v0

    if-eqz v0, :cond_1a

    goto :goto_22

    .line 276
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ResponderConfig - must specify a MAC address or Peer handle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_22
    :goto_22
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmMacAddress(Landroid/net/wifi/rtt/ResponderConfig$Builder;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    .line 280
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmPeerHandle(Landroid/net/wifi/rtt/ResponderConfig$Builder;)Landroid/net/wifi/aware/PeerHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 281
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmResponderType(Landroid/net/wifi/rtt/ResponderConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 282
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmSupports80211Mc(Landroid/net/wifi/rtt/ResponderConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    .line 283
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmSupports80211azNtb(Landroid/net/wifi/rtt/ResponderConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211azNtb:Z

    .line 284
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmChannelWidth(Landroid/net/wifi/rtt/ResponderConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    .line 285
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmFrequency(Landroid/net/wifi/rtt/ResponderConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 286
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmCenterFreq0(Landroid/net/wifi/rtt/ResponderConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    .line 287
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmCenterFreq1(Landroid/net/wifi/rtt/ResponderConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    .line 288
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmPreamble(Landroid/net/wifi/rtt/ResponderConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    .line 289
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmNtbMinMeasurementTime(Landroid/net/wifi/rtt/ResponderConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    .line 290
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmNtbMaxMeasurementTime(Landroid/net/wifi/rtt/ResponderConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    .line 291
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->-$$Nest$fgetmSecureRangingConfig(Landroid/net/wifi/rtt/ResponderConfig$Builder;)Landroid/net/wifi/rtt/SecureRangingConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    .line 292
    return-void
.end method

.method public static whitelist fromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/ResponderConfig;
    .registers 20
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v1

    .line 433
    .local v1, "macAddress":Landroid/net/MacAddress;
    const/4 v2, 0x0

    .line 434
    .local v2, "responderType":I
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult;->is80211mcResponder()Z

    move-result v3

    .line 435
    .local v3, "supports80211mc":Z
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult;->is80211azNtbResponder()Z

    move-result v4

    .line 436
    .local v4, "supports80211azNtbRanging":Z
    iget v5, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 437
    .local v5, "channelWidth":I
    iget v6, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 438
    .local v6, "frequency":I
    iget v7, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 439
    .local v7, "centerFreq0":I
    iget v8, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 445
    .local v8, "centerFreq1":I
    if-nez v4, :cond_24

    invoke-static {v6}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v10

    if-eqz v10, :cond_22

    goto :goto_24

    :cond_22
    const/4 v10, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v10, 0x1

    .line 446
    .local v10, "isHeOrEhtAllowed":Z
    :goto_25
    iget-object v11, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    if-eqz v11, :cond_94

    iget-object v11, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v11, v11

    if-eqz v11, :cond_94

    .line 447
    const/4 v11, 0x0

    .line 448
    .local v11, "htCapabilitiesPresent":Z
    const/4 v12, 0x0

    .line 449
    .local v12, "vhtCapabilitiesPresent":Z
    const/4 v13, 0x0

    .line 450
    .local v13, "heCapabilitiesPresent":Z
    const/4 v14, 0x0

    .line 452
    .local v14, "ehtCapabilitiesPresent":Z
    iget-object v15, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v9, v15

    move/from16 v16, v14

    move v14, v13

    move v13, v12

    move v12, v11

    const/4 v11, 0x0

    .end local v11    # "htCapabilitiesPresent":Z
    .local v12, "htCapabilitiesPresent":Z
    .local v13, "vhtCapabilitiesPresent":Z
    .local v14, "heCapabilitiesPresent":Z
    .local v16, "ehtCapabilitiesPresent":Z
    :goto_3b
    if-ge v11, v9, :cond_7c

    aget-object v0, v15, v11

    .line 453
    .local v0, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    move/from16 v17, v9

    iget v9, v0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    move/from16 v18, v10

    .end local v10    # "isHeOrEhtAllowed":Z
    .local v18, "isHeOrEhtAllowed":Z
    const/16 v10, 0x2d

    if-ne v9, v10, :cond_4c

    .line 454
    const/4 v9, 0x1

    move v12, v9

    .end local v12    # "htCapabilitiesPresent":Z
    .local v9, "htCapabilitiesPresent":Z
    goto :goto_73

    .line 455
    .end local v9    # "htCapabilitiesPresent":Z
    .restart local v12    # "htCapabilitiesPresent":Z
    :cond_4c
    iget v9, v0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v10, 0xbf

    if-ne v9, v10, :cond_55

    .line 456
    const/4 v9, 0x1

    move v13, v9

    .end local v13    # "vhtCapabilitiesPresent":Z
    .local v9, "vhtCapabilitiesPresent":Z
    goto :goto_73

    .line 457
    .end local v9    # "vhtCapabilitiesPresent":Z
    .restart local v13    # "vhtCapabilitiesPresent":Z
    :cond_55
    iget v9, v0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v10, 0xff

    if-ne v9, v10, :cond_64

    iget v9, v0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    const/16 v10, 0x23

    if-ne v9, v10, :cond_64

    .line 458
    const/4 v9, 0x1

    move v14, v9

    .end local v14    # "heCapabilitiesPresent":Z
    .local v9, "heCapabilitiesPresent":Z
    goto :goto_73

    .line 459
    .end local v9    # "heCapabilitiesPresent":Z
    .restart local v14    # "heCapabilitiesPresent":Z
    :cond_64
    iget v9, v0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v10, 0xff

    if-ne v9, v10, :cond_73

    iget v9, v0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    const/16 v10, 0x6c

    if-ne v9, v10, :cond_73

    .line 460
    const/4 v9, 0x1

    move/from16 v16, v9

    .line 452
    .end local v0    # "ie":Landroid/net/wifi/ScanResult$InformationElement;
    :cond_73
    :goto_73
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v9, v17

    move/from16 v10, v18

    goto :goto_3b

    .line 464
    .end local v18    # "isHeOrEhtAllowed":Z
    .restart local v10    # "isHeOrEhtAllowed":Z
    :cond_7c
    move/from16 v18, v10

    .end local v10    # "isHeOrEhtAllowed":Z
    .restart local v18    # "isHeOrEhtAllowed":Z
    if-eqz v16, :cond_84

    if-eqz v18, :cond_84

    .line 465
    const/4 v0, 0x4

    .local v0, "preamble":I
    goto :goto_93

    .line 466
    .end local v0    # "preamble":I
    :cond_84
    if-eqz v14, :cond_8a

    if-eqz v18, :cond_8a

    .line 467
    const/4 v0, 0x3

    .restart local v0    # "preamble":I
    goto :goto_93

    .line 468
    .end local v0    # "preamble":I
    :cond_8a
    if-eqz v13, :cond_8e

    .line 469
    const/4 v0, 0x2

    .restart local v0    # "preamble":I
    goto :goto_93

    .line 470
    .end local v0    # "preamble":I
    :cond_8e
    if-eqz v12, :cond_92

    .line 471
    const/4 v0, 0x1

    .restart local v0    # "preamble":I
    goto :goto_93

    .line 473
    .end local v0    # "preamble":I
    :cond_92
    const/4 v0, 0x0

    .line 475
    .end local v12    # "htCapabilitiesPresent":Z
    .end local v13    # "vhtCapabilitiesPresent":Z
    .end local v14    # "heCapabilitiesPresent":Z
    .end local v16    # "ehtCapabilitiesPresent":Z
    .restart local v0    # "preamble":I
    :goto_93
    goto :goto_b0

    .line 446
    .end local v0    # "preamble":I
    .end local v18    # "isHeOrEhtAllowed":Z
    .restart local v10    # "isHeOrEhtAllowed":Z
    :cond_94
    move/from16 v18, v10

    .line 476
    .end local v10    # "isHeOrEhtAllowed":Z
    .restart local v18    # "isHeOrEhtAllowed":Z
    const-string v0, "ResponderConfig"

    const-string v9, "Scan Results do not contain IEs - using backup method to select preamble"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v0, 0x5

    if-ne v5, v0, :cond_a4

    if-eqz v18, :cond_a4

    .line 478
    const/4 v0, 0x4

    .restart local v0    # "preamble":I
    goto :goto_b0

    .line 479
    .end local v0    # "preamble":I
    :cond_a4
    if-eq v5, v0, :cond_af

    const/4 v0, 0x2

    if-eq v5, v0, :cond_af

    const/4 v0, 0x3

    if-ne v5, v0, :cond_ad

    goto :goto_af

    .line 484
    :cond_ad
    const/4 v0, 0x1

    .restart local v0    # "preamble":I
    goto :goto_b0

    .line 482
    .end local v0    # "preamble":I
    :cond_af
    :goto_af
    const/4 v0, 0x2

    .line 488
    .restart local v0    # "preamble":I
    :goto_b0
    new-instance v9, Landroid/net/wifi/rtt/ResponderConfig$Builder;

    invoke-direct {v9}, Landroid/net/wifi/rtt/ResponderConfig$Builder;-><init>()V

    .line 489
    invoke-virtual {v9, v1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setMacAddress(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v9

    .line 490
    invoke-virtual {v9, v2}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setResponderType(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v9

    .line 491
    invoke-virtual {v9, v3}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->set80211mcSupported(Z)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v9

    .line 492
    invoke-virtual {v9, v4}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->set80211azNtbSupported(Z)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v9

    .line 493
    invoke-virtual {v9, v5}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setChannelWidth(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v9

    .line 494
    invoke-virtual {v9, v6}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setFrequencyMhz(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v9

    .line 495
    invoke-virtual {v9, v7}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setCenterFreq0Mhz(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v9

    .line 496
    invoke-virtual {v9, v8}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setCenterFreq1Mhz(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v9

    .line 497
    invoke-virtual {v9, v0}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setPreamble(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v9

    .line 499
    .local v9, "builder":Landroid/net/wifi/rtt/ResponderConfig$Builder;
    invoke-static/range {p0 .. p0}, Landroid/net/wifi/rtt/ResponderConfig;->isSecureRangingResponder(Landroid/net/wifi/ScanResult;)Z

    move-result v10

    if-eqz v10, :cond_e6

    .line 500
    invoke-static/range {p0 .. p0}, Landroid/net/wifi/rtt/ResponderConfig;->getSecureRangingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/SecureRangingConfig;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setSecureRangingConfig(Landroid/net/wifi/rtt/SecureRangingConfig;)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    .line 503
    :cond_e6
    invoke-virtual {v9}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->build()Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object v10

    return-object v10
.end method

.method public static whitelist fromWifiAwarePeerHandleWithDefaults(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/ResponderConfig;
    .registers 3
    .param p0, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 559
    new-instance v0, Landroid/net/wifi/rtt/ResponderConfig$Builder;

    invoke-direct {v0}, Landroid/net/wifi/rtt/ResponderConfig$Builder;-><init>()V

    .line 560
    invoke-virtual {v0, p0}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setPeerHandle(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v0

    .line 561
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setResponderType(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->build()Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object v0

    .line 559
    return-object v0
.end method

.method public static whitelist fromWifiAwarePeerMacAddressWithDefaults(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/ResponderConfig;
    .registers 3
    .param p0, "macAddress"    # Landroid/net/MacAddress;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 539
    new-instance v0, Landroid/net/wifi/rtt/ResponderConfig$Builder;

    invoke-direct {v0}, Landroid/net/wifi/rtt/ResponderConfig$Builder;-><init>()V

    .line 540
    invoke-virtual {v0, p0}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setMacAddress(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v0

    .line 541
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->setResponderType(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Landroid/net/wifi/rtt/ResponderConfig$Builder;->build()Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object v0

    .line 539
    return-object v0
.end method

.method private static blacklist getSecureRangingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/SecureRangingConfig;
    .registers 4
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 511
    new-instance v0, Landroid/net/wifi/rtt/PasnConfig$Builder;

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 512
    invoke-static {v1}, Landroid/net/wifi/rtt/PasnConfig;->getBaseAkmsFromCapabilities(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 513
    invoke-static {v2}, Landroid/net/wifi/rtt/PasnConfig;->getCiphersFromCapabilities(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/rtt/PasnConfig$Builder;-><init>(II)V

    .line 514
    .local v0, "pasnConfigBuilder":Landroid/net/wifi/rtt/PasnConfig$Builder;
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 515
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/rtt/PasnConfig$Builder;->setWifiSsid(Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/rtt/PasnConfig$Builder;

    .line 519
    :cond_1e
    new-instance v1, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;

    invoke-virtual {v0}, Landroid/net/wifi/rtt/PasnConfig$Builder;->build()Landroid/net/wifi/rtt/PasnConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;-><init>(Landroid/net/wifi/rtt/PasnConfig;)V

    .line 520
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->isSecureHeLtfSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->setSecureHeLtfEnabled(Z)Landroid/net/wifi/rtt/SecureRangingConfig$Builder;

    move-result-object v1

    .line 521
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->setRangingFrameProtectionEnabled(Z)Landroid/net/wifi/rtt/SecureRangingConfig$Builder;

    move-result-object v1

    .line 522
    invoke-virtual {v1}, Landroid/net/wifi/rtt/SecureRangingConfig$Builder;->build()Landroid/net/wifi/rtt/SecureRangingConfig;

    move-result-object v1

    .line 519
    return-object v1
.end method

.method private static blacklist isResponderTypeSupported(I)Z
    .registers 2
    .param p0, "responderType"    # I

    .line 566
    packed-switch p0, :pswitch_data_8

    .line 574
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 570
    :pswitch_5
    nop

    .line 576
    const/4 v0, 0x1

    return v0

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist isSecureRangingResponder(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    .line 507
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PASN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static blacklist translateFromLocalToScanResultChannelWidth(I)I
    .registers 4
    .param p0, "localChannelWidth"    # I

    .line 1174
    packed-switch p0, :pswitch_data_28

    .line 1188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translateFromLocalChannelWidth: bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    :pswitch_1c
    const/4 v0, 0x5

    return v0

    .line 1184
    :pswitch_1e
    const/4 v0, 0x4

    return v0

    .line 1182
    :pswitch_20
    const/4 v0, 0x3

    return v0

    .line 1180
    :pswitch_22
    const/4 v0, 0x2

    return v0

    .line 1178
    :pswitch_24
    const/4 v0, 0x1

    return v0

    .line 1176
    :pswitch_26
    const/4 v0, 0x0

    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_26
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist translateFromLocalToScanResultPreamble(I)I
    .registers 4
    .param p0, "localPreamble"    # I

    .line 1229
    packed-switch p0, :pswitch_data_26

    .line 1241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translateFromLocalPreamble: bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    :pswitch_1c
    const/4 v0, 0x4

    return v0

    .line 1237
    :pswitch_1e
    const/4 v0, 0x3

    return v0

    .line 1235
    :pswitch_20
    const/4 v0, 0x2

    return v0

    .line 1233
    :pswitch_22
    const/4 v0, 0x1

    return v0

    .line 1231
    :pswitch_24
    const/4 v0, 0x0

    return v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist translateFromScanResultToLocalChannelWidth(I)I
    .registers 4
    .param p0, "scanResultChannelWidth"    # I

    .line 1145
    packed-switch p0, :pswitch_data_28

    .line 1159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translateFromScanResultChannelWidth: bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :pswitch_1c
    const/4 v0, 0x5

    return v0

    .line 1155
    :pswitch_1e
    const/4 v0, 0x4

    return v0

    .line 1153
    :pswitch_20
    const/4 v0, 0x3

    return v0

    .line 1151
    :pswitch_22
    const/4 v0, 0x2

    return v0

    .line 1149
    :pswitch_24
    const/4 v0, 0x1

    return v0

    .line 1147
    :pswitch_26
    const/4 v0, 0x0

    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_26
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist translateFromScanResultToLocalPreamble(I)I
    .registers 4
    .param p0, "scanResultPreamble"    # I

    .line 1203
    packed-switch p0, :pswitch_data_26

    .line 1215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translateFromScanResultPreamble: bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1213
    :pswitch_1c
    const/4 v0, 0x4

    return v0

    .line 1211
    :pswitch_1e
    const/4 v0, 0x3

    return v0

    .line 1209
    :pswitch_20
    const/4 v0, 0x2

    return v0

    .line 1207
    :pswitch_22
    const/4 v0, 0x1

    return v0

    .line 1205
    :pswitch_24
    const/4 v0, 0x0

    return v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1009
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 1084
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1085
    return v0

    .line 1088
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/rtt/ResponderConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1089
    return v2

    .line 1092
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/rtt/ResponderConfig;

    .line 1094
    .local v1, "lhs":Landroid/net/wifi/rtt/ResponderConfig;
    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget-object v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    if-ne v3, v4, :cond_6c

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    iget-boolean v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    if-ne v3, v4, :cond_6c

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    if-ne v3, v4, :cond_6c

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    if-ne v3, v4, :cond_6c

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    if-ne v3, v4, :cond_6c

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    if-ne v3, v4, :cond_6c

    iget v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    iget v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    if-ne v3, v4, :cond_6c

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211azNtb:Z

    iget-boolean v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->supports80211azNtb:Z

    if-ne v3, v4, :cond_6c

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    iget-wide v5, v1, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6c

    iget-wide v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    iget-wide v5, v1, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6c

    iget-object v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    iget-object v4, v1, Landroid/net/wifi/rtt/ResponderConfig;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    .line 1102
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    goto :goto_6d

    :cond_6c
    move v0, v2

    .line 1094
    :goto_6d
    return v0
.end method

.method public whitelist getCenterFreq0Mhz()I
    .registers 2

    .line 660
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    return v0
.end method

.method public whitelist getCenterFreq1Mhz()I
    .registers 2

    .line 671
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    return v0
.end method

.method public whitelist getChannelWidth()I
    .registers 2

    .line 640
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-static {v0}, Landroid/net/wifi/rtt/ResponderConfig;->translateFromLocalToScanResultChannelWidth(I)I

    move-result v0

    return v0
.end method

.method public whitelist getFrequencyMhz()I
    .registers 2

    .line 648
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    return v0
.end method

.method public whitelist getMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 602
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public blacklist getNtbMaxTimeBetweenMeasurementsMicros()J
    .registers 3

    .line 709
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    return-wide v0
.end method

.method public blacklist getNtbMinTimeBetweenMeasurementsMicros()J
    .registers 3

    .line 699
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    return-wide v0
.end method

.method public blacklist getPeerHandle()Landroid/net/wifi/aware/PeerHandle;
    .registers 2

    .line 612
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    return-object v0
.end method

.method public whitelist getPreamble()I
    .registers 2

    .line 680
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-static {v0}, Landroid/net/wifi/rtt/ResponderConfig;->translateFromLocalToScanResultPreamble(I)I

    move-result v0

    return v0
.end method

.method public whitelist getResponderType()I
    .registers 2

    .line 689
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    return v0
.end method

.method public whitelist getSecureRangingConfig()Landroid/net/wifi/rtt/SecureRangingConfig;
    .registers 2

    .line 733
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 14

    .line 1107
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v2, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 1108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211azNtb:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-wide v10, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    .line 1109
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v11, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/rtt/ResponderConfig;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 1107
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist is80211azNtbSupported()Z
    .registers 2

    .line 628
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211azNtb:Z

    return v0
.end method

.method public whitelist is80211mcSupported()Z
    .registers 2

    .line 619
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    return v0
.end method

.method public greylist-max-o isValid(Z)Z
    .registers 5
    .param p1, "awareSupported"    # Z

    .line 587
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-static {v0}, Landroid/net/wifi/rtt/ResponderConfig;->isResponderTypeSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 588
    :cond_a
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v0, :cond_1a

    :cond_12
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v0, :cond_1b

    .line 589
    :cond_1a
    return v1

    .line 591
    :cond_1b
    if-nez p1, :cond_23

    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_23

    .line 592
    return v1

    .line 594
    :cond_23
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setNtbMaxTimeBetweenMeasurementsMicros(J)V
    .registers 3
    .param p1, "ntbMaxMeasurementTime"    # J

    .line 723
    iput-wide p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    .line 724
    return-void
.end method

.method public blacklist setNtbMinTimeBetweenMeasurementsMicros(J)V
    .registers 3
    .param p1, "ntbMinMeasurementTime"    # J

    .line 716
    iput-wide p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    .line 717
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1114
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ResponderConfig: macAddress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1115
    const-string v1, ", peerHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v1, :cond_1a

    const-string v1, "<null>"

    goto :goto_22

    :cond_1a
    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v1, v1, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1116
    const-string v1, ", responderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1117
    const-string v1, ", supports80211mc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1118
    const-string v1, ", channelWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1119
    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1120
    const-string v1, ", centerFreq0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1121
    const-string v1, ", centerFreq1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1122
    const-string v1, ", preamble="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1123
    const-string v1, ", supports80211azNtb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211azNtb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1124
    const-string v1, ", mNtbMinMeasurementTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1125
    const-string v1, ", mNtbMaxMeasurementTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1127
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    if-eqz v1, :cond_ad

    .line 1128
    const-string v1, ", mSecureRangingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/rtt/ResponderConfig;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1131
    :cond_ad
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1014
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    .line 1015
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_12

    .line 1017
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1018
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, p1, p2}, Landroid/net/MacAddress;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1020
    :goto_12
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v0, :cond_1a

    .line 1021
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_24

    .line 1023
    :cond_1a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1024
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v0, v0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    :goto_24
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1028
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211azNtb:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1029
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMinMeasurementTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1035
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mNtbMaxMeasurementTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1036
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1037
    return-void
.end method
