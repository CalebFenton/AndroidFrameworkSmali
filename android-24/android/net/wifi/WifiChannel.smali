.class public Landroid/net/wifi/WifiChannel;
.super Ljava/lang/Object;
.source "WifiChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiChannel$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_CHANNEL_NUM:I = 0xc4

.field private static final MAX_FREQ_MHZ:I = 0x16c1

.field private static final MIN_CHANNEL_NUM:I = 0x1

.field private static final MIN_FREQ_MHZ:I = 0x96c


# instance fields
.field public channelNum:I

.field public freqMHz:I

.field public isDFS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/net/wifi/WifiChannel$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiChannel$1;-><init>()V

    #@5
    .line 71
    sput-object v0, Landroid/net/wifi/WifiChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 59
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isValid()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 51
    iget v0, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    #@4
    const/16 v1, 0x96c

    #@6
    if-lt v0, v1, :cond_0

    #@8
    iget v0, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    #@a
    const/16 v1, 0x16c1

    #@c
    if-le v0, v1, :cond_1

    #@e
    :cond_0
    return v2

    #@f
    .line 52
    :cond_1
    iget v0, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    #@11
    if-lt v0, v3, :cond_2

    #@13
    iget v0, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    #@15
    const/16 v1, 0xc4

    #@17
    if-le v0, v1, :cond_3

    #@19
    :cond_2
    return v2

    #@1a
    .line 53
    :cond_3
    return v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 65
    iget v0, p0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 66
    iget v0, p0, Landroid/net/wifi/WifiChannel;->channelNum:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 67
    iget-boolean v0, p0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 64
    return-void

    #@13
    .line 67
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method
