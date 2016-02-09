.class public Landroid/net/wifi/WifiScanner$ScanSettings;
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
    name = "ScanSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ScanSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public band:I

.field public channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

.field public maxScansToCache:I

.field public numBssidsPerScan:I

.field public periodInMs:I

.field public reportEvents:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 200
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings$1;-><init>()V

    #@5
    .line 199
    sput-object v0, Landroid/net/wifi/WifiScanner$ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 174
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
    const/4 v2, 0x0

    #@1
    .line 179
    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 180
    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 181
    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 182
    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 183
    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 185
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 186
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@20
    array-length v1, v1

    #@21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 188
    const/4 v0, 0x0

    #@25
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@27
    array-length v1, v1

    #@28
    if-ge v0, v1, :cond_2

    #@2a
    .line 189
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@2c
    aget-object v1, v1, v0

    #@2e
    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@30
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 190
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@35
    aget-object v1, v1, v0

    #@37
    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    #@39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 191
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@3e
    aget-object v1, v1, v0

    #@40
    iget-boolean v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    #@42
    if-eqz v1, :cond_0

    #@44
    const/4 v1, 0x1

    #@45
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 188
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_0

    #@4b
    :cond_0
    move v1, v2

    #@4c
    .line 191
    goto :goto_1

    #@4d
    .line 194
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 178
    :cond_2
    return-void
.end method
