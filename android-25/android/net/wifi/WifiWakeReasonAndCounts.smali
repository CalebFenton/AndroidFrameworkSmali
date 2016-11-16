.class public Landroid/net/wifi/WifiWakeReasonAndCounts;
.super Ljava/lang/Object;
.source "WifiWakeReasonAndCounts.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiWakeReasonAndCounts$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiWakeReasonAndCounts;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiWakeReasonAndCounts"


# instance fields
.field public cmdEventWakeCntArray:[I

.field public driverFWLocalWakeCntArray:[I

.field public icmp:I

.field public icmp6:I

.field public icmp6Na:I

.field public icmp6Ns:I

.field public icmp6Ra:I

.field public ipv4RxMulticast:I

.field public ipv6Multicast:I

.field public otherRxMulticast:I

.field public rxBroadcast:I

.field public rxMulticast:I

.field public rxUnicast:I

.field public totalCmdEventWake:I

.field public totalDriverFwLocalWake:I

.field public totalRxDataWake:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 131
    new-instance v0, Landroid/net/wifi/WifiWakeReasonAndCounts$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiWakeReasonAndCounts$1;-><init>()V

    #@5
    .line 130
    sput-object v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 98
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 65
    new-instance v1, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 66
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, " totalCmdEventWake "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v2

    #@c
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalCmdEventWake:I

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@11
    .line 67
    const-string/jumbo v2, " totalDriverFwLocalWake "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@17
    move-result-object v2

    #@18
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalDriverFwLocalWake:I

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1d
    .line 68
    const-string/jumbo v2, " totalRxDataWake "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    move-result-object v2

    #@24
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalRxDataWake:I

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@29
    .line 70
    const-string/jumbo v2, " rxUnicast "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    move-result-object v2

    #@30
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxUnicast:I

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@35
    .line 71
    const-string/jumbo v2, " rxMulticast "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3b
    move-result-object v2

    #@3c
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxMulticast:I

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@41
    .line 72
    const-string/jumbo v2, " rxBroadcast "

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@47
    move-result-object v2

    #@48
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxBroadcast:I

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@4d
    .line 74
    const-string/jumbo v2, " icmp "

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@53
    move-result-object v2

    #@54
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp:I

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@59
    .line 75
    const-string/jumbo v2, " icmp6 "

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5f
    move-result-object v2

    #@60
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6:I

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@65
    .line 76
    const-string/jumbo v2, " icmp6Ra "

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6b
    move-result-object v2

    #@6c
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ra:I

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@71
    .line 77
    const-string/jumbo v2, " icmp6Na "

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@77
    move-result-object v2

    #@78
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Na:I

    #@7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@7d
    .line 78
    const-string/jumbo v2, " icmp6Ns "

    #@80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@83
    move-result-object v2

    #@84
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ns:I

    #@86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@89
    .line 80
    const-string/jumbo v2, " ipv4RxMulticast "

    #@8c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8f
    move-result-object v2

    #@90
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv4RxMulticast:I

    #@92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@95
    .line 81
    const-string/jumbo v2, " ipv6Multicast "

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9b
    move-result-object v2

    #@9c
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv6Multicast:I

    #@9e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@a1
    .line 82
    const-string/jumbo v2, " otherRxMulticast "

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a7
    move-result-object v2

    #@a8
    iget v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->otherRxMulticast:I

    #@aa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@ad
    .line 83
    const/4 v0, 0x0

    #@ae
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->cmdEventWakeCntArray:[I

    #@b0
    array-length v2, v2

    #@b1
    if-ge v0, v2, :cond_0

    #@b3
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    const-string/jumbo v3, " cmdEventWakeCntArray["

    #@bb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v2

    #@bf
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v2

    #@c3
    const-string/jumbo v3, "] "

    #@c6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v2

    #@ca
    iget-object v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->cmdEventWakeCntArray:[I

    #@cc
    aget v3, v3, v0

    #@ce
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v2

    #@d2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v2

    #@d6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d9
    .line 83
    add-int/lit8 v0, v0, 0x1

    #@db
    goto :goto_0

    #@dc
    .line 86
    :cond_0
    const/4 v0, 0x0

    #@dd
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->driverFWLocalWakeCntArray:[I

    #@df
    array-length v2, v2

    #@e0
    if-ge v0, v2, :cond_1

    #@e2
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    const-string/jumbo v3, " driverFWLocalWakeCntArray["

    #@ea
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v2

    #@ee
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v2

    #@f2
    const-string/jumbo v3, "] "

    #@f5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v2

    #@f9
    iget-object v3, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->driverFWLocalWakeCntArray:[I

    #@fb
    aget v3, v3, v0

    #@fd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@100
    move-result-object v2

    #@101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v2

    #@105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@108
    .line 86
    add-int/lit8 v0, v0, 0x1

    #@10a
    goto :goto_1

    #@10b
    .line 90
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@10e
    move-result-object v2

    #@10f
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 106
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalCmdEventWake:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 107
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalDriverFwLocalWake:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 108
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalRxDataWake:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 110
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxUnicast:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 111
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxMulticast:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 112
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxBroadcast:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 114
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 115
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 116
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ra:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 117
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Na:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 118
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ns:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 120
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv4RxMulticast:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 121
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv6Multicast:I

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 122
    iget v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->otherRxMulticast:I

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 123
    iget-object v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->cmdEventWakeCntArray:[I

    #@48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@4b
    .line 124
    iget-object v0, p0, Landroid/net/wifi/WifiWakeReasonAndCounts;->driverFWLocalWakeCntArray:[I

    #@4d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@50
    .line 105
    return-void
.end method
