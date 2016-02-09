.class public Landroid/net/wifi/WifiScanner$ParcelableScanResults;
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
    name = "ParcelableScanResults"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$ParcelableScanResults;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mResults:[Landroid/net/wifi/ScanResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 395
    new-instance v0, Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;-><init>()V

    #@5
    .line 394
    sput-object v0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 363
    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 368
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    #@5
    .line 367
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 377
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getResults()[Landroid/net/wifi/ScanResult;
    .locals 1

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 382
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 383
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    #@6
    array-length v2, v2

    #@7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 384
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    #@d
    array-length v2, v2

    #@e
    if-ge v0, v2, :cond_1

    #@10
    .line 385
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    #@12
    aget-object v1, v2, v0

    #@14
    .line 386
    .local v1, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@17
    .line 384
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 389
    .end local v0    # "i":I
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 381
    :cond_1
    return-void
.end method
