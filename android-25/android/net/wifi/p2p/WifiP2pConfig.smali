.class public Landroid/net/wifi/p2p/WifiP2pConfig;
.super Ljava/lang/Object;
.source "WifiP2pConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_GROUP_OWNER_INTENT:I = 0xf

.field public static final MIN_GROUP_OWNER_INTENT:I


# instance fields
.field public deviceAddress:Ljava/lang/String;

.field public groupOwnerIntent:I

.field public netId:I

.field public wps:Landroid/net/wifi/WpsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 142
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig$1;-><init>()V

    #@5
    .line 141
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@8
    .line 52
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    #@b
    .line 55
    const/4 v0, -0x2

    #@c
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@e
    .line 59
    new-instance v0, Landroid/net/wifi/WpsInfo;

    #@10
    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    #@13
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@15
    .line 60
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@17
    const/4 v1, 0x0

    #@18
    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    #@1a
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@8
    .line 52
    const/4 v0, -0x1

    #@9
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    #@b
    .line 55
    const/4 v0, -0x2

    #@c
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@e
    .line 124
    if-eqz p1, :cond_0

    #@10
    .line 125
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@12
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@14
    .line 126
    new-instance v0, Landroid/net/wifi/WpsInfo;

    #@16
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@18
    invoke-direct {v0, v1}, Landroid/net/wifi/WpsInfo;-><init>(Landroid/net/wifi/WpsInfo;)V

    #@1b
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@1d
    .line 127
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    #@1f
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    #@21
    .line 128
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@23
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@25
    .line 123
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "supplicantEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x2

    #@3
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 33
    const-string/jumbo v4, ""

    #@9
    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@b
    .line 52
    const/4 v4, -0x1

    #@c
    iput v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    #@e
    .line 55
    const/4 v4, -0x2

    #@f
    iput v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@11
    .line 70
    const-string/jumbo v4, " "

    #@14
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 72
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    #@19
    if-lt v4, v6, :cond_1

    #@1b
    aget-object v4, v3, v7

    #@1d
    const-string/jumbo v5, "P2P-GO-NEG-REQUEST"

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 76
    aget-object v4, v3, v8

    #@28
    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@2a
    .line 77
    new-instance v4, Landroid/net/wifi/WpsInfo;

    #@2c
    invoke-direct {v4}, Landroid/net/wifi/WpsInfo;-><init>()V

    #@2f
    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@31
    .line 79
    array-length v4, v3

    #@32
    if-le v4, v6, :cond_0

    #@34
    .line 80
    aget-object v4, v3, v6

    #@36
    const-string/jumbo v5, "="

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 83
    .local v2, "nameVal":[Ljava/lang/String;
    const/4 v4, 0x1

    #@3e
    :try_start_0
    aget-object v4, v2, v4

    #@40
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    move-result v0

    #@44
    .line 88
    .local v0, "devPasswdId":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    #@47
    .line 102
    :pswitch_0
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@49
    iput v7, v4, Landroid/net/wifi/WpsInfo;->setup:I

    #@4b
    .line 69
    .end local v0    # "devPasswdId":I
    .end local v2    # "nameVal":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    #@4c
    .line 73
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@4e
    const-string/jumbo v5, "Malformed supplicant event"

    #@51
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@54
    throw v4

    #@55
    .line 84
    .restart local v2    # "nameVal":[Ljava/lang/String;
    :catch_0
    move-exception v1

    #@56
    .line 85
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    #@57
    .restart local v0    # "devPasswdId":I
    goto :goto_0

    #@58
    .line 91
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@5a
    iput v8, v4, Landroid/net/wifi/WpsInfo;->setup:I

    #@5c
    goto :goto_1

    #@5d
    .line 95
    :pswitch_2
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@5f
    iput v7, v4, Landroid/net/wifi/WpsInfo;->setup:I

    #@61
    goto :goto_1

    #@62
    .line 99
    :pswitch_3
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@64
    iput v6, v4, Landroid/net/wifi/WpsInfo;->setup:I

    #@66
    goto :goto_1

    #@67
    .line 88
    nop

    #@68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public invalidate()V
    .locals 1

    #@0
    .prologue
    .line 65
    const-string/jumbo v0, ""

    #@3
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@5
    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 110
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "\n address: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    .line 111
    const-string/jumbo v1, "\n wps: "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1d
    .line 112
    const-string/jumbo v1, "\n groupOwnerIntent: "

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    move-result-object v1

    #@24
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@29
    .line 113
    const-string/jumbo v1, "\n persist: "

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    move-result-object v1

    #@30
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@35
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 135
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    #@7
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 136
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 137
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 133
    return-void
.end method
