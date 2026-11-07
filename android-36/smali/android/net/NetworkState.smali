.class public Landroid/net/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o EMPTY:Landroid/net/NetworkState;

.field private static final blacklist VALIDATE_ROAMING_STATE:Z = false


# instance fields
.field public final blacklist legacyNetworkType:I

.field public final greylist-max-o linkProperties:Landroid/net/LinkProperties;

.field public final greylist-max-p network:Landroid/net/Network;

.field public final greylist-max-o networkCapabilities:Landroid/net/NetworkCapabilities;

.field public final greylist-max-o networkInfo:Landroid/net/NetworkInfo;

.field public final greylist-max-o subscriberId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/net/NetworkState;

    invoke-direct {v0}, Landroid/net/NetworkState;-><init>()V

    sput-object v0, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    .line 119
    new-instance v0, Landroid/net/NetworkState$1;

    invoke-direct {v0}, Landroid/net/NetworkState$1;-><init>()V

    sput-object v0, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    .line 48
    iput-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 49
    iput-object v0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 50
    iput-object v0, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 51
    iput-object v0, p0, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkState;->legacyNetworkType:I

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;)V
    .registers 13
    .param p1, "legacyNetworkType"    # I
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .param p3, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p4, "network"    # Landroid/net/Network;
    .param p5, "subscriberId"    # Ljava/lang/String;

    .line 58
    new-instance v2, Landroid/net/NetworkInfo;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v2, p1, v0, v1, v1}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "legacyNetworkType":I
    .end local p2    # "linkProperties":Landroid/net/LinkProperties;
    .end local p3    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .end local p4    # "network":Landroid/net/Network;
    .end local p5    # "subscriberId":Ljava/lang/String;
    .local v1, "legacyNetworkType":I
    .local v3, "linkProperties":Landroid/net/LinkProperties;
    .local v4, "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v5, "network":Landroid/net/Network;
    .local v6, "subscriberId":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(ILandroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;)V
    .registers 7
    .param p1, "legacyNetworkType"    # I
    .param p2, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;
    .param p4, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p5, "network"    # Landroid/net/Network;
    .param p6, "subscriberId"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    .line 75
    iput-object p3, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 76
    iput-object p4, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 77
    iput-object p5, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 78
    iput-object p6, p0, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 79
    iput p1, p0, Landroid/net/NetworkState;->legacyNetworkType:I

    .line 90
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;)V
    .registers 13
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .param p3, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p4, "network"    # Landroid/net/Network;
    .param p5, "subscriberId"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "networkInfo":Landroid/net/NetworkInfo;
    .end local p2    # "linkProperties":Landroid/net/LinkProperties;
    .end local p3    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .end local p4    # "network":Landroid/net/Network;
    .end local p5    # "subscriberId":Ljava/lang/String;
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    .local v3, "linkProperties":Landroid/net/LinkProperties;
    .local v4, "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v5, "network":Landroid/net/Network;
    .local v6, "subscriberId":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(ILandroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    iput-object v1, p0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    iput-object v1, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    iput-object v1, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkState;->legacyNetworkType:I

    .line 100
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 109
    iget-object v0, p0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 110
    iget-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    iget-object v0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 112
    iget-object v0, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    iget-object v0, p0, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Landroid/net/NetworkState;->legacyNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return-void
.end method
