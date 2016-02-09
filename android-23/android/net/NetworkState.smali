.class public Landroid/net/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final linkProperties:Landroid/net/LinkProperties;

.field public final network:Landroid/net/Network;

.field public final networkCapabilities:Landroid/net/NetworkCapabilities;

.field public final networkId:Ljava/lang/String;

.field public final networkInfo:Landroid/net/NetworkInfo;

.field public final subscriberId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    new-instance v0, Landroid/net/NetworkState$1;

    #@2
    invoke-direct {v0}, Landroid/net/NetworkState$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/NetworkState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .param p3, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p4, "network"    # Landroid/net/Network;
    .param p5, "subscriberId"    # Ljava/lang/String;
    .param p6, "networkId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@5
    .line 40
    iput-object p2, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@7
    .line 41
    iput-object p3, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@9
    .line 42
    iput-object p4, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@b
    .line 43
    iput-object p5, p0, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    #@d
    .line 44
    iput-object p6, p0, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    #@f
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/NetworkInfo;

    #@a
    iput-object v0, p0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@c
    .line 49
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/net/LinkProperties;

    #@12
    iput-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@14
    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/net/NetworkCapabilities;

    #@1a
    iput-object v0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@1c
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/net/Network;

    #@22
    iput-object v0, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@24
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    #@2a
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    #@30
    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 64
    iget-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    #@7
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 65
    iget-object v0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@c
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@f
    .line 66
    iget-object v0, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    #@11
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@14
    .line 67
    iget-object v0, p0, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 68
    iget-object v0, p0, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 62
    return-void
.end method
