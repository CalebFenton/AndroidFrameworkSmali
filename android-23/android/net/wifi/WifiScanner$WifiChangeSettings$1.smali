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
    .line 534
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
    .line 536
    new-instance v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@2
    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    #@5
    .line 537
    .local v3, "settings":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v4

    #@9
    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    #@b
    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v4

    #@f
    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    #@11
    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v4

    #@15
    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    #@17
    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v4

    #@1b
    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    #@1d
    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v4

    #@21
    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    #@23
    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v2

    #@27
    .line 543
    .local v2, "len":I
    new-array v4, v2, [Landroid/net/wifi/WifiScanner$BssidInfo;

    #@29
    iput-object v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@2b
    .line 544
    const/4 v0, 0x0

    #@2c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@2e
    .line 545
    new-instance v1, Landroid/net/wifi/WifiScanner$BssidInfo;

    #@30
    invoke-direct {v1}, Landroid/net/wifi/WifiScanner$BssidInfo;-><init>()V

    #@33
    .line 546
    .local v1, "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    iput-object v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    #@39
    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v4

    #@3d
    iput v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    #@3f
    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@42
    move-result v4

    #@43
    iput v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    #@45
    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v4

    #@49
    iput v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->frequencyHint:I

    #@4b
    .line 550
    iget-object v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    #@4d
    aput-object v1, v4, v0

    #@4f
    .line 544
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_0

    #@52
    .line 552
    .end local v1    # "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_0
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 535
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
    .line 556
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 555
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
