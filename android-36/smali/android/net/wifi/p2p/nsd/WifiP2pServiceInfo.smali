.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
.super Ljava/lang/Object;
.source "WifiP2pServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SERVICE_TYPE_ALL:I = 0x0

.field public static final whitelist SERVICE_TYPE_BONJOUR:I = 0x1

.field public static final whitelist SERVICE_TYPE_UPNP:I = 0x2

.field public static final whitelist SERVICE_TYPE_VENDOR_SPECIFIC:I = 0xff

.field public static final greylist-max-o SERVICE_TYPE_WS_DISCOVERY:I = 0x3


# instance fields
.field private greylist-max-p mQueryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

.field private blacklist mUsdSessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 294
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;)V
    .registers 3
    .param p1, "usdConfig"    # Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 164
    const-string v0, "usd based service config cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    .line 166
    return-void

    .line 162
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected constructor greylist-max-p <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p1, "queryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    if-eqz p1, :cond_8

    .line 132
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    .line 133
    return-void

    .line 130
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "query list cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Ljava/util/List;Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;I)V
    .registers 4
    .param p2, "usdConfig"    # Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    .param p3, "usdSessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;",
            "I)V"
        }
    .end annotation

    .line 143
    .local p1, "queryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    .line 145
    iput-object p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    .line 146
    iput p3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mUsdSessionId:I

    .line 147
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;ILandroid/net/wifi/p2p/nsd/WifiP2pServiceInfo-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;-><init>(Ljava/util/List;Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;I)V

    return-void
.end method

.method static greylist-max-o bin2HexStr([B)Ljava/lang/String;
    .registers 8
    .param p0, "data"    # [B

    .line 233
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    .local v0, "sb":Ljava/lang/StringBuffer;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_2b

    aget-byte v3, p0, v2

    .line 236
    .local v3, "b":B
    const/4 v4, 0x0

    .line 238
    .local v4, "s":Ljava/lang/String;
    and-int/lit16 v5, v3, 0xff

    :try_start_e
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_25

    .line 242
    .end local v4    # "s":Ljava/lang/String;
    .local v5, "s":Ljava/lang/String;
    nop

    .line 244
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1f

    .line 245
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 247
    :cond_1f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    .end local v3    # "b":B
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 239
    .restart local v3    # "b":B
    .restart local v4    # "s":Ljava/lang/String;
    :catch_25
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    const/4 v2, 0x0

    return-object v2

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "b":B
    .end local v4    # "s":Ljava/lang/String;
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 254
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 255
    return v0

    .line 257
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 258
    return v2

    .line 265
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 266
    .local v1, "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    iget-object v4, v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    .line 267
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 266
    :goto_23
    return v0
.end method

.method public greylist-max-o getSupplicantQueryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUsdSessionId()I
    .registers 2

    .line 211
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mUsdSessionId:I

    return v0
.end method

.method public whitelist getWifiP2pUsdBasedServiceConfig()Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    .registers 2

    .line 191
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 194
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    return-object v0

    .line 192
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 272
    const/16 v0, 0x11

    .line 273
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_b

    move v2, v3

    goto :goto_11

    :cond_b
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v1, v2

    .line 274
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    if-nez v2, :cond_19

    goto :goto_1f

    :cond_19
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1f
    add-int/2addr v0, v3

    .line 275
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist setUsdSessionId(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 222
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mUsdSessionId:I

    .line 223
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 285
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 286
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 287
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 288
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mUsdSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    :cond_1b
    return-void
.end method
