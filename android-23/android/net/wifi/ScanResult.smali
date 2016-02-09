.class public Landroid/net/wifi/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ScanResult$InformationElement;,
        Landroid/net/wifi/ScanResult$1;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_ERROR:I = 0x80

.field public static final AUTO_JOIN_DISABLED:I = 0x20

.field public static final AUTO_ROAM_DISABLED:I = 0x10

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

.field public static final ENABLED:I = 0x0

.field public static final FLAG_80211mc_RESPONDER:J = 0x2L

.field public static final FLAG_PASSPOINT_NETWORK:J = 0x1L

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public autoJoinStatus:I

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
    .line 516
    new-instance v0, Landroid/net/wifi/ScanResult$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/ScanResult$1;-><init>()V

    #@5
    .line 515
    sput-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 398
    if-eqz p1, :cond_0

    #@5
    .line 399
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@7
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@9
    .line 400
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@b
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@d
    .line 401
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@f
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@11
    .line 402
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@13
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@15
    .line 403
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    #@17
    iput v0, p0, Landroid/net/wifi/ScanResult;->level:I

    #@19
    .line 404
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    #@1b
    iput v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@1d
    .line 405
    iget v0, p1, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@1f
    iput v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@21
    .line 406
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@23
    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@25
    .line 407
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@27
    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@29
    .line 408
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    #@2b
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@2d
    .line 409
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@2f
    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@31
    .line 410
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@33
    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@35
    .line 411
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    #@37
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->seen:J

    #@39
    .line 412
    iget v0, p1, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@3b
    iput v0, p0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@3d
    .line 413
    iget-boolean v0, p1, Landroid/net/wifi/ScanResult;->untrusted:Z

    #@3f
    iput-boolean v0, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    #@41
    .line 414
    iget v0, p1, Landroid/net/wifi/ScanResult;->numConnection:I

    #@43
    iput v0, p0, Landroid/net/wifi/ScanResult;->numConnection:I

    #@45
    .line 415
    iget v0, p1, Landroid/net/wifi/ScanResult;->numUsage:I

    #@47
    iput v0, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    #@49
    .line 416
    iget v0, p1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@4b
    iput v0, p0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@4d
    .line 417
    iget v0, p1, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@4f
    iput v0, p0, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@51
    .line 418
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@53
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@55
    .line 419
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    #@57
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    #@59
    .line 420
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->flags:J

    #@5b
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@5d
    .line 397
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 2
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 332
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@6
    .line 333
    if-eqz p1, :cond_0

    #@8
    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@e
    .line 334
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@10
    .line 335
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@12
    .line 336
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    #@14
    .line 337
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@16
    .line 338
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@18
    .line 339
    iput v1, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@1a
    .line 340
    iput v1, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@1c
    .line 341
    iput v1, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@1e
    .line 342
    iput v1, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@20
    .line 343
    iput v1, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@22
    .line 344
    const-wide/16 v0, 0x0

    #@24
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@26
    .line 331
    return-void

    #@27
    .line 333
    :cond_0
    const-string/jumbo v0, "<unknown ssid>"

    #@2a
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
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 350
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@6
    .line 351
    if-eqz p1, :cond_0

    #@8
    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@e
    .line 352
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@10
    .line 353
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@12
    .line 354
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    #@14
    .line 355
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@16
    .line 356
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@18
    .line 357
    iput p8, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@1a
    .line 358
    iput p9, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@1c
    .line 359
    iput v1, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@1e
    .line 360
    iput v1, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@20
    .line 361
    iput v1, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@22
    .line 362
    const-wide/16 v0, 0x0

    #@24
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@26
    .line 349
    return-void

    #@27
    .line 351
    :cond_0
    const-string/jumbo v0, "<unknown ssid>"

    #@2a
    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIIIZ)V
    .locals 17
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "Ssid"    # Ljava/lang/String;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "caps"    # Ljava/lang/String;
    .param p5, "level"    # I
    .param p6, "frequency"    # I
    .param p7, "tsf"    # J
    .param p9, "distCm"    # I
    .param p10, "distSdCm"    # I
    .param p11, "channelWidth"    # I
    .param p12, "centerFreq0"    # I
    .param p13, "centerFreq1"    # I
    .param p14, "is80211McRTTResponder"    # Z

    #@0
    .prologue
    move-object/from16 v2, p0

    #@2
    move-object/from16 v3, p2

    #@4
    move-object/from16 v4, p3

    #@6
    move-object/from16 v5, p4

    #@8
    move/from16 v6, p5

    #@a
    move/from16 v7, p6

    #@c
    move-wide/from16 v8, p7

    #@e
    move/from16 v10, p9

    #@10
    move/from16 v11, p10

    #@12
    move/from16 v12, p11

    #@14
    move/from16 v13, p12

    #@16
    move/from16 v14, p13

    #@18
    move/from16 v15, p14

    #@1a
    .line 391
    invoke-direct/range {v2 .. v15}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIIIZ)V

    #@1d
    .line 393
    move-object/from16 v0, p1

    #@1f
    move-object/from16 v1, p0

    #@21
    iput-object v0, v1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@23
    .line 390
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIIIZ)V
    .locals 2
    .param p1, "Ssid"    # Ljava/lang/String;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I
    .param p10, "channelWidth"    # I
    .param p11, "centerFreq0"    # I
    .param p12, "centerFreq1"    # I
    .param p13, "is80211McRTTResponder"    # Z

    #@0
    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 369
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@5
    .line 370
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@7
    .line 371
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@9
    .line 372
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    #@b
    .line 373
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@d
    .line 374
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@f
    .line 375
    iput p8, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@11
    .line 376
    iput p9, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@13
    .line 377
    iput p10, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@15
    .line 378
    iput p11, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@17
    .line 379
    iput p12, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@19
    .line 380
    if-eqz p13, :cond_0

    #@1b
    .line 381
    const-wide/16 v0, 0x2

    #@1d
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@1f
    .line 368
    :goto_0
    return-void

    #@20
    .line 383
    :cond_0
    const-wide/16 v0, 0x0

    #@22
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@24
    goto :goto_0
