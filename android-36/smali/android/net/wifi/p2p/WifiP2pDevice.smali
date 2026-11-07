.class public Landroid/net/wifi/p2p/WifiP2pDevice;
.super Ljava/lang/Object;
.source "WifiP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist AVAILABLE:I = 0x3

.field public static final whitelist CONNECTED:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEVICE_CAPAB_CLIENT_DISCOVERABILITY:I = 0x2

.field private static final greylist-max-o DEVICE_CAPAB_CONCURRENT_OPER:I = 0x4

.field private static final greylist-max-o DEVICE_CAPAB_DEVICE_LIMIT:I = 0x10

.field private static final greylist-max-o DEVICE_CAPAB_INFRA_MANAGED:I = 0x8

.field private static final greylist-max-o DEVICE_CAPAB_INVITATION_PROCEDURE:I = 0x20

.field private static final greylist-max-o DEVICE_CAPAB_SERVICE_DISCOVERY:I = 0x1

.field public static final whitelist FAILED:I = 0x2

.field private static final greylist-max-o GROUP_CAPAB_CROSS_CONN:I = 0x10

.field private static final greylist-max-o GROUP_CAPAB_GROUP_FORMATION:I = 0x40

.field private static final greylist-max-o GROUP_CAPAB_GROUP_LIMIT:I = 0x4

.field private static final greylist-max-o GROUP_CAPAB_GROUP_OWNER:I = 0x1

.field private static final greylist-max-o GROUP_CAPAB_INTRA_BSS_DIST:I = 0x8

.field private static final greylist-max-o GROUP_CAPAB_PERSISTENT_GROUP:I = 0x2

.field private static final greylist-max-o GROUP_CAPAB_PERSISTENT_RECONN:I = 0x20

.field public static final whitelist INVITED:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiP2pDevice"

.field public static final whitelist UNAVAILABLE:I = 0x4

.field private static final greylist-max-o WPS_CONFIG_DISPLAY:I = 0x8

.field private static final greylist-max-o WPS_CONFIG_KEYPAD:I = 0x100

.field private static final greylist-max-o WPS_CONFIG_PUSHBUTTON:I = 0x80

.field private static final greylist-max-o detailedDevicePattern:Ljava/util/regex/Pattern;

.field private static final greylist-max-o threeTokenPattern:Ljava/util/regex/Pattern;

.field private static final greylist-max-o twoTokenPattern:Ljava/util/regex/Pattern;


# instance fields
.field public whitelist deviceAddress:Ljava/lang/String;

.field public greylist deviceCapability:I

.field public whitelist deviceName:Ljava/lang/String;

.field public blacklist dirInfo:Landroid/net/wifi/p2p/WifiP2pDirInfo;

.field public greylist groupCapability:I

.field private blacklist mInterfaceMacAddress:Landroid/net/MacAddress;

.field private blacklist mIpAddress:Ljava/net/InetAddress;

.field private blacklist mPairingBootstrappingMethods:I

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVendorElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist primaryDeviceType:Ljava/lang/String;

.field public whitelist secondaryDeviceType:Ljava/lang/String;

.field public whitelist status:I

.field public greylist wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

