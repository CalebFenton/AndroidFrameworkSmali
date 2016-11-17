.class public Landroid/net/wifi/p2p/WifiP2pInfo;
.super Ljava/lang/Object;
.source "WifiP2pInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupFormed:Z

.field public groupOwnerAddress:Ljava/net/InetAddress;

.field public isGroupOwner:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 81
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pInfo$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pInfo$1;-><init>()V

    #@5
    .line 80
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    if-eqz p1, :cond_0

    #@5
    .line 60
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    #@7
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    #@9
    .line 61
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    #@b
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    #@d
    .line 62
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    #@f
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    #@11
    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 46
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "groupFormed: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v1

    #@c
    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@11
    move-result-object v1

    #@12
    .line 47
    const-string/jumbo v2, " isGroupOwner: "

    #@15
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    move-result-object v1

    #@19
    .line 47
    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    #@1b
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v1

    #@1f
    .line 48
    const-string/jumbo v2, " groupOwnerAddress: "

    #@22
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@25
    move-result-object v1

    #@26
    .line 48
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    #@28
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@2b
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 68
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@a
    .line 69
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    move v0, v1

    #@f
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@12
    .line 71
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 72
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@19
    .line 73
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    #@1b
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@22
    .line 67
    :goto_2
    return-void

    #@23
    :cond_0
    move v0, v2

    #@24
    .line 68
    goto :goto_0

    #@25
    :cond_1
    move v0, v2

    #@26
    .line 69
    goto :goto_1

    #@27
    .line 75
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@2a
    goto :goto_2
.end method
