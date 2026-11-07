.class public final Landroid/print/PrintAttributes$Margins;
.super Ljava/lang/Object;
.source "PrintAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Margins"
.end annotation


# static fields
.field public static final whitelist NO_MARGINS:Landroid/print/PrintAttributes$Margins;


# instance fields
.field private final greylist-max-o mBottomMils:I

.field private final greylist-max-o mLeftMils:I

.field private final greylist-max-o mRightMils:I

.field private final greylist-max-o mTopMils:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1270
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    sput-object v0, Landroid/print/PrintAttributes$Margins;->NO_MARGINS:Landroid/print/PrintAttributes$Margins;

    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .registers 5
    .param p1, "leftMils"    # I
    .param p2, "topMils"    # I
    .param p3, "rightMils"    # I
    .param p4, "bottomMils"    # I

    .line 1285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    iput p2, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    .line 1287
    iput p1, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    .line 1288
    iput p3, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    .line 1289
    iput p4, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    .line 1290
    return-void
.end method

.method static greylist-max-o createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;
    .registers 6
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 1336
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    .line 1337
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1338
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1339
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1340
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 1336
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1356
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1357
    return v0

    .line 1359
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1360
    return v1

    .line 1362
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 1363
    return v1

    .line 1365
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/print/PrintAttributes$Margins;

    .line 1366
    .local v2, "other":Landroid/print/PrintAttributes$Margins;
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    iget v4, v2, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    if-eq v3, v4, :cond_1d

    .line 1367
    return v1

    .line 1369
    :cond_1d
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    iget v4, v2, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    if-eq v3, v4, :cond_24

    .line 1370
    return v1

    .line 1372
    :cond_24
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    iget v4, v2, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    if-eq v3, v4, :cond_2b

    .line 1373
    return v1

    .line 1375
    :cond_2b
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    iget v4, v2, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    if-eq v3, v4, :cond_32

    .line 1376
    return v1

    .line 1378
    :cond_32
    return v0
.end method

.method public whitelist getBottomMils()I
    .registers 2

    .line 1325
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    return v0
.end method

.method public whitelist getLeftMils()I
    .registers 2

    .line 1298
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    return v0
.end method

.method public whitelist getRightMils()I
    .registers 2

    .line 1316
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    return v0
.end method

.method public whitelist getTopMils()I
    .registers 2

    .line 1307
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 1345
    const/16 v0, 0x1f

    .line 1346
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1347
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    add-int/2addr v2, v3

    .line 1348
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    add-int/2addr v1, v3

    .line 1349
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    add-int/2addr v2, v3

    .line 1350
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    add-int/2addr v1, v3

    .line 1351
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1384
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Margins{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    const-string/jumbo v1, "leftMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1386
    const-string v1, ", topMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1387
    const-string v1, ", rightMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1388
    const-string v1, ", bottomMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1389
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1329
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1330
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    return-void
.end method
