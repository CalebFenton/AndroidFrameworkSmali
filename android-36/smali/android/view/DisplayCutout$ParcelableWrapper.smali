.class public final Landroid/view/DisplayCutout$ParcelableWrapper;
.super Ljava/lang/Object;
.source "DisplayCutout.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelableWrapper"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayCutout$ParcelableWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mInner:Landroid/view/DisplayCutout;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1491
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper$1;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper$1;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout$ParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 1436
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-direct {p0, v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    .line 1437
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/DisplayCutout;)V
    .registers 2
    .param p1, "cutout"    # Landroid/view/DisplayCutout;

    .line 1439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1440
    iput-object p1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1441
    return-void
.end method

.method public static greylist-max-o readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;
    .registers 21
    .param p0, "in"    # Landroid/os/Parcel;

    .line 1509
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1510
    .local v1, "variant":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_b

    .line 1511
    return-object v3

    .line 1513
    :cond_b
    if-nez v1, :cond_10

    .line 1514
    sget-object v2, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v2

    .line 1517
    :cond_10
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/graphics/Rect;

    .line 1518
    .local v5, "safeInsets":Landroid/graphics/Rect;
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/Rect;

    .line 1519
    .local v2, "bounds":[Landroid/graphics/Rect;
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 1520
    sget-object v4, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/graphics/Insets;

    .line 1521
    .local v6, "waterfallInsets":Landroid/graphics/Insets;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1522
    .local v8, "displayWidth":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1523
    .local v9, "displayHeight":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1524
    .local v10, "physicalDisplayWidth":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1525
    .local v11, "physicalDisplayHeight":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 1526
    .local v12, "density":F
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1527
    .local v13, "cutoutSpec":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1528
    .local v14, "rotation":I
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 1529
    .local v15, "scale":F
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 1530
    .local v16, "physicalPixelDisplaySizeRatio":F
    new-instance v7, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-direct/range {v7 .. v16}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    move/from16 v17, v14

    move/from16 v18, v15

    move/from16 v19, v16

    move v14, v11

    move v15, v12

    move-object/from16 v16, v13

    move v11, v8

    move v12, v9

    move v13, v10

    .end local v8    # "displayWidth":I
    .end local v9    # "displayHeight":I
    .end local v10    # "physicalDisplayWidth":I
    .local v11, "displayWidth":I
    .local v12, "displayHeight":I
    .local v13, "physicalDisplayWidth":I
    .local v14, "physicalDisplayHeight":I
    .local v15, "density":F
    .local v16, "cutoutSpec":Ljava/lang/String;
    .local v17, "rotation":I
    .local v18, "scale":F
    .local v19, "physicalPixelDisplaySizeRatio":F
    move-object v8, v7

    .line 1533
    .local v8, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 1535
    .local v9, "sideOverrides":[I
    new-instance v4, Landroid/view/DisplayCutout;

    new-instance v7, Landroid/view/DisplayCutout$Bounds;

    const/4 v10, 0x0

    invoke-direct {v7, v2, v10, v3}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[ILandroid/view/DisplayCutout-IA;)V

    return-object v4
.end method

.method public static greylist-max-o writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V
    .registers 4
    .param p0, "cutout"    # Landroid/view/DisplayCutout;
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1459
    if-nez p0, :cond_8

    .line 1460
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_99

    .line 1461
    :cond_8
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p0, v0, :cond_12

    .line 1462
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_99

    .line 1464
    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1465
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmSafeInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1466
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmBounds(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$Bounds;

    move-result-object v0

    invoke-static {v0}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1467
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1468
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1469
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1470
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1473
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1474
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1475
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1476
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1477
    invoke-static {p0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmSideOverrides(Landroid/view/DisplayCutout;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1479
    :goto_99
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1445
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1581
    instance-of v0, p1, Landroid/view/DisplayCutout$ParcelableWrapper;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    move-object v1, p1

    check-cast v1, Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, v1, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1582
    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1581
    :goto_14
    return v0
.end method

.method public greylist-max-o get()Landroid/view/DisplayCutout;
    .registers 2

    .line 1540
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1576
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1488
    invoke-static {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1489
    return-void
.end method

.method public blacklist scale(F)V
    .registers 15
    .param p1, "scale"    # F

    .line 1552
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v10

    .line 1553
    .local v10, "safeInsets":Landroid/graphics/Rect;
    invoke-virtual {v10, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 1554
    new-instance v4, Landroid/view/DisplayCutout$Bounds;

    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmBounds(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$Bounds;

    move-result-object v0

    invoke-static {v0}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$fgetmRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v4, v0, v1, v2}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    move-object v11, v4

    .line 1555
    .local v11, "bounds":Landroid/view/DisplayCutout$Bounds;
    invoke-static {v11, p1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mscale(Landroid/view/DisplayCutout$Bounds;F)V

    .line 1556
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1557
    .local v12, "waterfallInsets":Landroid/graphics/Rect;
    invoke-virtual {v12, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 1558
    new-instance v0, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget-object v1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v1}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v1

    .line 1559
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v1

    iget-object v2, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v2}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v2

    .line 1560
    invoke-virtual {v2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v2

    iget-object v3, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v3}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v3

    .line 1561
    invoke-virtual {v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result v3

    iget-object v4, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v4}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v4

    .line 1562
    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result v4

    iget-object v5, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v5}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v5

    .line 1563
    invoke-virtual {v5}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v5

    iget-object v6, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v6}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v6

    .line 1564
    invoke-virtual {v6}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v7}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v7

    .line 1565
    invoke-virtual {v7}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result v7

    iget-object v9, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v9}, Landroid/view/DisplayCutout;->-$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v9

    .line 1567
    invoke-virtual {v9}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result v9

    move v8, p1

    invoke-direct/range {v0 .. v9}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    move-object v5, v0

    .line 1568
    .local v5, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0}, Landroid/view/DisplayCutout;->-$$Nest$fgetmSideOverrides(Landroid/view/DisplayCutout;)[I

    move-result-object v6

    .line 1570
    .local v6, "sideOverrides":[I
    new-instance v1, Landroid/view/DisplayCutout;

    invoke-static {v12}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v3

    const/4 v7, 0x0

    move-object v2, v10

    move-object v4, v11

    .end local v10    # "safeInsets":Landroid/graphics/Rect;
    .end local v11    # "bounds":Landroid/view/DisplayCutout$Bounds;
    .local v2, "safeInsets":Landroid/graphics/Rect;
    .local v4, "bounds":Landroid/view/DisplayCutout$Bounds;
    invoke-direct/range {v1 .. v7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[ILandroid/view/DisplayCutout-IA;)V

    iput-object v1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1572
    return-void
.end method

.method public greylist-max-o set(Landroid/view/DisplayCutout$ParcelableWrapper;)V
    .registers 3
    .param p1, "cutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 1544
    invoke-virtual {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1545
    return-void
.end method

.method public greylist-max-o set(Landroid/view/DisplayCutout;)V
    .registers 2
    .param p1, "cutout"    # Landroid/view/DisplayCutout;

    .line 1548
    iput-object p1, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    .line 1549
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1587
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1450
    iget-object v0, p0, Landroid/view/DisplayCutout$ParcelableWrapper;->mInner:Landroid/view/DisplayCutout;

    invoke-static {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeCutoutToParcel(Landroid/view/DisplayCutout;Landroid/os/Parcel;I)V

    .line 1451
    return-void
.end method
