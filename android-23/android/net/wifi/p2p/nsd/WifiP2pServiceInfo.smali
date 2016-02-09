.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
.super Ljava/lang/Object;
.source "WifiP2pServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_TYPE_ALL:I = 0x0

.field public static final SERVICE_TYPE_BONJOUR:I = 0x1

.field public static final SERVICE_TYPE_UPNP:I = 0x2

.field public static final SERVICE_TYPE_VENDOR_SPECIFIC:I = 0xff

.field public static final SERVICE_TYPE_WS_DISCOVERY:I = 0x3


# instance fields
.field private mQueryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 170
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;-><init>()V

    #@5
    .line 169
    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 94
    .local p1, "queryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    if-nez p1, :cond_0

    #@5
    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "query list cannot be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 98
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    #@10
    .line 94
    return-void
.end method

.method static bin2HexStr([B)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 119
    new-instance v3, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 121
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    #@6
    array-length v5, p0

    #@7
    :goto_0
    if-ge v4, v5, :cond_1

    #@9
    aget-byte v0, p0, v4

    #@b
    .line 122
    .local v0, "b":B
    const/4 v2, 0x0

    #@c
    .line 124
    .local v2, "s":Ljava/lang/String;
    and-int/lit16 v6, v0, 0xff

    #@e
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    .line 130
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@15
    move-result v6

    #@16
    const/4 v7, 0x1

    #@17
    if-ne v6, v7, :cond_0

    #@19
    .line 131
    const/16 v6, 0x30

    #@1b
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1e
    .line 133
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 121
    add-int/lit8 v4, v4, 0x1

    #@23
    goto :goto_0

    #@24
    .line 125
    .local v2, "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@25
    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@28
    .line 127
    const/4 v4, 0x0

    #@29
    return-object v4

    #@2a
    .line 135
    .end local v0    # "b":B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 160
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 140
    if-ne p1, p0, :cond_0

    #@2
    .line 141
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 143
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 144
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 147
    check-cast v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    #@d
    .line 148
    .local v0, "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    #@f
    iget-object v2, v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    #@11
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public getSupplicantQueryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 154
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    #@2
    if-nez v1, :cond_0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_0
    add-int/lit16 v0, v1, 0x20f

    #@7
    .line 155
    .local v0, "result":I
    return v0

    #@8
    .line 154
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    #@a
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    #@d
    move-result v1

    #@e
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->mQueryList:Ljava/util/List;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@5
    .line 164
    return-void
.end method
