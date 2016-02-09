.class public Landroid/net/wifi/WifiScanner$ParcelableScanData;
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
    name = "ParcelableScanData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ParcelableScanData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$ParcelableScanData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mResults:[Landroid/net/wifi/WifiScanner$ScanData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 347
    new-instance v0, Landroid/net/wifi/WifiScanner$ParcelableScanData$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ParcelableScanData$1;-><init>()V

    #@5
    .line 346
    sput-object v0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 315
    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 320
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    #@5
    .line 319
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 329
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getResults()[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 334
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 335
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    #@6
    array-length v2, v2

    #@7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 336
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    #@d
    array-length v2, v2

    #@e
    if-ge v0, v2, :cond_1

    #@10
    .line 337
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    #@12
    aget-object v1, v2, v0

    #@14
    .line 338
    .local v1, "result":Landroid/net/wifi/WifiScanner$ScanData;
    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/WifiScanner$ScanData;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 336
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 341
    .end local v0    # "i":I
    .end local v1    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    :cond_0
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 333
    :cond_1
    return-void
.end method
