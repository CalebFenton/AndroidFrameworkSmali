.class public Landroid/net/wifi/p2p/WifiP2pInfo;
.super Ljava/lang/Object;
.source "WifiP2pInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist groupFormed:Z

.field public whitelist groupOwnerAddress:Ljava/net/InetAddress;

.field public whitelist isGroupOwner:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-eqz p1, :cond_11

    .line 61
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 62
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 63
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 65
    :cond_11
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "groupFormed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 47
    const-string v2, " isGroupOwner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 48
    const-string v2, " groupOwnerIpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 49
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    if-nez v2, :cond_2a

    const-string v2, "none"

    goto :goto_30

    :cond_2a
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 69
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_1c

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_20

    .line 76
    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    :goto_20
    return-void
.end method
