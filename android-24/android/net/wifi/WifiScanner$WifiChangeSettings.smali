.class public Landroid/net/wifi/WifiScanner$WifiChangeSettings;
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
    name = "WifiChangeSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$WifiChangeSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

.field public lostApSampleSize:I

.field public minApsBreachingThreshold:I

.field public periodInMs:I

.field public rssiSampleSize:I

.field public unchangedSampleSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 873
    new-instance v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;-><init>()V

    #@5
    .line 872
    sput-object v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 837
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 847
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
    .line 852
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    #@2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 853
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    #@7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 854
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    #@c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 855
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    #@11
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 856
    iget v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    #@16
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 857
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 858
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@1f
    array-length v2, v2

    #@20
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 859
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@26
    array-length v2, v2

    #@27
    if-ge v0, v2, :cond_1

    #@29
    .line 860
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@2b
    aget-object v1, v2, v0

    #@2d
    .line 861
    .local v1, "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    iget-object v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    #@2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@32
    .line 862
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    #@34
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 863
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    #@39
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 864
    iget v2, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->frequencyHint:I

    #@3e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 859
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_0

    #@44
    .line 867
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_0
    const/4 v2, 0x0

    #@45
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 851
    :cond_1
    return-void
.end method
