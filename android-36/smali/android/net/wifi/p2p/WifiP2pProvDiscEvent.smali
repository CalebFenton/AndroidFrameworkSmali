.class public Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
.super Ljava/lang/Object;
.source "WifiP2pProvDiscEvent.java"


# static fields
.field public static final blacklist PAIRING_BOOTSTRAPPING_ENTER_PASSPHRASE:I = 0x9

.field public static final blacklist PAIRING_BOOTSTRAPPING_ENTER_PIN:I = 0x7

.field public static final blacklist PAIRING_BOOTSTRAPPING_OPPORTUNISTIC_REQ:I = 0x5

.field public static final blacklist PAIRING_BOOTSTRAPPING_OPPORTUNISTIC_RSP:I = 0x6

.field public static final blacklist PAIRING_BOOTSTRAPPING_SHOW_PASSPHRASE:I = 0xa

.field public static final blacklist PAIRING_BOOTSTRAPPING_SHOW_PIN:I = 0x8

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiP2pProvDiscEvent"

.field public static final blacklist WPS_ENTER_PIN:I = 0x3

.field public static final blacklist WPS_PBC_REQ:I = 0x1

.field public static final blacklist WPS_PBC_RSP:I = 0x2

.field public static final blacklist WPS_SHOW_PIN:I = 0x4


# instance fields
.field public greylist device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public greylist event:I

.field public greylist isComeback:Z

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field

.field public greylist wpsPin:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->mVendorData:Ljava/util/List;

    .line 96
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 97
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->mVendorData:Ljava/util/List;

    .line 130
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    const-string v2, "Malformed event "

    const/4 v3, 0x2

    if-lt v1, v3, :cond_79

    .line 136
    const/4 v1, 0x0

    aget-object v4, v0, v1

    const-string v5, "PBC-REQ"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v4, :cond_25

    .line 137
    iput v6, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    goto :goto_4c

    .line 138
    :cond_25
    aget-object v4, v0, v1

    const-string v7, "PBC-RESP"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 139
    iput v3, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    goto :goto_4c

    .line 140
    :cond_32
    aget-object v4, v0, v1

    const-string v7, "ENTER-PIN"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 141
    const/4 v1, 0x3

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    goto :goto_4c

    .line 142
    :cond_40
    aget-object v1, v0, v1

    const-string v4, "SHOW-PIN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 143
    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    .line 149
    :goto_4c
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 150
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    aget-object v2, v0, v6

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 152
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    if-ne v1, v5, :cond_61

    .line 153
    aget-object v1, v0, v3

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->wpsPin:Ljava/lang/String;

    .line 155
    :cond_61
    return-void

    .line 145
    :cond_62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getVendorData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->mVendorData:Ljava/util/List;

    return-object v0

    .line 89
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist setVendorData(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 112
    if-eqz p1, :cond_b

    .line 115
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->mVendorData:Ljava/util/List;

    .line 116
    return-void

    .line 113
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 160
    const-string v1, "\n event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 161
    const-string v1, "\n wpsPin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->wpsPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v1, "\n vendorData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->mVendorData:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 163
    const-string v1, "\n isComeback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->isComeback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
