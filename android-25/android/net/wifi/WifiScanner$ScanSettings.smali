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

.field public hiddenNetworkIds:[I

.field public isPnoScan:Z

.field public maxPeriodInMs:I

.field public maxScansToCache:I

.field public numBssidsPerScan:I

.field public periodInMs:I

.field public reportEvents:I

.field public stepCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 241
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings$1;-><init>()V

    #@5
    .line 240
    sput-object v0, Landroid/net/wifi/WifiScanner$ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 169
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 213
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 218
    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 219
    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    #@9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 220
    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    #@e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 221
    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    #@13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 222
    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    #@18
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 223
    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    #@1d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 224
    iget v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    #@22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 225
    iget-boolean v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    #@27
    if-eqz v1, :cond_0

    #@29
    move v1, v2

    #@2a
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 226
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@2f
    if-eqz v1, :cond_2

    #@31
    .line 227
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@33
    array-length v1, v1

    #@34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 228
    const/4 v0, 0x0

    #@38
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@3a
    array-length v1, v1

    #@3b
    if-ge v0, v1, :cond_3

    #@3d
    .line 229
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@3f
    aget-object v1, v1, v0

    #@41
    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@43
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 230
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@48
    aget-object v1, v1, v0

    #@4a
    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    #@4c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 231
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@51
    aget-object v1, v1, v0

    #@53
    iget-boolean v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    #@55
    if-eqz v1, :cond_1

    #@57
    move v1, v2

    #@58
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    .line 228
    add-int/lit8 v0, v0, 0x1

    #@5d
    goto :goto_1

    #@5e
    .end local v0    # "i":I
    :cond_0
    move v1, v3

    #@5f
    .line 225
    goto :goto_0

    #@60
    .restart local v0    # "i":I
    :cond_1
    move v1, v3

    #@61
    .line 231
    goto :goto_2

    #@62
    .line 234
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 236
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworkIds:[I

    #@67
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@6a
    .line 217
    return-void
.end method
