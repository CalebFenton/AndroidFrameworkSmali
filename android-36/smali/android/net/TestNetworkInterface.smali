.class public final Landroid/net/TestNetworkInterface;
.super Ljava/lang/Object;
.source "TestNetworkInterface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/TestNetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "TestNetworkInterface"


# instance fields
.field private final blacklist mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mInterfaceName:Ljava/lang/String;

.field private final blacklist mMacAddress:Landroid/net/MacAddress;

.field private final blacklist mMtu:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    new-instance v0, Landroid/net/TestNetworkInterface$1;

    invoke-direct {v0}, Landroid/net/TestNetworkInterface$1;-><init>()V

    sput-object v0, Landroid/net/TestNetworkInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/net/TestNetworkInterface;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/TestNetworkInterface;->mInterfaceName:Ljava/lang/String;

    .line 89
    const-class v0, Landroid/net/MacAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/TestNetworkInterface;->mMacAddress:Landroid/net/MacAddress;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/TestNetworkInterface;->mMtu:I

    .line 91
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/TestNetworkInterface-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/TestNetworkInterface;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 8
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "intf"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/net/TestNetworkInterface;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 64
    iput-object p2, p0, Landroid/net/TestNetworkInterface;->mInterfaceName:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "macAddress":Landroid/net/MacAddress;
    const/16 v1, 0x5dc

    .line 71
    .local v1, "mtu":I
    :try_start_a
    iget-object v2, p0, Landroid/net/TestNetworkInterface;->mInterfaceName:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 74
    .local v2, "nif":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    .line 75
    .local v3, "hardwareAddress":[B
    if-eqz v3, :cond_1f

    .line 76
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    invoke-static {v4}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v4

    move-object v0, v4

    .line 78
    :cond_1f
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getMTU()I

    move-result v4
    :try_end_23
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_23} :catch_25

    move v1, v4

    .line 81
    .end local v2    # "nif":Ljava/net/NetworkInterface;
    .end local v3    # "hardwareAddress":[B
    goto :goto_2d

    .line 79
    :catch_25
    move-exception v2

    .line 80
    .local v2, "e":Ljava/net/SocketException;
    const-string v3, "TestNetworkInterface"

    const-string v4, "Failed to fetch MacAddress or MTU size from NetworkInterface"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v2    # "e":Ljava/net/SocketException;
    :goto_2d
    iput-object v0, p0, Landroid/net/TestNetworkInterface;->mMacAddress:Landroid/net/MacAddress;

    .line 83
    iput v1, p0, Landroid/net/TestNetworkInterface;->mMtu:I

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/net/TestNetworkInterface;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/net/TestNetworkInterface;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getInterfaceName()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/net/TestNetworkInterface;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/net/TestNetworkInterface;->mMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public blacklist getMtu()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/net/TestNetworkInterface;->mMtu:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 56
    iget-object v0, p0, Landroid/net/TestNetworkInterface;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    iget-object v0, p0, Landroid/net/TestNetworkInterface;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Landroid/net/TestNetworkInterface;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 59
    iget v0, p0, Landroid/net/TestNetworkInterface;->mMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void
.end method
