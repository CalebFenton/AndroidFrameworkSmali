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
.field private mFlags:I

.field private mId:I

.field private mResults:[Landroid/net/wifi/ScanResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 297
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanData$1;-><init>()V

    #@5
    .line 296
    sput-object v0, Landroid/net/wifi/WifiScanner$ScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 233
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(II[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "results"    # [Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 247
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@5
    .line 248
    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@7
    .line 249
    iput-object p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@9
    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 4
    .param p1, "s"    # Landroid/net/wifi/WifiScanner$ScanData;

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 253
    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@5
    iput v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@7
    .line 254
    iget v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@9
    iput v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@b
    .line 255
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@d
    array-length v3, v3

    #@e
    new-array v3, v3, [Landroid/net/wifi/ScanResult;

    #@10
    iput-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@12
    .line 256
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@15
    array-length v3, v3

    #@16
    if-ge v0, v3, :cond_0

    #@18
    .line 257
    iget-object v3, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@1a
    aget-object v2, v3, v0

    #@1c
    .line 258
    .local v2, "result":Landroid/net/wifi/ScanResult;
    new-instance v1, Landroid/net/wifi/ScanResult;

    #@1e
    invoke-direct {v1, v2}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    #@21
    .line 259
    .local v1, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@23
    aput-object v1, v3, v0

    #@25
    .line 256
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 252
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
    .line 277
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 268
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 264
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@2
    return v0
.end method

.method public getResults()[Landroid/net/wifi/ScanResult;
    .locals 1

    #@0
    .prologue
    .line 272
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
    .line 282
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 283
    iget v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    #@6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 284
    iget v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    #@b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 285
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@10
    array-length v2, v2

    #@11
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 286
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@17
    array-length v2, v2

    #@18
    if-ge v0, v2, :cond_1

    #@1a
    .line 287
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    #@1c
    aget-object v1, v2, v0

    #@1e
    .line 288
    .local v1, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 286
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 291
    .end local v0    # "i":I
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    const/4 v2, 0x0

    #@25
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 281
    :cond_1
    return-void
.end method
