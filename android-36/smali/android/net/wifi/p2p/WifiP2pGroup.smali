.class public Landroid/net/wifi/p2p/WifiP2pGroup;
.super Ljava/lang/Object;
.source "WifiP2pGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pGroup$P2pGroupClientEapolIpAddressData;,
        Landroid/net/wifi/p2p/WifiP2pGroup$SecurityType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NETWORK_ID_PERSISTENT:I = -0x2

.field public static final whitelist NETWORK_ID_TEMPORARY:I = -0x1

.field public static final whitelist SECURITY_TYPE_UNKNOWN:I = -0x1

.field public static final whitelist SECURITY_TYPE_WPA2_PSK:I = 0x0

.field public static final whitelist SECURITY_TYPE_WPA3_COMPATIBILITY:I = 0x1

.field public static final whitelist SECURITY_TYPE_WPA3_SAE:I = 0x2

.field public static final greylist TEMPORARY_NET_ID:I = -0x1

.field private static final greylist-max-o groupStartedPattern:Ljava/util/regex/Pattern;


# instance fields
.field public greylist interfaceAddress:[B

.field private greylist-max-o mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFrequency:I

.field private greylist-max-o mInterface:Ljava/lang/String;

.field private greylist-max-o mIsGroupOwner:Z

.field private greylist-max-o mNetId:I

.field private greylist-max-o mNetworkName:Ljava/lang/String;

.field private greylist-max-o mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private greylist-max-o mPassphrase:Ljava/lang/String;

.field private blacklist mSecurityType:I

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist p2pClientEapolIpInfo:Landroid/net/wifi/p2p/WifiP2pGroup$P2pGroupClientEapolIpAddressData;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 189
    const-string v0, "ssid=\"(.+)\" freq=(\\d+) (?:psk=)?([0-9a-fA-F]{64})?(?:passphrase=)?(?:\"(.{0,63})\")? go_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) ?(\\[PERSISTENT\\])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroup;->groupStartedPattern:Ljava/util/regex/Pattern;

    .line 592
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mVendorData:Ljava/util/List;

    .line 199
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 5
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mVendorData:Ljava/util/List;

    .line 552
    if-eqz p1, :cond_7c

    .line 553
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 554
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 555
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    .line 556
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .local v1, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 557
    .end local v1    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_41
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 558
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    .line 559
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 560
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 561
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getSecurityType()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mSecurityType:I

    .line 563
    :cond_65
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFrequency:I

    .line 564
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getVendorData()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mVendorData:Ljava/util/List;

    .line 568
    :cond_7c
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 13
    .param p1, "supplicantEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mVendorData:Ljava/util/List;

    .line 221
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    const-string v3, "Malformed supplicant event"

    if-lt v1, v2, :cond_e0

    .line 227
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v4, "P2P-GROUP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, -0x2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_76

    .line 228
    aget-object v1, v0, v6

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    .line 229
    aget-object v1, v0, v5

    const-string v2, "GO"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    .line 231
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pGroup;->groupStartedPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 232
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_45

    .line 233
    return-void

    .line 236
    :cond_45
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 238
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFrequency:I

    .line 241
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 242
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 243
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_72

    .line 244
    iput v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    goto :goto_75

    .line 246
    :cond_72
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 248
    .end local v1    # "match":Ljava/util/regex/Matcher;
    :goto_75
    goto :goto_d9

    :cond_76
    aget-object v2, v0, v1

    const-string v7, "P2P-INVITATION-RECEIVED"

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 249
    const/4 v2, 0x0

    .line 250
    .local v2, "sa":Ljava/lang/String;
    iput v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 251
    array-length v3, v0

    move v4, v1

    :goto_85
    if-ge v4, v3, :cond_d8

    aget-object v7, v0, v4

    .line 252
    .local v7, "token":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, "nameValue":[Ljava/lang/String;
    array-length v9, v8

    if-eq v9, v5, :cond_93

    goto :goto_d5

    .line 255
    :cond_93
    aget-object v9, v8, v1

    const-string v10, "sa"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ae

    .line 256
    aget-object v2, v8, v6

    .line 259
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v9}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 260
    .local v9, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    aget-object v10, v8, v6

    iput-object v10, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 261
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    goto :goto_d5

    .line 265
    .end local v9    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_ae
    aget-object v9, v8, v1

    const-string v10, "go_dev_addr"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c2

    .line 266
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    aget-object v10, v8, v6

    invoke-direct {v9, v10}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 267
    goto :goto_d5

    .line 270
    :cond_c2
    aget-object v9, v8, v1

    const-string v10, "persistent"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d5

    .line 271
    aget-object v9, v8, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 272
    nop

    .line 251
    .end local v7    # "token":Ljava/lang/String;
    .end local v8    # "nameValue":[Ljava/lang/String;
    :cond_d5
    :goto_d5
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    .line 275
    .end local v2    # "sa":Ljava/lang/String;
    :cond_d8
    nop

    .line 278
    :goto_d9
    return-void

    .line 276
    :cond_da
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_e0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public greylist-max-o addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 321
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 322
    .local v1, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-void

    .line 323
    .end local v1    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_19
    goto :goto_6

    .line 324
    :cond_1a
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    return-void
.end method

.method public greylist-max-o addClient(Ljava/lang/String;)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .line 316
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 317
    return-void
.end method

.method public greylist-max-o contains(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 387
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClientList()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFrequency()I
    .registers 2

    .line 457
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFrequency:I

    return v0
.end method

.method public whitelist getGroupOwnerBssid()Landroid/net/MacAddress;
    .registers 3

    .line 518
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 521
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getSecurityType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->interfaceAddress:[B

    if-eqz v0, :cond_1e

    .line 523
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->interfaceAddress:[B

    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0

    return-object v0

    .line 525
    :cond_1e
    const/4 v0, 0x0

    return-object v0

    .line 519
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getInterface()Ljava/lang/String;
    .registers 2

    .line 441
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNetworkId()I
    .registers 2

    .line 446
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    return v0
.end method

.method public whitelist getNetworkName()Ljava/lang/String;
    .registers 2

    .line 290
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2

    .line 311
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public whitelist getPassphrase()Ljava/lang/String;
    .registers 2

    .line 406
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSecurityType()I
    .registers 2

    .line 427
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 430
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mSecurityType:I

    return v0

    .line 428
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 477
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 480
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mVendorData:Ljava/util/List;

    return-object v0

    .line 478
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist isClientListEmpty()Z
    .registers 2

    .line 378
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isGroupOwner()Z
    .registers 2

    .line 301
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    return v0
.end method

.method public greylist-max-o removeClient(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 372
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o removeClient(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist setClientInterfaceMacAddress(Ljava/lang/String;Landroid/net/MacAddress;)V
    .registers 7
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "interfaceMacAddress"    # Landroid/net/MacAddress;

    .line 330
    const-string v0, "setClientInterfaceMacAddress"

    if-nez p2, :cond_a

    .line 331
    const-string v1, "cannot set null interface mac address"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    .line 334
    :cond_a
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 335
    .local v2, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " interfaceAddress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v2, p2}, Landroid/net/wifi/p2p/WifiP2pDevice;->setInterfaceMacAddress(Landroid/net/MacAddress;)V

    .line 339
    goto :goto_4d

    .line 341
    .end local v2    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4c
    goto :goto_10

    .line 342
    :cond_4d
    :goto_4d
    return-void
.end method

.method public blacklist setClientIpAddress(Landroid/net/MacAddress;Ljava/net/InetAddress;)V
    .registers 7
    .param p1, "interfaceMacAddress"    # Landroid/net/MacAddress;
    .param p2, "ipAddress"    # Ljava/net/InetAddress;

    .line 346
    const-string v0, "setClientIpAddress"

    if-nez p1, :cond_a

    .line 347
    const-string v1, "cannot set IP address with null interface mac address"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void

    .line 350
    :cond_a
    if-nez p2, :cond_12

    .line 351
    const-string v1, "Null IP - Failed to set IP address in WifiP2pDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 354
    :cond_12
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 355
    .local v2, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->getInterfaceMacAddress()Landroid/net/MacAddress;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update the IP address device: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " interfaceAddress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " IP: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v2, p2}, Landroid/net/wifi/p2p/WifiP2pDevice;->setIpAddress(Ljava/net/InetAddress;)V

    .line 360
    goto :goto_67

    .line 362
    .end local v2    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_66
    goto :goto_18

    .line 363
    :cond_67
    :goto_67
    return-void
.end method

.method public blacklist setFrequency(I)V
    .registers 2
    .param p1, "freq"    # I

    .line 462
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFrequency:I

    .line 463
    return-void
.end method

.method public greylist setInterface(Ljava/lang/String;)V
    .registers 2
    .param p1, "intf"    # Ljava/lang/String;

    .line 436
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public greylist setIsGroupOwner(Z)V
    .registers 2
    .param p1, "isGo"    # Z

    .line 296
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    .line 297
    return-void
.end method

.method public greylist setNetworkId(I)V
    .registers 2
    .param p1, "netId"    # I

    .line 452
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 453
    return-void
.end method

.method public greylist-max-o setNetworkName(Ljava/lang/String;)V
    .registers 2
    .param p1, "networkName"    # Ljava/lang/String;

    .line 282
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public greylist-max-o setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 2
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 306
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 307
    return-void
.end method

.method public greylist-max-o setPassphrase(Ljava/lang/String;)V
    .registers 2
    .param p1, "passphrase"    # Ljava/lang/String;

    .line 397
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public blacklist setSecurityType(I)V
    .registers 2
    .param p1, "securityType"    # I

    .line 416
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mSecurityType:I

    .line 417
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

    .line 494
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 497
    if-eqz p1, :cond_10

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mVendorData:Ljava/util/List;

    .line 501
    return-void

    .line 498
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 529
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 530
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    const-string v1, "\n isGO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 532
    const-string v1, "\n GO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 533
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 534
    .local v2, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v3, "\n Client: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 535
    .end local v2    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    goto :goto_2c

    .line 536
    :cond_42
    const-string v1, "\n interface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    const-string v1, "\n networkId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 538
    const-string v1, "\n securityType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mSecurityType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 540
    const-string v1, "\n frequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 541
    const-string v1, "\n vendorData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mVendorData:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 572
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 574
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 575
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 577
    .local v1, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 578
    .end local v1    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    goto :goto_1e

    .line 579
    :cond_2e
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 583
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mSecurityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    :cond_4e
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 587
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mVendorData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 589
    :cond_5e
    return-void
.end method
