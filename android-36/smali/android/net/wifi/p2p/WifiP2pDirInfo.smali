.class public final Landroid/net/wifi/p2p/WifiP2pDirInfo;
.super Ljava/lang/Object;
.source "WifiP2pDirInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pDirInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDirTag:[B

.field private blacklist mMacAddress:Landroid/net/MacAddress;

.field private blacklist mNonce:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDirInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDirInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/MacAddress;[B[B)V
    .registers 4
    .param p1, "macAddress"    # Landroid/net/MacAddress;
    .param p2, "nonce"    # [B
    .param p3, "dirTag"    # [B

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mMacAddress:Landroid/net/MacAddress;

    .line 102
    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mNonce:[B

    .line 103
    iput-object p3, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mDirTag:[B

    .line 104
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDirTag()[B
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mDirTag:[B

    return-object v0
.end method

.method public whitelist getMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getNonce()[B
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mNonce:[B

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiP2pDirInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "\n Mac Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "\n Nonce : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mNonce:[B

    const-string v3, "<null>"

    if-nez v2, :cond_20

    .line 115
    move-object v2, v3

    goto :goto_26

    :cond_20
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mNonce:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    .line 114
    :goto_26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "\n DIR Tag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mDirTag:[B

    if-nez v2, :cond_34

    .line 117
    goto :goto_3a

    :cond_34
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mDirTag:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    .line 116
    :goto_3a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 128
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, p1, p2}, Landroid/net/MacAddress;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mNonce:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 130
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDirInfo;->mDirTag:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 131
    return-void
.end method
