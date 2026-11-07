.class public final Landroid/net/wifi/SoftApInfo;
.super Ljava/lang/Object;
.source "SoftApInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CHANNEL_WIDTH_160MHZ:I = 0x6

.field public static final whitelist CHANNEL_WIDTH_20MHZ:I = 0x2

.field public static final whitelist CHANNEL_WIDTH_20MHZ_NOHT:I = 0x1

.field public static final whitelist CHANNEL_WIDTH_2160MHZ:I = 0x7

.field public static final whitelist CHANNEL_WIDTH_320MHZ:I = 0xb

.field public static final whitelist CHANNEL_WIDTH_40MHZ:I = 0x3

.field public static final whitelist CHANNEL_WIDTH_4320MHZ:I = 0x8

.field public static final whitelist CHANNEL_WIDTH_6480MHZ:I = 0x9

.field public static final whitelist CHANNEL_WIDTH_80MHZ:I = 0x4

.field public static final whitelist CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x5

.field public static final whitelist CHANNEL_WIDTH_8640MHZ:I = 0xa

.field public static final whitelist CHANNEL_WIDTH_AUTO:I = -0x1

.field public static final whitelist CHANNEL_WIDTH_INVALID:I

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/SoftApInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mApInstanceIdentifier:Ljava/lang/String;

.field private blacklist mBandwidth:I

.field private blacklist mBssid:Landroid/net/MacAddress;

.field private blacklist mFrequency:I

.field private blacklist mIdleShutdownTimeoutMillis:J

