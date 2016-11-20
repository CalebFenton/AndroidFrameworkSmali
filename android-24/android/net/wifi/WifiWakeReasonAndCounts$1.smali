.class final Landroid/net/wifi/WifiWakeReasonAndCounts$1;
.super Ljava/lang/Object;
.source "WifiWakeReasonAndCounts.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWakeReasonAndCounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiWakeReasonAndCounts;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 133
    new-instance v0, Landroid/net/wifi/WifiWakeReasonAndCounts;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiWakeReasonAndCounts;-><init>()V

    #@5
    .line 134
    .local v0, "counts":Landroid/net/wifi/WifiWakeReasonAndCounts;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalCmdEventWake:I

    #@b
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalDriverFwLocalWake:I

    #@11
    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalRxDataWake:I

    #@17
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxUnicast:I

    #@1d
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v1

    #@21
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxMulticast:I

    #@23
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v1

    #@27
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxBroadcast:I

    #@29
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v1

    #@2d
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp:I

    #@2f
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@32
    move-result v1

    #@33
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6:I

    #@35
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v1

    #@39
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ra:I

    #@3b
    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v1

    #@3f
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Na:I

    #@41
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v1

    #@45
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ns:I

    #@47
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v1

    #@4b
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv4RxMulticast:I

    #@4d
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@50
    move-result v1

    #@51
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv6Multicast:I

    #@53
    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v1

    #@57
    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->otherRxMulticast:I

    #@59
    .line 151
    iget-object v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->cmdEventWakeCntArray:[I

    #@5b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    #@5e
    .line 152
    iget-object v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->driverFWLocalWakeCntArray:[I

    #@60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    #@63
    .line 153
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWakeReasonAndCounts$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiWakeReasonAndCounts;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 160
    new-array v0, p1, [Landroid/net/wifi/WifiWakeReasonAndCounts;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWakeReasonAndCounts$1;->newArray(I)[Landroid/net/wifi/WifiWakeReasonAndCounts;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
