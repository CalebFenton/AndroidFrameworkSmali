.class public final Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;
.super Ljava/lang/Object;
.source "WifiP2pPairingBootstrappingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig$PairingBootstrappingMethod;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PAIRING_BOOTSTRAPPING_METHOD_DISPLAY_PASSPHRASE:I = 0x4

.field public static final whitelist PAIRING_BOOTSTRAPPING_METHOD_DISPLAY_PINCODE:I = 0x2

.field public static final whitelist PAIRING_BOOTSTRAPPING_METHOD_KEYPAD_PASSPHRASE:I = 0x10

.field public static final whitelist PAIRING_BOOTSTRAPPING_METHOD_KEYPAD_PINCODE:I = 0x8

.field public static final whitelist PAIRING_BOOTSTRAPPING_METHOD_OPPORTUNISTIC:I = 0x1

.field public static final whitelist PAIRING_BOOTSTRAPPING_METHOD_OUT_OF_BAND:I = 0x20


# instance fields
.field private blacklist mPairingBootstrappingMethod:I

.field private blacklist mPassword:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 209
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 6
    .param p1, "method"    # I
    .param p2, "password"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->isValidPairingBootstrappingMethod(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 163
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->mPairingBootstrappingMethod:I

    .line 164
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1d

    goto :goto_36

    .line 168
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Password is not required for ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_36
    :goto_36
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->mPassword:Ljava/lang/String;

    .line 171
    return-void

    .line 161
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PairingBootstrappingMethod ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    if-eqz p1, :cond_d

    .line 196
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->mPairingBootstrappingMethod:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->mPairingBootstrappingMethod:I

    .line 197
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->mPassword:Ljava/lang/String;

    .line 199
    :cond_d
    return-void
.end method

.method private static blacklist isValidPairingBootstrappingMethod(I)Z
    .registers 2
    .param p0, "method"    # I

    .line 108
    sparse-switch p0, :sswitch_data_8

    .line 117
    const/4 v0, 0x0

    return v0

    .line 115
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x4 -> :sswitch_5
        0x8 -> :sswitch_5
        0x10 -> :sswitch_5
        0x20 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPairingBootstrappingMethod()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->mPairingBootstrappingMethod:I

    return v0
.end method

.method public blacklist getPairingBootstrappingPassword()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setPairingBootstrappingPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->mPassword:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiP2pPairingBootstrappingConfig:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "\n BootstrappingMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->mPairingBootstrappingMethod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 203
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->mPairingBootstrappingMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    return-void
.end method