.field private blacklist mMldAddress:Landroid/net/MacAddress;

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWifiStandard:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmApInstanceIdentifier(Landroid/net/wifi/SoftApInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBandwidth(Landroid/net/wifi/SoftApInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBssid(Landroid/net/wifi/SoftApInfo;Landroid/net/MacAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFrequency(Landroid/net/wifi/SoftApInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIdleShutdownTimeoutMillis(Landroid/net/wifi/SoftApInfo;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMldAddress(Landroid/net/wifi/SoftApInfo;Landroid/net/MacAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/SoftApInfo;->mMldAddress:Landroid/net/MacAddress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVendorData(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/SoftApInfo;->mVendorData:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifiStandard(Landroid/net/wifi/SoftApInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 426
    new-instance v0, Landroid/net/wifi/SoftApInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/SoftApInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/SoftApInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    .line 145
    iput v0, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    .line 159
    iput v0, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApInfo;->mVendorData:Ljava/util/List;

    .line 403
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/SoftApInfo;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/SoftApInfo;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    .line 145
    iput v0, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    .line 159
    iput v0, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApInfo;->mVendorData:Ljava/util/List;

    .line 387
    if-eqz p1, :cond_37

    .line 388
    iget v0, p1, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    iput v0, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    .line 389
    iget v0, p1, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    iput v0, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    .line 390
    iget-object v0, p1, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    .line 391
    iget v0, p1, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    iput v0, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    .line 392
    iget-object v0, p1, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    .line 393
    iget-wide v0, p1, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    iput-wide v0, p0, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/SoftApInfo;->mVendorData:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApInfo;->mVendorData:Ljava/util/List;

    .line 395
    iget-object v0, p1, Landroid/net/wifi/SoftApInfo;->mMldAddress:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/wifi/SoftApInfo;->mMldAddress:Landroid/net/MacAddress;

    .line 397
    :cond_37
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 464
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 465
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/SoftApInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 466
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/SoftApInfo;

    .line 467
    .local v1, "softApInfo":Landroid/net/wifi/SoftApInfo;
    iget v3, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    iget v4, v1, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    if-ne v3, v4, :cond_50

    iget v3, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    iget v4, v1, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    if-ne v3, v4, :cond_50

    iget-object v3, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    .line 469
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget v3, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    iget v4, v1, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    if-ne v3, v4, :cond_50

    iget-object v3, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    .line 471
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-wide v3, p0, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    iget-wide v5, v1, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_50

    iget-object v3, p0, Landroid/net/wifi/SoftApInfo;->mVendorData:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/SoftApInfo;->mVendorData:Ljava/util/List;

    .line 473
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Landroid/net/wifi/SoftApInfo;->mMldAddress:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/net/wifi/SoftApInfo;->mMldAddress:Landroid/net/MacAddress;

    .line 474
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    goto :goto_51

    :cond_50
    move v0, v2

    .line 467
    :goto_51
    return v0
.end method

.method public blacklist getApInstanceIdentifier()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAutoShutdownTimeoutMillis()J
    .registers 3

    .line 320
    iget-wide v0, p0, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    return-wide v0
.end method

.method public whitelist getBandwidth()I
    .registers 2

    .line 200
    iget v0, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    return v0
.end method

.method public whitelist getBssid()Landroid/net/MacAddress;
    .registers 2

    .line 217
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 220
    invoke-virtual {p0}, Landroid/net/wifi/SoftApInfo;->getBssidInternal()Landroid/net/MacAddress;

    move-result-object v0

    return-object v0

    .line 218
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getBssidInternal()Landroid/net/MacAddress;
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getFrequency()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    return v0
.end method

.method public whitelist getMldAddress()Landroid/net/MacAddress;
    .registers 2

    .line 368
    iget-object v0, p0, Landroid/net/wifi/SoftApInfo;->mMldAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getVendorData()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation

    .line 355
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 358
    iget-object v0, p0, Landroid/net/wifi/SoftApInfo;->mVendorData:Ljava/util/List;

    return-object v0

    .line 356
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getWifiStandard()I
    .registers 2

    .line 265
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 268
    invoke-virtual {p0}, Landroid/net/wifi/SoftApInfo;->getWifiStandardInternal()I

    move-result v0

    return v0

    .line 266
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getWifiStandardInternal()I
    .registers 2

    .line 275
    iget v0, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 479
    iget v0, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    iget v0, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    iget-wide v6, p0, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    .line 480
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/SoftApInfo;->mVendorData:Ljava/util/List;

    iget-object v8, p0, Landroid/net/wifi/SoftApInfo;->mMldAddress:Landroid/net/MacAddress;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 479
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setApInstanceIdentifier(Ljava/lang/String;)V
    .registers 2
    .param p1, "apInstanceIdentifier"    # Ljava/lang/String;

    .line 283
    iput-object p1, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public blacklist setAutoShutdownTimeoutMillis(J)V
    .registers 3
    .param p1, "idleShutdownTimeoutMillis"    # J

    .line 306
    iput-wide p1, p0, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    .line 307
    return-void
.end method

.method public blacklist setBandwidth(I)V
    .registers 2
    .param p1, "bandwidth"    # I

    .line 208
    iput p1, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    .line 209
    return-void
.end method

.method public blacklist setBssid(Landroid/net/MacAddress;)V
    .registers 3
    .param p1, "bssid"    # Landroid/net/MacAddress;

    .line 242
    if-eqz p1, :cond_18

    .line 243
    sget-object v0, Landroid/net/wifi/WifiManager;->ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 244
    sget-object v0, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 246
    :cond_18
    iput-object p1, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    .line 247
    return-void
.end method

.method public blacklist setFrequency(I)V
    .registers 2
    .param p1, "freq"    # I

    .line 185
    iput p1, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    .line 186
    return-void
.end method

.method public blacklist setMldAddress(Landroid/net/MacAddress;)V
    .registers 2
    .param p1, "mldAddress"    # Landroid/net/MacAddress;

    .line 380
    iput-object p1, p0, Landroid/net/wifi/SoftApInfo;->mMldAddress:Landroid/net/MacAddress;

    .line 381
    return-void
.end method

.method public whitelist setVendorData(Ljava/util/List;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)V"
        }
    .end annotation

    .line 335
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 338
    if-eqz p1, :cond_10

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApInfo;->mVendorData:Ljava/util/List;

    .line 342
    return-void

    .line 339
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist setWifiStandard(I)V
    .registers 2
    .param p1, "wifiStandard"    # I

    .line 256
    iput p1, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    .line 257
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "SoftApInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v1, "bandwidth= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    const-string v1, ", frequency= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 452
    iget-object v1, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    if-eqz v1, :cond_33

    const-string v1, ",bssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_33
    const-string v1, ", wifiStandard= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    const-string v1, ", mApInstanceIdentifier= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v1, ", mIdleShutdownTimeoutMillis= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 456
    const-string v1, ", mVendorData= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApInfo;->mVendorData:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 457
    iget-object v1, p0, Landroid/net/wifi/SoftApInfo;->mMldAddress:Landroid/net/MacAddress;

    if-eqz v1, :cond_72

    const-string v1, ",mMldAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApInfo;->mMldAddress:Landroid/net/MacAddress;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_72
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 414
    iget v0, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v0, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-object v0, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 417
    iget v0, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget-object v0, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget-wide v0, p0, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 420
    iget-object v0, p0, Landroid/net/wifi/SoftApInfo;->mVendorData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 421
    iget-object v0, p0, Landroid/net/wifi/SoftApInfo;->mMldAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 422
    return-void
.end method
