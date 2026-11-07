.class public final Landroid/net/wifi/WifiManager$AddNetworkResult;
.super Ljava/lang/Object;
.source "WifiManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddNetworkResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$AddNetworkResult$AddNetworkStatusCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiManager$AddNetworkResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATUS_ADD_PASSPOINT_FAILURE:I = 0x3

.field public static final whitelist STATUS_ADD_WIFI_CONFIG_FAILURE:I = 0x4

.field public static final whitelist STATUS_FAILURE_UNKNOWN:I = 0x1

.field public static final whitelist STATUS_FAILURE_UPDATE_NETWORK_KEYS:I = 0x9

.field public static final whitelist STATUS_INVALID_CONFIGURATION:I = 0x5

.field public static final whitelist STATUS_INVALID_CONFIGURATION_ENTERPRISE:I = 0xa

.field public static final whitelist STATUS_NO_PERMISSION:I = 0x2

.field public static final whitelist STATUS_NO_PERMISSION_MODIFY_CONFIG:I = 0x6

.field public static final whitelist STATUS_NO_PERMISSION_MODIFY_MAC_RANDOMIZATION:I = 0x8

.field public static final whitelist STATUS_NO_PERMISSION_MODIFY_PROXY_SETTING:I = 0x7

.field public static final whitelist STATUS_SUCCESS:I


# instance fields
.field public final whitelist networkId:I

.field public final whitelist statusCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2992
    new-instance v0, Landroid/net/wifi/WifiManager$AddNetworkResult$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiManager$AddNetworkResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager$AddNetworkResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "statusCode"    # I
    .param p2, "networkId"    # I

    .line 3014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3015
    iput p1, p0, Landroid/net/wifi/WifiManager$AddNetworkResult;->statusCode:I

    .line 3016
    iput p2, p0, Landroid/net/wifi/WifiManager$AddNetworkResult;->networkId:I

    .line 3017
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2982
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2987
    iget v0, p0, Landroid/net/wifi/WifiManager$AddNetworkResult;->statusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2988
    iget v0, p0, Landroid/net/wifi/WifiManager$AddNetworkResult;->networkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2989
    return-void
.end method
