.class public Landroid/net/wifi/WifiScanner$HotlistSettings;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotlistSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$HotlistSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$HotlistSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apLostThreshold:I

.field public bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1021
    new-instance v0, Landroid/net/wifi/WifiScanner$HotlistSettings$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$HotlistSettings$1;-><init>()V

    #@5
    .line 1020
    sput-object v0, Landroid/net/wifi/WifiScanner$HotlistSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 992
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 998
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1003
    iget v2, p0, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    #@2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1005
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 1006
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@b
    array-length v2, v2

    #@c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1007
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@12
    array-length v2, v2

    #@13
    if-ge v0, v2, :cond_1

    #@15
    .line 1008
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@17
    aget-object v1, v2, v0

    #@19
    .line 1009
    .local v1, "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    iget-object v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 1010
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    #@20
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 1011
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    #@25
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 1012
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->frequencyHint:I

    #@2a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 1007
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 1015
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_0
    const/4 v2, 0x0

    #@31
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 1002
    :cond_1
    return-void
.end method
