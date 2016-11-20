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
.field public static final NO_MARGINS:Landroid/print/PrintAttributes$Margins;


# instance fields
.field private final mBottomMils:I

.field private final mLeftMils:I

.field private final mRightMils:I

.field private final mTopMils:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1218
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    #@3
    invoke-direct {v0, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    #@6
    sput-object v0, Landroid/print/PrintAttributes$Margins;->NO_MARGINS:Landroid/print/PrintAttributes$Margins;

    #@8
    .line 1217
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "leftMils"    # I
    .param p2, "topMils"    # I
    .param p3, "rightMils"    # I
    .param p4, "bottomMils"    # I

    #@0
    .prologue
    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1234
    iput p2, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    #@5
    .line 1235
    iput p1, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    #@7
    .line 1236
    iput p3, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    #@9
    .line 1237
    iput p4, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    #@b
    .line 1233
    return-void
.end method

.method static createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;
    .locals 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1284
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    #@2
    .line 1285
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v1

    #@6
    .line 1286
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v2

    #@a
    .line 1287
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v3

    #@e
    .line 1288
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v4

    #@12
    .line 1284
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    #@15
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1304
    if-ne p0, p1, :cond_0

    #@4
    .line 1305
    return v4

    #@5
    .line 1307
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 1308
    return v3

    #@8
    .line 1310
    :cond_1
    invoke-virtual {p0}, Landroid/print/PrintAttributes$Margins;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 1311
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 1313
    check-cast v0, Landroid/print/PrintAttributes$Margins;

    #@16
    .line 1314
    .local v0, "other":Landroid/print/PrintAttributes$Margins;
    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    #@18
    iget v2, v0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 1315
    return v3

    #@1d
    .line 1317
    :cond_3
    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    #@1f
    iget v2, v0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    #@21
    if-eq v1, v2, :cond_4

    #@23
    .line 1318
    return v3

    #@24
    .line 1320
    :cond_4
    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    #@26
    iget v2, v0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    #@28
    if-eq v1, v2, :cond_5

    #@2a
    .line 1321
    return v3

    #@2b
    .line 1323
    :cond_5
    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    #@2d
    iget v2, v0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    #@2f
    if-eq v1, v2, :cond_6

    #@31
    .line 1324
    return v3

    #@32
    .line 1326
    :cond_6
    return v4
.end method

.method public getBottomMils()I
    .locals 1

    #@0
    .prologue
    .line 1273
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    #@2
    return v0
.end method

.method public getLeftMils()I
    .locals 1

    #@0
    .prologue
    .line 1246
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    #@2
    return v0
.end method

.method public getRightMils()I
    .locals 1

    #@0
    .prologue
    .line 1264
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    #@2
    return v0
.end method

.method public getTopMils()I
    .locals 1

    #@0
    .prologue
    .line 1255
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 1293
    const/16 v0, 0x1f

    #@2
    .line 1295
    .local v0, "prime":I
    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    #@4
    add-int/lit8 v1, v2, 0x1f

    #@6
    .line 1296
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@8
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    #@a
    add-int v1, v2, v3

    #@c
    .line 1297
    mul-int/lit8 v2, v1, 0x1f

    #@e
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    #@10
    add-int v1, v2, v3

    #@12
    .line 1298
    mul-int/lit8 v2, v1, 0x1f

    #@14
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    #@16
    add-int v1, v2, v3

    #@18
    .line 1299
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1332
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Margins{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 1333
    const-string/jumbo v1, "leftMils: "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    .line 1334
    const-string/jumbo v1, ", topMils: "

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 1335
    const-string/jumbo v1, ", rightMils: "

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 1336
    const-string/jumbo v1, ", bottomMils: "

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    .line 1337
    const-string/jumbo v1, "}"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 1338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1277
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1278
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1279
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1280
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1276
    return-void
.end method
