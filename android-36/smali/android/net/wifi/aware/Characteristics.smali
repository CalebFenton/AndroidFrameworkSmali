.class public final Landroid/net/wifi/aware/Characteristics;
.super Ljava/lang/Object;
.source "Characteristics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/Characteristics$WifiAwarePairingCipherSuites;,
        Landroid/net/wifi/aware/Characteristics$WifiAwareDataPathCipherSuites;,
        Landroid/net/wifi/aware/Characteristics$SupportedRxChains;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KEY_IS_INSTANT_COMMUNICATION_MODE_SUPPORTED:Ljava/lang/String; = "key_is_instant_communication_mode_supported"

.field public static final greylist-max-o KEY_MAX_MATCH_FILTER_LENGTH:Ljava/lang/String; = "key_max_match_filter_length"

.field public static final blacklist KEY_MAX_NDI_NUMBER:Ljava/lang/String; = "key_max_ndi_number"

.field public static final blacklist KEY_MAX_NDP_NUMBER:Ljava/lang/String; = "key_max_ndp_number"

.field public static final blacklist KEY_MAX_PUBLISH_NUMBER:Ljava/lang/String; = "key_max_publish_number"

.field public static final greylist-max-o KEY_MAX_SERVICE_NAME_LENGTH:Ljava/lang/String; = "key_max_service_name_length"

.field public static final greylist-max-o KEY_MAX_SERVICE_SPECIFIC_INFO_LENGTH:Ljava/lang/String; = "key_max_service_specific_info_length"

.field public static final blacklist KEY_MAX_SUBSCRIBE_NUMBER:Ljava/lang/String; = "key_max_subscribe_number"

.field public static final blacklist KEY_MAX_SUPPORTED_RANGING_PKT_BANDWIDTH:Ljava/lang/String; = "key_max_supported_ranging_pkt_bandwidth"

.field public static final blacklist KEY_MAX_SUPPORTED_RX_CHAINS:Ljava/lang/String; = "key_max_supported_rx_chains"

.field public static final blacklist KEY_SUPPORTED_DATA_PATH_CIPHER_SUITES:Ljava/lang/String; = "key_supported_data_path_cipher_suites"

.field public static final blacklist KEY_SUPPORTED_PAIRING_CIPHER_SUITES:Ljava/lang/String; = "key_supported_pairing_cipher_suites"

.field public static final blacklist KEY_SUPPORT_NAN_PAIRING:Ljava/lang/String; = "key_support_nan_pairing"

.field public static final blacklist KEY_SUPPORT_PERIODIC_RANGING:Ljava/lang/String; = "key_support_periodic_ranging"

.field public static final blacklist KEY_SUPPORT_SUSPENSION:Ljava/lang/String; = "key_support_suspension"

.field public static final whitelist SUPPORTED_RX_CHAINS_1:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUPPORTED_RX_CHAINS_2:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUPPORTED_RX_CHAINS_3:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUPPORTED_RX_CHAINS_4:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUPPORTED_RX_CHAINS_UNSPECIFIED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WIFI_AWARE_CIPHER_SUITE_NCS_PK_128:I = 0x4

.field public static final whitelist WIFI_AWARE_CIPHER_SUITE_NCS_PK_256:I = 0x8

.field public static final whitelist WIFI_AWARE_CIPHER_SUITE_NCS_PK_PASN_128:I = 0x10

.field public static final whitelist WIFI_AWARE_CIPHER_SUITE_NCS_PK_PASN_256:I = 0x20

.field public static final whitelist WIFI_AWARE_CIPHER_SUITE_NCS_SK_128:I = 0x1

.field public static final whitelist WIFI_AWARE_CIPHER_SUITE_NCS_SK_256:I = 0x2

.field public static final whitelist WIFI_AWARE_CIPHER_SUITE_NONE:I


# instance fields
.field private final greylist-max-o mCharacteristics:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 375
    new-instance v0, Landroid/net/wifi/aware/Characteristics$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/Characteristics$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/Characteristics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "characteristics"    # Landroid/os/Bundle;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMaxMatchFilterLength()I
    .registers 3

    .line 123
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_match_filter_length"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxServiceNameLength()I
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_service_name_length"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxServiceSpecificInfoLength()I
    .registers 3

    .line 111
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_service_specific_info_length"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxSupportedRangingPacketBandwidth()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 287
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_supported_ranging_pkt_bandwidth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getMaxSupportedRxChains()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 272
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_supported_rx_chains"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getNumberOfSupportedDataInterfaces()I
    .registers 3

    .line 133
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_ndi_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getNumberOfSupportedDataPaths()I
    .registers 3

    .line 170
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_ndp_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getNumberOfSupportedPublishSessions()I
    .registers 3

    .line 145
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_publish_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getNumberOfSupportedSubscribeSessions()I
    .registers 3

    .line 157
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_max_subscribe_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getSupportedCipherSuites()I
    .registers 3

    .line 352
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_supported_data_path_cipher_suites"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getSupportedPairingCipherSuites()I
    .registers 3

    .line 362
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_supported_pairing_cipher_suites"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist isAwarePairingSupported()Z
    .registers 3

    .line 205
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_support_nan_pairing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isInstantCommunicationModeSupported()Z
    .registers 3

    .line 180
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 183
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_is_instant_communication_mode_supported"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 181
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isPeriodicRangingSupported()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 228
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_support_periodic_ranging"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isSuspensionSupported()Z
    .registers 3

    .line 215
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    const-string v1, "key_support_suspension"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 367
    iget-object v0, p0, Landroid/net/wifi/aware/Characteristics;->mCharacteristics:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 368
    return-void
.end method