.end method

.method public static is24GHz(I)Z
    .locals 2
    .param p0, "freq"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 284
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
    .line 299
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
    .line 136
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    #@4
    cmp-long v4, v4, v6

    #@6
    if-nez v4, :cond_0

    #@8
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b
    move-result-wide v4

    #@c
    iput-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    #@e
    .line 139
    :cond_0
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    #@10
    sub-long v0, v4, p2

    #@12
    .line 141
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
    .line 143
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
    .line 144
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
    .line 134
    .end local v2    # "alpha":D
    :cond_1
    return-void
.end method

.method public clearFlag(J)V
    .locals 5
    .param p1, "flag"    # J

    #@0
    .prologue
    .line 246
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@2
    not-long v2, p1

    #@3
    and-long/2addr v0, v2

    #@4
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@6
    .line 245
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 469
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public is24GHz()Z
    .locals 1

    #@0
    .prologue
    .line 276
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
    .line 291
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
    .line 250
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
    .line 254
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

.method public setAutoJoinStatus(I)V
    .locals 2
    .param p1, "status"    # I

    #@0
    .prologue
    .line 177
    if-gez p1, :cond_0

    #@2
    const/4 p1, 0x0

    #@3
    .line 178
    :cond_0
    if-nez p1, :cond_2

    #@5
    .line 179
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    #@9
    .line 183
    :cond_1
    :goto_0
    iput p1, p0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@b
    .line 176
    return-void

    #@c
    .line 180
    :cond_2
    iget v0, p0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@e
    if-le p1, v0, :cond_1

    #@10
    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@13
    move-result-wide v0

    #@14
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    #@16
    goto :goto_0
.end method

