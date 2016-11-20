.class public Landroid/net/wifi/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ScanResult$1;,
        Landroid/net/wifi/ScanResult$InformationElement;
    }
.end annotation


# static fields
.field public static final CHANNEL_WIDTH_160MHZ:I = 0x3

.field public static final CHANNEL_WIDTH_20MHZ:I = 0x0

.field public static final CHANNEL_WIDTH_40MHZ:I = 0x1

.field public static final CHANNEL_WIDTH_80MHZ:I = 0x2

.field public static final CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_80211mc_RESPONDER:J = 0x2L

.field public static final FLAG_PASSPOINT_NETWORK:J = 0x1L

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public anqpDomainId:I

.field public anqpElements:[Landroid/net/wifi/AnqpInformationElement;

.field public anqpLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blackListTimestamp:J

.field public bytes:[B

.field public capabilities:Ljava/lang/String;

.field public centerFreq0:I

.field public centerFreq1:I

.field public channelWidth:I

.field public distanceCm:I

.field public distanceSdCm:I

.field public flags:J

.field public frequency:I

.field public hessid:J

.field public informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

.field public is80211McRTTResponder:Z

.field public isAutoJoinCandidate:I

.field public level:I

.field public numConnection:I

.field public numIpConfigFailures:I

.field public numUsage:I

.field public operatorFriendlyName:Ljava/lang/CharSequence;

.field public seen:J

.field public timestamp:J

.field public untrusted:Z

.field public venueName:Ljava/lang/CharSequence;

.field public wifiSsid:Landroid/net/wifi/WifiSsid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 573
    new-instance v0, Landroid/net/wifi/ScanResult$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/ScanResult$1;-><init>()V

    #@5
    .line 572
    sput-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 433
    if-eqz p1, :cond_0

    #@5
    .line 434
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@7
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@9
    .line 435
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@b
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@d
    .line 436
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@f
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@11
    .line 437
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->hessid:J

    #@13
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->hessid:J

    #@15
    .line 438
    iget v0, p1, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    #@17
    iput v0, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    #@19
    .line 439
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@1b
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@1d
    .line 440
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    #@1f
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    #@21
    .line 441
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@23
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@25
    .line 442
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    #@27
    iput v0, p0, Landroid/net/wifi/ScanResult;->level:I

    #@29
    .line 443
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    #@2b
    iput v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@2d
    .line 444
    iget v0, p1, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@2f
    iput v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@31
    .line 445
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@33
    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@35
    .line 446
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@37
    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@39
    .line 447
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    #@3b
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@3d
    .line 448
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@3f
    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@41
    .line 449
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@43
    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@45
    .line 450
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    #@47
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->seen:J

    #@49
    .line 451
    iget-boolean v0, p1, Landroid/net/wifi/ScanResult;->untrusted:Z

    #@4b
    iput-boolean v0, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    #@4d
    .line 452
    iget v0, p1, Landroid/net/wifi/ScanResult;->numConnection:I

    #@4f
    iput v0, p0, Landroid/net/wifi/ScanResult;->numConnection:I

    #@51
    .line 453
    iget v0, p1, Landroid/net/wifi/ScanResult;->numUsage:I

    #@53
    iput v0, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    #@55
    .line 454
    iget v0, p1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@57
    iput v0, p0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@59
    .line 455
    iget v0, p1, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@5b
    iput v0, p0, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@5d
    .line 456
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@5f
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@61
    .line 457
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    #@63
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    #@65
    .line 458
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->flags:J

    #@67
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@69
    .line 432
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V
    .locals 4
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "osuProviders"    # [B
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J

    #@0
    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 355
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@5
    .line 356
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@d
    .line 357
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@f
    .line 358
    iput-wide p3, p0, Landroid/net/wifi/ScanResult;->hessid:J

    #@11
    .line 359
    iput p5, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    #@13
    .line 360
    if-eqz p6, :cond_0

    #@15
    .line 361
    const/4 v0, 0x1

    #@16
    new-array v0, v0, [Landroid/net/wifi/AnqpInformationElement;

    #@18
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    #@1a
    .line 362
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    #@1c
    .line 363
    new-instance v1, Landroid/net/wifi/AnqpInformationElement;

    #@1e
    const v2, 0x506f9a

    #@21
    .line 364
    const/16 v3, 0x8

    #@23
    .line 363
    invoke-direct {v1, v2, v3, p6}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    #@26
    .line 362
    const/4 v2, 0x0

    #@27
    aput-object v1, v0, v2

    #@29
    .line 366
    :cond_0
    iput-object p7, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@2b
    .line 367
    iput p8, p0, Landroid/net/wifi/ScanResult;->level:I

    #@2d
    .line 368
    iput p9, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@2f
    .line 369
    iput-wide p10, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@31
    .line 370
    const/4 v0, -0x1

    #@32
    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@34
    .line 371
    const/4 v0, -0x1

    #@35
    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@37
    .line 372
    const/4 v0, -0x1

    #@38
    iput v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@3a
    .line 373
    const/4 v0, -0x1

    #@3b
    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@3d
    .line 374
    const/4 v0, -0x1

    #@3e
    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@40
    .line 375
    const-wide/16 v0, 0x0

    #@42
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@44
    .line 354
    return-void

    #@45
    .line 356
    :cond_1
    const-string/jumbo v0, "<unknown ssid>"

    #@48
    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V
    .locals 2
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 381
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@6
    .line 382
    if-eqz p1, :cond_0

    #@8
    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@e
    .line 383
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@10
    .line 384
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@12
    .line 385
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    #@14
    .line 386
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@16
    .line 387
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@18
    .line 388
    iput p8, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@1a
    .line 389
    iput p9, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@1c
    .line 390
    iput v1, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@1e
    .line 391
    iput v1, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@20
    .line 392
    iput v1, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@22
    .line 393
    const-wide/16 v0, 0x0

    #@24
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@26
    .line 380
    return-void

    #@27
    .line 382
    :cond_0
    const-string/jumbo v0, "<unknown ssid>"

    #@2a
    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 20
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "Ssid"    # Ljava/lang/String;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "hessid"    # J
    .param p6, "anqpDomainId"    # I
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J
    .param p12, "distCm"    # I
    .param p13, "distSdCm"    # I
    .param p14, "channelWidth"    # I
    .param p15, "centerFreq0"    # I
    .param p16, "centerFreq1"    # I
    .param p17, "is80211McRTTResponder"    # Z

    #@0
    .prologue
    move-object/from16 v3, p0

    #@2
    move-object/from16 v4, p2

    #@4
    move-object/from16 v5, p3

    #@6
    move-wide/from16 v6, p4

    #@8
    move/from16 v8, p6

    #@a
    move-object/from16 v9, p7

    #@c
    move/from16 v10, p8

    #@e
    move/from16 v11, p9

    #@10
    move-wide/from16 v12, p10

    #@12
    move/from16 v14, p12

    #@14
    move/from16 v15, p13

    #@16
    move/from16 v16, p14

    #@18
    move/from16 v17, p15

    #@1a
    move/from16 v18, p16

    #@1c
    move/from16 v19, p17

    #@1e
    .line 426
    invoke-direct/range {v3 .. v19}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    #@21
    .line 428
    move-object/from16 v0, p1

    #@23
    move-object/from16 v1, p0

    #@25
    iput-object v0, v1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@27
    .line 425
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 5
    .param p1, "Ssid"    # Ljava/lang/String;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "caps"    # Ljava/lang/String;
    .param p7, "level"    # I
    .param p8, "frequency"    # I
    .param p9, "tsf"    # J
    .param p11, "distCm"    # I
    .param p12, "distSdCm"    # I
    .param p13, "channelWidth"    # I
    .param p14, "centerFreq0"    # I
    .param p15, "centerFreq1"    # I
    .param p16, "is80211McRTTResponder"    # Z

    #@0
    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 401
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@5
    .line 402
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@7
    .line 403
    iput-wide p3, p0, Landroid/net/wifi/ScanResult;->hessid:J

    #@9
    .line 404
    iput p5, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    #@b
    .line 405
    iput-object p6, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@d
    .line 406
    iput p7, p0, Landroid/net/wifi/ScanResult;->level:I

    #@f
    .line 407
    iput p8, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@11
    .line 408
    iput-wide p9, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@13
    .line 409
    move/from16 v0, p11

    #@15
    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@17
    .line 410
    move/from16 v0, p12

    #@19
    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@1b
    .line 411
    move/from16 v0, p13

    #@1d
    iput v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@1f
    .line 412
    move/from16 v0, p14

    #@21
    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@23
    .line 413
    move/from16 v0, p15

    #@25
    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@27
    .line 414
    if-eqz p16, :cond_0

    #@29
    .line 415
    const-wide/16 v2, 0x2

    #@2b
    iput-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@2d
    .line 400
    :goto_0
    return-void

    #@2e
    .line 417
    :cond_0
    const-wide/16 v2, 0x0

    #@30
    iput-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@32
    goto :goto_0
.end method

.method public static is24GHz(I)Z
    .locals 2
    .param p0, "freq"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 282
    const/16 v1, 0x960

    #@3
    if-le p0, v1, :cond_0

    #@5
    const/16 v1, 0x9c4

    #@7
    if-ge p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public static is5GHz(I)Z
    .locals 2
    .param p0, "freq"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 297
    const/16 v1, 0x1324

    #@3
    if-le p0, v1, :cond_0

    #@5
    const/16 v1, 0x170c

    #@7
    if-ge p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method


# virtual methods
.method public averageRssi(IJI)V
    .locals 8
    .param p1, "previousRssi"    # I
    .param p2, "previousSeen"    # J
    .param p4, "maxAge"    # I

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 156
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    #@4
    cmp-long v4, v4, v6

    #@6
    if-nez v4, :cond_0

    #@8
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b
    move-result-wide v4

    #@c
    iput-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    #@e
    .line 159
    :cond_0
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    #@10
    sub-long v0, v4, p2

    #@12
    .line 161
    .local v0, "age":J
    cmp-long v4, p2, v6

    #@14
    if-lez v4, :cond_1

    #@16
    cmp-long v4, v0, v6

    #@18
    if-lez v4, :cond_1

    #@1a
    div-int/lit8 v4, p4, 0x2

    #@1c
    int-to-long v4, v4

    #@1d
    cmp-long v4, v0, v4

    #@1f
    if-gez v4, :cond_1

    #@21
    .line 163
    long-to-double v4, v0

    #@22
    int-to-double v6, p4

    #@23
    div-double/2addr v4, v6

    #@24
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    #@26
    sub-double v2, v6, v4

    #@28
    .line 164
    .local v2, "alpha":D
    iget v4, p0, Landroid/net/wifi/ScanResult;->level:I

    #@2a
    int-to-double v4, v4

    #@2b
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@2d
    sub-double/2addr v6, v2

    #@2e
    mul-double/2addr v4, v6

    #@2f
    int-to-double v6, p1

    #@30
    mul-double/2addr v6, v2

    #@31
    add-double/2addr v4, v6

    #@32
    double-to-int v4, v4

    #@33
    iput v4, p0, Landroid/net/wifi/ScanResult;->level:I

    #@35
    .line 154
    .end local v2    # "alpha":D
    :cond_1
    return-void
.end method

.method public clearFlag(J)V
    .locals 5
    .param p1, "flag"    # J

    #@0
    .prologue
    .line 244
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@2
    not-long v2, p1

    #@3
    and-long/2addr v0, v2

    #@4
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@6
    .line 243
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 504
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public is24GHz()Z
    .locals 1

    #@0
    .prologue
    .line 274
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@2
    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public is5GHz()Z
    .locals 1

    #@0
    .prologue
    .line 289
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@2
    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public is80211mcResponder()Z
    .locals 4

    #@0
    .prologue
    .line 248
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@2
    const-wide/16 v2, 0x2

    #@4
    and-long/2addr v0, v2

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public isPasspointNetwork()Z
    .locals 4

    #@0
    .prologue
    .line 252
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    and-long/2addr v0, v2

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public setFlag(J)V
    .locals 3
    .param p1, "flag"    # J

    #@0
    .prologue
    .line 235
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@2
    or-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@5
    .line 234
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v6, -0x1

    #@3
    .line 471
    new-instance v1, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    .line 472
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v0, "<none>"

    #@b
    .line 474
    .local v0, "none":Ljava/lang/String;
    const-string/jumbo v2, "SSID: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v3

    #@12
    .line 475
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@14
    if-nez v2, :cond_0

    #@16
    const-string/jumbo v2, "<unknown ssid>"

    #@19
    .line 474
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v2

    #@1d
    .line 476
    const-string/jumbo v3, ", BSSID: "

    #@20
    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    move-result-object v3

    #@24
    .line 477
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@26
    if-nez v2, :cond_1

    #@28
    move-object v2, v0

    #@29
    .line 474
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    move-result-object v2

    #@2d
    .line 478
    const-string/jumbo v3, ", capabilities: "

    #@30
    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    move-result-object v2

    #@34
    .line 479
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@36
    if-nez v3, :cond_2

    #@38
    .line 474
    .end local v0    # "none":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3b
    move-result-object v2

    #@3c
    .line 480
    const-string/jumbo v3, ", level: "

    #@3f
    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    move-result-object v2

    #@43
    .line 481
    iget v3, p0, Landroid/net/wifi/ScanResult;->level:I

    #@45
    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@48
    move-result-object v2

    #@49
    .line 482
    const-string/jumbo v3, ", frequency: "

    #@4c
    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4f
    move-result-object v2

    #@50
    .line 483
    iget v3, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@52
    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@55
    move-result-object v2

    #@56
    .line 484
    const-string/jumbo v3, ", timestamp: "

    #@59
    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    move-result-object v2

    #@5d
    .line 485
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@5f
    .line 474
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@62
    .line 487
    const-string/jumbo v2, ", distance: "

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@68
    move-result-object v3

    #@69
    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@6b
    if-eq v2, v6, :cond_3

    #@6d
    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@6f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v2

    #@73
    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@76
    move-result-object v2

    #@77
    .line 488
    const-string/jumbo v3, "(cm)"

    #@7a
    .line 487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7d
    .line 489
    const-string/jumbo v2, ", distanceSd: "

    #@80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@83
    move-result-object v3

    #@84
    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@86
    if-eq v2, v6, :cond_4

    #@88
    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@8a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8d
    move-result-object v2

    #@8e
    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@91
    move-result-object v2

    #@92
    .line 490
    const-string/jumbo v3, "(cm)"

    #@95
    .line 489
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@98
    .line 492
    const-string/jumbo v2, ", passpoint: "

    #@9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9e
    .line 493
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@a0
    const-wide/16 v4, 0x1

    #@a2
    and-long/2addr v2, v4

    #@a3
    cmp-long v2, v2, v8

    #@a5
    if-eqz v2, :cond_5

    #@a7
    const-string/jumbo v2, "yes"

    #@aa
    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ad
    .line 494
    const-string/jumbo v2, ", ChannelBandwidth: "

    #@b0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b3
    move-result-object v2

    #@b4
    iget v3, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@b6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@b9
    .line 495
    const-string/jumbo v2, ", centerFreq0: "

    #@bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@bf
    move-result-object v2

    #@c0
    iget v3, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@c2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@c5
    .line 496
    const-string/jumbo v2, ", centerFreq1: "

    #@c8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@cb
    move-result-object v2

    #@cc
    iget v3, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@ce
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@d1
    .line 497
    const-string/jumbo v2, ", 80211mcResponder: "

    #@d4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d7
    .line 498
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@d9
    const-wide/16 v4, 0x2

    #@db
    and-long/2addr v2, v4

    #@dc
    cmp-long v2, v2, v8

    #@de
    if-eqz v2, :cond_6

    #@e0
    const-string/jumbo v2, "is supported"

    #@e3
    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e6
    .line 499
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@e9
    move-result-object v2

    #@ea
    return-object v2

    #@eb
    .line 475
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@ed
    goto/16 :goto_0

    #@ef
    .line 477
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@f1
    goto/16 :goto_1

    #@f3
    .line 479
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@f5
    goto/16 :goto_2

    #@f7
    .line 487
    .end local v0    # "none":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "?"

    #@fa
    goto/16 :goto_3

    #@fc
    .line 489
    :cond_4
    const-string/jumbo v2, "?"

    #@ff
    goto :goto_4

    #@100
    .line 493
    :cond_5
    const-string/jumbo v2, "no"

    #@103
    goto :goto_5

    #@104
    .line 498
    :cond_6
    const-string/jumbo v2, "is not supported"

    #@107
    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 509
    iget-object v4, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 510
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 511
    iget-object v4, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@b
    invoke-virtual {v4, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 515
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@10
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 516
    iget-object v4, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@15
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 517
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->hessid:J

    #@1a
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@1d
    .line 518
    iget v4, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    #@1f
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 519
    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@24
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 520
    iget v4, p0, Landroid/net/wifi/ScanResult;->level:I

    #@29
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 521
    iget v4, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@2e
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 522
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@33
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@36
    .line 523
    iget v4, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@38
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 524
    iget v4, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@3d
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 525
    iget v4, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@42
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@45
    .line 526
    iget v4, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@47
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 527
    iget v4, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@4c
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 528
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    #@51
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@54
    .line 529
    iget-boolean v4, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    #@56
    if-eqz v4, :cond_1

    #@58
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    .line 530
    iget v2, p0, Landroid/net/wifi/ScanResult;->numConnection:I

    #@5d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    .line 531
    iget v2, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    #@62
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 532
    iget v2, p0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@67
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 533
    iget v2, p0, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@6c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6f
    .line 534
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@71
    if-eqz v2, :cond_2

    #@73
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@75
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@78
    move-result-object v2

    #@79
    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7c
    .line 535
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    #@7e
    if-eqz v2, :cond_3

    #@80
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    #@82
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@89
    .line 536
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@8b
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@8e
    .line 538
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@90
    if-eqz v2, :cond_4

    #@92
    .line 539
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@94
    array-length v2, v2

    #@95
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@98
    .line 540
    const/4 v1, 0x0

    #@99
    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@9b
    array-length v2, v2

    #@9c
    if-ge v1, v2, :cond_5

    #@9e
    .line 541
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@a0
    aget-object v2, v2, v1

    #@a2
    iget v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@a4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@a7
    .line 542
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@a9
    aget-object v2, v2, v1

    #@ab
    iget-object v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@ad
    array-length v2, v2

    #@ae
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@b1
    .line 543
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@b3
    aget-object v2, v2, v1

    #@b5
    iget-object v2, v2, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@b7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@ba
    .line 540
    add-int/lit8 v1, v1, 0x1

    #@bc
    goto :goto_4

    #@bd
    .line 513
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@c0
    goto/16 :goto_0

    #@c2
    :cond_1
    move v2, v3

    #@c3
    .line 529
    goto :goto_1

    #@c4
    .line 534
    :cond_2
    const-string/jumbo v2, ""

    #@c7
    goto :goto_2

    #@c8
    .line 535
    :cond_3
    const-string/jumbo v2, ""

    #@cb
    goto :goto_3

    #@cc
    .line 546
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@cf
    .line 549
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    #@d1
    if-eqz v2, :cond_6

    #@d3
    .line 550
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    #@d5
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@d8
    move-result v2

    #@d9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@dc
    .line 551
    const/4 v1, 0x0

    #@dd
    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    #@df
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@e2
    move-result v2

    #@e3
    if-ge v1, v2, :cond_7

    #@e5
    .line 552
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    #@e7
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ea
    move-result-object v2

    #@eb
    check-cast v2, Ljava/lang/String;

    #@ed
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f0
    .line 551
    add-int/lit8 v1, v1, 0x1

    #@f2
    goto :goto_5

    #@f3
    .line 556
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@f6
    .line 558
    :cond_7
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    #@f8
    if-eqz v2, :cond_8

    #@fa
    .line 559
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    #@fc
    array-length v2, v2

    #@fd
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@100
    .line 560
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    #@102
    array-length v4, v2

    #@103
    :goto_6
    if-ge v3, v4, :cond_9

    #@105
    aget-object v0, v2, v3

    #@107
    .line 561
    .local v0, "element":Landroid/net/wifi/AnqpInformationElement;
    invoke-virtual {v0}, Landroid/net/wifi/AnqpInformationElement;->getVendorId()I

    #@10a
    move-result v5

    #@10b
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@10e
    .line 562
    invoke-virtual {v0}, Landroid/net/wifi/AnqpInformationElement;->getElementId()I

    #@111
    move-result v5

    #@112
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@115
    .line 563
    invoke-virtual {v0}, Landroid/net/wifi/AnqpInformationElement;->getPayload()[B

    #@118
    move-result-object v5

    #@119
    array-length v5, v5

    #@11a
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@11d
    .line 564
    invoke-virtual {v0}, Landroid/net/wifi/AnqpInformationElement;->getPayload()[B

    #@120
    move-result-object v5

    #@121
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    #@124
    .line 560
    add-int/lit8 v3, v3, 0x1

    #@126
    goto :goto_6

    #@127
    .line 567
    .end local v0    # "element":Landroid/net/wifi/AnqpInformationElement;
    :cond_8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12a
    .line 508
    :cond_9
    return-void
.end method
