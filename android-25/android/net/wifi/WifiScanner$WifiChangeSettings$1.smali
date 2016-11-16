.class final Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$WifiChangeSettings;
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
        "Landroid/net/wifi/WifiScanner$WifiChangeSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 925
    new-instance v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@2
    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    #@5
    .line 926
    .local v3, "settings":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v4

    #@9
    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    #@b
    .line 927
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v4

    #@f
    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    #@11
    .line 928
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v4

    #@15
    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    #@17
    .line 929
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v4

    #@1b
    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    #@1d
    .line 930
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v4

    #@21
    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    #@23
    .line 931
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v2

    #@27
    .line 932
    .local v2, "len":I
    new-array v4, v2, [Landroid/net/wifi/WifiScanner$BssidInfo;

    #@29
    iput-object v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@2b
    .line 933
    const/4 v0, 0x0

    #@2c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@2e
    .line 934
    new-instance v1, Landroid/net/wifi/WifiScanner$BssidInfo;

    #@30
    invoke-direct {v1}, Landroid/net/wifi/WifiScanner$BssidInfo;-><init>()V

    #@33
    .line 935
    .local v1, "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    iput-object v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    #@39
    .line 936
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v4

    #@3d
    iput v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    #@3f
    .line 937
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v4

    #@43
    iput v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    #@45
    .line 938
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v4

    #@49
    iput v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->frequencyHint:I

    #@4b
    .line 939
    iget-object v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@4d
    aput-object v1, v4, v0

    #@4f
    .line 933
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_0

    #@52
    .line 941
    .end local v1    # "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_0
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 924
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 945
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 944
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