.method public setFlag(J)V
    .locals 3
    .param p1, "flag"    # J

    #@0
    .prologue
    .line 237
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@2
    or-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@5
    .line 236
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
    .line 433
    new-instance v1, Ljava/lang/StringBuffer;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@8
    .line 434
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v0, "<none>"

    #@b
    .line 436
    .local v0, "none":Ljava/lang/String;
    const-string/jumbo v2, "SSID: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v3

    #@12
    .line 437
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@14
    if-nez v2, :cond_1

    #@16
    const-string/jumbo v2, "<unknown ssid>"

    #@19
    .line 436
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v2

    #@1d
    .line 438
    const-string/jumbo v3, ", BSSID: "

    #@20
    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    move-result-object v3

    #@24
    .line 439
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@26
    if-nez v2, :cond_2

    #@28
    move-object v2, v0

    #@29
    .line 436
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    move-result-object v2

    #@2d
    .line 440
    const-string/jumbo v3, ", capabilities: "

    #@30
    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    move-result-object v2

    #@34
    .line 441
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@36
    if-nez v3, :cond_3

    #@38
    .line 436
    .end local v0    # "none":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3b
    move-result-object v2

    #@3c
    .line 442
    const-string/jumbo v3, ", level: "

    #@3f
    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    move-result-object v2

    #@43
    .line 443
    iget v3, p0, Landroid/net/wifi/ScanResult;->level:I

    #@45
    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@48
    move-result-object v2

    #@49
    .line 444
    const-string/jumbo v3, ", frequency: "

    #@4c
    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4f
    move-result-object v2

    #@50
    .line 445
    iget v3, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@52
    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@55
    move-result-object v2

    #@56
    .line 446
    const-string/jumbo v3, ", timestamp: "

    #@59
    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    move-result-object v2

    #@5d
    .line 447
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@5f
    .line 436
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    #@62
    .line 449
    const-string/jumbo v2, ", distance: "

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@68
    move-result-object v3

    #@69
    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@6b
    if-eq v2, v6, :cond_4

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
    .line 450
    const-string/jumbo v3, "(cm)"

    #@7a
    .line 449
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7d
    .line 451
    const-string/jumbo v2, ", distanceSd: "

    #@80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@83
    move-result-object v3

    #@84
    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@86
    if-eq v2, v6, :cond_5

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
    .line 452
    const-string/jumbo v3, "(cm)"

    #@95
    .line 451
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@98
    .line 454
    const-string/jumbo v2, ", passpoint: "

    #@9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9e
    .line 455
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@a0
    const-wide/16 v4, 0x1

    #@a2
    and-long/2addr v2, v4

    #@a3
    cmp-long v2, v2, v8

    #@a5
    if-eqz v2, :cond_6

    #@a7
    const-string/jumbo v2, "yes"

    #@aa
    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ad
    .line 456
    iget v2, p0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@af
    if-eqz v2, :cond_0

    #@b1
    .line 457
    const-string/jumbo v2, ", status: "

    #@b4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b7
    move-result-object v2

    #@b8
    iget v3, p0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@ba
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@bd
    .line 459
    :cond_0
    const-string/jumbo v2, ", ChannelBandwidth: "

    #@c0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c3
    move-result-object v2

    #@c4
    iget v3, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@c6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@c9
    .line 460
    const-string/jumbo v2, ", centerFreq0: "

    #@cc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@cf
    move-result-object v2

    #@d0
    iget v3, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@d2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@d5
    .line 461
    const-string/jumbo v2, ", centerFreq1: "

    #@d8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@db
    move-result-object v2

    #@dc
    iget v3, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@de
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@e1
    .line 462
    const-string/jumbo v2, ", 80211mcResponder: "

    #@e4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e7
    .line 463
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@e9
    const-wide/16 v4, 0x2

    #@eb
    and-long/2addr v2, v4

    #@ec
    cmp-long v2, v2, v8

    #@ee
    if-eqz v2, :cond_7

    #@f0
    const-string/jumbo v2, "is supported"

    #@f3
    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f6
    .line 464
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@f9
    move-result-object v2

    #@fa
    return-object v2

    #@fb
    .line 437
    .restart local v0    # "none":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@fd
    goto/16 :goto_0

    #@ff
    .line 439
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@101
    goto/16 :goto_1

    #@103
    .line 441
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@105
    goto/16 :goto_2

    #@107
    .line 449
    .end local v0    # "none":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "?"

    #@10a
    goto/16 :goto_3

    #@10c
    .line 451
    :cond_5
    const-string/jumbo v2, "?"

    #@10f
    goto/16 :goto_4

    #@111
    .line 455
    :cond_6
    const-string/jumbo v2, "no"

    #@114
    goto :goto_5

    #@115
    .line 463
    :cond_7
    const-string/jumbo v2, "is not supported"

    #@118
    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 474
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 475
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 476
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    #@b
    invoke-virtual {v3, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 480
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@10
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@13
    .line 481
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@15
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@18
    .line 482
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@1a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 483
    iget v3, p0, Landroid/net/wifi/ScanResult;->level:I

    #@1f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 484
    iget v3, p0, Landroid/net/wifi/ScanResult;->frequency:I

    #@24
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 485
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    #@29
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@2c
    .line 486
    iget v3, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    #@2e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 487
    iget v3, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    #@33
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 488
    iget v3, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    #@38
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 489
    iget v3, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    #@3d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 490
    iget v3, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    #@42
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@45
    .line 491
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    #@47
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@4a
    .line 492
    iget v3, p0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    #@4c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 493
    iget-boolean v3, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    #@51
    if-eqz v3, :cond_1

    #@53
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    .line 494
    iget v1, p0, Landroid/net/wifi/ScanResult;->numConnection:I

    #@58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    .line 495
    iget v1, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    #@5d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    .line 496
    iget v1, p0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 497
    iget v1, p0, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@67
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 498
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@6c
    if-eqz v1, :cond_2

    #@6e
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    #@70
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@77
    .line 499
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    #@79
    if-eqz v1, :cond_3

    #@7b
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    #@7d
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@84
    .line 500
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->flags:J

    #@86
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@89
    .line 502
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@8b
    if-eqz v1, :cond_4

    #@8d
    .line 503
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@8f
    array-length v1, v1

    #@90
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@93
    .line 504
    const/4 v0, 0x0

    #@94
    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@96
    array-length v1, v1

    #@97
    if-ge v0, v1, :cond_5

    #@99
    .line 505
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@9b
    aget-object v1, v1, v0

    #@9d
    iget v1, v1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@9f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a2
    .line 506
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@a4
    aget-object v1, v1, v0

    #@a6
    iget-object v1, v1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@a8
    array-length v1, v1

    #@a9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ac
    .line 507
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    #@ae
    aget-object v1, v1, v0

    #@b0
    iget-object v1, v1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@b2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@b5
    .line 504
    add-int/lit8 v0, v0, 0x1

    #@b7
    goto :goto_4

    #@b8
    .line 478
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@bb
    goto/16 :goto_0

    #@bd
    :cond_1
    move v1, v2

    #@be
    .line 493
    goto :goto_1

    #@bf
    .line 498
    :cond_2
    const-string/jumbo v1, ""

    #@c2
    goto :goto_2

    #@c3
    .line 499
    :cond_3
    const-string/jumbo v1, ""

    #@c6
    goto :goto_3

    #@c7
    .line 510
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@ca
    .line 473
    :cond_5
    return-void
.end method
