.class public final Landroid/companion/BluetoothLeDeviceFilter$Builder;
.super Landroid/provider/OneTimeUseBuilder;
.source "BluetoothLeDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/BluetoothLeDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder<",
        "Landroid/companion/BluetoothLeDeviceFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mNamePattern:Ljava/util/regex/Pattern;

.field private greylist-max-o mRawDataFilter:[B

.field private greylist-max-o mRawDataFilterMask:[B

.field private greylist-max-o mRenameBytesFrom:I

.field private greylist-max-o mRenameBytesLength:I

.field private greylist-max-o mRenameBytesReverseOrder:Z

.field private greylist-max-o mRenameNameFrom:I

.field private greylist-max-o mRenameNameLength:I

.field private greylist-max-o mRenamePrefix:Ljava/lang/String;

.field private greylist-max-o mRenameSuffix:Ljava/lang/String;

.field private greylist-max-o mScanFilter:Landroid/bluetooth/le/ScanFilter;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 293
    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesFrom:I

    .line 302
    iput v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameFrom:I

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    return-void
.end method

.method private greylist-max-o checkRangeNotEmpty(I)V
    .registers 4
    .param p1, "length"    # I

    .line 410
    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Range must be non-empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 411
    return-void
.end method

.method private greylist-max-o checkRenameNotSet()V
    .registers 3

    .line 406
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenamePrefix:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Renaming rule can only be set once"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 407
    return-void
.end method

.method private greylist-max-o setRename(Ljava/lang/String;Ljava/lang/String;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 415
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkNotUsed()V

    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/companion/BluetoothLeDeviceFilter;->getRenamePrefixLengthLimit()I

    move-result v1

    if-gt v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Prefix is too long"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 418
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenamePrefix:Ljava/lang/String;

    .line 419
    iput-object p2, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameSuffix:Ljava/lang/String;

    .line 420
    return-object p0
.end method


# virtual methods
.method public whitelist build()Landroid/companion/BluetoothLeDeviceFilter;
    .registers 14

    .line 427
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->markUsed()V

    .line 428
    new-instance v0, Landroid/companion/BluetoothLeDeviceFilter;

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilter:[B

    iget-object v4, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilterMask:[B

    iget-object v5, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenamePrefix:Ljava/lang/String;

    iget-object v6, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameSuffix:Ljava/lang/String;

    iget v7, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesFrom:I

    iget v8, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesLength:I

    iget v9, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameFrom:I

    iget v10, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameLength:I

    iget-boolean v11, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/companion/BluetoothLeDeviceFilter;-><init>(Ljava/util/regex/Pattern;Landroid/bluetooth/le/ScanFilter;[B[BLjava/lang/String;Ljava/lang/String;IIIIZLandroid/companion/BluetoothLeDeviceFilter-IA;)V

    return-object v0
.end method

.method public bridge synthetic blacklist build()Ljava/lang/Object;
    .registers 2

    .line 293
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->build()Landroid/companion/BluetoothLeDeviceFilter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setNamePattern(Ljava/util/regex/Pattern;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .registers 2
    .param p1, "regex"    # Ljava/util/regex/Pattern;

    .line 312
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkNotUsed()V

    .line 313
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    .line 314
    return-object p0
.end method

.method public whitelist setRawDataFilter([B[B)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .registers 5
    .param p1, "rawDataFilter"    # [B
    .param p2, "rawDataFilterMask"    # [B

    .line 340
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkNotUsed()V

    .line 341
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    if-eqz p2, :cond_f

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    const-string v1, "Mask and filter should be the same length"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 345
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilter:[B

    .line 346
    iput-object p2, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRawDataFilterMask:[B

    .line 347
    return-object p0
.end method

.method public whitelist setRenameFromBytes(Ljava/lang/String;Ljava/lang/String;IILjava/nio/ByteOrder;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "bytesFrom"    # I
    .param p4, "bytesLength"    # I
    .param p5, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 371
    invoke-direct {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRenameNotSet()V

    .line 372
    invoke-direct {p0, p4}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRangeNotEmpty(I)V

    .line 373
    iput p3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesFrom:I

    .line 374
    iput p4, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesLength:I

    .line 375
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p5, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    .line 376
    invoke-direct {p0, p1, p2}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRename(Ljava/lang/String;Ljava/lang/String;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setRenameFromName(Ljava/lang/String;Ljava/lang/String;II)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "nameFrom"    # I
    .param p4, "nameLength"    # I

    .line 397
    invoke-direct {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRenameNotSet()V

    .line 398
    invoke-direct {p0, p4}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkRangeNotEmpty(I)V

    .line 399
    iput p3, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameFrom:I

    .line 400
    iput p4, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameNameLength:I

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mRenameBytesReverseOrder:Z

    .line 402
    invoke-direct {p0, p1, p2}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->setRename(Ljava/lang/String;Ljava/lang/String;)Landroid/companion/BluetoothLeDeviceFilter$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setScanFilter(Landroid/bluetooth/le/ScanFilter;)Landroid/companion/BluetoothLeDeviceFilter$Builder;
    .registers 2
    .param p1, "scanFilter"    # Landroid/bluetooth/le/ScanFilter;

    .line 325
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter$Builder;->checkNotUsed()V

    .line 326
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter$Builder;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 327
    return-object p0
.end method
