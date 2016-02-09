.class public Landroid/net/wifi/WifiInfo;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field public static final FREQUENCY_UNITS:Ljava/lang/String; = "MHz"

.field public static final INVALID_RSSI:I = -0x7f

.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbps"

.field public static final MAX_RSSI:I = 0xc8

.field public static final MIN_RSSI:I = -0x7e

.field private static final TAG:Ljava/lang/String; = "WifiInfo"

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/wifi/SupplicantState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public badRssiCount:I

.field public linkStuckCount:I

.field public lowRssiCount:I

.field private mBSSID:Ljava/lang/String;

.field private mEphemeral:Z

.field private mFrequency:I

.field private mIpAddress:Ljava/net/InetAddress;

.field private mLinkSpeed:I

.field private mMacAddress:Ljava/lang/String;

.field private mMeteredHint:Z

.field private mNetworkId:I

.field private mRssi:I

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private mWifiSsid:Landroid/net/wifi/WifiSsid;

.field public rxSuccess:J

.field public rxSuccessRate:D

.field public score:I

.field public txBad:J

.field public txBadRate:D

.field public txRetries:J

.field public txRetriesRate:D

.field public txSuccess:J

.field public txSuccessRate:D


# direct methods
.method static synthetic -set0(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 43
    new-instance v0, Ljava/util/EnumMap;

    #@2
    const-class v1, Landroid/net/wifi/SupplicantState;

    #@4
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@7
    .line 42
    sput-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@9
    .line 54
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@b
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    #@d
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@f
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 55
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@14
    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    #@16
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@18
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 56
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@1d
    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    #@1f
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    #@21
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 57
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@26
    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    #@28
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    #@2a
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 58
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@2f
    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    #@31
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@33
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    .line 59
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@38
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    #@3a
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@3c
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 60
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@41
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    #@43
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@45
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 61
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@4a
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    #@4c
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    #@4e
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 62
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@53
    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    #@55
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    #@57
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@5a
    .line 63
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@5c
    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    #@5e
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #@60
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 64
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@65
    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    #@67
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@69
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@6c
    .line 65
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@6e
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    #@70
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    #@72
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 66
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@77
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    #@79
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@7b
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 597
    new-instance v0, Landroid/net/wifi/WifiInfo$1;

    #@80
    invoke-direct {v0}, Landroid/net/wifi/WifiInfo$1;-><init>()V

    #@83
    .line 596
    sput-object v0, Landroid/net/wifi/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@85
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 102
    const-string/jumbo v0, "02:00:00:00:00:00"

    #@8
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    #@a
    .line 239
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@c
    .line 240
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    #@e
    .line 241
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    #@10
    .line 242
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    #@12
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    #@14
    .line 243
    const/16 v0, -0x7f

    #@16
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    #@18
    .line 244
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    #@1a
    .line 245
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    #@1c
    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiInfo;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/WifiInfo;

    #@0
    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    const-string/jumbo v0, "02:00:00:00:00:00"

    #@6
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    #@8
    .line 278
    if-eqz p1, :cond_0

    #@a
    .line 279
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    #@c
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    #@e
    .line 280
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    #@10
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    #@12
    .line 281
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@14
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@16
    .line 282
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    #@18
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    #@1a
    .line 283
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mRssi:I

    #@1c
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    #@1e
    .line 284
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    #@20
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    #@22
    .line 285
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mFrequency:I

    #@24
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    #@26
    .line 286
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    #@28
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    #@2a
    .line 287
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    #@2c
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    #@2e
    .line 288
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    #@30
    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    #@32
    .line 289
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    #@34
    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    #@36
    .line 290
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBad:J

    #@38
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    #@3a
    .line 291
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetries:J

    #@3c
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    #@3e
    .line 292
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    #@40
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    #@42
    .line 293
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    #@44
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    #@46
    .line 294
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@48
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@4a
    .line 295
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@4c
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@4e
    .line 296
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@50
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@52
    .line 297
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@54
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@56
    .line 298
    iget v0, p1, Landroid/net/wifi/WifiInfo;->score:I

    #@58
    iput v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    #@5a
    .line 299
    iget v0, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@5c
    iput v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@5e
    .line 300
    iget v0, p1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    #@60
    iput v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    #@62
    .line 301
    iget v0, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@64
    iput v0, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@66
    .line 277
    :cond_0
    return-void
.end method

.method public static getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .param p0, "suppState"    # Landroid/net/wifi/SupplicantState;

    #@0
    .prologue
    .line 504
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    #@8
    return-object v0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/16 v3, 0x22

    #@3
    const/4 v2, 0x1

    #@4
    .line 531
    if-nez p0, :cond_0

    #@6
    return-object v1

    #@7
    .line 532
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    .line 533
    .local v0, "length":I
    if-le v0, v2, :cond_1

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v1

    #@12
    if-ne v1, v3, :cond_1

    #@14
    add-int/lit8 v1, v0, -0x1

    #@16
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v1

    #@1a
    if-ne v1, v3, :cond_1

    #@1c
    .line 534
    add-int/lit8 v1, v0, -0x1

    #@1e
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 536
    :cond_1
    return-object p0
.end method

.method static valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .locals 2
    .param p0, "stateName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 518
    const-string/jumbo v1, "4WAY_HANDSHAKE"

    #@3
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 519
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    #@b
    return-object v1

    #@c
    .line 522
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@e
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v1

    #@16
    return-object v1

    #@17
    .line 523
    :catch_0
    move-exception v0

    #@18
    .line 524
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    #@1a
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 560
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    #@0
    .prologue
    .line 390
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    #@2
    return v0
.end method

.method public getHiddenSSID()Z
    .locals 1

    #@0
    .prologue
    .line 494
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 495
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@8
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->isHidden()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getIpAddress()I
    .locals 2

    #@0
    .prologue
    .line 482
    const/4 v0, 0x0

    #@1
    .line 483
    .local v0, "result":I
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    #@3
    instance-of v1, v1, Ljava/net/Inet4Address;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 484
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    #@9
    check-cast v1, Ljava/net/Inet4Address;

    #@b
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    #@e
    move-result v0

    #@f
    .line 486
    :cond_0
    return v0
.end method

.method public getLinkSpeed()I
    .locals 1

    #@0
    .prologue
    .line 376
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    #@2
    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 424
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMeteredHint()Z
    .locals 1

    #@0
    .prologue
    .line 434
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    #@2
    return v0
.end method

.method public getNetworkId()I
    .locals 1

    #@0
    .prologue
    .line 459
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    #@2
    return v0
.end method

.method public getRssi()I
    .locals 1

    #@0
    .prologue
    .line 358
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    #@2
    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 318
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 319
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@6
    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 320
    .local v0, "unicode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "\""

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, "\""

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1

    #@2c
    .line 323
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@2e
    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->getHexString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    return-object v1

    #@33
    .line 326
    .end local v0    # "unicode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "<unknown ssid>"

    #@36
    return-object v1
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    #@2
    return-object v0
.end method

.method public getWifiSsid()Landroid/net/wifi/WifiSsid;
    .locals 1

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@2
    return-object v0
.end method

.method public is24GHz()Z
    .locals 1

    #@0
    .prologue
    .line 403
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

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
    .line 411
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    #@2
    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEphemeral()Z
    .locals 1

    #@0
    .prologue
    .line 444
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    #@2
    return v0
.end method

.method public reset()V
    .locals 7

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    const-wide/16 v4, 0x0

    #@4
    const-wide/16 v2, 0x0

    #@6
    const/4 v1, 0x0

    #@7
    .line 250
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    #@a
    .line 251
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    #@d
    .line 252
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    #@10
    .line 253
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    #@13
    .line 254
    const/16 v0, -0x7f

    #@15
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    #@18
    .line 255
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    #@1b
    .line 256
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    #@1e
    .line 257
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    #@21
    .line 258
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setEphemeral(Z)V

    #@24
    .line 259
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    #@26
    .line 260
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    #@28
    .line 261
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    #@2a
    .line 262
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    #@2c
    .line 263
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@2e
    .line 264
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@30
    .line 265
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@32
    .line 266
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@34
    .line 267
    iput v1, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    #@36
    .line 268
    iput v1, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@38
    .line 269
    iput v1, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@3a
    .line 270
    iput v1, p0, Landroid/net/wifi/WifiInfo;->score:I

    #@3c
    .line 249
    return-void
.end method

.method public setBSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "BSSID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 336
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    #@2
    .line 335
    return-void
.end method

.method public setEphemeral(Z)V
    .locals 0
    .param p1, "ephemeral"    # Z

    #@0
    .prologue
    .line 439
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    #@2
    .line 438
    return-void
.end method

.method public setFrequency(I)V
    .locals 0
    .param p1, "frequency"    # I

    #@0
    .prologue
    .line 395
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    #@2
    .line 394
    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    #@0
    .prologue
    .line 478
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    #@2
    .line 477
    return-void
.end method

.method public setLinkSpeed(I)V
    .locals 0
    .param p1, "linkSpeed"    # I

    #@0
    .prologue
    .line 381
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    #@2
    .line 380
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 420
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    #@2
    .line 419
    return-void
.end method

.method public setMeteredHint(Z)V
    .locals 0
    .param p1, "meteredHint"    # Z

    #@0
    .prologue
    .line 429
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    #@2
    .line 428
    return-void
.end method

.method public setNetworkId(I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    .line 449
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    #@2
    .line 448
    return-void
.end method

.method public setRssi(I)V
    .locals 1
    .param p1, "rssi"    # I

    #@0
    .prologue
    .line 363
    const/16 v0, -0x7f

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 364
    const/16 p1, -0x7f

    #@6
    .line 365
    :cond_0
    const/16 v0, 0xc8

    #@8
    if-le p1, v0, :cond_1

    #@a
    .line 366
    const/16 p1, 0xc8

    #@c
    .line 367
    :cond_1
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    #@e
    .line 362
    return-void
.end method

.method public setSSID(Landroid/net/wifi/WifiSsid;)V
    .locals 0
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;

    #@0
    .prologue
    .line 307
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@2
    .line 306
    return-void
.end method

.method public setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;

    #@0
    .prologue
    .line 473
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    #@2
    .line 472
    return-void
.end method

.method setSupplicantState(Ljava/lang/String;)V
    .locals 1
    .param p1, "stateName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 514
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    #@6
    .line 513
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 541
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 542
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v0, "<none>"

    #@8
    .line 544
    .local v0, "none":Ljava/lang/String;
    const-string/jumbo v2, "SSID: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v3

    #@f
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@11
    if-nez v2, :cond_0

    #@13
    const-string/jumbo v2, "<unknown ssid>"

    #@16
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@19
    move-result-object v2

    #@1a
    .line 545
    const-string/jumbo v3, ", BSSID: "

    #@1d
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    move-result-object v3

    #@21
    .line 545
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    #@23
    if-nez v2, :cond_1

    #@25
    move-object v2, v0

    #@26
    .line 544
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    move-result-object v2

    #@2a
    .line 546
    const-string/jumbo v3, ", MAC: "

    #@2d
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    move-result-object v3

    #@31
    .line 546
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    #@33
    if-nez v2, :cond_2

    #@35
    move-object v2, v0

    #@36
    .line 544
    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    move-result-object v2

    #@3a
    .line 547
    const-string/jumbo v3, ", Supplicant state: "

    #@3d
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    move-result-object v2

    #@41
    .line 548
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    #@43
    if-nez v3, :cond_3

    #@45
    .line 544
    .end local v0    # "none":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@48
    move-result-object v2

    #@49
    .line 549
    const-string/jumbo v3, ", RSSI: "

    #@4c
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4f
    move-result-object v2

    #@50
    .line 549
    iget v3, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    #@52
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@55
    move-result-object v2

    #@56
    .line 550
    const-string/jumbo v3, ", Link speed: "

    #@59
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    move-result-object v2

    #@5d
    .line 550
    iget v3, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    #@5f
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@62
    move-result-object v2

    #@63
    .line 550
    const-string/jumbo v3, "Mbps"

    #@66
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@69
    move-result-object v2

    #@6a
    .line 551
    const-string/jumbo v3, ", Frequency: "

    #@6d
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@70
    move-result-object v2

    #@71
    .line 551
    iget v3, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    #@73
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@76
    move-result-object v2

    #@77
    .line 551
    const-string/jumbo v3, "MHz"

    #@7a
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7d
    move-result-object v2

    #@7e
    .line 552
    const-string/jumbo v3, ", Net ID: "

    #@81
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@84
    move-result-object v2

    #@85
    .line 552
    iget v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    #@87
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@8a
    move-result-object v2

    #@8b
    .line 553
    const-string/jumbo v3, ", Metered hint: "

    #@8e
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@91
    move-result-object v2

    #@92
    .line 553
    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    #@94
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@97
    move-result-object v2

    #@98
    .line 554
    const-string/jumbo v3, ", score: "

    #@9b
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9e
    move-result-object v2

    #@9f
    .line 554
    iget v3, p0, Landroid/net/wifi/WifiInfo;->score:I

    #@a1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a4
    move-result-object v3

    #@a5
    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a8
    .line 555
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@ab
    move-result-object v2

    #@ac
    return-object v2

    #@ad
    .line 544
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@af
    goto/16 :goto_0

    #@b1
    .line 545
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    #@b3
    goto/16 :goto_1

    #@b5
    .line 546
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    #@b7
    goto/16 :goto_2

    #@b9
    .line 548
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    #@bb
    goto :goto_3
.end method

.method public updatePacketRates(JJ)V
    .locals 7
    .param p1, "txPackets"    # J
    .param p3, "rxPackets"    # J

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    #@4
    const-wide/16 v2, 0x0

    #@6
    .line 214
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    #@8
    .line 215
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    #@a
    .line 216
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@c
    .line 217
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@e
    .line 218
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    #@10
    cmp-long v0, v0, p1

    #@12
    if-gtz v0, :cond_0

    #@14
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    #@16
    cmp-long v0, v0, p3

    #@18
    if-gtz v0, :cond_0

    #@1a
    .line 219
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@1c
    mul-double/2addr v0, v4

    #@1d
    .line 220
    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    #@1f
    sub-long v2, p1, v2

    #@21
    long-to-double v2, v2

    #@22
    mul-double/2addr v2, v4

    #@23
    .line 219
    add-double/2addr v0, v2

    #@24
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@26
    .line 221
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@28
    mul-double/2addr v0, v4

    #@29
    .line 222
    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    #@2b
    sub-long v2, p3, v2

    #@2d
    long-to-double v2, v2

    #@2e
    mul-double/2addr v2, v4

    #@2f
    .line 221
    add-double/2addr v0, v2

    #@30
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@32
    .line 227
    :goto_0
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    #@34
    .line 228
    iput-wide p3, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    #@36
    .line 212
    return-void

    #@37
    .line 224
    :cond_0
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@39
    .line 225
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@3b
    goto :goto_0
.end method

.method public updatePacketRates(Landroid/net/wifi/WifiLinkLayerStats;)V
    .locals 14
    .param p1, "stats"    # Landroid/net/wifi/WifiLinkLayerStats;

    #@0
    .prologue
    .line 164
    if-eqz p1, :cond_1

    #@2
    .line 165
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_be:J

    #@4
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_bk:J

    #@6
    add-long/2addr v8, v10

    #@7
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vi:J

    #@9
    add-long/2addr v8, v10

    #@a
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vo:J

    #@c
    add-long v4, v8, v10

    #@e
    .line 166
    .local v4, "txgood":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_be:J

    #@10
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_bk:J

    #@12
    add-long/2addr v8, v10

    #@13
    .line 167
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vi:J

    #@15
    .line 166
    add-long/2addr v8, v10

    #@16
    .line 167
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vo:J

    #@18
    .line 166
    add-long v6, v8, v10

    #@1a
    .line 168
    .local v6, "txretries":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_be:J

    #@1c
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_bk:J

    #@1e
    add-long/2addr v8, v10

    #@1f
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vi:J

    #@21
    add-long/2addr v8, v10

    #@22
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vo:J

    #@24
    add-long v0, v8, v10

    #@26
    .line 169
    .local v0, "rxgood":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_be:J

    #@28
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_bk:J

    #@2a
    add-long/2addr v8, v10

    #@2b
    .line 170
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vi:J

    #@2d
    .line 169
    add-long/2addr v8, v10

    #@2e
    .line 170
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vo:J

    #@30
    .line 169
    add-long v2, v8, v10

    #@32
    .line 172
    .local v2, "txbad":J
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    #@34
    cmp-long v8, v8, v2

    #@36
    if-gtz v8, :cond_0

    #@38
    .line 173
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    #@3a
    cmp-long v8, v8, v4

    #@3c
    if-gtz v8, :cond_0

    #@3e
    .line 174
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    #@40
    cmp-long v8, v8, v0

    #@42
    if-gtz v8, :cond_0

    #@44
    .line 175
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    #@46
    cmp-long v8, v8, v6

    #@48
    if-gtz v8, :cond_0

    #@4a
    .line 176
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@4c
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    #@4e
    mul-double/2addr v8, v10

    #@4f
    .line 177
    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    #@51
    sub-long v10, v2, v10

    #@53
    long-to-double v10, v10

    #@54
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    #@56
    mul-double/2addr v10, v12

    #@57
    .line 176
    add-double/2addr v8, v10

    #@58
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@5a
    .line 178
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@5c
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    #@5e
    mul-double/2addr v8, v10

    #@5f
    .line 179
    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    #@61
    sub-long v10, v4, v10

    #@63
    long-to-double v10, v10

    #@64
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    #@66
    mul-double/2addr v10, v12

    #@67
    .line 178
    add-double/2addr v8, v10

    #@68
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@6a
    .line 180
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@6c
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    #@6e
    mul-double/2addr v8, v10

    #@6f
    .line 181
    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    #@71
    sub-long v10, v0, v10

    #@73
    long-to-double v10, v10

    #@74
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    #@76
    mul-double/2addr v10, v12

    #@77
    .line 180
    add-double/2addr v8, v10

    #@78
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@7a
    .line 182
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@7c
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    #@7e
    mul-double/2addr v8, v10

    #@7f
    .line 183
    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    #@81
    sub-long v10, v6, v10

    #@83
    long-to-double v10, v10

    #@84
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    #@86
    mul-double/2addr v10, v12

    #@87
    .line 182
    add-double/2addr v8, v10

    #@88
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@8a
    .line 190
    :goto_0
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    #@8c
    .line 191
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    #@8e
    .line 192
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    #@90
    .line 193
    iput-wide v6, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    #@92
    .line 163
    .end local v0    # "rxgood":J
    .end local v2    # "txbad":J
    .end local v4    # "txgood":J
    .end local v6    # "txretries":J
    :goto_1
    return-void

    #@93
    .line 185
    .restart local v0    # "rxgood":J
    .restart local v2    # "txbad":J
    .restart local v4    # "txgood":J
    .restart local v6    # "txretries":J
    :cond_0
    const-wide/16 v8, 0x0

    #@95
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@97
    .line 186
    const-wide/16 v8, 0x0

    #@99
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@9b
    .line 187
    const-wide/16 v8, 0x0

    #@9d
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@9f
    .line 188
    const-wide/16 v8, 0x0

    #@a1
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@a3
    goto :goto_0

    #@a4
    .line 195
    .end local v0    # "rxgood":J
    .end local v2    # "txbad":J
    .end local v4    # "txgood":J
    .end local v6    # "txretries":J
    :cond_1
    const-wide/16 v8, 0x0

    #@a6
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    #@a8
    .line 196
    const-wide/16 v8, 0x0

    #@aa
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    #@ac
    .line 197
    const-wide/16 v8, 0x0

    #@ae
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    #@b0
    .line 198
    const-wide/16 v8, 0x0

    #@b2
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    #@b4
    .line 199
    const-wide/16 v8, 0x0

    #@b6
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@b8
    .line 200
    const-wide/16 v8, 0x0

    #@ba
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@bc
    .line 201
    const-wide/16 v8, 0x0

    #@be
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@c0
    .line 202
    const-wide/16 v8, 0x0

    #@c2
    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@c4
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 565
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 566
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 567
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 568
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 569
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 570
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@1d
    .line 571
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    #@1f
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@26
    .line 575
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 576
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 577
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    #@2f
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    #@32
    .line 581
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@37
    .line 582
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c
    .line 583
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    #@3e
    if-eqz v0, :cond_2

    #@40
    move v0, v1

    #@41
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 584
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    #@46
    if-eqz v0, :cond_3

    #@48
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 585
    iget v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    #@4d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 586
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@52
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@55
    .line 587
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@57
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@5a
    .line 588
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@5c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@5f
    .line 589
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@61
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    #@64
    .line 590
    iget v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@69
    .line 591
    iget v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    #@6b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    .line 592
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    #@70
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SupplicantState;->writeToParcel(Landroid/os/Parcel;I)V

    #@73
    .line 564
    return-void

    #@74
    .line 573
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@77
    goto :goto_0

    #@78
    .line 579
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@7b
    goto :goto_1

    #@7c
    :cond_2
    move v0, v2

    #@7d
    .line 583
    goto :goto_2

    #@7e
    :cond_3
    move v1, v2

    #@7f
    .line 584
    goto :goto_3
.end method