.field public greylist wpsConfigMethodsSupported:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmInterfaceMacAddress(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/MacAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mInterfaceMacAddress:Landroid/net/MacAddress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIpAddress(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/net/InetAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIpAddress:Ljava/net/InetAddress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPairingBootstrappingMethods(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mPairingBootstrappingMethods:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVendorData(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorData:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVendorElements(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorElements:Ljava/util/List;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 167
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) (\\d+ )?p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) pri_dev_type=(\\d+-[0-9a-fA-F]+-\\d+) name=\'(.*)\' config_methods=(0x[0-9a-fA-F]+) dev_capab=(0x[0-9a-fA-F]+) group_capab=(0x[0-9a-fA-F]+)( wfd_dev_info=0x([0-9a-fA-F]{12}))?( wfd_r2_dev_info=0x([0-9a-fA-F]{4}))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    .line 185
    const-string v0, "(p2p_dev_addr=)?((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->twoTokenPattern:Ljava/util/regex/Pattern;

    .line 194
    const-string v0, "(?:[0-9a-f]{2}:){5}[0-9a-f]{2} p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->threeTokenPattern:Ljava/util/regex/Pattern;

    .line 679
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 152
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorData:Ljava/util/List;

    .line 225
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 152
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorData:Ljava/util/List;

    .line 627
    if-eqz p1, :cond_63

    .line 628
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 629
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 630
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->mInterfaceMacAddress:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mInterfaceMacAddress:Landroid/net/MacAddress;

    .line 631
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->mIpAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIpAddress:Ljava/net/InetAddress;

    .line 632
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 633
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 634
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 635
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 636
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 637
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 638
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_49

    .line 639
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 641
    :cond_49
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorElements:Ljava/util/List;

    if-eqz v0, :cond_56

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorElements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorElements:Ljava/util/List;

    .line 644
    :cond_56
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorData:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorData:Ljava/util/List;

    .line 645
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->mPairingBootstrappingMethods:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mPairingBootstrappingMethods:I

    .line 647
    :cond_63
    return-void
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;)V
    .registers 13
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 152
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorData:Ljava/util/List;

    .line 246
    const-string v1, "[ \n]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const-string v3, "Malformed supplicant event"

    const/4 v4, 0x1

    if-lt v2, v4, :cond_103

    .line 253
    array-length v2, v1

    packed-switch v2, :pswitch_data_10a

    .line 273
    sget-object v2, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 274
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 278
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 279
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 280
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 281
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 282
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 283
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 284
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_f0

    .line 285
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "str":Ljava/lang/String;
    if-nez v5, :cond_ad

    goto/16 :goto_f0

    .line 266
    .end local v2    # "match":Ljava/util/regex/Matcher;
    .end local v5    # "str":Ljava/lang/String;
    :pswitch_77
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->threeTokenPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 267
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 270
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 271
    return-void

    .line 268
    :cond_8a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    .end local v0    # "match":Ljava/util/regex/Matcher;
    :pswitch_90
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->twoTokenPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 260
    .restart local v0    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 263
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 264
    return-void

    .line 261
    :cond_a4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    .end local v0    # "match":Ljava/util/regex/Matcher;
    :pswitch_aa
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 257
    return-void

    .line 287
    .restart local v2    # "match":Ljava/util/regex/Matcher;
    .restart local v5    # "str":Ljava/lang/String;
    :cond_ad
    new-instance v7, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v8

    .line 288
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v9

    .line 289
    const/16 v10, 0xc

    invoke-virtual {v5, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v7, v8, v9, v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    iput-object v7, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 290
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f0

    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 291
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "r2str":Ljava/lang/String;
    if-nez v4, :cond_e3

    goto :goto_f0

    .line 293
    :cond_e3
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setR2DeviceType(I)Z

    .line 299
    .end local v4    # "r2str":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    :cond_f0
    :goto_f0
    aget-object v0, v1, v6

    const-string v4, "P2P-DEVICE-FOUND"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 300
    iput v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 302
    :cond_fc
    return-void

    .line 275
    :cond_fd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    .end local v2    # "match":Ljava/util/regex/Matcher;
    :cond_103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_90
        :pswitch_77
    .end packed-switch
.end method

.method private greylist-max-o parseHex(Ljava/lang/String;)I
    .registers 6
    .param p1, "hexString"    # Ljava/lang/String;

    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "num":I
    const-string v1, "0x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "0X"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 722
    :cond_11
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 726
    :cond_16
    const/16 v1, 0x10

    :try_start_18
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1c} :catch_1e

    move v0, v1

    .line 729
    goto :goto_37

    .line 727
    :catch_1e
    move-exception v1

    .line 728
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse hex string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiP2pDevice"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_37
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 582
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 583
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 585
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 586
    .local v1, "other":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v1, :cond_1d

    iget-object v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v3, :cond_14

    goto :goto_1d

    .line 589
    :cond_14
    iget-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 587
    :cond_1d
    :goto_1d
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public blacklist getInterfaceMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 437
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mInterfaceMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getIpAddress()Ljava/net/InetAddress;
    .registers 2

    .line 465
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIpAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public blacklist getPairingBootStrappingMethods()I
    .registers 2

    .line 551
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 554
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mPairingBootstrappingMethods:I

    return v0

    .line 552
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

    .line 213
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 216
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorData:Ljava/util/List;

    return-object v0

    .line 214
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getVendorElements()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorElements:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 427
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorElements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getWfdInfo()Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    .registers 2

    .line 307
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 594
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isDeviceLimit()Z
    .registers 2

    .line 337
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isGroupLimit()Z
    .registers 2

    .line 347
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isGroupOwner()Z
    .registers 3

    .line 342
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public greylist-max-o isInvitationCapable()Z
    .registers 2

    .line 332
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isOpportunisticBootstrappingMethodSupported()Z
    .registers 3

    .line 483
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 486
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mPairingBootstrappingMethods:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1

    .line 484
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isPassphraseDisplayBootstrappingMethodSupported()Z
    .registers 2

    .line 511
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 514
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mPairingBootstrappingMethods:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 512
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isPassphraseKeypadBootstrappingMethodSupported()Z
    .registers 2

    .line 539
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 542
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mPairingBootstrappingMethods:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 540
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isPinCodeDisplayBootstrappingMethodSupported()Z
    .registers 2

    .line 497
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 500
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mPairingBootstrappingMethods:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 498
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isPinCodeKeypadBootstrappingMethodSupported()Z
    .registers 2

    .line 525
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 528
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mPairingBootstrappingMethods:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 526
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isServiceDiscoveryCapable()Z
    .registers 3

    .line 327
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist setInterfaceMacAddress(Landroid/net/MacAddress;)V
    .registers 2
    .param p1, "interfaceAddress"    # Landroid/net/MacAddress;

    .line 445
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mInterfaceMacAddress:Landroid/net/MacAddress;

    .line 446
    return-void
.end method

.method public blacklist setIpAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "ipAddress"    # Ljava/net/InetAddress;

    .line 473
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIpAddress:Ljava/net/InetAddress;

    .line 474
    return-void
.end method

.method public blacklist setPairingBootStrappingMethods(I)V
    .registers 3
    .param p1, "methods"    # I

    .line 566
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 569
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mPairingBootstrappingMethods:I

    .line 570
    return-void

    .line 567
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 408
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 411
    if-eqz p1, :cond_b

    .line 414
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorData:Ljava/util/List;

    .line 415
    return-void

    .line 412
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist setVendorElements(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)V"
        }
    .end annotation

    .line 389
    .local p1, "vendorElements":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult$InformationElement;>;"
    if-nez p1, :cond_6

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorElements:Ljava/util/List;

    .line 391
    return-void

    .line 393
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorElements:Ljava/util/List;

    .line 394
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 599
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 600
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    const-string v1, "\n deviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    const-string v1, "\n interfaceMacAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 603
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mInterfaceMacAddress:Landroid/net/MacAddress;

    const-string v3, "none"

    if-nez v2, :cond_29

    move-object v2, v3

    goto :goto_2f

    :cond_29
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mInterfaceMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    const-string v1, "\n ipAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 605
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIpAddress:Ljava/net/InetAddress;

    if-nez v2, :cond_3d

    goto :goto_43

    :cond_3d
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    :goto_43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    const-string v1, "\n primary type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    const-string v1, "\n secondary type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    const-string v1, "\n wps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 609
    const-string v1, "\n grpcapab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 610
    const-string v1, "\n devcapab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 611
    const-string v1, "\n status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 612
    const-string v1, "\n wfdInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 613
    const-string v1, "\n vendorElements: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorElements:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 614
    const-string v1, "\n vendorData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorData:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 615
    const-string v1, "\n Pairing Bootstrapping Methods: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mPairingBootstrappingMethods:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 616
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist update(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 358
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 359
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 360
    return-void
.end method

.method public greylist-max-o updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 364
    if-eqz p1, :cond_41

    .line 367
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 370
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 373
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->mInterfaceMacAddress:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mInterfaceMacAddress:Landroid/net/MacAddress;

    .line 374
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 375
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 376
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 377
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 378
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 379
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 380
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 381
    return-void

    .line 371
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist wpsDisplaySupported()Z
    .registers 2

    .line 322
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist wpsKeypadSupported()Z
    .registers 2

    .line 317
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist wpsPbcSupported()Z
    .registers 2

    .line 312
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 652
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mInterfaceMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 655
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIpAddress:Ljava/net/InetAddress;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 656
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 657
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_25

    .line 659
    :cond_22
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 661
    :goto_25
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_50

    .line 668
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_53

    .line 671
    :cond_50
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    :goto_53
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorElements:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 674
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mVendorData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 675
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->mPairingBootstrappingMethods:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    return-void
.end method
