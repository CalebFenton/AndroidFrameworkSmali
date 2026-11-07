.class Landroid/widget/RemoteViews$BitmapCache;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapCache"
.end annotation


# instance fields
.field blacklist mBitmapHashes:Landroid/util/SparseIntArray;

.field blacklist mBitmapMemory:J

.field greylist-max-r mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 2488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2486
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    .line 2489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 2490
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    .line 2491
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2486
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    .line 2494
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 2495
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    .line 2496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 2497
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 2498
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_32

    .line 2499
    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2496
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 2502
    .end local v0    # "i":I
    :cond_35
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 4
    .param p1, "other"    # Landroid/widget/RemoteViews$BitmapCache;

    .line 2504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2486
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    .line 2505
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 2506
    iget-object v0, p1, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    .line 2507
    return-void
.end method


# virtual methods
.method public greylist-max-o getBitmapForId(I)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "id"    # I

    .line 2531
    const/4 v0, -0x1

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    goto :goto_15

    .line 2534
    :cond_c
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 2532
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getBitmapId(Landroid/graphics/Bitmap;)I
    .registers 7
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 2510
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 2511
    return v0

    .line 2513
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 2514
    .local v1, "hash":I
    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 2515
    .local v2, "hashId":I
    if-eq v2, v0, :cond_11

    .line 2516
    return v2

    .line 2518
    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2519
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2521
    :cond_1b
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2522
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    iget-object v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2523
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    .line 2524
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public blacklist getBitmapMemory()J
    .registers 7

    .line 2551
    iget-wide v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_28

    .line 2552
    iput-wide v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    .line 2553
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2554
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_28

    .line 2555
    iget-wide v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    iget-object v4, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    .line 2554
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2558
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_28
    iget-wide v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:J

    return-wide v0
.end method

.method public blacklist mergeWithCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 4
    .param p1, "other"    # Landroid/widget/RemoteViews$BitmapCache;

    .line 2562
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2563
    iget-object v1, p1, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    .line 2562
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2565
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public greylist-max-o writeBitmapsToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2538
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2539
    return-void
.end method

.method public blacklist writeBitmapsToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;

    .line 2542
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 2543
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 2544
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2545
    .local v2, "bytes":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2546
    const-wide v3, 0x20c0000000eL

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 2542
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bytes":Ljava/io/ByteArrayOutputStream;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2548
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method
