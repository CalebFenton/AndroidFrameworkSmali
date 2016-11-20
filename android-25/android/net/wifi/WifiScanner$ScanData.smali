.class public Landroid/net/wifi/WifiScanner$ScanData;
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
    name = "ScanData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ScanData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllChannelsScanned:Z

.field private mBucketsScanned:I

.field private mFlags:I

.field private mId:I

.field private mResults:[Landroid/net/wifi/ScanResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 375
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanData$1;-><init>()V

    #@5
    .line 374
    sput-object v0, Landroid/net/wifi/WifiScanner$ScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 275
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(IIIZ[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "bucketsScanned"    # I
    .param p4, "allChannelsScanned"    # Z
    .param p5, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 309
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@5
    .line 310
    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@7
    .line 311
    iput p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    #@9
    .line 312
    iput-boolean p4, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    #@b
    .line 313
    iput-object p5, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@d
    .line 308
    return-void
.end method

.method public constructor <init>(II[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 301
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@5
    .line 302
    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@7
    .line 303
    iput-object p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@9
    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 4
    .param p1, "s"    # Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 317
    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@5
    iput v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@7
    .line 318
    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@9
    iput v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@b
    .line 319
    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    #@d
    iput v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    #@f
    .line 320
    iget-boolean v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    #@11
    iput-boolean v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    #@13
    .line 321
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@15
    array-length v3, v3

    #@16
    new-array v3, v3, [Landroid/net/wifi/ScanResult;

    #@18
    iput-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@1a
    .line 322
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@1d
    array-length v3, v3

    #@1e
    if-ge v0, v3, :cond_0

    #@20
    .line 323
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@22
    aget-object v2, v3, v0

    #@24
    .line 324
    .local v2, "result":Landroid/net/wifi/ScanResult;
    new-instance v1, Landroid/net/wifi/ScanResult;

    #@26
    invoke-direct {v1, v2}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    #@29
    .line 325
    .local v1, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@2b
    aput-object v1, v3, v0

    #@2d
    .line 322
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 316
    .end local v1    # "newResult":Landroid/net/wifi/ScanResult;
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 353
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBucketsScanned()I
    .locals 1

    #@0
    .prologue
    .line 339
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    #@2
    return v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 334
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 330
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@2
    return v0
.end method

.method public getResults()[Landroid/net/wifi/ScanResult;
    .locals 1

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@2
    return-object v0
.end method

.method public isAllChannelsScanned()Z
    .locals 1

    #@0
    .prologue
    .line 344
    iget-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 358
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 359
    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 360
    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 361
    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    #@11
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 362
    iget-boolean v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    #@16
    if-eqz v3, :cond_0

    #@18
    const/4 v2, 0x1

    #@19
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 363
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@1e
    array-length v2, v2

    #@1f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 364
    const/4 v0, 0x0

    #@23
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@25
    array-length v2, v2

    #@26
    if-ge v0, v2, :cond_2

    #@28
    .line 365
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@2a
    aget-object v1, v2, v0

    #@2c
    .line 366
    .local v1, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@2f
    .line 364
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 369
    .end local v0    # "i":I
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 357
    :cond_2
    return-void
.end method
