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
.field private mBucketsScanned:I

.field private mFlags:I

.field private mId:I

.field private mResults:[Landroid/net/wifi/ScanResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 360
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanData$1;-><init>()V

    #@5
    .line 359
    sput-object v0, Landroid/net/wifi/WifiScanner$ScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 275
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(III[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "bucketsScanned"    # I
    .param p4, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 302
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@5
    .line 303
    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@7
    .line 304
    iput p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    #@9
    .line 305
    iput-object p4, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@b
    .line 301
    return-void
.end method

.method public constructor <init>(II[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 295
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@5
    .line 296
    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@7
    .line 297
    iput-object p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@9
    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 4
    .param p1, "s"    # Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 309
    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@5
    iput v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@7
    .line 310
    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@9
    iput v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@b
    .line 311
    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    #@d
    iput v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    #@f
    .line 312
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@11
    array-length v3, v3

    #@12
    new-array v3, v3, [Landroid/net/wifi/ScanResult;

    #@14
    iput-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@16
    .line 313
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@19
    array-length v3, v3

    #@1a
    if-ge v0, v3, :cond_0

    #@1c
    .line 314
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@1e
    aget-object v2, v3, v0

    #@20
    .line 315
    .local v2, "result":Landroid/net/wifi/ScanResult;
    new-instance v1, Landroid/net/wifi/ScanResult;

    #@22
    invoke-direct {v1, v2}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    #@25
    .line 316
    .local v1, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@27
    aput-object v1, v3, v0

    #@29
    .line 313
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 308
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
    .line 339
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBucketsScanned()I
    .locals 1

    #@0
    .prologue
    .line 330
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    #@2
    return v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 325
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 321
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@2
    return v0
.end method

.method public getResults()[Landroid/net/wifi/ScanResult;
    .locals 1

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 344
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 345
    iget v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 346
    iget v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 347
    iget v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    #@10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 348
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@15
    array-length v2, v2

    #@16
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 349
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@1c
    array-length v2, v2

    #@1d
    if-ge v0, v2, :cond_1

    #@1f
    .line 350
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@21
    aget-object v1, v2, v0

    #@23
    .line 351
    .local v1, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    .line 349
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 354
    .end local v0    # "i":I
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    const/4 v2, 0x0

    #@2a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 343
    :cond_1
    return-void
.end method
