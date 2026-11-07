.class public final Landroid/net/connectivity/android/net/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/connectivity/android/net/ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist local:Ljava/net/InetSocketAddress;

.field public final blacklist protocol:I

.field public final blacklist remote:Ljava/net/InetSocketAddress;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Landroid/net/connectivity/android/net/ConnectionInfo$1;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/ConnectionInfo$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/android/net/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .registers 4
    .param p1, "protocol"    # I
    .param p2, "local"    # Ljava/net/InetSocketAddress;
    .param p3, "remote"    # Ljava/net/InetSocketAddress;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/net/connectivity/android/net/ConnectionInfo;->protocol:I

    .line 44
    iput-object p2, p0, Landroid/net/connectivity/android/net/ConnectionInfo;->local:Ljava/net/InetSocketAddress;

    .line 45
    iput-object p3, p0, Landroid/net/connectivity/android/net/ConnectionInfo;->remote:Ljava/net/InetSocketAddress;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 50
    iget v0, p0, Landroid/net/connectivity/android/net/ConnectionInfo;->protocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Landroid/net/connectivity/android/net/ConnectionInfo;->local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 52
    iget-object v0, p0, Landroid/net/connectivity/android/net/ConnectionInfo;->local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v0, p0, Landroid/net/connectivity/android/net/ConnectionInfo;->remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 54
    iget-object v0, p0, Landroid/net/connectivity/android/net/ConnectionInfo;->remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void
.end method
